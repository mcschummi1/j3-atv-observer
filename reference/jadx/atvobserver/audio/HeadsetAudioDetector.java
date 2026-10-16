package com.cgs.atvobserver.audio;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: HeadsetAudioDetector.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/cgs/atvobserver/audio/HeadsetAudioDetector;", "", "()V", "isHeadsetConnected", "", "context", "Landroid/content/Context;", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes14.dex */
public final class HeadsetAudioDetector {
    public static final int $stable = 0;
    public static final HeadsetAudioDetector INSTANCE = new HeadsetAudioDetector();

    private HeadsetAudioDetector() {
    }

    public final boolean isHeadsetConnected(Context context) {
        boolean z;
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("audio");
        AudioManager audioManager = systemService instanceof AudioManager ? (AudioManager) systemService : null;
        if (audioManager == null) {
            return false;
        }
        AudioDeviceInfo[] devices = audioManager.getDevices(2);
        Intrinsics.checkNotNull(devices);
        for (AudioDeviceInfo audioDeviceInfo : devices) {
            switch (audioDeviceInfo.getType()) {
                case 3:
                case 4:
                case 7:
                case 8:
                case 22:
                    z = true;
                    break;
                default:
                    z = false;
                    break;
            }
            if (z) {
                return true;
            }
        }
        return false;
    }
}
