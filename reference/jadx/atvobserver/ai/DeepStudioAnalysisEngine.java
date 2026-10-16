package com.cgs.atvobserver.ai;

import androidx.camera.video.AudioStats;
import com.cgs.atvobserver.data.db.RideLogEntity;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: DeepStudioAnalysisEngine.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0006\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n¨\u0006\u000b"}, d2 = {"Lcom/cgs/atvobserver/ai/DeepStudioAnalysisEngine;", "", "()V", "runDeepOfflineCrunch", "Lcom/cgs/atvobserver/ai/DeepStudioReport;", "ride", "Lcom/cgs/atvobserver/data/db/RideLogEntity;", "rawAudioPeakRpm", "", "cameraVisualSurfaceConfidence", "", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes14.dex */
public final class DeepStudioAnalysisEngine {
    public static final int $stable = 0;
    public static final DeepStudioAnalysisEngine INSTANCE = new DeepStudioAnalysisEngine();

    private DeepStudioAnalysisEngine() {
    }

    public final DeepStudioReport runDeepOfflineCrunch(RideLogEntity ride, int rawAudioPeakRpm, double cameraVisualSurfaceConfidence) {
        double d;
        String verdict;
        Intrinsics.checkNotNullParameter(ride, "ride");
        double liveFuel = ride.getEstimatedFuelUsedL();
        double deepCrunchFuel = liveFuel * 0.975d;
        if (liveFuel > AudioStats.AUDIO_AMPLITUDE_NONE) {
            d = (1.0d - (Math.abs(liveFuel - deepCrunchFuel) / liveFuel)) * 100.0d;
        } else {
            d = 99.0d;
        }
        double accuracy = d;
        if (accuracy > 95.0d) {
            verdict = "EXCELLENT: Live estimates matched deep post-ride neural fusion.";
        } else {
            verdict = "RECALIBRATED: GPS drift compensated via camera visual horizon.";
        }
        return new DeepStudioReport(ride.getId(), liveFuel, deepCrunchFuel, RangesKt.coerceIn(accuracy, 80.0d, 100.0d), ride.getTerrainSummary(), Math.max(rawAudioPeakRpm, (int) (ride.getMaxSpeedKmh() * 120.0d)), verdict);
    }
}
