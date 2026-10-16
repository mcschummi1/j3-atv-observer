package com.cgs.atvobserver.patch;

import android.app.ActivityManager;
import android.app.usage.UsageStatsManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioRecord;
import android.media.MediaRecorder;
import android.os.Build;
import android.os.PowerManager;
import android.util.Log;

import java.io.File;
import java.io.FileWriter;
import java.util.List;

/**
 * Runtime capability detection (no model checks). Results are cached and written to
 * files/ride_journal/capabilities.json each time the service starts, so a ride journal can be
 * interpreted together with what the phone could actually do.
 */
public final class DeviceCapabilities {
    private static final String TAG = ObserverCompat.TAG;
    /** Preference order: original 22050 Hz first (keeps the app's DSP cost), then common native rates. */
    static final int[] RATES = {22050, 16000, 44100, 48000, 11025, 8000};

    private static int sSampleRate;
    private static volatile String sAudioSourceName = "?";

    private DeviceCapabilities() { }

    static synchronized int sampleRate() {
        if (sSampleRate != 0) return sSampleRate;
        for (int r : RATES) {
            int min = AudioRecord.getMinBufferSize(r, AudioFormat.CHANNEL_IN_MONO, AudioFormat.ENCODING_PCM_16BIT);
            if (min > 0) { sSampleRate = r; break; }
        }
        if (sSampleRate == 0) sSampleRate = 44100; // the only rate the CDD guarantees
        Log.i(TAG, "audio sample rate selected: " + sSampleRate);
        return sSampleRate;
    }

    static boolean unprocessedSupported(Context c) {
        try {
            AudioManager am = (AudioManager) c.getSystemService(Context.AUDIO_SERVICE);
            return "true".equals(am.getProperty(AudioManager.PROPERTY_SUPPORT_AUDIO_SOURCE_UNPROCESSED));
        } catch (Exception e) {
            return false;
        }
    }

    /**
     * Audio sources in preference order. UNPROCESSED / VOICE_RECOGNITION avoid the AGC + noise
     * suppression of the MIC/voice path, which can flatten steady engine noise; MIC is the
     * universal fallback.
     */
    static int[] audioSources(Context c) {
        if (c != null && unprocessedSupported(c)) {
            return new int[]{MediaRecorder.AudioSource.UNPROCESSED, MediaRecorder.AudioSource.VOICE_RECOGNITION,
                    MediaRecorder.AudioSource.MIC, MediaRecorder.AudioSource.DEFAULT};
        }
        return new int[]{MediaRecorder.AudioSource.VOICE_RECOGNITION, MediaRecorder.AudioSource.MIC,
                MediaRecorder.AudioSource.DEFAULT};
    }

    static void noteAudioSource(String s) { sAudioSourceName = s; }

    static boolean isLowRam(Context c) {
        try {
            ActivityManager am = (ActivityManager) c.getSystemService(Context.ACTIVITY_SERVICE);
            ActivityManager.MemoryInfo mi = new ActivityManager.MemoryInfo();
            am.getMemoryInfo(mi);
            return am.isLowRamDevice() || mi.totalMem < 2200L * 1024 * 1024;
        } catch (Exception e) {
            return false;
        }
    }

    static boolean ignoringBatteryOptimizations(Context c) {
        try {
            PowerManager pm = (PowerManager) c.getSystemService(Context.POWER_SERVICE);
            return pm.isIgnoringBatteryOptimizations(c.getPackageName());
        } catch (Exception e) {
            return false;
        }
    }

    /** Presence check only - the app never executes su. */
    static boolean suBinaryPresent() {
        String[] paths = {"/system/bin/su", "/system/xbin/su", "/sbin/su", "/debug_ramdisk/su", "/data/adb/magisk"};
        for (String p : paths) if (new File(p).exists()) return true;
        return false;
    }

