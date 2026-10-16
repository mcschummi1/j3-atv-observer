package com.cgs.atvobserver.ai;

import androidx.camera.video.AudioStats;
import com.cgs.atvobserver.data.model.VehicleType;
import com.cgs.atvobserver.sensor.MotionSensorData;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: SoftwareLoadSource.kt */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JJ\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00042\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0011¨\u0006\u0012"}, d2 = {"Lcom/cgs/atvobserver/ai/SoftwareLoadSource;", "", "()V", "calculatePreciseLoad", "Lkotlin/Pair;", "", "Lcom/cgs/atvobserver/ai/EngineLoadState;", "fusedRpm", "", "fusedSpeedKmh", "estimatedGear", "roadSurface", "Lcom/cgs/atvobserver/ai/RoadSurfaceClass;", "motionData", "Lcom/cgs/atvobserver/sensor/MotionSensorData;", "audioRmsDb", "vehicleType", "Lcom/cgs/atvobserver/data/model/VehicleType;", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes14.dex */
public final class SoftwareLoadSource {
    public static final int $stable = 0;
    public static final SoftwareLoadSource INSTANCE = new SoftwareLoadSource();

    /* compiled from: SoftwareLoadSource.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[RoadSurfaceClass.values().length];
            try {
                iArr[RoadSurfaceClass.MUD.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[RoadSurfaceClass.OFF_ROAD.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[RoadSurfaceClass.GRASS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[RoadSurfaceClass.DIRT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                iArr[RoadSurfaceClass.GRAVEL.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                iArr[RoadSurfaceClass.BROKEN_ASPHALT.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private SoftwareLoadSource() {
    }

    public final Pair<Double, EngineLoadState> calculatePreciseLoad(int fusedRpm, double fusedSpeedKmh, int estimatedGear, RoadSurfaceClass roadSurface, MotionSensorData motionData, double audioRmsDb, VehicleType vehicleType) {
        double expectedRatio;
        double surfaceDragFactor;
        Intrinsics.checkNotNullParameter(roadSurface, "roadSurface");
        Intrinsics.checkNotNullParameter(motionData, "motionData");
        Intrinsics.checkNotNullParameter(vehicleType, "vehicleType");
        double actualRatio = AudioStats.AUDIO_AMPLITUDE_NONE;
        if (fusedRpm < 650) {
            return new Pair<>(Double.valueOf(AudioStats.AUDIO_AMPLITUDE_NONE), EngineLoadState.IDLE);
        }
        switch (estimatedGear) {
            case 1:
                expectedRatio = 0.005d;
                break;
            case 2:
                expectedRatio = 0.01d;
                break;
            case 3:
                expectedRatio = 0.015d;
                break;
            default:
                expectedRatio = 0.02d;
                break;
        }
        if (fusedRpm > 0) {
            actualRatio = fusedSpeedKmh / fusedRpm;
        }
        double gearLoadFactor = (fusedSpeedKmh <= 3.0d || actualRatio >= expectedRatio) ? 0.2d : RangesKt.coerceIn((expectedRatio - actualRatio) / expectedRatio, AudioStats.AUDIO_AMPLITUDE_NONE, 1.0d);
        switch (WhenMappings.$EnumSwitchMapping$0[roadSurface.ordinal()]) {
            case 1:
                surfaceDragFactor = 0.95d;
                break;
            case 2:
                surfaceDragFactor = 0.8d;
                break;
            case 3:
                surfaceDragFactor = 0.65d;
                break;
            case 4:
                surfaceDragFactor = 0.45d;
                break;
            case 5:
                surfaceDragFactor = 0.35d;
                break;
            case 6:
                surfaceDragFactor = 0.2d;
                break;
            default:
                surfaceDragFactor = 0.1d;
                break;
        }
        double accelDemandFactor = RangesKt.coerceIn(Math.abs(motionData.getRawY()) / 10.0f, AudioStats.AUDIO_AMPLITUDE_NONE, 1.0d);
        double acousticStrainFactor = RangesKt.coerceIn((audioRmsDb - 65.0d) / 30.0d, AudioStats.AUDIO_AMPLITUDE_NONE, 1.0d);
        double fusedLoadScore = (0.35d * gearLoadFactor) + (0.25d * surfaceDragFactor) + (accelDemandFactor * 0.2d) + (acousticStrainFactor * 0.2d);
        EngineLoadState loadState = (fusedRpm <= 3500 || fusedSpeedKmh >= 5.0d) ? fusedLoadScore >= 0.8d ? EngineLoadState.EXTREME : fusedLoadScore >= 0.6d ? EngineLoadState.HEAVY : fusedLoadScore >= 0.4d ? EngineLoadState.MODERATE : fusedLoadScore >= 0.2d ? EngineLoadState.CRUISE : EngineLoadState.VERY_LIGHT : EngineLoadState.EXTREME;
        return new Pair<>(Double.valueOf(RangesKt.coerceIn(fusedLoadScore, AudioStats.AUDIO_AMPLITUDE_NONE, 1.0d)), loadState);
    }
}
