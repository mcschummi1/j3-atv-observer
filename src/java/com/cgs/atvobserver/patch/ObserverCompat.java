package com.cgs.atvobserver.patch;

import android.Manifest;
import android.app.Activity;
import android.app.Notification;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;

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

    private ObserverCompat() { }

    // ------------------------------------------------------------------ shared sources
    public static synchronized GpsTracker sharedGps(Context c) {
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
