package com.cgs.atvobserver.ai;

import android.content.Context;
import androidx.camera.video.AudioStats;
import com.cgs.atvobserver.audio.AudioAnalysisResult;
import com.cgs.atvobserver.data.model.VehicleType;
import com.cgs.atvobserver.data.model.WeatherCondition;
import com.cgs.atvobserver.domain.DevicePerformanceTier;
import com.cgs.atvobserver.domain.DeviceProfileConfig;
import com.cgs.atvobserver.domain.DeviceProfiler;
import com.cgs.atvobserver.location.GpsData;
import com.cgs.atvobserver.sensor.MotionSensorData;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: ObserverAiEngine.kt */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002JV\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u001d2\b\b\u0002\u0010\u001e\u001a\u00020\u001f2\b\b\u0002\u0010 \u001a\u00020!J\b\u0010\"\u001a\u00020\u000fH\u0002R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcom/cgs/atvobserver/ai/ObserverAiEngine;", "", "()V", "_aiOutput", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/cgs/atvobserver/ai/ObserverAiOutput;", "aiOutput", "Lkotlinx/coroutines/flow/StateFlow;", "getAiOutput", "()Lkotlinx/coroutines/flow/StateFlow;", "lastValidSpeedKmh", "", "lastValidTimeMs", "", "processTelemetryFrame", "", "context", "Landroid/content/Context;", "gpsData", "Lcom/cgs/atvobserver/location/GpsData;", "audioData", "Lcom/cgs/atvobserver/audio/AudioAnalysisResult;", "motionData", "Lcom/cgs/atvobserver/sensor/MotionSensorData;", "weatherCondition", "Lcom/cgs/atvobserver/data/model/WeatherCondition;", "activeVehicle", "Lcom/cgs/atvobserver/data/model/VehicleType;", "isTestTrackMode", "", "ambientLux", "", "ramUsageMb", "", "triggerZRamDiskOffload", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes14.dex */
public final class ObserverAiEngine {
    public static final int $stable = 8;
    private double lastValidSpeedKmh;
    private final MutableStateFlow<ObserverAiOutput> _aiOutput = StateFlowKt.MutableStateFlow(new ObserverAiOutput(null, null, null, null, null, 0, 0, false, false, false, false, false, AudioStats.AUDIO_AMPLITUDE_NONE, 0, 0, AudioStats.AUDIO_AMPLITUDE_NONE, 0, 0, AudioStats.AUDIO_AMPLITUDE_NONE, AudioStats.AUDIO_AMPLITUDE_NONE, 0, false, false, false, false, 0, null, 134217727, null));
    private final StateFlow<ObserverAiOutput> aiOutput = FlowKt.asStateFlow(this._aiOutput);
    private long lastValidTimeMs = System.currentTimeMillis();