    static String json(Context c) {
        StringBuilder sb = new StringBuilder(4096);
        sb.append("{\n");
        kv(sb, "manufacturer", Build.MANUFACTURER); kv(sb, "model", Build.MODEL); kv(sb, "device", Build.DEVICE);
        kv(sb, "hardware", Build.HARDWARE); kv(sb, "sdk", Build.VERSION.SDK_INT); kv(sb, "release", Build.VERSION.RELEASE);
        try {
            ActivityManager am = (ActivityManager) c.getSystemService(Context.ACTIVITY_SERVICE);
            ActivityManager.MemoryInfo mi = new ActivityManager.MemoryInfo();
            am.getMemoryInfo(mi);
            kv(sb, "total_ram_mb", mi.totalMem / (1024 * 1024));
            kv(sb, "is_low_ram", isLowRam(c));
            kv(sb, "background_restricted", am.isBackgroundRestricted());
        } catch (Exception ignored) { }
        try {
            UsageStatsManager us = (UsageStatsManager) c.getSystemService(Context.USAGE_STATS_SERVICE);
            kv(sb, "standby_bucket", us.getAppStandbyBucket());
        } catch (Exception ignored) { }
        kv(sb, "ignoring_battery_optimizations", ignoringBatteryOptimizations(c));
        kv(sb, "su_binary_present", suBinaryPresent());
        PackageManager pm = c.getPackageManager();
        kv(sb, "feature_gps", pm.hasSystemFeature(PackageManager.FEATURE_LOCATION_GPS));
        kv(sb, "feature_microphone", pm.hasSystemFeature(PackageManager.FEATURE_MICROPHONE));
        kv(sb, "perm_record_audio", ObserverCompat.hasMic(c));
        kv(sb, "perm_location", ObserverCompat.hasLocation(c));
        kv(sb, "audio_sample_rate", sampleRate());
        kv(sb, "audio_unprocessed_supported", unprocessedSupported(c));
        kv(sb, "audio_source_in_use", sAudioSourceName);
        StringBuilder rates = new StringBuilder();
        for (int r : RATES) {
            int min = AudioRecord.getMinBufferSize(r, AudioFormat.CHANNEL_IN_MONO, AudioFormat.ENCODING_PCM_16BIT);
            if (min > 0) rates.append(rates.length() == 0 ? "" : ",").append(r);
        }
        kv(sb, "audio_rates_supported", rates.toString());
        sb.append("  \"sensors\": [\n");
        try {
            SensorManager sm = (SensorManager) c.getSystemService(Context.SENSOR_SERVICE);
            List<Sensor> all = sm.getSensorList(Sensor.TYPE_ALL);
            for (int i = 0; i < all.size(); i++) {
                Sensor s = all.get(i);
                sb.append("    {\"type\":").append(s.getType())
                  .append(",\"string_type\":\"").append(esc(s.getStringType())).append('"')
                  .append(",\"name\":\"").append(esc(s.getName())).append('"')
                  .append(",\"vendor\":\"").append(esc(s.getVendor())).append('"')
                  .append(",\"max_range\":").append(s.getMaximumRange())
                  .append(",\"min_delay_us\":").append(s.getMinDelay())
                  .append(",\"wake_up\":").append(s.isWakeUpSensor())
                  .append('}').append(i + 1 < all.size() ? ",\n" : "\n");
            }
        } catch (Exception e) {
            Log.w(TAG, "sensor enumeration failed", e);
        }
        sb.append("  ]\n}\n");
        return sb.toString();
    }

    static void writeReport(Context c, File dir) {
        try {
            FileWriter w = new FileWriter(new File(dir, "capabilities.json"), false);
            w.write(json(c));
            w.close();
        } catch (Exception e) {
            Log.w(TAG, "capabilities.json not written", e);
        }
    }

    private static void kv(StringBuilder sb, String k, Object v) {
        sb.append("  \"").append(k).append("\": ");
        if (v instanceof String) sb.append('"').append(esc((String) v)).append('"');
        else sb.append(v);
        sb.append(",\n");
    }

    private static String esc(String s) {
        return s == null ? "" : s.replace("\\", "\\\\").replace("\"", "\\\"");
    }
}
