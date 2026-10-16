package com.cgs.atvobserver.domain;

import androidx.camera.video.AudioStats;
import com.cgs.atvobserver.ai.EngineLoadState;
import com.cgs.atvobserver.ai.RoadSurfaceClass;
import com.cgs.atvobserver.data.model.VehicleType;
import com.cgs.atvobserver.data.model.WeatherCondition;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: FuelEstimator.kt */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u0004Jn\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00042\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u00042\b\b\u0002\u0010\u0017\u001a\u00020\u00042\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u0004J\u000e\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000fJ(\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00042\b\b\u0002\u0010 \u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/cgs/atvobserver/domain/FuelEstimator;", "", "()V", "MAX_TANK_CAPACITY_LITRES", "", "calculatePercentage", "", "remainingLitres", "tankCapacityL", "estimateFuelConsumption", "distanceKm", "durationSeconds", "", "avgSpeedKmh", "vehicleType", "Lcom/cgs/atvobserver/data/model/VehicleType;", "weatherCondition", "Lcom/cgs/atvobserver/data/model/WeatherCondition;", "engineLoad", "Lcom/cgs/atvobserver/ai/EngineLoadState;", "roadSurface", "Lcom/cgs/atvobserver/ai/RoadSurfaceClass;", "temperatureCelsius", "climbGradePercent", "isTireDragDetected", "", "learnedCalibrationFactor", "getBaselineLitresPer100Km", "trainCalibrationModel", "predictedL", "actualMeasuredL", "currentFactor", "daysSinceCalibration", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes13.dex */
public final class FuelEstimator {
    public static final int $stable = 0;
    public static final FuelEstimator INSTANCE = new FuelEstimator();
    public static final double MAX_TANK_CAPACITY_LITRES = 2.0d;

    /* compiled from: FuelEstimator.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;

        static {
            int[] iArr = new int[VehicleType.values().length];
            try {
                iArr[VehicleType.DAELIM.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[VehicleType.ATV.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[VehicleType.MOTOCROSS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[VehicleType.APP_TEST.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[RoadSurfaceClass.values().length];
            try {
                iArr2[RoadSurfaceClass.MUD.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                iArr2[RoadSurfaceClass.OFF_ROAD.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
            try {
                iArr2[RoadSurfaceClass.GRASS.ordinal()] = 3;
            } catch (NoSuchFieldError e7) {
            }
            try {
                iArr2[RoadSurfaceClass.DIRT.ordinal()] = 4;
            } catch (NoSuchFieldError e8) {
            }
            try {
                iArr2[RoadSurfaceClass.GRAVEL.ordinal()] = 5;
            } catch (NoSuchFieldError e9) {
            }
            try {
                iArr2[RoadSurfaceClass.BROKEN_ASPHALT.ordinal()] = 6;
            } catch (NoSuchFieldError e10) {
            }
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[EngineLoadState.values().length];
            try {
                iArr3[EngineLoadState.EXTREME.ordinal()] = 1;
            } catch (NoSuchFieldError e11) {
            }
            try {
                iArr3[EngineLoadState.HEAVY.ordinal()] = 2;
            } catch (NoSuchFieldError e12) {
            }
            try {
                iArr3[EngineLoadState.MODERATE.ordinal()] = 3;
            } catch (NoSuchFieldError e13) {
            }
            try {
                iArr3[EngineLoadState.CRUISE.ordinal()] = 4;
            } catch (NoSuchFieldError e14) {
            }
            try {
                iArr3[EngineLoadState.VERY_LIGHT.ordinal()] = 5;
            } catch (NoSuchFieldError e15) {
            }
            try {
                iArr3[EngineLoadState.IDLE.ordinal()] = 6;
            } catch (NoSuchFieldError e16) {
            }
            $EnumSwitchMapping$2 = iArr3;
        }
    }

    private FuelEstimator() {
    }

    public final double getBaselineLitresPer100Km(VehicleType vehicleType) {
        Intrinsics.checkNotNullParameter(vehicleType, "vehicleType");
        switch (WhenMappings.$EnumSwitchMapping$0[vehicleType.ordinal()]) {
            case 1:
                return 1.5d;
            case 2:
                return 2.5d;
            case 3:
                return 3.0d;
            case 4:
                return 2.0d;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public final double estimateFuelConsumption(double distanceKm, long durationSeconds, double avgSpeedKmh, VehicleType vehicleType, WeatherCondition weatherCondition, EngineLoadState engineLoad, RoadSurfaceClass roadSurface, double temperatureCelsius, double climbGradePercent, boolean isTireDragDetected, double learnedCalibrationFactor) {
        double surfaceMultiplier;
        double gradeMultiplier;
        Intrinsics.checkNotNullParameter(vehicleType, "vehicleType");
        Intrinsics.checkNotNullParameter(weatherCondition, "weatherCondition");
        Intrinsics.checkNotNullParameter(engineLoad, "engineLoad");
        Intrinsics.checkNotNullParameter(roadSurface, "roadSurface");
        if (distanceKm <= AudioStats.AUDIO_AMPLITUDE_NONE && durationSeconds <= 0) {
            return AudioStats.AUDIO_AMPLITUDE_NONE;
        }
        double baseRatePer100Km = getBaselineLitresPer100Km(vehicleType) * learnedCalibrationFactor;
        double loadMultiplier = 1.25d;
        double thermalMultiplier = 1.0d;
        switch (WhenMappings.$EnumSwitchMapping$1[roadSurface.ordinal()]) {
            case 1:
                surfaceMultiplier = 1.35d;
                break;
            case 2:
                surfaceMultiplier = 1.25d;
                break;
            case 3:
                surfaceMultiplier = 1.18d;
                break;
            case 4:
                surfaceMultiplier = 1.12d;
                break;
            case 5:
                surfaceMultiplier = 1.08d;
                break;
            case 6:
                surfaceMultiplier = 1.04d;
                break;
            default:
                surfaceMultiplier = 1.0d;
                break;
        }
        switch (WhenMappings.$EnumSwitchMapping$2[engineLoad.ordinal()]) {
            case 1:
                loadMultiplier = 1.45d;
                break;
            case 2:
                break;
            case 3:
                loadMultiplier = 1.1d;
                break;
            case 4:
                loadMultiplier = 1.0d;
                break;
            case 5:
                loadMultiplier = 0.88d;
                break;
            case 6:
                loadMultiplier = 0.0d;
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        if (climbGradePercent > 1.0d) {
            gradeMultiplier = (0.02d * climbGradePercent) + 1.0d;
        } else {
            gradeMultiplier = 1.0d;
        }
        double dragMultiplier = isTireDragDetected ? 1.08d : 1.0d;
        double windMultiplier = weatherCondition.getIsWindy() ? 1.15d : 1.0d;
        if (temperatureCelsius > AudioStats.AUDIO_AMPLITUDE_NONE && temperatureCelsius < 60.0d) {
            thermalMultiplier = 1.2d;
        }
        double fusedRatePer100Km = baseRatePer100Km * surfaceMultiplier * loadMultiplier * gradeMultiplier * dragMultiplier * windMultiplier * thermalMultiplier;
        double distanceFuelL = (distanceKm / 100.0d) * fusedRatePer100Km;
        double hours = durationSeconds / 3600.0d;
        double idleFuelL = avgSpeedKmh < 3.0d ? 0.22d * hours : AudioStats.AUDIO_AMPLITUDE_NONE;
        return Math.max(AudioStats.AUDIO_AMPLITUDE_NONE, distanceFuelL + idleFuelL);
    }

    public static /* synthetic */ double trainCalibrationModel$default(FuelEstimator fuelEstimator, double d, double d2, double d3, int i, int i2, Object obj) {
        int i3;
        if ((i2 & 8) == 0) {
            i3 = i;
        } else {
            i3 = 1;
        }
        return fuelEstimator.trainCalibrationModel(d, d2, d3, i3);
    }

    public final double trainCalibrationModel(double predictedL, double actualMeasuredL, double currentFactor, int daysSinceCalibration) {
        if (predictedL > AudioStats.AUDIO_AMPLITUDE_NONE && actualMeasuredL > AudioStats.AUDIO_AMPLITUDE_NONE) {
            double rawRatio = actualMeasuredL / predictedL;
            double decayWeight = RangesKt.coerceIn(Math.exp(daysSinceCalibration * (-0.02d)), 0.1d, 0.9d);
            double smoothFactor = (currentFactor * decayWeight) + ((1.0d - decayWeight) * rawRatio);
            return RangesKt.coerceIn(smoothFactor, 0.6d, 1.6d);
        }
        return currentFactor;
    }

    public static /* synthetic */ int calculatePercentage$default(FuelEstimator fuelEstimator, double d, double d2, int i, Object obj) {
        if ((i & 2) != 0) {
            d2 = 2.0d;
        }
        return fuelEstimator.calculatePercentage(d, d2);
    }

    public final int calculatePercentage(double remainingLitres, double tankCapacityL) {
        double pct = (remainingLitres / tankCapacityL) * 100.0d;
        return (int) RangesKt.coerceIn(pct, AudioStats.AUDIO_AMPLITUDE_NONE, 100.0d);
    }
}
