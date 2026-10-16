package com.cgs.atvobserver.patch;

import android.content.ContentValues;
import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.PowerManager;
import android.os.SystemClock;
import android.util.Log;

import com.cgs.atvobserver.audio.AudioAnalysisResult;
import com.cgs.atvobserver.audio.EngineAudioProcessor;
import com.cgs.atvobserver.data.db.AppDatabase;
import com.cgs.atvobserver.location.GpsData;
import com.cgs.atvobserver.location.GpsTracker;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * Service-owned ride journal. Runs on its own HandlerThread inside ObserverForegroundService, so it
 * keeps sampling while the screen is off / the phone is in a pocket, independent of the Compose UI.
 *
 * While a TRIP or POCKET screen is active it:
 *  - holds a PARTIAL_WAKE_LOCK (the original app declared WAKE_LOCK but never acquired one),
 *  - writes one CSV row per second to  Android/data/com.cgs.atvobserver/files/ride_journal/,
 *    flushing every few rows so a killed process loses at most a few seconds,
 *  - on the next service start, any journal without an #END marker (process killed / app swiped
 *    away before "End Ride") is summarised and inserted into the app's ride_logs table so the ride
 *    shows up in Ride History.
 */
public final class PocketRecorder {
    private static final String TAG = ObserverCompat.TAG;
    private static final long TICK_MS = 1000L;
    private static final int FLUSH_EVERY = 5;
    private static final long MAX_WAKELOCK_MS = 10L * 60 * 60 * 1000; // 10 h safety cap

    private static PocketRecorder sInstance;
    private static volatile int sFgsTypes;

    private final Context app;
    private final HandlerThread thread;
    private final Handler handler;
    private PowerManager.WakeLock wakeLock;

    // session state (only touched on the recorder thread)
    private String sessionMode;
    private File sessionFile;
    private BufferedWriter out;
    private long sessionStartWall;
    private long sessionStartElapsed;
    private int rows;
    private int ticksSinceAudioCheck;
    private volatile boolean activityGone;
    private final RideStats stats = new RideStats();
    private final SensorHub sensors = new SensorHub();
    private final AdaptiveEventFilter filter = new AdaptiveEventFilter();
    // audio frame aggregation (polled at 10 Hz from the shared EngineAudioProcessor StateFlow)
    private Object lastAudioObj;
    private int aFrames, aPeriodic;
    private double aSumDb, aMaxDb;

    private PocketRecorder(Context app) {
        this.app = app;
        thread = new HandlerThread("atv-ride-journal");
        thread.start();
        handler = new Handler(thread.getLooper());
    }

    // ------------------------------------------------------------------ static API
    static synchronized void start(Context app) {
        if (sInstance != null) return;
        sInstance = new PocketRecorder(app);
        sInstance.handler.post(sInstance::recoverOrphans);
        final PocketRecorder r0 = sInstance;
        r0.handler.post(() -> DeviceCapabilities.writeReport(r0.app, r0.journalDir()));
        Log.i(TAG, "PocketRecorder started");
    }

    static synchronized void stop() {
        PocketRecorder r = sInstance;
        sInstance = null;
        if (r == null) return;
        r.handler.post(() -> {
            r.endSession(r.activityGone ? "service-stopped" : "service-stopped-ui-alive", r.activityGone);
            r.thread.quitSafely();
        });
    }

    static void onScreen(final String screen) {
        final PocketRecorder r;
        synchronized (PocketRecorder.class) { r = sInstance; }
        if (r == null) return;
        r.handler.post(() -> r.handleScreen(screen));
    }

    static boolean isSessionActive() {
        PocketRecorder r;
        synchronized (PocketRecorder.class) { r = sInstance; }
        return r != null && r.sessionMode != null;
    }

    static void markActivityGone() {
        PocketRecorder r;
        synchronized (PocketRecorder.class) { r = sInstance; }
        if (r != null) r.activityGone = true;
    }

    static void noteForegroundTypes(int t) { sFgsTypes = t; }

    // ------------------------------------------------------------------ session handling
    private void handleScreen(String screen) {
        boolean ride = "POCKET".equals(screen) || "TRIP".equals(screen);
        if (ride && sessionMode == null) {
            beginSession(screen);
        } else if (!ride && sessionMode != null) {
            // Normal path: UI left the ride screen. If the Activity had been destroyed meanwhile,
            // MainActivity never got to run its own insertRide(), so we insert from the journal.
            endSession("screen:" + screen, activityGone);
        }
    }

