package com.cgs.atvobserver.patch;

import android.Manifest;
import android.app.Activity;
import android.app.Notification;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.hardware.SensorManager;
import android.media.AudioFormat;
import android.media.AudioRecord;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.util.Log;

import java.util.List;

import com.cgs.atvobserver.audio.EngineAudioProcessor;
import com.cgs.atvobserver.location.GpsTracker;
import com.cgs.atvobserver.sensor.UniversalSensorManager;
import com.cgs.atvobserver.service.ObserverForegroundService;

import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.GlobalScope;

/**
 * Static entry points that the smali patches call into.
 *
 * Pocket-mode fix (see docs/ROOT_CAUSE.md):
 *  - one process-wide instance of each telemetry source, shared by MainActivity and
 *    ObserverForegroundService (originally each created its own; the service's copies were
 *    never read and competed for the microphone),
 *  - audio processing runs on an application-wide scope instead of the Activity lifecycleScope,
 *  - startForeground() is called with the microphone|location types the app actually holds,
 *  - the service is only started once a while-in-use permission is granted,
 *  - an Activity destroyed during a TRIP/POCKET ride no longer tears down recording.
 */
public final class ObserverCompat {
    public static final String TAG = "ATVObserverPatch";

    // ServiceInfo.FOREGROUND_SERVICE_TYPE_* (literal values so we do not depend on newer SDK stubs)
    static final int FGS_TYPE_LOCATION = 0x00000008;
    static final int FGS_TYPE_MICROPHONE = 0x00000080;

    private static GpsTracker sGps;
    private static EngineAudioProcessor sAudio;
    private static UniversalSensorManager sSensors;
    private static volatile String sScreen = "";
    private static volatile Context sApp;

    private ObserverCompat() { }

    // ------------------------------------------------------------------ shared sources
    public static synchronized GpsTracker sharedGps(Context c) {
        sApp = c.getApplicationContext();
        if (sGps == null) sGps = new GpsTracker(c.getApplicationContext());
        return sGps;
    }

    public static synchronized EngineAudioProcessor sharedAudio() {
        if (sAudio == null) sAudio = new EngineAudioProcessor();
        return sAudio;
    }

    public static synchronized UniversalSensorManager sharedSensors(Context c) {
        if (sSensors == null) sSensors = new UniversalSensorManager(c.getApplicationContext());
        return sSensors;
    }

    static synchronized GpsTracker peekGps() { return sGps; }
    static synchronized EngineAudioProcessor peekAudio() { return sAudio; }

    /** Replaces the Activity lifecycleScope passed to EngineAudioProcessor.startListening(). */
    public static CoroutineScope audioScope(CoroutineScope original) {
        return GlobalScope.INSTANCE;
    }

    // ------------------------------------------------------------------ device compatibility (step 3)
    /** Replaces the hard-coded 22050 Hz in EngineAudioProcessor.<init>. */
    public static int pickSampleRate() {
        return DeviceCapabilities.sampleRate();
    }

    /**
     * Replaces {@code new AudioRecord(MIC, rate, MONO, PCM16, buf)} in EngineAudioProcessor.startListening.
     * Tries the best available source, verifies STATE_INITIALIZED and throws IllegalStateException
     * (caught by the original code -> "UNAVAILABLE") instead of returning a dead recorder.
     */
    public static AudioRecord createAudioRecord(int sampleRate, int bufferSize) {
        Context c = sApp;
        if (c != null && !hasMic(c)) throw new IllegalStateException("RECORD_AUDIO not granted");
        int min = AudioRecord.getMinBufferSize(sampleRate, AudioFormat.CHANNEL_IN_MONO, AudioFormat.ENCODING_PCM_16BIT);
        int buf = Math.max(bufferSize, min > 0 ? min * 2 : bufferSize);
        Exception last = null;
        for (int src : DeviceCapabilities.audioSources(c)) {
            AudioRecord r = null;
            try {
                r = new AudioRecord(src, sampleRate, AudioFormat.CHANNEL_IN_MONO, AudioFormat.ENCODING_PCM_16BIT, buf);
                if (r.getState() == AudioRecord.STATE_INITIALIZED) {
                    DeviceCapabilities.noteAudioSource(src + "@" + sampleRate + "Hz/buf" + buf);
                    Log.i(TAG, "AudioRecord ok: source=" + src + " rate=" + sampleRate + " buf=" + buf);
                    return r;
                }
                Log.w(TAG, "AudioRecord source " + src + " not initialized");
            } catch (Exception e) {
                last = e;
                Log.w(TAG, "AudioRecord source " + src + " failed: " + e);
            }
            if (r != null) try { r.release(); } catch (Exception ignored) { }
        }
        DeviceCapabilities.noteAudioSource("none");
        throw new IllegalStateException("no usable AudioRecord configuration", last);
    }

