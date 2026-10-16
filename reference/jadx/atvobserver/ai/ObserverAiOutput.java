package com.cgs.atvobserver.ai;

import androidx.camera.video.AudioStats;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ObserverAiEngine.kt */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u000e\n\u0002\u0010\u000e\n\u0002\b=\b\u0087\b\u0018\u00002\u00020\u0001B\u0093\u0002\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0016\u0012\b\b\u0002\u0010\u0017\u001a\u00020\r\u0012\b\b\u0002\u0010\u0018\u001a\u00020\r\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0016\u0012\b\b\u0002\u0010\u001a\u001a\u00020\r\u0012\b\b\u0002\u0010\u001b\u001a\u00020\r\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0016\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u0016\u0012\b\b\u0002\u0010\u001e\u001a\u00020\r\u0012\b\b\u0002\u0010\u001f\u001a\u00020\u0010\u0012\b\b\u0002\u0010 \u001a\u00020\u0010\u0012\b\b\u0002\u0010!\u001a\u00020\u0010\u0012\b\b\u0002\u0010\"\u001a\u00020\u0010\u0012\b\b\u0002\u0010#\u001a\u00020\r\u0012\b\b\u0002\u0010$\u001a\u00020%¢\u0006\u0002\u0010&J\t\u0010B\u001a\u00020\u0003HÆ\u0003J\t\u0010C\u001a\u00020\u0010HÆ\u0003J\t\u0010D\u001a\u00020\u0010HÆ\u0003J\t\u0010E\u001a\u00020\u0010HÆ\u0003J\t\u0010F\u001a\u00020\u0016HÆ\u0003J\t\u0010G\u001a\u00020\rHÆ\u0003J\t\u0010H\u001a\u00020\rHÆ\u0003J\t\u0010I\u001a\u00020\u0016HÆ\u0003J\t\u0010J\u001a\u00020\rHÆ\u0003J\t\u0010K\u001a\u00020\rHÆ\u0003J\t\u0010L\u001a\u00020\u0016HÆ\u0003J\t\u0010M\u001a\u00020\u0005HÆ\u0003J\t\u0010N\u001a\u00020\u0016HÆ\u0003J\t\u0010O\u001a\u00020\rHÆ\u0003J\t\u0010P\u001a\u00020\u0010HÆ\u0003J\t\u0010Q\u001a\u00020\u0010HÆ\u0003J\t\u0010R\u001a\u00020\u0010HÆ\u0003J\t\u0010S\u001a\u00020\u0010HÆ\u0003J\t\u0010T\u001a\u00020\rHÆ\u0003J\t\u0010U\u001a\u00020%HÆ\u0003J\t\u0010V\u001a\u00020\u0007HÆ\u0003J\t\u0010W\u001a\u00020\tHÆ\u0003J\t\u0010X\u001a\u00020\u000bHÆ\u0003J\t\u0010Y\u001a\u00020\rHÆ\u0003J\t\u0010Z\u001a\u00020\rHÆ\u0003J\t\u0010[\u001a\u00020\u0010HÆ\u0003J\t\u0010\\\u001a\u00020\u0010HÆ\u0003J\u0097\u0002\u0010]\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\r2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u00102\b\b\u0002\u0010\u0013\u001a\u00020\u00102\b\b\u0002\u0010\u0014\u001a\u00020\u00102\b\b\u0002\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\r2\b\b\u0002\u0010\u0018\u001a\u00020\r2\b\b\u0002\u0010\u0019\u001a\u00020\u00162\b\b\u0002\u0010\u001a\u001a\u00020\r2\b\b\u0002\u0010\u001b\u001a\u00020\r2\b\b\u0002\u0010\u001c\u001a\u00020\u00162\b\b\u0002\u0010\u001d\u001a\u00020\u00162\b\b\u0002\u0010\u001e\u001a\u00020\r2\b\b\u0002\u0010\u001f\u001a\u00020\u00102\b\b\u0002\u0010 \u001a\u00020\u00102\b\b\u0002\u0010!\u001a\u00020\u00102\b\b\u0002\u0010\"\u001a\u00020\u00102\b\b\u0002\u0010#\u001a\u00020\r2\b\b\u0002\u0010$\u001a\u00020%HÆ\u0001J\u0013\u0010^\u001a\u00020\u00102\b\u0010_\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010`\u001a\u00020\rHÖ\u0001J\t\u0010a\u001a\u00020%HÖ\u0001R\u0011\u0010$\u001a\u00020%¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0011\u0010\u0015\u001a\u00020\u0016¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b-\u0010.R\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b/\u00100R\u0011\u0010\u0017\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b1\u00100R\u0011\u0010\u0019\u001a\u00020\u0016¢\u0006\b\n\u0000\u001a\u0004\b2\u0010*R\u0011\u0010\u001c\u001a\u00020\u0016¢\u0006\b\n\u0000\u001a\u0004\b3\u0010*R\u0011\u0010\u000e\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b4\u00100R\u0011\u0010\u000f\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u00105R\u0011\u0010 \u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b \u00105R\u0011\u0010\"\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b\"\u00105R\u0011\u0010\u0013\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u00105R\u0011\u0010\u001f\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u00105R\u0011\u0010\u0014\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u00105R\u0011\u0010\u0012\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u00105R\u0011\u0010\u0011\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u00105R\u0011\u0010!\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b!\u00105R\u0011\u0010#\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b6\u00100R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b7\u00108R\u0011\u0010\u001e\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b9\u00100R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b:\u0010;R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b<\u0010=R\u0011\u0010\u0018\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b>\u00100R\u0011\u0010\u001a\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b?\u00100R\u0011\u0010\u001b\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b@\u00100R\u0011\u0010\u001d\u001a\u00020\u0016¢\u0006\b\n\u0000\u001a\u0004\bA\u0010*¨\u0006b"}, d2 = {"Lcom/cgs/atvobserver/ai/ObserverAiOutput;", "", "operatingMode", "Lcom/cgs/atvobserver/ai/AppOperatingMode;", "rideState", "Lcom/cgs/atvobserver/ai/RideStateClass;", "roadSurface", "Lcom/cgs/atvobserver/ai/RoadSurfaceClass;", "engineLoad", "Lcom/cgs/atvobserver/ai/EngineLoadState;", "clutchType", "Lcom/cgs/atvobserver/ai/ClutchType;", "estimatedGear", "", "gearConfidencePct", "isCentrifugalClutchSlipping", "", "isWheelSpinDetected", "isTirePressureLowOrDragDetected", "isPocketModeActive", "isTerrainSelfCalibrated", "climbGradePercent", "", "fusedRpm", "rpmConfidencePct", "fusedSpeedKmh", "speedConfidencePct", "systemConfidencePct", "gForceMagnitude", "vibrationIntensity", "recommendedMotionFps", "isSpeechDetected", "isDataRepaired", "isZRamOffloadActive", "isEmergencyCrashActive", "memoryUsageMb", "activeDeviceTier", "", "(Lcom/cgs/atvobserver/ai/AppOperatingMode;Lcom/cgs/atvobserver/ai/RideStateClass;Lcom/cgs/atvobserver/ai/RoadSurfaceClass;Lcom/cgs/atvobserver/ai/EngineLoadState;Lcom/cgs/atvobserver/ai/ClutchType;IIZZZZZDIIDIIDDIZZZZILjava/lang/String;)V", "getActiveDeviceTier", "()Ljava/lang/String;", "getClimbGradePercent", "()D", "getClutchType", "()Lcom/cgs/atvobserver/ai/ClutchType;", "getEngineLoad", "()Lcom/cgs/atvobserver/ai/EngineLoadState;", "getEstimatedGear", "()I", "getFusedRpm", "getFusedSpeedKmh", "getGForceMagnitude", "getGearConfidencePct", "()Z", "getMemoryUsageMb", "getOperatingMode", "()Lcom/cgs/atvobserver/ai/AppOperatingMode;", "getRecommendedMotionFps", "getRideState", "()Lcom/cgs/atvobserver/ai/RideStateClass;", "getRoadSurface", "()Lcom/cgs/atvobserver/ai/RoadSurfaceClass;", "getRpmConfidencePct", "getSpeedConfidencePct", "getSystemConfidencePct", "getVibrationIntensity", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "toString", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes14.dex */
public final /* data */ class ObserverAiOutput {
    public static final int $stable = 0;
    private final String activeDeviceTier;
    private final double climbGradePercent;
    private final ClutchType clutchType;
    private final EngineLoadState engineLoad;
    private final int estimatedGear;
    private final int fusedRpm;
    private final double fusedSpeedKmh;
    private final double gForceMagnitude;
    private final int gearConfidencePct;
    private final boolean isCentrifugalClutchSlipping;
    private final boolean isDataRepaired;
    private final boolean isEmergencyCrashActive;
    private final boolean isPocketModeActive;
    private final boolean isSpeechDetected;
    private final boolean isTerrainSelfCalibrated;
    private final boolean isTirePressureLowOrDragDetected;
    private final boolean isWheelSpinDetected;
    private final boolean isZRamOffloadActive;
    private final int memoryUsageMb;
    private final AppOperatingMode operatingMode;
    private final int recommendedMotionFps;
    private final RideStateClass rideState;
    private final RoadSurfaceClass roadSurface;
    private final int rpmConfidencePct;
    private final int speedConfidencePct;
    private final int systemConfidencePct;
    private final double vibrationIntensity;

    public ObserverAiOutput() {
        this(null, null, null, null, null, 0, 0, false, false, false, false, false, AudioStats.AUDIO_AMPLITUDE_NONE, 0, 0, AudioStats.AUDIO_AMPLITUDE_NONE, 0, 0, AudioStats.AUDIO_AMPLITUDE_NONE, AudioStats.AUDIO_AMPLITUDE_NONE, 0, false, false, false, false, 0, null, 134217727, null);
    }

    /* renamed from: component1, reason: from getter */
    public final AppOperatingMode getOperatingMode() {
        return this.operatingMode;
    }

    /* renamed from: component10, reason: from getter */
    public final boolean getIsTirePressureLowOrDragDetected() {
        return this.isTirePressureLowOrDragDetected;
    }

    /* renamed from: component11, reason: from getter */
    public final boolean getIsPocketModeActive() {
        return this.isPocketModeActive;
    }

    /* renamed from: component12, reason: from getter */
    public final boolean getIsTerrainSelfCalibrated() {
        return this.isTerrainSelfCalibrated;
    }

    /* renamed from: component13, reason: from getter */
    public final double getClimbGradePercent() {
        return this.climbGradePercent;
    }

    /* renamed from: component14, reason: from getter */
    public final int getFusedRpm() {
        return this.fusedRpm;
    }

    /* renamed from: component15, reason: from getter */
    public final int getRpmConfidencePct() {
        return this.rpmConfidencePct;
    }

    /* renamed from: component16, reason: from getter */
    public final double getFusedSpeedKmh() {
        return this.fusedSpeedKmh;
    }

    /* renamed from: component17, reason: from getter */
    public final int getSpeedConfidencePct() {
        return this.speedConfidencePct;
    }

    /* renamed from: component18, reason: from getter */
    public final int getSystemConfidencePct() {
        return this.systemConfidencePct;
    }

    /* renamed from: component19, reason: from getter */
    public final double getGForceMagnitude() {
        return this.gForceMagnitude;
    }

    /* renamed from: component2, reason: from getter */
    public final RideStateClass getRideState() {
        return this.rideState;
    }

    /* renamed from: component20, reason: from getter */
    public final double getVibrationIntensity() {
        return this.vibrationIntensity;
    }

    /* renamed from: component21, reason: from getter */
    public final int getRecommendedMotionFps() {
        return this.recommendedMotionFps;
    }

    /* renamed from: component22, reason: from getter */
    public final boolean getIsSpeechDetected() {
        return this.isSpeechDetected;
    }

    /* renamed from: component23, reason: from getter */
    public final boolean getIsDataRepaired() {
        return this.isDataRepaired;
    }

    /* renamed from: component24, reason: from getter */
    public final boolean getIsZRamOffloadActive() {
        return this.isZRamOffloadActive;
    }

    /* renamed from: component25, reason: from getter */
    public final boolean getIsEmergencyCrashActive() {
        return this.isEmergencyCrashActive;
    }

    /* renamed from: component26, reason: from getter */
    public final int getMemoryUsageMb() {
        return this.memoryUsageMb;
    }

    /* renamed from: component27, reason: from getter */
    public final String getActiveDeviceTier() {
        return this.activeDeviceTier;
    }

    /* renamed from: component3, reason: from getter */
    public final RoadSurfaceClass getRoadSurface() {
        return this.roadSurface;
    }

    /* renamed from: component4, reason: from getter */
    public final EngineLoadState getEngineLoad() {
        return this.engineLoad;
    }

    /* renamed from: component5, reason: from getter */
    public final ClutchType getClutchType() {
        return this.clutchType;
    }

    /* renamed from: component6, reason: from getter */
    public final int getEstimatedGear() {
        return this.estimatedGear;
    }

    /* renamed from: component7, reason: from getter */
    public final int getGearConfidencePct() {
        return this.gearConfidencePct;
    }

    /* renamed from: component8, reason: from getter */
    public final boolean getIsCentrifugalClutchSlipping() {
        return this.isCentrifugalClutchSlipping;
    }

    /* renamed from: component9, reason: from getter */
    public final boolean getIsWheelSpinDetected() {
        return this.isWheelSpinDetected;
    }

    public final ObserverAiOutput copy(AppOperatingMode operatingMode, RideStateClass rideState, RoadSurfaceClass roadSurface, EngineLoadState engineLoad, ClutchType clutchType, int estimatedGear, int gearConfidencePct, boolean isCentrifugalClutchSlipping, boolean isWheelSpinDetected, boolean isTirePressureLowOrDragDetected, boolean isPocketModeActive, boolean isTerrainSelfCalibrated, double climbGradePercent, int fusedRpm, int rpmConfidencePct, double fusedSpeedKmh, int speedConfidencePct, int systemConfidencePct, double gForceMagnitude, double vibrationIntensity, int recommendedMotionFps, boolean isSpeechDetected, boolean isDataRepaired, boolean isZRamOffloadActive, boolean isEmergencyCrashActive, int memoryUsageMb, String activeDeviceTier) {
        Intrinsics.checkNotNullParameter(operatingMode, "operatingMode");
        Intrinsics.checkNotNullParameter(rideState, "rideState");
        Intrinsics.checkNotNullParameter(roadSurface, "roadSurface");
        Intrinsics.checkNotNullParameter(engineLoad, "engineLoad");
        Intrinsics.checkNotNullParameter(clutchType, "clutchType");
        Intrinsics.checkNotNullParameter(activeDeviceTier, "activeDeviceTier");
        return new ObserverAiOutput(operatingMode, rideState, roadSurface, engineLoad, clutchType, estimatedGear, gearConfidencePct, isCentrifugalClutchSlipping, isWheelSpinDetected, isTirePressureLowOrDragDetected, isPocketModeActive, isTerrainSelfCalibrated, climbGradePercent, fusedRpm, rpmConfidencePct, fusedSpeedKmh, speedConfidencePct, systemConfidencePct, gForceMagnitude, vibrationIntensity, recommendedMotionFps, isSpeechDetected, isDataRepaired, isZRamOffloadActive, isEmergencyCrashActive, memoryUsageMb, activeDeviceTier);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ObserverAiOutput)) {
            return false;
        }
        ObserverAiOutput observerAiOutput = (ObserverAiOutput) other;
        return this.operatingMode == observerAiOutput.operatingMode && this.rideState == observerAiOutput.rideState && this.roadSurface == observerAiOutput.roadSurface && this.engineLoad == observerAiOutput.engineLoad && this.clutchType == observerAiOutput.clutchType && this.estimatedGear == observerAiOutput.estimatedGear && this.gearConfidencePct == observerAiOutput.gearConfidencePct && this.isCentrifugalClutchSlipping == observerAiOutput.isCentrifugalClutchSlipping && this.isWheelSpinDetected == observerAiOutput.isWheelSpinDetected && this.isTirePressureLowOrDragDetected == observerAiOutput.isTirePressureLowOrDragDetected && this.isPocketModeActive == observerAiOutput.isPocketModeActive && this.isTerrainSelfCalibrated == observerAiOutput.isTerrainSelfCalibrated && Double.compare(this.climbGradePercent, observerAiOutput.climbGradePercent) == 0 && this.fusedRpm == observerAiOutput.fusedRpm && this.rpmConfidencePct == observerAiOutput.rpmConfidencePct && Double.compare(this.fusedSpeedKmh, observerAiOutput.fusedSpeedKmh) == 0 && this.speedConfidencePct == observerAiOutput.speedConfidencePct && this.systemConfidencePct == observerAiOutput.systemConfidencePct && Double.compare(this.gForceMagnitude, observerAiOutput.gForceMagnitude) == 0 && Double.compare(this.vibrationIntensity, observerAiOutput.vibrationIntensity) == 0 && this.recommendedMotionFps == observerAiOutput.recommendedMotionFps && this.isSpeechDetected == observerAiOutput.isSpeechDetected && this.isDataRepaired == observerAiOutput.isDataRepaired && this.isZRamOffloadActive == observerAiOutput.isZRamOffloadActive && this.isEmergencyCrashActive == observerAiOutput.isEmergencyCrashActive && this.memoryUsageMb == observerAiOutput.memoryUsageMb && Intrinsics.areEqual(this.activeDeviceTier, observerAiOutput.activeDeviceTier);
    }

    public int hashCode() {
        return (((((((((((((((((((((((((((((((((((((((((((((((((((this.operatingMode.hashCode() * 31) + this.rideState.hashCode()) * 31) + this.roadSurface.hashCode()) * 31) + this.engineLoad.hashCode()) * 31) + this.clutchType.hashCode()) * 31) + Integer.hashCode(this.estimatedGear)) * 31) + Integer.hashCode(this.gearConfidencePct)) * 31) + Boolean.hashCode(this.isCentrifugalClutchSlipping)) * 31) + Boolean.hashCode(this.isWheelSpinDetected)) * 31) + Boolean.hashCode(this.isTirePressureLowOrDragDetected)) * 31) + Boolean.hashCode(this.isPocketModeActive)) * 31) + Boolean.hashCode(this.isTerrainSelfCalibrated)) * 31) + Double.hashCode(this.climbGradePercent)) * 31) + Integer.hashCode(this.fusedRpm)) * 31) + Integer.hashCode(this.rpmConfidencePct)) * 31) + Double.hashCode(this.fusedSpeedKmh)) * 31) + Integer.hashCode(this.speedConfidencePct)) * 31) + Integer.hashCode(this.systemConfidencePct)) * 31) + Double.hashCode(this.gForceMagnitude)) * 31) + Double.hashCode(this.vibrationIntensity)) * 31) + Integer.hashCode(this.recommendedMotionFps)) * 31) + Boolean.hashCode(this.isSpeechDetected)) * 31) + Boolean.hashCode(this.isDataRepaired)) * 31) + Boolean.hashCode(this.isZRamOffloadActive)) * 31) + Boolean.hashCode(this.isEmergencyCrashActive)) * 31) + Integer.hashCode(this.memoryUsageMb)) * 31) + this.activeDeviceTier.hashCode();
    }

    public String toString() {
        return "ObserverAiOutput(operatingMode=" + this.operatingMode + ", rideState=" + this.rideState + ", roadSurface=" + this.roadSurface + ", engineLoad=" + this.engineLoad + ", clutchType=" + this.clutchType + ", estimatedGear=" + this.estimatedGear + ", gearConfidencePct=" + this.gearConfidencePct + ", isCentrifugalClutchSlipping=" + this.isCentrifugalClutchSlipping + ", isWheelSpinDetected=" + this.isWheelSpinDetected + ", isTirePressureLowOrDragDetected=" + this.isTirePressureLowOrDragDetected + ", isPocketModeActive=" + this.isPocketModeActive + ", isTerrainSelfCalibrated=" + this.isTerrainSelfCalibrated + ", climbGradePercent=" + this.climbGradePercent + ", fusedRpm=" + this.fusedRpm + ", rpmConfidencePct=" + this.rpmConfidencePct + ", fusedSpeedKmh=" + this.fusedSpeedKmh + ", speedConfidencePct=" + this.speedConfidencePct + ", systemConfidencePct=" + this.systemConfidencePct + ", gForceMagnitude=" + this.gForceMagnitude + ", vibrationIntensity=" + this.vibrationIntensity + ", recommendedMotionFps=" + this.recommendedMotionFps + ", isSpeechDetected=" + this.isSpeechDetected + ", isDataRepaired=" + this.isDataRepaired + ", isZRamOffloadActive=" + this.isZRamOffloadActive + ", isEmergencyCrashActive=" + this.isEmergencyCrashActive + ", memoryUsageMb=" + this.memoryUsageMb + ", activeDeviceTier=" + this.activeDeviceTier + ")";
    }

    public ObserverAiOutput(AppOperatingMode operatingMode, RideStateClass rideState, RoadSurfaceClass roadSurface, EngineLoadState engineLoad, ClutchType clutchType, int estimatedGear, int gearConfidencePct, boolean isCentrifugalClutchSlipping, boolean isWheelSpinDetected, boolean isTirePressureLowOrDragDetected, boolean isPocketModeActive, boolean isTerrainSelfCalibrated, double climbGradePercent, int fusedRpm, int rpmConfidencePct, double fusedSpeedKmh, int speedConfidencePct, int systemConfidencePct, double gForceMagnitude, double vibrationIntensity, int recommendedMotionFps, boolean isSpeechDetected, boolean isDataRepaired, boolean isZRamOffloadActive, boolean isEmergencyCrashActive, int memoryUsageMb, String activeDeviceTier) {
        Intrinsics.checkNotNullParameter(operatingMode, "operatingMode");
        Intrinsics.checkNotNullParameter(rideState, "rideState");
        Intrinsics.checkNotNullParameter(roadSurface, "roadSurface");
        Intrinsics.checkNotNullParameter(engineLoad, "engineLoad");
        Intrinsics.checkNotNullParameter(clutchType, "clutchType");
        Intrinsics.checkNotNullParameter(activeDeviceTier, "activeDeviceTier");
        this.operatingMode = operatingMode;
        this.rideState = rideState;
        this.roadSurface = roadSurface;
        this.engineLoad = engineLoad;
        this.clutchType = clutchType;
        this.estimatedGear = estimatedGear;
        this.gearConfidencePct = gearConfidencePct;
        this.isCentrifugalClutchSlipping = isCentrifugalClutchSlipping;
        this.isWheelSpinDetected = isWheelSpinDetected;
        this.isTirePressureLowOrDragDetected = isTirePressureLowOrDragDetected;
        this.isPocketModeActive = isPocketModeActive;
        this.isTerrainSelfCalibrated = isTerrainSelfCalibrated;
        this.climbGradePercent = climbGradePercent;
        this.fusedRpm = fusedRpm;
        this.rpmConfidencePct = rpmConfidencePct;
        this.fusedSpeedKmh = fusedSpeedKmh;
        this.speedConfidencePct = speedConfidencePct;
        this.systemConfidencePct = systemConfidencePct;
        this.gForceMagnitude = gForceMagnitude;
        this.vibrationIntensity = vibrationIntensity;
        this.recommendedMotionFps = recommendedMotionFps;
        this.isSpeechDetected = isSpeechDetected;
        this.isDataRepaired = isDataRepaired;
        this.isZRamOffloadActive = isZRamOffloadActive;
        this.isEmergencyCrashActive = isEmergencyCrashActive;
        this.memoryUsageMb = memoryUsageMb;
        this.activeDeviceTier = activeDeviceTier;
    }

    public /* synthetic */ ObserverAiOutput(AppOperatingMode appOperatingMode, RideStateClass rideStateClass, RoadSurfaceClass roadSurfaceClass, EngineLoadState engineLoadState, ClutchType clutchType, int i, int i2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, double d, int i3, int i4, double d2, int i5, int i6, double d3, double d4, int i7, boolean z6, boolean z7, boolean z8, boolean z9, int i8, String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? AppOperatingMode.STANDARD_MODE : appOperatingMode, (i9 & 2) != 0 ? RideStateClass.STOPPED : rideStateClass, (i9 & 4) != 0 ? RoadSurfaceClass.ASPHALT : roadSurfaceClass, (i9 & 8) != 0 ? EngineLoadState.IDLE : engineLoadState, (i9 & 16) != 0 ? ClutchType.CENTRIFUGAL : clutchType, (i9 & 32) != 0 ? 1 : i, (i9 & 64) != 0 ? 85 : i2, (i9 & 128) != 0 ? false : z, (i9 & 256) != 0 ? false : z2, (i9 & 512) != 0 ? false : z3, (i9 & 1024) != 0 ? false : z4, (i9 & 2048) != 0 ? false : z5, (i9 & 4096) != 0 ? 0.0d : d, (i9 & 8192) != 0 ? 0 : i3, (i9 & 16384) != 0 ? 100 : i4, (i9 & 32768) != 0 ? 0.0d : d2, (i9 & 65536) == 0 ? i5 : 100, (i9 & 131072) != 0 ? 95 : i6, (i9 & 262144) != 0 ? 1.0d : d3, (i9 & 524288) == 0 ? d4 : AudioStats.AUDIO_AMPLITUDE_NONE, (i9 & 1048576) != 0 ? 30 : i7, (i9 & 2097152) != 0 ? false : z6, (i9 & 4194304) != 0 ? false : z7, (i9 & 8388608) != 0 ? false : z8, (i9 & 16777216) != 0 ? false : z9, (i9 & 33554432) != 0 ? 280 : i8, (i9 & AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL) != 0 ? "J3_LITE" : str);
    }

    public final AppOperatingMode getOperatingMode() {
        return this.operatingMode;
    }

    public final RideStateClass getRideState() {
        return this.rideState;
    }

    public final RoadSurfaceClass getRoadSurface() {
        return this.roadSurface;
    }

    public final EngineLoadState getEngineLoad() {
        return this.engineLoad;
    }

    public final ClutchType getClutchType() {
        return this.clutchType;
    }

    public final int getEstimatedGear() {
        return this.estimatedGear;
    }

    public final int getGearConfidencePct() {
        return this.gearConfidencePct;
    }

    public final boolean isCentrifugalClutchSlipping() {
        return this.isCentrifugalClutchSlipping;
    }

    public final boolean isWheelSpinDetected() {
        return this.isWheelSpinDetected;
    }

    public final boolean isTirePressureLowOrDragDetected() {
        return this.isTirePressureLowOrDragDetected;
    }

    public final boolean isPocketModeActive() {
        return this.isPocketModeActive;
    }

    public final boolean isTerrainSelfCalibrated() {
        return this.isTerrainSelfCalibrated;
    }

    public final double getClimbGradePercent() {
        return this.climbGradePercent;
    }

    public final int getFusedRpm() {
        return this.fusedRpm;
    }

    public final int getRpmConfidencePct() {
        return this.rpmConfidencePct;
    }

    public final double getFusedSpeedKmh() {
        return this.fusedSpeedKmh;
    }

    public final int getSpeedConfidencePct() {
        return this.speedConfidencePct;
    }

    public final int getSystemConfidencePct() {
        return this.systemConfidencePct;
    }

    public final double getGForceMagnitude() {
        return this.gForceMagnitude;
    }

    public final double getVibrationIntensity() {
        return this.vibrationIntensity;
    }

    public final int getRecommendedMotionFps() {
        return this.recommendedMotionFps;
    }

    public final boolean isSpeechDetected() {
        return this.isSpeechDetected;
    }

    public final boolean isDataRepaired() {
        return this.isDataRepaired;
    }

    public final boolean isZRamOffloadActive() {
        return this.isZRamOffloadActive;
    }

    public final boolean isEmergencyCrashActive() {
        return this.isEmergencyCrashActive;
    }

    public final int getMemoryUsageMb() {
        return this.memoryUsageMb;
    }

    public final String getActiveDeviceTier() {
        return this.activeDeviceTier;
    }
}