    private void beginSession(String mode) {
        try {
            File dir = journalDir();
            String stamp = new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(new Date());
            sessionFile = new File(dir, "ride_" + mode.toLowerCase(Locale.US) + "_" + stamp + ".csv");
            out = new BufferedWriter(new FileWriter(sessionFile, true));
            out.write("#J3ATV-JOURNAL v1 mode=" + mode + " fgsTypes=0x" + Integer.toHexString(sFgsTypes)
                    + " sdk=" + android.os.Build.VERSION.SDK_INT + " device=" + android.os.Build.MANUFACTURER
                    + "/" + android.os.Build.MODEL + "\n");
            out.write(header() + "\n");
            out.flush();
        } catch (Exception e) {
            Log.e(TAG, "cannot open journal", e);
            out = null;
        }
        sessionMode = mode;
        sessionStartWall = System.currentTimeMillis();
        sessionStartElapsed = SystemClock.elapsedRealtime();
        rows = 0;
        activityGone = false;
        stats.reset();
        // The original code never called GpsTracker.resetTrip(), so "distance" was cumulative
        // since app launch. Reset at ride start so the saved ride covers this ride only.
        GpsTracker gps = ObserverCompat.peekGps();
        if (gps != null) {
            try { gps.resetTrip(); } catch (Exception ignored) { }
        }
        acquireWakeLock();
        filter.reset();
        sensors.register(app, handler);
        handler.removeCallbacks(tick);
        handler.removeCallbacks(audioPoll);
        handler.post(tick);
        handler.post(audioPoll);
        Log.i(TAG, "ride session started: " + mode + " -> " + sessionFile);
    }

    private void endSession(String reason, boolean insertIntoDb) {
        if (sessionMode == null) return;
        handler.removeCallbacks(tick);
        handler.removeCallbacks(audioPoll);
        sensors.unregister();
        stats.filterSummary = filter.summary();
        try {
            if (out != null) {
                out.write("#END reason=" + reason + " rows=" + rows + " " + stats.summaryLine()
                        + " peak_g=" + fmt(stats.peakG, 2) + " alt_range_m=" + fmt(stats.altRange(), 1)
                        + " filter=\"" + stats.filterSummary + "\"\n");
                out.close();
            }
        } catch (Exception e) {
            Log.w(TAG, "journal close failed", e);
        }
        if (insertIntoDb) {
            insertRide(sessionMode, stats, "Pocket journal (app closed before End Ride) | " + stats.filterSummary);
        }
        Log.i(TAG, "ride session ended (" + reason + "): " + stats.summaryLine());
        out = null;
        sessionMode = null;
        sessionFile = null;
        releaseWakeLock();
    }

    private final Runnable tick = new Runnable() {
        @Override public void run() {
            if (sessionMode == null) return;
            try {
                if (++ticksSinceAudioCheck >= 10) {      // retry the mic every 10 s if it was busy
                    ticksSinceAudioCheck = 0;
                    ObserverCompat.ensureAudioRunning();
                }
                sample();
            } catch (Throwable t) {
                Log.w(TAG, "sample failed", t);
            }
            handler.postDelayed(this, TICK_MS);
        }
    };

    String header() {
        return "t_ms,elapsed_s,lat,lon,acc_m,speed_kmh,dist_km,gps_ok,rms_db,rpm,rpm_var,engine,audio_conf"
                + ",audio_frames,rms_mean_db,rms_max_db,periodic_frac,audio_floor_db,engine_gate_db"
                + ",vib_rms,peak_g,gyro_rms,heading_deg,pressure_hpa,alt_m,lux,prox_near,pocketed"
                + ",score,raw_state,state";
    }

    /** 10 Hz poll of the audio StateFlow; each EngineAudioProcessor frame publishes a new object. */
    private final Runnable audioPoll = new Runnable() {
        @Override public void run() {
            if (sessionMode == null) return;
            EngineAudioProcessor audio = ObserverCompat.peekAudio();
            if (audio != null && audio.getAnalysisState() != null) {
                Object o = audio.getAnalysisState().getValue();
                if (o != null && o != lastAudioObj) {
                    lastAudioObj = o;
                    AudioAnalysisResult a = (AudioAnalysisResult) o;
                    double db = a.getAudioRmsDb();
                    aFrames++;
                    aSumDb += db;
                    if (db > aMaxDb) aMaxDb = db;
                    if (a.getEstimatedRpm() > 0) aPeriodic++;
                }
            }
            handler.postDelayed(this, 100);
        }
    };