    /**
     * Injected right after AudioRecord.startRecording(). If the mic is held by another client
     * (Android 9 allows only one capture; phone calls on all versions) startRecording() does not
     * throw, it just stays STOPPED - the original code then looped forever on failed reads.
     */
    public static void checkRecordingStarted(AudioRecord r) {
        if (r == null) return;
        if (r.getRecordingState() != AudioRecord.RECORDSTATE_RECORDING) {
            try { r.release(); } catch (Exception ignored) { }
            Log.w(TAG, "AudioRecord.startRecording() did not start (mic busy?) - will retry");
            throw new IllegalStateException("microphone busy");
        }
    }

    /** Accelerometer rate. Original: SENSOR_DELAY_FASTEST (hundreds of Hz -> one StateFlow emission per sample). */
    public static int accelDelay() {
        Context c = sApp;
        if (c != null && DeviceCapabilities.isLowRam(c)) return SensorManager.SENSOR_DELAY_UI;   // ~16 Hz on J3-class
        return SensorManager.SENSOR_DELAY_GAME;                                                   // ~50 Hz
    }

    /** Injected into checkAndRequestPermissions() before the isEmpty() check. */
    public static void addExtraPermissions(Context c, List<String> list) {
        // Only piggy-back on an existing request: the original permission callback only starts
        // GPS/audio for permissions that were part of the request map.
        if (list.isEmpty()) return;
        if (Build.VERSION.SDK_INT >= 33 && !has(c, "android.permission.POST_NOTIFICATIONS")) {
            list.add("android.permission.POST_NOTIFICATIONS");
        }
    }

    /**
     * Added MainActivity.onResume(). Once the core permissions are granted, ask once for
     * notifications (Android 13+) and for exemption from battery optimisation - Samsung and
     * Motorola battery managers otherwise kill or throttle the service with the screen off.
     */
    public static void onActivityResume(Activity a) {
        try {
            if (!hasLocation(a) || !hasMic(a)) return;
            SharedPreferences sp = a.getSharedPreferences("atv_patch", Context.MODE_PRIVATE);
            if (Build.VERSION.SDK_INT >= 33 && !has(a, "android.permission.POST_NOTIFICATIONS")
                    && !sp.getBoolean("asked_notifications", false)) {
                sp.edit().putBoolean("asked_notifications", true).apply();
                a.requestPermissions(new String[]{"android.permission.POST_NOTIFICATIONS"}, 4711);
                return;
            }
            if (!DeviceCapabilities.ignoringBatteryOptimizations(a)) {
                int asked = sp.getInt("asked_battery", 0);
                if (asked < 2) {
                    sp.edit().putInt("asked_battery", asked + 1).apply();
                    Intent i = new Intent(Settings.ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS,
                            Uri.parse("package:" + a.getPackageName()));
                    a.startActivity(i);
                }
            }
        } catch (Exception e) {
            Log.w(TAG, "onActivityResume helper failed", e);
        }
    }

    /** Called by the recorder: re-open the mic after "busy"/permission errors. */
    static void ensureAudioRunning() {
        EngineAudioProcessor a = peekAudio();
        Context c = sApp;
        if (a == null || c == null || !hasMic(c)) return;
        try {
            a.startListening(GlobalScope.INSTANCE); // no-op while already recording
        } catch (Exception e) {
            Log.w(TAG, "audio restart failed", e);
        }
    }