    /* compiled from: ObserverAiEngine.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[VehicleType.values().length];
            try {
                iArr[VehicleType.ATV.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[VehicleType.MOTOCROSS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[VehicleType.DAELIM.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[VehicleType.APP_TEST.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[DevicePerformanceTier.values().length];
            try {
                iArr2[DevicePerformanceTier.FLAGSHIP_S22_EXYNOS.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                iArr2[DevicePerformanceTier.HIGH_PERFORMANCE_RAZR.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
            try {
                iArr2[DevicePerformanceTier.MID_TIER_A71_ROOTED.ordinal()] = 3;
            } catch (NoSuchFieldError e7) {
            }
            try {
                iArr2[DevicePerformanceTier.UNIVERSAL_AUTO_TIER.ordinal()] = 4;
            } catch (NoSuchFieldError e8) {
            }
            try {
                iArr2[DevicePerformanceTier.OPTIMIZED_LITE_J3.ordinal()] = 5;
            } catch (NoSuchFieldError e9) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public final StateFlow<ObserverAiOutput> getAiOutput() {
        return this.aiOutput;
    }

    /* JADX WARN: Code restructure failed: missing block: B:160:0x0216, code lost:
    
        if (r1 < 2500) goto L126;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x02b3  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0272  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x02ae  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0375  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x037b  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x037d  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x037f  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0381  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0384  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void processTelemetryFrame(Context context, GpsData gpsData, AudioAnalysisResult audioData, MotionSensorData motionData, WeatherCondition weatherCondition, VehicleType activeVehicle, boolean isTestTrackMode, float ambientLux, int ramUsageMb) {
        AppOperatingMode activeMode;
        boolean zRamActive;
        int fusedRpm;
        int rpmConfPct;
        boolean speechDetected;
        AppOperatingMode activeMode2;
        boolean z;
        double fusedSpeed;
        boolean isRepaired;
        int speedConfPct;
        Pair pair;
        ClutchType clutchType;
        boolean z2;
        RoadSurfaceClass rawSurface;
        RoadSurfaceClass rawSurface2;
        boolean terrainCalibrated;
        RideStateClass rideState;
        int i;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(gpsData, "gpsData");
        Intrinsics.checkNotNullParameter(audioData, "audioData");
        Intrinsics.checkNotNullParameter(motionData, "motionData");
        Intrinsics.checkNotNullParameter(weatherCondition, "weatherCondition");
        Intrinsics.checkNotNullParameter(activeVehicle, "activeVehicle");
        DeviceProfileConfig deviceProfile = DeviceProfiler.INSTANCE.getDeviceProfile(context);
        long now = System.currentTimeMillis();
        double dtSec = (now - this.lastValidTimeMs) / 1000.0d;
        double weatherFactor = weatherCondition.getIsWindy() ? 0.95d : 1.0d;
        boolean isPocketed = ambientLux < 5.0f;
        if (ramUsageMb > deviceProfile.getMaxAllowedRamMb()) {
            triggerZRamDiskOffload();
            activeMode = AppOperatingMode.SAFE_MODE;
            zRamActive = true;
        } else if (ramUsageMb > deviceProfile.getMaxAllowedRamMb() - 150) {
            activeMode = AppOperatingMode.BASIC_MODE;
            zRamActive = false;
        } else {
            activeMode = AppOperatingMode.MAXIMUM_MODE;
            zRamActive = false;
        }
        int fusedRpm2 = audioData.getEstimatedRpm();
        int rpmConfPct2 = Intrinsics.areEqual(audioData.getConfidence(), "VALID") ? 92 : 45;
        if (audioData.isEngineRunning() && audioData.getRpmVariation() > 200 && gpsData.getCurrentSpeedKmh() < 5.0d) {
            fusedRpm = 1380;
            rpmConfPct = 35;
            speechDetected = true;
        } else {
            fusedRpm = fusedRpm2;
            rpmConfPct = rpmConfPct2;
            speechDetected = false;
        }
        double fusedSpeed2 = gpsData.getCurrentSpeedKmh();
        int speedConfPct2 = gpsData.isGpsAvailable() ? 95 : 30;
        boolean isGpsAvailable = gpsData.isGpsAvailable();
        int speedConfPct3 = speedConfPct2;
        double d = AudioStats.AUDIO_AMPLITUDE_NONE;
        if (!isGpsAvailable) {
            activeMode2 = activeMode;
        } else {
            if (gpsData.getAccuracyMeters() <= 30.0f) {
                activeMode2 = activeMode;
                this.lastValidSpeedKmh = gpsData.getCurrentSpeedKmh();
                this.lastValidTimeMs = now;
                z = false;
                fusedSpeed = fusedSpeed2;
                isRepaired = z;
                speedConfPct = speedConfPct3;
                int i2 = 4;
                switch (WhenMappings.$EnumSwitchMapping$0[activeVehicle.ordinal()]) {
                    case 1:
                        pair = new Pair(3, ClutchType.CENTRIFUGAL);
                        break;
                    case 2:
                        pair = new Pair(4, ClutchType.MANUAL);
                        break;
                    case 3:
                        pair = new Pair(4, ClutchType.CENTRIFUGAL);
                        break;
                    case 4:
                        pair = new Pair(3, ClutchType.CENTRIFUGAL);
                        break;
                    default:
                        throw new NoWhenBranchMatchedException();
                }
                int maxGears = ((Number) pair.component1()).intValue();
                clutchType = (ClutchType) pair.component2();
                if (clutchType == ClutchType.CENTRIFUGAL) {
                    if ((4.0d <= fusedSpeed && fusedSpeed <= 15.0d) && fusedRpm > 3200) {
                        z2 = true;
                        boolean isCentrifugalSlipping = z2;
                        boolean isWheelSpin = fusedRpm <= 3600 && fusedSpeed < 6.0d && motionData.getVibrationIntensity() > 0.5d;
                        double vibrationIntensity = motionData.getVibrationIntensity();
                        boolean isTireDrag = !((0.3d > vibrationIntensity ? 1 : (0.3d == vibrationIntensity ? 0 : -1)) > 0 && (vibrationIntensity > 0.6d ? 1 : (vibrationIntensity == 0.6d ? 0 : -1)) <= 0) && fusedSpeed > 20.0d && fusedRpm > 4500;
                        if (fusedRpm > 500) {
                            d = fusedSpeed / fusedRpm;
                        }
                        double speedRpmRatio = d;
                        if (fusedSpeed >= 3.0d) {
                            i2 = 1;
                        } else {
                            if (clutchType == ClutchType.MANUAL) {
                                if (8.0d <= fusedSpeed && fusedSpeed <= 14.0d) {
                                }
                            }
                            if (isCentrifugalSlipping) {
                                i2 = 2;
                            } else if (speedRpmRatio < 0.006d) {
                                i2 = 1;
                            } else if (speedRpmRatio < 0.011d) {
                                i2 = 2;
                            } else if (speedRpmRatio < 0.016d) {
                                i2 = 3;
                            } else if (maxGears < 4) {
                                i2 = 3;
                            }
                        }
                        int estimatedGear = RangesKt.coerceIn(i2, 1, maxGears);
                        if (motionData.getVibrationIntensity() <= 0.8d) {
                            rawSurface = RoadSurfaceClass.OFF_ROAD;
                        } else {
                            rawSurface = motionData.getVibrationIntensity() > 0.4d ? RoadSurfaceClass.GRAVEL : RoadSurfaceClass.ASPHALT;
                        }
                        if (!isTestTrackMode && rawSurface != RoadSurfaceClass.DIRT) {
                            RoadSurfaceClass rawSurface3 = RoadSurfaceClass.DIRT;
                            rawSurface2 = rawSurface3;
                            terrainCalibrated = true;
                        } else {
                            rawSurface2 = rawSurface;
                            terrainCalibrated = false;
                        }
                        EngineLoadState calculatedLoadState = SoftwareLoadSource.INSTANCE.calculatePreciseLoad(fusedRpm, fusedSpeed, estimatedGear, rawSurface2, motionData, audioData.getAudioRmsDb(), activeVehicle).component2();
                        if (!motionData.getCrashOrFallDetected()) {
                            rideState = RideStateClass.STOPPED;
                        } else if (fusedSpeed >= 2.0d || fusedRpm >= 500) {
                            if (fusedSpeed < 3.0d) {
                                if (800 <= fusedRpm && fusedRpm < 1801) {
                                    rideState = RideStateClass.IDLE;
                                }
                            }
                            if (!motionData.getHardLaunchDetected()) {
                                if (!(3.0d <= fusedSpeed && fusedSpeed <= 15.0d) || fusedRpm <= 2200) {
                                    if (motionData.getHardBrakingDetected() && fusedRpm > 2800) {
                                        rideState = RideStateClass.ENGINE_BRAKING;
                                    } else if (motionData.getHardBrakingDetected()) {
                                        rideState = RideStateClass.MECHANICAL_BRAKING;
                                    } else if (fusedSpeed <= 15.0d || fusedRpm <= 3500) {
                                        rideState = (fusedSpeed <= 15.0d || Math.abs(fusedRpm + (-3000)) >= 600) ? RideStateClass.CRUISING : RideStateClass.CRUISING;
                                    } else {
                                        rideState = RideStateClass.ACCELERATING;
                                    }
                                }
                            }
                            rideState = RideStateClass.LAUNCHING;
                        } else {
                            rideState = RideStateClass.STOPPED;
                        }
                        double speedFactor = RangesKt.coerceIn(fusedSpeed / 60.0d, AudioStats.AUDIO_AMPLITUDE_NONE, 1.0d);
                        RideStateClass rideState2 = rideState;
                        double gForceFactor = RangesKt.coerceIn(Math.abs(motionData.getGForceMagnitude() - 1.0d) / 1.5d, AudioStats.AUDIO_AMPLITUDE_NONE, 1.0d);
                        double combinedIntensity = Math.max(speedFactor, gForceFactor);
                        int linearFps = RangesKt.coerceIn((int) ((45.0d * combinedIntensity) + 15.0d), 15, 60);
                        switch (WhenMappings.$EnumSwitchMapping$1[deviceProfile.getTier().ordinal()]) {
                            case 1:
                                i = 10;
                                break;
                            case 2:
                                i = 8;
                                break;
                            case 3:
                                i = 6;
                                break;
                            case 4:
                                i = 3;
                                break;
                            case 5:
                                i = 0;
                                break;
                            default:
                                throw new NoWhenBranchMatchedException();
                        }
                        int tierBonus = i;
                        int overallConfidence = RangesKt.coerceIn((int) ((((rpmConfPct + speedConfPct) / 2) * weatherFactor) + tierBonus), 10, 100);
                        this._aiOutput.setValue(new ObserverAiOutput(activeMode2, rideState2, rawSurface2, calculatedLoadState, clutchType, estimatedGear, 85, isCentrifugalSlipping, isWheelSpin, isTireDrag, isPocketed, terrainCalibrated, RangesKt.coerceIn(Math.abs(motionData.getRawX()) * 2.0d, AudioStats.AUDIO_AMPLITUDE_NONE, 30.0d), fusedRpm, rpmConfPct, fusedSpeed, speedConfPct, overallConfidence, motionData.getGForceMagnitude(), motionData.getVibrationIntensity(), linearFps, speechDetected, isRepaired, zRamActive, motionData.getCrashOrFallDetected(), ramUsageMb, deviceProfile.getProfileName()));
                    }
                }
                z2 = false;
                boolean isCentrifugalSlipping2 = z2;
                boolean isWheelSpin2 = fusedRpm <= 3600 && fusedSpeed < 6.0d && motionData.getVibrationIntensity() > 0.5d;
                double vibrationIntensity2 = motionData.getVibrationIntensity();
                if ((0.3d > vibrationIntensity2 ? 1 : (0.3d == vibrationIntensity2 ? 0 : -1)) > 0 && (vibrationIntensity2 > 0.6d ? 1 : (vibrationIntensity2 == 0.6d ? 0 : -1)) <= 0) {
                }
                if (fusedRpm > 500) {
                }
                double speedRpmRatio2 = d;
                if (fusedSpeed >= 3.0d) {
                }
                int estimatedGear2 = RangesKt.coerceIn(i2, 1, maxGears);
                if (motionData.getVibrationIntensity() <= 0.8d) {
                }
                if (!isTestTrackMode) {
                }
                rawSurface2 = rawSurface;
                terrainCalibrated = false;
                EngineLoadState calculatedLoadState2 = SoftwareLoadSource.INSTANCE.calculatePreciseLoad(fusedRpm, fusedSpeed, estimatedGear2, rawSurface2, motionData, audioData.getAudioRmsDb(), activeVehicle).component2();
                if (!motionData.getCrashOrFallDetected()) {
                }
                double speedFactor2 = RangesKt.coerceIn(fusedSpeed / 60.0d, AudioStats.AUDIO_AMPLITUDE_NONE, 1.0d);
                RideStateClass rideState22 = rideState;
                double gForceFactor2 = RangesKt.coerceIn(Math.abs(motionData.getGForceMagnitude() - 1.0d) / 1.5d, AudioStats.AUDIO_AMPLITUDE_NONE, 1.0d);
                double combinedIntensity2 = Math.max(speedFactor2, gForceFactor2);
                int linearFps2 = RangesKt.coerceIn((int) ((45.0d * combinedIntensity2) + 15.0d), 15, 60);
                switch (WhenMappings.$EnumSwitchMapping$1[deviceProfile.getTier().ordinal()]) {
                }
                int tierBonus2 = i;
                int overallConfidence2 = RangesKt.coerceIn((int) ((((rpmConfPct + speedConfPct) / 2) * weatherFactor) + tierBonus2), 10, 100);
                this._aiOutput.setValue(new ObserverAiOutput(activeMode2, rideState22, rawSurface2, calculatedLoadState2, clutchType, estimatedGear2, 85, isCentrifugalSlipping2, isWheelSpin2, isTireDrag, isPocketed, terrainCalibrated, RangesKt.coerceIn(Math.abs(motionData.getRawX()) * 2.0d, AudioStats.AUDIO_AMPLITUDE_NONE, 30.0d), fusedRpm, rpmConfPct, fusedSpeed, speedConfPct, overallConfidence2, motionData.getGForceMagnitude(), motionData.getVibrationIntensity(), linearFps2, speechDetected, isRepaired, zRamActive, motionData.getCrashOrFallDetected(), ramUsageMb, deviceProfile.getProfileName()));
            }
            activeMode2 = activeMode;
        }
        if (!(0.1d <= dtSec && dtSec <= 10.0d) || this.lastValidSpeedKmh <= AudioStats.AUDIO_AMPLITUDE_NONE) {
            z = false;
            fusedSpeed = fusedSpeed2;
            isRepaired = z;
            speedConfPct = speedConfPct3;
            int i22 = 4;
            switch (WhenMappings.$EnumSwitchMapping$0[activeVehicle.ordinal()]) {
            }
            int maxGears2 = ((Number) pair.component1()).intValue();
            clutchType = (ClutchType) pair.component2();
            if (clutchType == ClutchType.CENTRIFUGAL) {
            }
            z2 = false;
            boolean isCentrifugalSlipping22 = z2;
            boolean isWheelSpin22 = fusedRpm <= 3600 && fusedSpeed < 6.0d && motionData.getVibrationIntensity() > 0.5d;
            double vibrationIntensity22 = motionData.getVibrationIntensity();
            if ((0.3d > vibrationIntensity22 ? 1 : (0.3d == vibrationIntensity22 ? 0 : -1)) > 0 && (vibrationIntensity22 > 0.6d ? 1 : (vibrationIntensity22 == 0.6d ? 0 : -1)) <= 0) {
            }
            if (fusedRpm > 500) {
            }
            double speedRpmRatio22 = d;
            if (fusedSpeed >= 3.0d) {
            }
            int estimatedGear22 = RangesKt.coerceIn(i22, 1, maxGears2);
            if (motionData.getVibrationIntensity() <= 0.8d) {
            }
            if (!isTestTrackMode) {
            }
            rawSurface2 = rawSurface;
            terrainCalibrated = false;
            EngineLoadState calculatedLoadState22 = SoftwareLoadSource.INSTANCE.calculatePreciseLoad(fusedRpm, fusedSpeed, estimatedGear22, rawSurface2, motionData, audioData.getAudioRmsDb(), activeVehicle).component2();
            if (!motionData.getCrashOrFallDetected()) {
            }
            double speedFactor22 = RangesKt.coerceIn(fusedSpeed / 60.0d, AudioStats.AUDIO_AMPLITUDE_NONE, 1.0d);
            RideStateClass rideState222 = rideState;
            double gForceFactor22 = RangesKt.coerceIn(Math.abs(motionData.getGForceMagnitude() - 1.0d) / 1.5d, AudioStats.AUDIO_AMPLITUDE_NONE, 1.0d);
            double combinedIntensity22 = Math.max(speedFactor22, gForceFactor22);
            int linearFps22 = RangesKt.coerceIn((int) ((45.0d * combinedIntensity22) + 15.0d), 15, 60);
            switch (WhenMappings.$EnumSwitchMapping$1[deviceProfile.getTier().ordinal()]) {
            }
            int tierBonus22 = i;
            int overallConfidence22 = RangesKt.coerceIn((int) ((((rpmConfPct + speedConfPct) / 2) * weatherFactor) + tierBonus22), 10, 100);
            this._aiOutput.setValue(new ObserverAiOutput(activeMode2, rideState222, rawSurface2, calculatedLoadState22, clutchType, estimatedGear22, 85, isCentrifugalSlipping22, isWheelSpin22, isTireDrag, isPocketed, terrainCalibrated, RangesKt.coerceIn(Math.abs(motionData.getRawX()) * 2.0d, AudioStats.AUDIO_AMPLITUDE_NONE, 30.0d), fusedRpm, rpmConfPct, fusedSpeed, speedConfPct, overallConfidence22, motionData.getGForceMagnitude(), motionData.getVibrationIntensity(), linearFps22, speechDetected, isRepaired, zRamActive, motionData.getCrashOrFallDetected(), ramUsageMb, deviceProfile.getProfileName()));
        }
        double fusedSpeed3 = this.lastValidSpeedKmh * 0.95d;
        int speedConfPct4 = Math.max(15, 80 - ((int) (10 * dtSec)));
        speedConfPct = speedConfPct4;
        isRepaired = true;
        fusedSpeed = fusedSpeed3;
        int i222 = 4;
        switch (WhenMappings.$EnumSwitchMapping$0[activeVehicle.ordinal()]) {
        }
        int maxGears22 = ((Number) pair.component1()).intValue();
        clutchType = (ClutchType) pair.component2();
        if (clutchType == ClutchType.CENTRIFUGAL) {
        }
        z2 = false;
        boolean isCentrifugalSlipping222 = z2;
        boolean isWheelSpin222 = fusedRpm <= 3600 && fusedSpeed < 6.0d && motionData.getVibrationIntensity() > 0.5d;
        double vibrationIntensity222 = motionData.getVibrationIntensity();
        if ((0.3d > vibrationIntensity222 ? 1 : (0.3d == vibrationIntensity222 ? 0 : -1)) > 0 && (vibrationIntensity222 > 0.6d ? 1 : (vibrationIntensity222 == 0.6d ? 0 : -1)) <= 0) {
        }
        if (fusedRpm > 500) {
        }
        double speedRpmRatio222 = d;
        if (fusedSpeed >= 3.0d) {
        }
        int estimatedGear222 = RangesKt.coerceIn(i222, 1, maxGears22);
        if (motionData.getVibrationIntensity() <= 0.8d) {
        }
        if (!isTestTrackMode) {
        }
        rawSurface2 = rawSurface;
        terrainCalibrated = false;
        EngineLoadState calculatedLoadState222 = SoftwareLoadSource.INSTANCE.calculatePreciseLoad(fusedRpm, fusedSpeed, estimatedGear222, rawSurface2, motionData, audioData.getAudioRmsDb(), activeVehicle).component2();
        if (!motionData.getCrashOrFallDetected()) {
        }
        double speedFactor222 = RangesKt.coerceIn(fusedSpeed / 60.0d, AudioStats.AUDIO_AMPLITUDE_NONE, 1.0d);
        RideStateClass rideState2222 = rideState;
        double gForceFactor222 = RangesKt.coerceIn(Math.abs(motionData.getGForceMagnitude() - 1.0d) / 1.5d, AudioStats.AUDIO_AMPLITUDE_NONE, 1.0d);
        double combinedIntensity222 = Math.max(speedFactor222, gForceFactor222);
        int linearFps222 = RangesKt.coerceIn((int) ((45.0d * combinedIntensity222) + 15.0d), 15, 60);
        switch (WhenMappings.$EnumSwitchMapping$1[deviceProfile.getTier().ordinal()]) {
        }
        int tierBonus222 = i;
        int overallConfidence222 = RangesKt.coerceIn((int) ((((rpmConfPct + speedConfPct) / 2) * weatherFactor) + tierBonus222), 10, 100);
        this._aiOutput.setValue(new ObserverAiOutput(activeMode2, rideState2222, rawSurface2, calculatedLoadState222, clutchType, estimatedGear222, 85, isCentrifugalSlipping222, isWheelSpin222, isTireDrag, isPocketed, terrainCalibrated, RangesKt.coerceIn(Math.abs(motionData.getRawX()) * 2.0d, AudioStats.AUDIO_AMPLITUDE_NONE, 30.0d), fusedRpm, rpmConfPct, fusedSpeed, speedConfPct, overallConfidence222, motionData.getGForceMagnitude(), motionData.getVibrationIntensity(), linearFps222, speechDetected, isRepaired, zRamActive, motionData.getCrashOrFallDetected(), ramUsageMb, deviceProfile.getProfileName()));
    }

    private final void triggerZRamDiskOffload() {
        try {
            System.gc();
        } catch (Exception e) {
        }
    }
}