    void sample() throws Exception {
        long now = System.currentTimeMillis();
        long el = (SystemClock.elapsedRealtime() - sessionStartElapsed) / 1000L;
        GpsData g = null;
        AudioAnalysisResult a = null;
        GpsTracker gps = ObserverCompat.peekGps();
        EngineAudioProcessor audio = ObserverCompat.peekAudio();
        if (gps != null && gps.getGpsData() != null) g = gps.getGpsData().getValue();
        if (audio != null && audio.getAnalysisState() != null) a = audio.getAnalysisState().getValue();
        stats.add(now, g);
        StringBuilder sb = new StringBuilder(160);
        sb.append(now).append(',').append(el).append(',');
        if (g != null) {
            sb.append(fmt(g.getLatitude(), 6)).append(',').append(fmt(g.getLongitude(), 6)).append(',')
              .append(fmt(g.getAccuracyMeters(), 1)).append(',').append(fmt(g.getCurrentSpeedKmh(), 1)).append(',')
              .append(fmt(g.getDistanceKm(), 3)).append(',').append(g.isGpsAvailable() ? 1 : 0).append(',');
        } else {
            sb.append(",,,,,0,");
        }
        if (a != null) {
            sb.append(fmt(a.getAudioRmsDb(), 1)).append(',').append(a.getEstimatedRpm()).append(',')
              .append(a.getRpmVariation()).append(',').append(a.isEngineRunning() ? 1 : 0).append(',')
              .append(a.getConfidence());
        } else {
            sb.append(",,,,");
        }
        // ---- step 4: per-second audio aggregate + all motion/environment sensors + event filter
        AdaptiveEventFilter.Features f = new AdaptiveEventFilter.Features();
        f.rmsMeanDb = aFrames > 0 ? aSumDb / aFrames : 0;
        f.rmsMaxDb = aMaxDb;
        f.periodicFrac = aFrames > 0 ? (double) aPeriodic / aFrames : 0;
        SensorHub.Snapshot sn = sensors.snapshotAndReset();
        f.vibRms = sn.vibRms;
        f.gyroRms = sn.gyroRms;
        f.pocketed = sn.pocketed;
        f.speedKmh = (g != null && g.isGpsAvailable() && g.getAccuracyMeters() > 0 && g.getAccuracyMeters() < 50)
                ? g.getCurrentSpeedKmh() : -1;
        AdaptiveEventFilter.State st = filter.classify(f);
        stats.addSensors(sn);
        sb.append(',').append(aFrames).append(',').append(fmt(f.rmsMeanDb, 1)).append(',').append(fmt(f.rmsMaxDb, 1))
          .append(',').append(fmt(f.periodicFrac, 2)).append(',').append(fmt(AdaptiveEventFilter.floorDb(), 0))
          .append(',').append(fmt(AdaptiveEventFilter.gateDb(), 0))
          .append(',').append(fmt(sn.vibRms, 3)).append(',').append(fmt(sn.peakG, 2)).append(',').append(fmt(sn.gyroRms, 3))
          .append(',').append(sn.hasHeading ? fmt(sn.headingDeg, 0) : "")
          .append(',').append(sn.hasPressure ? fmt(sn.pressureHpa, 2) : "")
          .append(',').append(sn.hasPressure ? fmt(sn.altM, 1) : "")
          .append(',').append(sn.hasLux ? fmt(sn.lux, 0) : "")
          .append(',').append(sn.hasProx ? (sn.proxNear ? "1" : "0") : "")
          .append(',').append(sn.pocketed ? 1 : 0)
          .append(',').append(fmt(filter.lastScore, 2)).append(',').append(filter.lastRaw).append(',').append(st);
        aFrames = 0; aPeriodic = 0; aSumDb = 0; aMaxDb = 0;
        writeRow(sb.toString());
    }

    void writeRow(String row) throws Exception {
        if (out == null) return;
        out.write(row);
        out.write('\n');
        rows++;
        if (rows % FLUSH_EVERY == 0) out.flush();
    }

    static String fmt(double v, int digits) {
        return String.format(Locale.US, "%." + digits + "f", v);
    }

