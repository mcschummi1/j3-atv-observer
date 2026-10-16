package com.cgs.atvobserver.recording;

import android.content.ContentValues;
import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.location.Location;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.PowerManager;
import android.os.SystemClock;
import android.util.Log;

import com.cgs.atvobserver.core.engine.AdaptiveEventFilter;
import com.cgs.atvobserver.core.engine.EventFilter;
import com.cgs.atvobserver.core.engine.RideRecord;
import com.cgs.atvobserver.data.db.AppDatabase;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

/**
 * Port of the frozen line's PocketRecorder (src/java/.../patch/PocketRecorder.java) to the Gradle
 * app. Same journal directory, same "#J3ATV-JOURNAL v1" header (incl. vehicle=), same 31 columns,
 * same 1 row/s with flush every 5 rows, same #END trailer, same orphan recovery into ride_logs.
 *
 * Differences (documented in docs/CGS_STAGE1.md):
 *  - the service owns ride start/stop (beginRide/endRide) - there is no Activity-side insert, so
 *    every ended session is inserted into ride_logs;
 *  - telemetry comes from {@link Telemetry}: GPS + microphone level. rpm, rpm_var, audio_conf are
 *    written EMPTY (= unknown): the RPM estimator is Stage 4 and is not faked here; periodic_frac=0.
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
    private final Telemetry tel;
    private PowerManager.WakeLock wakeLock;

    private volatile String sessionMode;
    private String sessionVehicle;
    private File sessionFile;
    private BufferedWriter out;
    private long sessionStartElapsed;
    private int rows;
    private int ticksSinceAudioCheck;
    private final RideStats stats = new RideStats();
    private final SensorHub sensors = new SensorHub();
    private final EventFilter filter = new EventFilter();
    private long lastAudioSeq;
    private int aFrames;
    private double aSumDb, aMaxDb;

    private PocketRecorder(Context app) {
        this.app = app;
        this.tel = Telemetry.get(app);
        thread = new HandlerThread("atv-ride-journal");
        thread.start();
        handler = new Handler(thread.getLooper());
    }

    // ------------------------------------------------------------------ static API (service)
    public static synchronized void start(Context c) {
        if (sInstance != null) return;
        sInstance = new PocketRecorder(c.getApplicationContext());
        final PocketRecorder r = sInstance;
        r.handler.post(r::recoverOrphans);
        r.handler.post(() -> DeviceCapabilities.writeReport(r.app, r.journalDir()));
    }

    public static synchronized void stop() {
        final PocketRecorder r = sInstance;
        sInstance = null;
        if (r == null) return;
        r.handler.post(() -> { r.endSession("service-stopped"); r.thread.quitSafely(); });
    }

    public static void beginRide(final String mode) {
        final PocketRecorder r; synchronized (PocketRecorder.class) { r = sInstance; }
        if (r != null) r.handler.post(() -> { if (r.sessionMode == null) r.beginSession(mode); });
    }

    public static void endRide(final String reason) {
        final PocketRecorder r; synchronized (PocketRecorder.class) { r = sInstance; }
        if (r != null) r.handler.post(() -> r.endSession(reason));
    }

    public static boolean isSessionActive() {
        PocketRecorder r; synchronized (PocketRecorder.class) { r = sInstance; }
        return r != null && r.sessionMode != null;
    }

    public static void noteForegroundTypes(int t) { sFgsTypes = t; }

    /** Journal directory: Android/data/com.cgs.atvobserver/files/ride_journal (same as v1.1.7). */
    public static File journalDir(Context c) {
        File base = c.getExternalFilesDir(null);
        if (base == null) base = c.getFilesDir();
        File dir = new File(base, "ride_journal");
        if (!dir.exists() && !dir.mkdirs()) Log.w(TAG, "mkdirs failed: " + dir);
        return dir;
    }

    File journalDir() { return journalDir(app); }

    // ------------------------------------------------------------------ session handling
    private void beginSession(String mode) {
        sessionVehicle = activeVehicle();
        try {
            String stamp = new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(new Date());
            sessionFile = new File(journalDir(), "ride_" + mode.toLowerCase(Locale.US) + "_" + stamp + ".csv");
            out = new BufferedWriter(new FileWriter(sessionFile, true));
            out.write(RideRecord.journalHeader(mode, sessionVehicle, sFgsTypes, android.os.Build.VERSION.SDK_INT,
                    android.os.Build.MANUFACTURER + "/" + android.os.Build.MODEL) + "\n");
            out.write(header() + "\n");
            out.flush();
        } catch (Exception e) {
            Log.e(TAG, "cannot open journal", e);
            out = null;
        }
        sessionMode = mode;
        sessionStartElapsed = SystemClock.elapsedRealtime();
        rows = 0;
        stats.reset();
        tel.startTrip();
        acquireWakeLock();
        filter.reset();
        sensors.register(app, handler);
        handler.removeCallbacks(tick);
        handler.removeCallbacks(audioPoll);
        handler.post(tick);
        handler.post(audioPoll);
        Log.i(TAG, "ride session started: " + mode + "/" + sessionVehicle + " -> " + sessionFile);
    }

    private void endSession(String reason) {
        if (sessionMode == null) return;
        handler.removeCallbacks(tick);
        handler.removeCallbacks(audioPoll);
        sensors.unregister();
        tel.stopTrip();
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
        insertRide(sessionMode, sessionVehicle, stats, "Service journal (" + reason + ") | " + stats.filterSummary);
        out = null;
        sessionMode = null;
        sessionVehicle = null;
        sessionFile = null;
        releaseWakeLock();
    }

    private final Runnable tick = new Runnable() {
        @Override public void run() {
            if (sessionMode == null) return;
            try {
                if (++ticksSinceAudioCheck >= 10) {      // retry the mic every 10 s if it was busy
                    ticksSinceAudioCheck = 0;
                    tel.ensureAudio();
                }
                sample();
            } catch (Throwable t) {
                Log.w(TAG, "sample failed", t);
            }
            handler.postDelayed(this, TICK_MS);
        }
    };

    static String header() {
        return "t_ms,elapsed_s,lat,lon,acc_m,speed_kmh,dist_km,gps_ok,rms_db,rpm,rpm_var,engine,audio_conf"
                + ",audio_frames,rms_mean_db,rms_max_db,periodic_frac,audio_floor_db,engine_gate_db"
                + ",vib_rms,peak_g,gyro_rms,heading_deg,pressure_hpa,alt_m,lux,prox_near,pocketed"
                + ",score,raw_state,state";
    }

    private final Runnable audioPoll = new Runnable() {
        @Override public void run() {
            if (sessionMode == null) return;
            Telemetry.AudioFrame a = tel.lastAudio();
            if (a != null && a.seq != lastAudioSeq) {
                lastAudioSeq = a.seq;
                aFrames++;
                aSumDb += a.rmsDb;
                if (a.rmsDb > aMaxDb) aMaxDb = a.rmsDb;
            }
            handler.postDelayed(this, 100);
        }
    };

    void sample() throws Exception {
        long now = System.currentTimeMillis();
        long el = (SystemClock.elapsedRealtime() - sessionStartElapsed) / 1000L;
        Location g = tel.lastLocation();
        long fixAge = g == null ? Long.MAX_VALUE : SystemClock.elapsedRealtime() - tel.lastFixElapsedMs();
        boolean gpsOk = g != null && fixAge <= 5000 && g.hasAccuracy() && g.getAccuracy() < 25f;
        double speed = g != null && g.hasSpeed() ? g.getSpeed() * 3.6 : 0;
        double dist = tel.tripKm();
        stats.addTime(now);
        if (g != null && fixAge <= 5000) stats.addValues(g.getLatitude(), g.getLongitude(), speed, dist);
        StringBuilder sb = new StringBuilder(160);
        sb.append(now).append(',').append(el).append(',');
        if (g != null && fixAge <= 5000) {
            sb.append(fmt(g.getLatitude(), 6)).append(',').append(fmt(g.getLongitude(), 6)).append(',')
              .append(g.hasAccuracy() ? fmt(g.getAccuracy(), 1) : "").append(',').append(fmt(speed, 1)).append(',')
              .append(fmt(dist, 3)).append(',').append(gpsOk ? 1 : 0).append(',');
        } else {
            sb.append(",,,,,0,");
        }
        Telemetry.AudioFrame a = tel.lastAudio();
        if (a != null && tel.audioRunning()) {
            // rpm, rpm_var, audio_conf: unknown in Stage 1 (no RPM estimator) -> empty cells
            sb.append(fmt(a.rmsDb, 1)).append(",,,").append(a.aboveGate ? 1 : 0).append(',');
        } else {
            sb.append(",,,,");
        }
        double rmsMean = aFrames > 0 ? aSumDb / aFrames : 0;
        SensorHub.Snapshot sn = sensors.snapshotAndReset();
        double fSpeed = (g != null && fixAge <= 5000 && g.hasAccuracy() && g.getAccuracy() > 0 && g.getAccuracy() < 50) ? speed : -1;
        AdaptiveEventFilter.State st = filter.classify(rmsMean, aMaxDb, 0.0, sn.vibRms, sn.gyroRms, sn.pocketed, fSpeed);
        stats.addSensors(sn);
        sb.append(',').append(aFrames).append(',').append(fmt(rmsMean, 1)).append(',').append(fmt(aMaxDb, 1))
          .append(',').append(fmt(0.0, 2)).append(',').append(fmt(EventFilter.floorDb(), 0))
          .append(',').append(fmt(EventFilter.gateDb(), 0))
          .append(',').append(fmt(sn.vibRms, 3)).append(',').append(fmt(sn.peakG, 2)).append(',').append(fmt(sn.gyroRms, 3))
          .append(',').append(sn.hasHeading ? fmt(sn.headingDeg, 0) : "")
          .append(',').append(sn.hasPressure ? fmt(sn.pressureHpa, 2) : "")
          .append(',').append(sn.hasPressure ? fmt(sn.altM, 1) : "")
          .append(',').append(sn.hasLux ? fmt(sn.lux, 0) : "")
          .append(',').append(sn.hasProx ? (sn.proxNear ? "1" : "0") : "")
          .append(',').append(sn.pocketed ? 1 : 0)
          .append(',').append(fmt(filter.lastScore(), 2)).append(',').append(filter.lastRaw()).append(',').append(st);
        aFrames = 0; aSumDb = 0; aMaxDb = 0;
        writeRow(sb.toString());
    }

    void writeRow(String row) throws Exception {
        if (out == null) return;
        out.write(row);
        out.write('\n');
        rows++;
        if (rows % FLUSH_EVERY == 0) out.flush();
    }

    static String fmt(double v, int digits) { return RideRecord.fmt(v, digits); }

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
        try { if (wakeLock != null && wakeLock.isHeld()) wakeLock.release(); } catch (Exception ignored) { }
    }

    // ------------------------------------------------------------------ recovery / insert
    String activeVehicle() {
        try {
            return RideRecord.normalizeVehicle(app.getSharedPreferences(RideRecord.PREFS, Context.MODE_PRIVATE)
                    .getString(RideRecord.KEY_ACTIVE_VEHICLE, "ATV"));
        } catch (Exception e) {
            return "ATV";
        }
    }

    private void recoverOrphans() {
        File[] files = journalDir().listFiles();
        if (files == null) return;
        for (File f : files) {
            if (!f.getName().endsWith(".csv")) continue;
            if (f.equals(sessionFile)) continue;
            try {
                BufferedReader r = new BufferedReader(new FileReader(f));
                RideRecord.Parsed p;
                try { p = RideRecord.parseJournal(r); } finally { r.close(); }
                if (p.ended) continue;
                RideRecord.JournalSummary s = p.summary;
                String vehicle = RideRecord.recoveredVehicle(p, activeVehicle());
                if (s.samples > 0) {
                    insertRide(p.mode, vehicle, s, "Recovered pocket journal (process was killed)"
                            + (p.headerVehicle == null ? " | vehicle=active-at-recovery (legacy journal)" : ""));
                }
                BufferedWriter w = new BufferedWriter(new FileWriter(f, true));
                w.write("#END reason=recovered rows=" + s.samples + " vehicle=" + vehicle + " " + s.summaryLine() + "\n");
                w.close();
            } catch (Exception e) {
                Log.w(TAG, "recovery failed for " + f, e);
            }
        }
    }

    private void insertRide(String mode, String vehicle, RideRecord.JournalSummary s, String note) {
        if (s.samples < 5) {
            Log.i(TAG, "not inserting ride: only " + s.samples + " samples");
            return;
        }
        try {
            ContentValues cv = new ContentValues();
            for (Map.Entry<String, Object> e : RideRecord.rideRow(mode, vehicle, s, note).entrySet()) {
                Object v = e.getValue();
                if (v instanceof Long) cv.put(e.getKey(), (Long) v);
                else if (v instanceof Integer) cv.put(e.getKey(), (Integer) v);
                else if (v instanceof Double) cv.put(e.getKey(), (Double) v);
                else cv.put(e.getKey(), String.valueOf(v));
            }
            long id = AppDatabase.Companion.get(app).getOpenHelper().getWritableDatabase()
                    .insert("ride_logs", android.database.sqlite.SQLiteDatabase.CONFLICT_ABORT, cv);
            Log.i(TAG, "inserted ride_logs id=" + id + " vehicle=" + vehicle + " (" + note + ")");
        } catch (Exception e) {
            Log.e(TAG, "ride insert failed", e);
        }
    }

    /** Live-ride aggregate: the pure-Java JournalSummary plus sensor snapshots. */
    static final class RideStats extends RideRecord.JournalSummary {
        void addSensors(SensorHub.Snapshot sn) {
            if (sn.peakG > peakG) peakG = sn.peakG;
            if (sn.hasPressure) { minAlt = Math.min(minAlt, sn.altM); maxAlt = Math.max(maxAlt, sn.altM); }
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
                int rate = ObserverCompat.accelDelay(c);
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
