package com.cgs.atvobserver.audio;

import kotlin.Metadata;

/* compiled from: DualAudioFusionEngine.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n¨\u0006\u000b"}, d2 = {"Lcom/cgs/atvobserver/audio/DualAudioFusionEngine;", "", "()V", "fuseAudioStreams", "Lcom/cgs/atvobserver/audio/DualAudioFusionResult;", "phoneRpm", "", "phoneRpmVariation", "watchRpm", "isWatchAudioAvailable", "", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes14.dex */
public final class DualAudioFusionEngine {
    public static final int $stable = 0;
    public static final DualAudioFusionEngine INSTANCE = new DualAudioFusionEngine();

    private DualAudioFusionEngine() {
    }

    public final DualAudioFusionResult fuseAudioStreams(int phoneRpm, int phoneRpmVariation, int watchRpm, boolean isWatchAudioAvailable) {
        int fusedRpm;
        if (!isWatchAudioAvailable || watchRpm <= 0) {
            return new DualAudioFusionResult(phoneRpm, phoneRpmVariation < 80 ? 92 : 60, false);
        }
        int rpmDiff = Math.abs(phoneRpm - watchRpm);
        if (rpmDiff < 300) {
            fusedRpm = (int) ((phoneRpm * 0.4d) + (watchRpm * 0.6d));
        } else {
            fusedRpm = phoneRpm;
        }
        int confidence = rpmDiff < 150 ? 98 : 82;
        return new DualAudioFusionResult(fusedRpm, confidence, true);
    }
}