    // ------------------------------------------------------------------ wake lock
    private void acquireWakeLock() {
        try {
            if (wakeLock == null) {
                PowerManager pm = (PowerManager) app.getSystemService(Context.POWER_SERVICE);
                wakeLock = pm.newWakeLock(PowerManager.PARTIAL_WAKE_LOCK, "atvobserver:ride-journal");
                wakeLock.setReferenceCounted(false);
            }
            wakeLock.acquire(MAX_WAKELOCK_MS);
        } catch (Exception e) {
            Log.w(TAG, "wake lock unavailable", e);
        }
    }

    private void releaseWakeLock() {
        try {
            if (wakeLock != null && wakeLock.isHeld()) wakeLock.release();
        } catch (Exception ignored) { }
    }

    // ------------------------------------------------------------------ journal storage / recovery
    File journalDir() {
        File base = app.getExternalFilesDir(null);
        if (base == null) base = app.getFilesDir();
        File dir = new File(base, "ride_journal");
        if (!dir.exists() && !dir.mkdirs()) Log.w(TAG, "mkdirs failed: " + dir);
        return dir;
    }

    private void recoverOrphans() {
        File[] files = journalDir().listFiles();
        if (files == null) return;
        for (File f : files) {
            if (!f.getName().endsWith(".csv")) continue;
            try {
                String mode = "POCKET";
                String last = null;
                RideStats s = new RideStats();
                BufferedReader r = new BufferedReader(new FileReader(f));
                String line;
                while ((line = r.readLine()) != null) {
                    if (line.startsWith("#J3ATV-JOURNAL")) {
                        int i = line.indexOf("mode=");
                        if (i >= 0) mode = line.substring(i + 5).split(" ")[0];
                    } else if (!line.startsWith("#") && !line.startsWith("t_ms")) {
                        s.addCsv(line);
                    }
                    last = line;
                }
                r.close();
                if (last != null && last.startsWith("#END")) continue;
                if (s.samples > 0) insertRide(mode, s, "Recovered pocket journal (process was killed)");
                BufferedWriter w = new BufferedWriter(new FileWriter(f, true));
                w.write("#END reason=recovered rows=" + s.samples + " " + s.summaryLine() + "\n");
                w.close();
                Log.i(TAG, "recovered orphan journal " + f.getName() + ": " + s.summaryLine());
            } catch (Exception e) {
                Log.w(TAG, "recovery failed for " + f, e);
            }
        }
    }

    private void insertRide(String mode, RideStats s, String note) {
        if (s.samples < 5) {
            Log.i(TAG, "not inserting ride: only " + s.samples + " samples");
            return;
        }
        try {
            AppDatabase db = AppDatabase.Companion.getDatabase(app);
            long dur = Math.max(0, (s.lastT - s.firstT) / 1000L);
            ContentValues cv = new ContentValues();
            cv.put("startTime", s.firstT);
            cv.put("midTime", s.firstT + (s.lastT - s.firstT) / 2);
            cv.put("endTime", s.lastT);
            cv.put("durationSeconds", dur);
            cv.put("distanceKm", s.distanceKm());
            cv.put("maxSpeedKmh", s.maxSpeed);
            cv.put("avgSpeedKmh", dur > 0 ? s.distanceKm() / (dur / 3600.0) : 0.0);
            cv.put("estimatedFuelUsedL", 0.0);
            cv.put("weatherCondition", "Normal Dry");
            cv.put("mode", mode);
            cv.put("vehicleType", "ATV");
            cv.put("warningCount", 0);
            cv.put("isFinished", 1);
            cv.put("startLat", s.startLat);
            cv.put("startLon", s.startLon);
            cv.put("midLat", s.endLat);
            cv.put("midLon", s.endLon);
            cv.put("endLat", s.endLat);
            cv.put("endLon", s.endLon);
            cv.put("peakGForce", s.peakG > 0 ? s.peakG : 1.0);
            cv.put("smoothnessScore", 0);
            cv.put("launchAccelTimeSec", 0.0);
            cv.put("terrainSummary", note);
            cv.put("isCompressed", 0);
            long id = db.getOpenHelper().getWritableDatabase().insert("ride_logs", 2 /* CONFLICT_ABORT */, cv);
            Log.i(TAG, "inserted ride_logs id=" + id + " (" + note + ")");
        } catch (Exception e) {
            Log.e(TAG, "ride insert failed", e);
        }
    }