    static Context app() { return sApp; }

    // ------------------------------------------------------------------ permissions / service
    public static boolean has(Context c, String perm) {
        return c.checkSelfPermission(perm) == PackageManager.PERMISSION_GRANTED;
    }

    static boolean hasLocation(Context c) {
        return has(c, Manifest.permission.ACCESS_FINE_LOCATION) || has(c, Manifest.permission.ACCESS_COARSE_LOCATION);
    }

    static boolean hasMic(Context c) {
        return has(c, Manifest.permission.RECORD_AUDIO);
    }

    /** Called instead of Companion.startService() from MainActivity.onCreate and the permission callback. */
    public static void startServiceIfPermitted(Context c, String statusText) {
        if (!hasLocation(c) && !hasMic(c)) {
            Log.w(TAG, "Not starting foreground service yet: no location/microphone permission granted");
            return;
        }
        try {
            Intent i = new Intent(c, ObserverForegroundService.class);
            i.putExtra("status_text", statusText == null ? "Observer Active - Tracking Ride" : statusText);
            c.startForegroundService(i);
        } catch (Exception e) {
            Log.e(TAG, "startForegroundService failed", e);
        }
    }

    /** Replaces Service.startForeground(id, notification) in ObserverForegroundService.onStartCommand. */
    public static void startForegroundCompat(Service s, int id, Notification n) {
        if (Build.VERSION.SDK_INT < 29) {
            s.startForeground(id, n);
            return;
        }
        int types = 0;
        if (hasLocation(s)) types |= FGS_TYPE_LOCATION;
        if (hasMic(s)) types |= FGS_TYPE_MICROPHONE;
        int[] attempts = {types, types & FGS_TYPE_MICROPHONE, types & FGS_TYPE_LOCATION};
        for (int t : attempts) {
            if (t == 0) continue;
            try {
                s.startForeground(id, n, t);
                Log.i(TAG, "startForeground ok, types=0x" + Integer.toHexString(t));
                PocketRecorder.noteForegroundTypes(t);
                return;
            } catch (Exception e) {
                // Android 14+: SecurityException if a while-in-use permission is missing or the
                // service was (re)started from the background.
                Log.w(TAG, "startForeground types=0x" + Integer.toHexString(t) + " rejected: " + e);
            }
        }
        try {
            s.startForeground(id, n);
        } catch (Exception e) {
            Log.e(TAG, "startForeground failed completely, stopping service", e);
            s.stopSelf();
        }
    }

    // ------------------------------------------------------------------ service lifecycle hooks
    public static void onServiceCreate(Service s) {
        sApp = s.getApplicationContext();
        PocketRecorder.start(s.getApplicationContext());
    }

    public static void onServiceDestroy(Service s) {
        PocketRecorder.stop();
    }

    // ------------------------------------------------------------------ UI hooks
    /** Injected at the start of the LaunchedEffect keyed on MainActivity.currentScreen. */
    public static void onScreenChanged(String screen) {
        String prev = sScreen;
        sScreen = screen == null ? "" : screen;
        Log.i(TAG, "screen " + prev + " -> " + sScreen);
        PocketRecorder.onScreen(sScreen);
    }

    public static boolean isRideScreen() {
        String s = sScreen;
        return "POCKET".equals(s) || "TRIP".equals(s);
    }

    /**
     * Injected at the top of MainActivity.onDestroy(). Returning true skips the original teardown
     * (stop GPS/audio/sensors + stopService) so a ride in progress keeps recording in the
     * foreground service even if the Activity is destroyed (swipe-away, OEM task cleaner).
     */
    public static boolean keepRecordingOnDestroy(Activity a) {
        if (isRideScreen() && PocketRecorder.isSessionActive()) {
            Log.w(TAG, "Activity destroyed during " + sScreen + " ride - recording continues in service");
            PocketRecorder.markActivityGone();
            return true;
        }
        return false;
    }
}
