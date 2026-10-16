package com.cgs.atvobserver.recording;

import android.Manifest;
import android.app.Notification;
import android.app.Service;
import android.content.Context;
import android.content.pm.PackageManager;
import android.hardware.SensorManager;
import android.media.AudioFormat;
import android.media.AudioRecord;
import android.os.Build;
import android.util.Log;

/**
 * Port of the frozen patch line's ObserverCompat (src/java/.../patch/ObserverCompat.java) to the
 * Gradle app. The smali-hook entry points (sharedGps/sharedAudio/audioScope/addExtraPermissions,
 * MainActivity hooks) are not needed here because this app owns its sources (see Telemetry); what
 * remains is the device/permission logic that fixed pocket mode:
 *  - startForeground() with exactly the location|microphone types the app holds (+ fallbacks),
 *  - AudioRecord creation over the probed sources/sample rate with STATE_INITIALIZED check,
 *  - "mic busy" detection after startRecording(),
 *  - accelerometer rate by RAM class.
 */
public final class ObserverCompat {
    public static final String TAG = "CGSObserver";
    // ServiceInfo.FOREGROUND_SERVICE_TYPE_* literal values
    public static final int FGS_TYPE_LOCATION = 0x00000008;
    public static final int FGS_TYPE_MICROPHONE = 0x00000080;

    private ObserverCompat() { }

    public static boolean has(Context c, String perm) {
        return c.checkSelfPermission(perm) == PackageManager.PERMISSION_GRANTED;
    }

    public static boolean hasLocation(Context c) {
        return has(c, Manifest.permission.ACCESS_FINE_LOCATION) || has(c, Manifest.permission.ACCESS_COARSE_LOCATION);
    }

    public static boolean hasMic(Context c) {
        return has(c, Manifest.permission.RECORD_AUDIO);
    }

    public static boolean hasCamera(Context c) {
        return has(c, Manifest.permission.CAMERA);
    }

    /** Returns the FGS type mask actually used (0 on API 28 / plain startForeground). */
    public static int startForegroundCompat(Service s, int id, Notification n) {
        if (Build.VERSION.SDK_INT < 29) {
            s.startForeground(id, n);
            return 0;
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
                return t;
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
        return 0;
    }

    /** Best available AudioRecord or IllegalStateException (caller reports the mic as Unavailable). */
    public static AudioRecord createAudioRecord(Context c, int sampleRate, int bufferSize) {
        if (!hasMic(c)) throw new IllegalStateException("RECORD_AUDIO not granted");
        int min = AudioRecord.getMinBufferSize(sampleRate, AudioFormat.CHANNEL_IN_MONO, AudioFormat.ENCODING_PCM_16BIT);
        int buf = Math.max(bufferSize, min > 0 ? min * 2 : bufferSize);
        Exception last = null;
        for (int src : DeviceCapabilities.audioSources(c)) {
            AudioRecord r = null;
            try {
                r = new AudioRecord(src, sampleRate, AudioFormat.CHANNEL_IN_MONO, AudioFormat.ENCODING_PCM_16BIT, buf);
                if (r.getState() == AudioRecord.STATE_INITIALIZED) {
                    DeviceCapabilities.noteAudioSource(src + "@" + sampleRate + "Hz/buf" + buf);
                    return r;
                }
            } catch (Exception e) {
                last = e;
                Log.w(TAG, "AudioRecord source " + src + " failed: " + e);
            }
            if (r != null) try { r.release(); } catch (Exception ignored) { }
        }
        DeviceCapabilities.noteAudioSource("none");
        throw new IllegalStateException("no usable AudioRecord configuration", last);
    }

    /** Android 9 allows one capture client; a busy mic makes startRecording() silently not start. */
    public static void checkRecordingStarted(AudioRecord r) {
        if (r != null && r.getRecordingState() != AudioRecord.RECORDSTATE_RECORDING) {
            try { r.release(); } catch (Exception ignored) { }
            throw new IllegalStateException("microphone busy");
        }
    }

    public static int accelDelay(Context c) {
        return DeviceCapabilities.isLowRam(c) ? SensorManager.SENSOR_DELAY_UI : SensorManager.SENSOR_DELAY_GAME;
    }
}