    /** Running aggregate of a ride (from live samples or from a CSV journal). */
    static final class RideStats {
        int samples;
        long firstT, lastT;
        double minDist = Double.MAX_VALUE, maxDist;
        double maxSpeed;
        double startLat, startLon, endLat, endLon;
        double peakG, minAlt = Double.MAX_VALUE, maxAlt = -Double.MAX_VALUE;
        String filterSummary = "";

        void addSensors(SensorHub.Snapshot sn) {
            if (sn.peakG > peakG) peakG = sn.peakG;
            if (sn.hasPressure) { minAlt = Math.min(minAlt, sn.altM); maxAlt = Math.max(maxAlt, sn.altM); }
        }

        double altRange() { return minAlt == Double.MAX_VALUE ? 0 : maxAlt - minAlt; }

        void reset() {
            samples = 0; firstT = lastT = 0; minDist = Double.MAX_VALUE; maxDist = 0; maxSpeed = 0;
            peakG = 0; minAlt = Double.MAX_VALUE; maxAlt = -Double.MAX_VALUE; filterSummary = "";
            startLat = startLon = endLat = endLon = 0;
        }

        void add(long t, GpsData g) {
            if (samples == 0) firstT = t;
            lastT = t;
            samples++;
            if (g == null) return;
            addValues(g.getLatitude(), g.getLongitude(), g.getCurrentSpeedKmh(), g.getDistanceKm());
        }

        void addCsv(String line) {
            String[] p = line.split(",", -1);
            if (p.length < 7) return;
            try {
                long t = Long.parseLong(p[0]);
                if (samples == 0) firstT = t;
                lastT = t;
                samples++;
                if (p[2].isEmpty()) return;
                if (p.length > 20 && !p[20].isEmpty()) peakG = Math.max(peakG, Double.parseDouble(p[20]));
                addValues(Double.parseDouble(p[2]), Double.parseDouble(p[3]),
                        Double.parseDouble(p[5]), Double.parseDouble(p[6]));
            } catch (NumberFormatException ignored) { }
        }

        private void addValues(double lat, double lon, double speed, double dist) {
            if (lat != 0 || lon != 0) {
                if (startLat == 0 && startLon == 0) { startLat = lat; startLon = lon; }
                endLat = lat; endLon = lon;
            }
            if (speed > maxSpeed) maxSpeed = speed;
            if (dist < minDist) minDist = dist;
            if (dist > maxDist) maxDist = dist;
        }

        double distanceKm() { return minDist == Double.MAX_VALUE ? 0 : Math.max(0, maxDist - minDist); }

        String summaryLine() {
            return "samples=" + samples + " dur_s=" + Math.max(0, (lastT - firstT) / 1000L)
                    + " dist_km=" + fmt(distanceKm(), 3) + " vmax_kmh=" + fmt(maxSpeed, 1);
        }
    }

    /**
     * All motion/environment sensors the device actually has (capability-detected, each optional).
     * Runs on the recorder HandlerThread; aggregates per second.
     */
    static final class SensorHub implements SensorEventListener {
        static final class Snapshot {
            double vibRms, peakG, gyroRms, headingDeg, pressureHpa, altM, lux;
            boolean hasHeading, hasPressure, hasLux, hasProx, proxNear, pocketed;
        }
        private SensorManager sm;
        private final float[] gravity = new float[3];
        private final float[] accel = new float[3];
        private final float[] mag = new float[3];
        private boolean haveAccel, haveMag, haveLinear;
        private double vibSumSq, gyroSumSq, peakG;
        private int vibN, gyroN;
        private float lastPressure = Float.NaN, lastLux = Float.NaN;
        private boolean proxPresent, proxNear;
        private float proxMax;

        void register(Context c, Handler h) {
            try {
                sm = (SensorManager) c.getSystemService(Context.SENSOR_SERVICE);
                int rate = DeviceCapabilities.isLowRam(c) ? SensorManager.SENSOR_DELAY_UI : SensorManager.SENSOR_DELAY_GAME;
                Sensor lin = sm.getDefaultSensor(Sensor.TYPE_LINEAR_ACCELERATION);
                haveLinear = lin != null;
                reg(sm.getDefaultSensor(Sensor.TYPE_ACCELEROMETER), rate, h);
                if (haveLinear) reg(lin, rate, h);
                reg(sm.getDefaultSensor(Sensor.TYPE_GYROSCOPE), rate, h);
                reg(sm.getDefaultSensor(Sensor.TYPE_MAGNETIC_FIELD), SensorManager.SENSOR_DELAY_UI, h);
                reg(sm.getDefaultSensor(Sensor.TYPE_PRESSURE), SensorManager.SENSOR_DELAY_NORMAL, h);
                reg(sm.getDefaultSensor(Sensor.TYPE_LIGHT), SensorManager.SENSOR_DELAY_NORMAL, h);
                Sensor prox = sm.getDefaultSensor(Sensor.TYPE_PROXIMITY);
                proxPresent = prox != null;
                if (proxPresent) { proxMax = prox.getMaximumRange(); reg(prox, SensorManager.SENSOR_DELAY_NORMAL, h); }
            } catch (Exception e) {
                android.util.Log.w(TAG, "sensor registration failed", e);
            }
        }

