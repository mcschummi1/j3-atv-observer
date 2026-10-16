package com.cgs.atvobserver.patch;

import android.content.ContentValues;
import android.content.Context;
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
        handler.removeCallbacks(tick);
        handler.post(tick);
        Log.i(TAG, "ride session started: " + mode + " -> " + sessionFile);
    }

    private void endSession(String reason, boolean insertIntoDb) {
        if (sessionMode == null) return;
        handler.removeCallbacks(tick);
        try {
            if (out != null) {
                out.write("#END reason=" + reason + " rows=" + rows + " " + stats.summaryLine() + "\n");
                out.close();
            }
        } catch (Exception e) {
            Log.w(TAG, "journal close failed", e);
        }
        if (insertIntoDb) {
            insertRide(sessionMode, stats, "Pocket journal (app closed before End Ride)");
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
        return "t_ms,elapsed_s,lat,lon,acc_m,speed_kmh,dist_km,gps_ok,rms_db,rpm,rpm_var,engine,audio_conf";
    }

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
            cv.put("peakGForce", 1.0);
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

        void reset() {
            samples = 0; firstT = lastT = 0; minDist = Double.MAX_VALUE; maxDist = 0; maxSpeed = 0;
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
}
