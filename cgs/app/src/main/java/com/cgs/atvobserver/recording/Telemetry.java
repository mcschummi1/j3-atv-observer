package com.cgs.atvobserver.recording;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.media.AudioRecord;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.util.Log;

import com.cgs.atvobserver.core.engine.EventFilter;
import com.cgs.atvobserver.core.engine.dashboard.GpsFix;
import com.cgs.atvobserver.core.engine.dashboard.TripDistance;

/**
 * Process-wide telemetry sources shared by the UI and the foreground service (the root-cause fix
 * of the frozen line: one instance of each source, owned by the process, not by an Activity).
 *
 * Stage 1 scope: GPS (LocationManager, no Play Services) and microphone LEVEL (RMS dB with the
 * original formula + adaptive gate). Audio RPM / harmonics are Stage 4 and are reported as unknown
 * (empty journal cells) - never estimated here.
 */
public final class Telemetry {
    private static Telemetry sInstance;

    public static synchronized Telemetry get(Context c) {
        if (sInstance == null) sInstance = new Telemetry(c.getApplicationContext());
        return sInstance;
    }

    private final Context app;
    private final HandlerThread thread = new HandlerThread("cgs-telemetry");
    private final Handler handler;

    private Telemetry(Context app) {
        this.app = app;
        thread.start();
        handler = new Handler(thread.getLooper());
    }

    // ------------------------------------------------------------------ GPS
    private volatile Location lastLocation;
    private volatile long lastFixElapsedMs = -1;
    private final TripDistance trip = new TripDistance();
    private volatile boolean tripRunning;
    private volatile long tripStartElapsedMs = -1;
    private boolean gpsListening;

    private final LocationListener listener = new LocationListener() {
        @Override public void onLocationChanged(Location l) {
            lastLocation = l;
            lastFixElapsedMs = l.getElapsedRealtimeNanos() / 1_000_000L;
            if (tripRunning) {
                synchronized (trip) { trip.add(toFix(l)); }
            }
        }
        @Override public void onStatusChanged(String p, int s, Bundle b) { }
        @Override public void onProviderEnabled(String p) { }
        @Override public void onProviderDisabled(String p) { }
    };

    @SuppressLint("MissingPermission")
    public synchronized void startGps() {
        if (gpsListening || !ObserverCompat.hasLocation(app)) return;
        try {
            LocationManager lm = (LocationManager) app.getSystemService(Context.LOCATION_SERVICE);
            String provider = ObserverCompat.has(app, android.Manifest.permission.ACCESS_FINE_LOCATION)
                    ? LocationManager.GPS_PROVIDER : LocationManager.NETWORK_PROVIDER;
            lm.requestLocationUpdates(provider, 1000L, 1f, listener, thread.getLooper());
            gpsListening = true;
        } catch (Exception e) {
            Log.w(ObserverCompat.TAG, "GPS start failed", e);
        }
    }

    public synchronized void stopGps() {
        if (!gpsListening) return;
        try {
            ((LocationManager) app.getSystemService(Context.LOCATION_SERVICE)).removeUpdates(listener);
        } catch (Exception ignored) { }
        gpsListening = false;
    }

    public boolean gpsProviderEnabled() {
        try {
            LocationManager lm = (LocationManager) app.getSystemService(Context.LOCATION_SERVICE);
            return lm.isProviderEnabled(LocationManager.GPS_PROVIDER) || lm.isProviderEnabled(LocationManager.NETWORK_PROVIDER);
        } catch (Exception e) {
            return false;
        }
    }

    /** Last fix in dashboard form, or null. Speed null when the fix carries no speed. */
    public GpsFix lastFix() {
        Location l = lastLocation;
        return l == null ? null : toFix(l);
    }

    public Location lastLocation() { return lastLocation; }
    public long lastFixElapsedMs() { return lastFixElapsedMs; }

    private static GpsFix toFix(Location l) {
        return new GpsFix(l.getElapsedRealtimeNanos() / 1_000_000L,
                l.hasSpeed() ? (double) l.getSpeed() * 3.6 : null,
                l.hasAccuracy() ? (double) l.getAccuracy() : null,
                l.getLatitude(), l.getLongitude());
    }

    public void startTrip() {
        synchronized (trip) { trip.reset(); }
        tripStartElapsedMs = SystemClock.elapsedRealtime();
        tripRunning = true;
    }

    public void stopTrip() { tripRunning = false; tripStartElapsedMs = -1; }
    public boolean tripRunning() { return tripRunning; }
    public long tripStartElapsedMs() { return tripStartElapsedMs; }
    public double tripKm() { synchronized (trip) { return trip.getKm(); } }
    public int tripValidFixes() { synchronized (trip) { return trip.getValidFixes(); } }

    // ------------------------------------------------------------------ microphone level
    /** Latest audio frame: seq increases per frame; dB uses the original 20*log10(rms)+90 scale. */
    public static final class AudioFrame {
        public final long seq;
        public final double rmsDb;
        public final boolean aboveGate;
        AudioFrame(long seq, double rmsDb, boolean aboveGate) { this.seq = seq; this.rmsDb = rmsDb; this.aboveGate = aboveGate; }
    }

    private volatile AudioFrame lastAudio;
    private volatile boolean audioRunning;
    private volatile String audioError = "";
    private Thread audioThread;

    public AudioFrame lastAudio() { return lastAudio; }
    public boolean audioRunning() { return audioRunning; }
    public String audioError() { return audioError; }

    /** Starts the mic reader if permitted and not already running (also used as the 10 s busy-retry). */
    public synchronized void ensureAudio() {
        if (audioThread != null && audioThread.isAlive()) return;
        if (!ObserverCompat.hasMic(app)) { audioError = "permission denied"; return; }
        audioThread = new Thread(this::audioLoop, "cgs-audio");
        audioThread.start();
    }

    public synchronized void stopAudio() {
        Thread t = audioThread;
        audioThread = null;
        if (t != null) t.interrupt();
    }

    private void audioLoop() {
        int rate = DeviceCapabilities.sampleRate();
        int frame = 4096;
        AudioRecord r = null;
        try {
            r = ObserverCompat.createAudioRecord(app, rate, frame * 2);
            r.startRecording();
            ObserverCompat.checkRecordingStarted(r);
            audioRunning = true;
            audioError = "";
            short[] buf = new short[frame];
            long seq = 0;
            while (!Thread.currentThread().isInterrupted()) {
                int n = r.read(buf, 0, buf.length);
                if (n <= 0) { audioError = "read error " + n; break; }
                double sum = 0;
                for (int i = 0; i < n; i++) { double s = buf[i] / 32768.0; sum += s * s; }
                double rms = Math.sqrt(sum / n);
                double db = rms > 1.0E-5 ? 20 * Math.log10(rms) + 90.0 : 0.0;
                double gate = EventFilter.engineGateDb(db);
                lastAudio = new AudioFrame(++seq, db, db > gate);
            }
        } catch (Exception e) {
            audioError = String.valueOf(e.getMessage());
            Log.w(ObserverCompat.TAG, "audio unavailable: " + e);
        } finally {
            audioRunning = false;
            if (r != null) {
                try { r.stop(); } catch (Exception ignored) { }
                try { r.release(); } catch (Exception ignored) { }
            }
        }
    }
}