        private void reg(Sensor s, int rate, Handler h) {
            if (s != null && sm != null) sm.registerListener(this, s, rate, h);
        }

        void unregister() {
            try { if (sm != null) sm.unregisterListener(this); } catch (Exception ignored) { }
        }

        @Override public void onSensorChanged(SensorEvent e) {
            float[] v = e.values;
            switch (e.sensor.getType()) {
                case Sensor.TYPE_ACCELEROMETER: {
                    System.arraycopy(v, 0, accel, 0, 3);
                    haveAccel = true;
                    double g = Math.sqrt(v[0] * v[0] + v[1] * v[1] + v[2] * v[2]) / SensorManager.GRAVITY_EARTH;
                    if (g > peakG) peakG = g;
                    if (!haveLinear) { // low-pass gravity estimate, high-pass = vibration
                        for (int i = 0; i < 3; i++) gravity[i] = 0.9f * gravity[i] + 0.1f * v[i];
                        double x = v[0] - gravity[0], y = v[1] - gravity[1], z = v[2] - gravity[2];
                        vibSumSq += x * x + y * y + z * z; vibN++;
                    }
                    break;
                }
                case Sensor.TYPE_LINEAR_ACCELERATION:
                    vibSumSq += v[0] * v[0] + v[1] * v[1] + v[2] * v[2]; vibN++;
                    break;
                case Sensor.TYPE_GYROSCOPE:
                    gyroSumSq += v[0] * v[0] + v[1] * v[1] + v[2] * v[2]; gyroN++;
                    break;
                case Sensor.TYPE_MAGNETIC_FIELD:
                    System.arraycopy(v, 0, mag, 0, 3); haveMag = true;
                    break;
                case Sensor.TYPE_PRESSURE:
                    lastPressure = v[0];
                    break;
                case Sensor.TYPE_LIGHT:
                    lastLux = v[0];
                    break;
                case Sensor.TYPE_PROXIMITY:
                    // many proximity sensors are binary (0 or max range)
                    proxNear = v[0] < Math.min(5f, proxMax > 0 ? proxMax : 5f);
                    break;
                default:
            }
        }

        @Override public void onAccuracyChanged(Sensor s, int a) { }

        Snapshot snapshotAndReset() {
            Snapshot sn = new Snapshot();
            sn.vibRms = vibN > 0 ? Math.sqrt(vibSumSq / vibN) : 0;
            sn.gyroRms = gyroN > 0 ? Math.sqrt(gyroSumSq / gyroN) : 0;
            sn.peakG = peakG;
            if (haveAccel && haveMag) {
                float[] r = new float[9], o = new float[3];
                if (SensorManager.getRotationMatrix(r, null, accel, mag)) {
                    SensorManager.getOrientation(r, o);
                    sn.headingDeg = (Math.toDegrees(o[0]) + 360.0) % 360.0;
                    sn.hasHeading = true;
                }
            }
            if (!Float.isNaN(lastPressure)) {
                sn.hasPressure = true;
                sn.pressureHpa = lastPressure;
                sn.altM = SensorManager.getAltitude(SensorManager.PRESSURE_STANDARD_ATMOSPHERE, lastPressure);
            }
            if (!Float.isNaN(lastLux)) { sn.hasLux = true; sn.lux = lastLux; }
            sn.hasProx = proxPresent;
            sn.proxNear = proxNear;
            // pocket detection: proximity covered, or (no proximity sensor) darkness - same lux rule the app uses
            sn.pocketed = proxPresent ? proxNear : (sn.hasLux && sn.lux < 5f);
            vibSumSq = 0; vibN = 0; gyroSumSq = 0; gyroN = 0; peakG = 0;
            return sn;
        }
    }
}
