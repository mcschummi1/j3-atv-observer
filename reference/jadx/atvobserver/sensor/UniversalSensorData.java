package com.cgs.atvobserver.sensor;

import androidx.camera.video.AudioStats;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: UniversalSensorManager.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\bA\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001Bë\u0001\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\f\u001a\u00020\n\u0012\b\b\u0002\u0010\r\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0012\u001a\u00020\n\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0014\u001a\u00020\n\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0017\u001a\u00020\n\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0019\u001a\u00020\n\u0012\b\b\u0002\u0010\u001a\u001a\u00020\n\u0012\b\b\u0002\u0010\u001b\u001a\u00020\n¢\u0006\u0002\u0010\u001cJ\t\u00101\u001a\u00020\u0003HÆ\u0003J\t\u00102\u001a\u00020\u0003HÆ\u0003J\t\u00103\u001a\u00020\u0005HÆ\u0003J\t\u00104\u001a\u00020\u0005HÆ\u0003J\t\u00105\u001a\u00020\u0005HÆ\u0003J\t\u00106\u001a\u00020\nHÆ\u0003J\t\u00107\u001a\u00020\u0005HÆ\u0003J\t\u00108\u001a\u00020\nHÆ\u0003J\t\u00109\u001a\u00020\u0005HÆ\u0003J\t\u0010:\u001a\u00020\u0003HÆ\u0003J\t\u0010;\u001a\u00020\nHÆ\u0003J\t\u0010<\u001a\u00020\u0005HÆ\u0003J\t\u0010=\u001a\u00020\u0005HÆ\u0003J\t\u0010>\u001a\u00020\nHÆ\u0003J\t\u0010?\u001a\u00020\nHÆ\u0003J\t\u0010@\u001a\u00020\nHÆ\u0003J\t\u0010A\u001a\u00020\u0005HÆ\u0003J\t\u0010B\u001a\u00020\u0005HÆ\u0003J\t\u0010C\u001a\u00020\u0003HÆ\u0003J\t\u0010D\u001a\u00020\nHÆ\u0003J\t\u0010E\u001a\u00020\nHÆ\u0003J\t\u0010F\u001a\u00020\nHÆ\u0003J\t\u0010G\u001a\u00020\u0003HÆ\u0003Jï\u0001\u0010H\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\n2\b\b\u0002\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000f\u001a\u00020\u00052\b\b\u0002\u0010\u0010\u001a\u00020\u00052\b\b\u0002\u0010\u0011\u001a\u00020\u00052\b\b\u0002\u0010\u0012\u001a\u00020\n2\b\b\u0002\u0010\u0013\u001a\u00020\u00052\b\b\u0002\u0010\u0014\u001a\u00020\n2\b\b\u0002\u0010\u0015\u001a\u00020\u00052\b\b\u0002\u0010\u0016\u001a\u00020\u00032\b\b\u0002\u0010\u0017\u001a\u00020\n2\b\b\u0002\u0010\u0018\u001a\u00020\u00052\b\b\u0002\u0010\u0019\u001a\u00020\n2\b\b\u0002\u0010\u001a\u001a\u00020\n2\b\b\u0002\u0010\u001b\u001a\u00020\nHÆ\u0001J\u0013\u0010I\u001a\u00020\n2\b\u0010J\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010K\u001a\u00020LHÖ\u0001J\t\u0010M\u001a\u00020NHÖ\u0001R\u0011\u0010\u0018\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0011\u0010\u000f\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u001eR\u0011\u0010\u0010\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001eR\u0011\u0010\u0011\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001eR\u0011\u0010\u0015\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u001eR\u0011\u0010\u0013\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u001eR\u0011\u0010\f\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b&\u0010'R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b(\u0010%R\u0011\u0010\u000b\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b)\u0010%R\u0011\u0010\u001b\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010%R\u0011\u0010\u0017\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010%R\u0011\u0010\u0014\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010%R\u0011\u0010\u0012\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010%R\u0011\u0010\u001a\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010%R\u0011\u0010\u0019\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010%R\u0011\u0010\r\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b*\u0010'R\u0011\u0010\u0016\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b+\u0010'R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\u001eR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b-\u0010\u001eR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b.\u0010\u001eR\u0011\u0010\u000e\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b/\u0010'R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b0\u0010'¨\u0006O"}, d2 = {"Lcom/cgs/atvobserver/sensor/UniversalSensorData;", "", "gForceMagnitude", "", "rawX", "", "rawY", "rawZ", "vibrationIntensity", "hardBrakingDetected", "", "hardLaunchDetected", "crashOrFallDetected", "pitchAngleDeg", "rollLeanAngleDeg", "angularVelocityX", "angularVelocityY", "angularVelocityZ", "isGyroAvailable", "compassHeadingDeg", "isCompassAvailable", "barometricPressureHpa", "pressureAltitudeMeters", "isBarometerAvailable", "ambientLux", "isNightDetected", "isLightSensorAvailable", "isAccelerometerAvailable", "(DFFFDZZZDDFFFZFZFDZFZZZ)V", "getAmbientLux", "()F", "getAngularVelocityX", "getAngularVelocityY", "getAngularVelocityZ", "getBarometricPressureHpa", "getCompassHeadingDeg", "getCrashOrFallDetected", "()Z", "getGForceMagnitude", "()D", "getHardBrakingDetected", "getHardLaunchDetected", "getPitchAngleDeg", "getPressureAltitudeMeters", "getRawX", "getRawY", "getRawZ", "getRollLeanAngleDeg", "getVibrationIntensity", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component23", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "", "toString", "", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes9.dex */
public final /* data */ class UniversalSensorData {
    public static final int $stable = 0;
    private final float ambientLux;
    private final float angularVelocityX;
    private final float angularVelocityY;
    private final float angularVelocityZ;
    private final float barometricPressureHpa;
    private final float compassHeadingDeg;
    private final boolean crashOrFallDetected;
    private final double gForceMagnitude;
    private final boolean hardBrakingDetected;
    private final boolean hardLaunchDetected;
    private final boolean isAccelerometerAvailable;
    private final boolean isBarometerAvailable;
    private final boolean isCompassAvailable;
    private final boolean isGyroAvailable;
    private final boolean isLightSensorAvailable;
    private final boolean isNightDetected;
    private final double pitchAngleDeg;
    private final double pressureAltitudeMeters;
    private final float rawX;
    private final float rawY;
    private final float rawZ;
    private final double rollLeanAngleDeg;
    private final double vibrationIntensity;

    public UniversalSensorData() {
        this(AudioStats.AUDIO_AMPLITUDE_NONE, 0.0f, 0.0f, 0.0f, AudioStats.AUDIO_AMPLITUDE_NONE, false, false, false, AudioStats.AUDIO_AMPLITUDE_NONE, AudioStats.AUDIO_AMPLITUDE_NONE, 0.0f, 0.0f, 0.0f, false, 0.0f, false, 0.0f, AudioStats.AUDIO_AMPLITUDE_NONE, false, 0.0f, false, false, false, 8388607, null);
    }

    /* renamed from: component1, reason: from getter */
    public final double getGForceMagnitude() {
        return this.gForceMagnitude;
    }

    /* renamed from: component10, reason: from getter */
    public final double getRollLeanAngleDeg() {
        return this.rollLeanAngleDeg;
    }

    /* renamed from: component11, reason: from getter */
    public final float getAngularVelocityX() {
        return this.angularVelocityX;
    }

    /* renamed from: component12, reason: from getter */
    public final float getAngularVelocityY() {
        return this.angularVelocityY;
    }

    /* renamed from: component13, reason: from getter */
    public final float getAngularVelocityZ() {
        return this.angularVelocityZ;
    }

    /* renamed from: component14, reason: from getter */
    public final boolean getIsGyroAvailable() {
        return this.isGyroAvailable;
    }

    /* renamed from: component15, reason: from getter */
    public final float getCompassHeadingDeg() {
        return this.compassHeadingDeg;
    }

    /* renamed from: component16, reason: from getter */
    public final boolean getIsCompassAvailable() {
        return this.isCompassAvailable;
    }

    /* renamed from: component17, reason: from getter */
    public final float getBarometricPressureHpa() {
        return this.barometricPressureHpa;
    }

    /* renamed from: component18, reason: from getter */
    public final double getPressureAltitudeMeters() {
        return this.pressureAltitudeMeters;
    }

    /* renamed from: component19, reason: from getter */
    public final boolean getIsBarometerAvailable() {
        return this.isBarometerAvailable;
    }

    /* renamed from: component2, reason: from getter */
    public final float getRawX() {
        return this.rawX;
    }

    /* renamed from: component20, reason: from getter */
    public final float getAmbientLux() {
        return this.ambientLux;
    }

    /* renamed from: component21, reason: from getter */
    public final boolean getIsNightDetected() {
        return this.isNightDetected;
    }

    /* renamed from: component22, reason: from getter */
    public final boolean getIsLightSensorAvailable() {
        return this.isLightSensorAvailable;
    }

    /* renamed from: component23, reason: from getter */
    public final boolean getIsAccelerometerAvailable() {
        return this.isAccelerometerAvailable;
    }

    /* renamed from: component3, reason: from getter */
    public final float getRawY() {
        return this.rawY;
    }

    /* renamed from: component4, reason: from getter */
    public final float getRawZ() {
        return this.rawZ;
    }

    /* renamed from: component5, reason: from getter */
    public final double getVibrationIntensity() {
        return this.vibrationIntensity;
    }

    /* renamed from: component6, reason: from getter */
    public final boolean getHardBrakingDetected() {
        return this.hardBrakingDetected;
    }

    /* renamed from: component7, reason: from getter */
    public final boolean getHardLaunchDetected() {
        return this.hardLaunchDetected;
    }

    /* renamed from: component8, reason: from getter */
    public final boolean getCrashOrFallDetected() {
        return this.crashOrFallDetected;
    }

    /* renamed from: component9, reason: from getter */
    public final double getPitchAngleDeg() {
        return this.pitchAngleDeg;
    }

    public final UniversalSensorData copy(double gForceMagnitude, float rawX, float rawY, float rawZ, double vibrationIntensity, boolean hardBrakingDetected, boolean hardLaunchDetected, boolean crashOrFallDetected, double pitchAngleDeg, double rollLeanAngleDeg, float angularVelocityX, float angularVelocityY, float angularVelocityZ, boolean isGyroAvailable, float compassHeadingDeg, boolean isCompassAvailable, float barometricPressureHpa, double pressureAltitudeMeters, boolean isBarometerAvailable, float ambientLux, boolean isNightDetected, boolean isLightSensorAvailable, boolean isAccelerometerAvailable) {
        return new UniversalSensorData(gForceMagnitude, rawX, rawY, rawZ, vibrationIntensity, hardBrakingDetected, hardLaunchDetected, crashOrFallDetected, pitchAngleDeg, rollLeanAngleDeg, angularVelocityX, angularVelocityY, angularVelocityZ, isGyroAvailable, compassHeadingDeg, isCompassAvailable, barometricPressureHpa, pressureAltitudeMeters, isBarometerAvailable, ambientLux, isNightDetected, isLightSensorAvailable, isAccelerometerAvailable);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UniversalSensorData)) {
            return false;
        }
        UniversalSensorData universalSensorData = (UniversalSensorData) other;
        return Double.compare(this.gForceMagnitude, universalSensorData.gForceMagnitude) == 0 && Float.compare(this.rawX, universalSensorData.rawX) == 0 && Float.compare(this.rawY, universalSensorData.rawY) == 0 && Float.compare(this.rawZ, universalSensorData.rawZ) == 0 && Double.compare(this.vibrationIntensity, universalSensorData.vibrationIntensity) == 0 && this.hardBrakingDetected == universalSensorData.hardBrakingDetected && this.hardLaunchDetected == universalSensorData.hardLaunchDetected && this.crashOrFallDetected == universalSensorData.crashOrFallDetected && Double.compare(this.pitchAngleDeg, universalSensorData.pitchAngleDeg) == 0 && Double.compare(this.rollLeanAngleDeg, universalSensorData.rollLeanAngleDeg) == 0 && Float.compare(this.angularVelocityX, universalSensorData.angularVelocityX) == 0 && Float.compare(this.angularVelocityY, universalSensorData.angularVelocityY) == 0 && Float.compare(this.angularVelocityZ, universalSensorData.angularVelocityZ) == 0 && this.isGyroAvailable == universalSensorData.isGyroAvailable && Float.compare(this.compassHeadingDeg, universalSensorData.compassHeadingDeg) == 0 && this.isCompassAvailable == universalSensorData.isCompassAvailable && Float.compare(this.barometricPressureHpa, universalSensorData.barometricPressureHpa) == 0 && Double.compare(this.pressureAltitudeMeters, universalSensorData.pressureAltitudeMeters) == 0 && this.isBarometerAvailable == universalSensorData.isBarometerAvailable && Float.compare(this.ambientLux, universalSensorData.ambientLux) == 0 && this.isNightDetected == universalSensorData.isNightDetected && this.isLightSensorAvailable == universalSensorData.isLightSensorAvailable && this.isAccelerometerAvailable == universalSensorData.isAccelerometerAvailable;
    }

    public int hashCode() {
        return (((((((((((((((((((((((((((((((((((((((((((Double.hashCode(this.gForceMagnitude) * 31) + Float.hashCode(this.rawX)) * 31) + Float.hashCode(this.rawY)) * 31) + Float.hashCode(this.rawZ)) * 31) + Double.hashCode(this.vibrationIntensity)) * 31) + Boolean.hashCode(this.hardBrakingDetected)) * 31) + Boolean.hashCode(this.hardLaunchDetected)) * 31) + Boolean.hashCode(this.crashOrFallDetected)) * 31) + Double.hashCode(this.pitchAngleDeg)) * 31) + Double.hashCode(this.rollLeanAngleDeg)) * 31) + Float.hashCode(this.angularVelocityX)) * 31) + Float.hashCode(this.angularVelocityY)) * 31) + Float.hashCode(this.angularVelocityZ)) * 31) + Boolean.hashCode(this.isGyroAvailable)) * 31) + Float.hashCode(this.compassHeadingDeg)) * 31) + Boolean.hashCode(this.isCompassAvailable)) * 31) + Float.hashCode(this.barometricPressureHpa)) * 31) + Double.hashCode(this.pressureAltitudeMeters)) * 31) + Boolean.hashCode(this.isBarometerAvailable)) * 31) + Float.hashCode(this.ambientLux)) * 31) + Boolean.hashCode(this.isNightDetected)) * 31) + Boolean.hashCode(this.isLightSensorAvailable)) * 31) + Boolean.hashCode(this.isAccelerometerAvailable);
    }

    public String toString() {
        return "UniversalSensorData(gForceMagnitude=" + this.gForceMagnitude + ", rawX=" + this.rawX + ", rawY=" + this.rawY + ", rawZ=" + this.rawZ + ", vibrationIntensity=" + this.vibrationIntensity + ", hardBrakingDetected=" + this.hardBrakingDetected + ", hardLaunchDetected=" + this.hardLaunchDetected + ", crashOrFallDetected=" + this.crashOrFallDetected + ", pitchAngleDeg=" + this.pitchAngleDeg + ", rollLeanAngleDeg=" + this.rollLeanAngleDeg + ", angularVelocityX=" + this.angularVelocityX + ", angularVelocityY=" + this.angularVelocityY + ", angularVelocityZ=" + this.angularVelocityZ + ", isGyroAvailable=" + this.isGyroAvailable + ", compassHeadingDeg=" + this.compassHeadingDeg + ", isCompassAvailable=" + this.isCompassAvailable + ", barometricPressureHpa=" + this.barometricPressureHpa + ", pressureAltitudeMeters=" + this.pressureAltitudeMeters + ", isBarometerAvailable=" + this.isBarometerAvailable + ", ambientLux=" + this.ambientLux + ", isNightDetected=" + this.isNightDetected + ", isLightSensorAvailable=" + this.isLightSensorAvailable + ", isAccelerometerAvailable=" + this.isAccelerometerAvailable + ")";
    }

    public UniversalSensorData(double gForceMagnitude, float rawX, float rawY, float rawZ, double vibrationIntensity, boolean hardBrakingDetected, boolean hardLaunchDetected, boolean crashOrFallDetected, double pitchAngleDeg, double rollLeanAngleDeg, float angularVelocityX, float angularVelocityY, float angularVelocityZ, boolean isGyroAvailable, float compassHeadingDeg, boolean isCompassAvailable, float barometricPressureHpa, double pressureAltitudeMeters, boolean isBarometerAvailable, float ambientLux, boolean isNightDetected, boolean isLightSensorAvailable, boolean isAccelerometerAvailable) {
        this.gForceMagnitude = gForceMagnitude;
        this.rawX = rawX;
        this.rawY = rawY;
        this.rawZ = rawZ;
        this.vibrationIntensity = vibrationIntensity;
        this.hardBrakingDetected = hardBrakingDetected;
        this.hardLaunchDetected = hardLaunchDetected;
        this.crashOrFallDetected = crashOrFallDetected;
        this.pitchAngleDeg = pitchAngleDeg;
        this.rollLeanAngleDeg = rollLeanAngleDeg;
        this.angularVelocityX = angularVelocityX;
        this.angularVelocityY = angularVelocityY;
        this.angularVelocityZ = angularVelocityZ;
        this.isGyroAvailable = isGyroAvailable;
        this.compassHeadingDeg = compassHeadingDeg;
        this.isCompassAvailable = isCompassAvailable;
        this.barometricPressureHpa = barometricPressureHpa;
        this.pressureAltitudeMeters = pressureAltitudeMeters;
        this.isBarometerAvailable = isBarometerAvailable;
        this.ambientLux = ambientLux;
        this.isNightDetected = isNightDetected;
        this.isLightSensorAvailable = isLightSensorAvailable;
        this.isAccelerometerAvailable = isAccelerometerAvailable;
    }

    public /* synthetic */ UniversalSensorData(double d, float f, float f2, float f3, double d2, boolean z, boolean z2, boolean z3, double d3, double d4, float f4, float f5, float f6, boolean z4, float f7, boolean z5, float f8, double d5, boolean z6, float f9, boolean z7, boolean z8, boolean z9, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 1.0d : d, (i & 2) != 0 ? 0.0f : f, (i & 4) != 0 ? 0.0f : f2, (i & 8) != 0 ? 0.0f : f3, (i & 16) != 0 ? AudioStats.AUDIO_AMPLITUDE_NONE : d2, (i & 32) != 0 ? false : z, (i & 64) != 0 ? false : z2, (i & 128) != 0 ? false : z3, (i & 256) != 0 ? AudioStats.AUDIO_AMPLITUDE_NONE : d3, (i & 512) != 0 ? AudioStats.AUDIO_AMPLITUDE_NONE : d4, (i & 1024) != 0 ? 0.0f : f4, (i & 2048) != 0 ? 0.0f : f5, (i & 4096) != 0 ? 0.0f : f6, (i & 8192) != 0 ? false : z4, (i & 16384) != 0 ? 0.0f : f7, (i & 32768) != 0 ? false : z5, (i & 65536) != 0 ? 1013.25f : f8, (i & 131072) != 0 ? AudioStats.AUDIO_AMPLITUDE_NONE : d5, (i & 262144) != 0 ? false : z6, (i & 524288) != 0 ? 500.0f : f9, (i & 1048576) != 0 ? false : z7, (i & 2097152) != 0 ? false : z8, (i & 4194304) != 0 ? false : z9);
    }

    public final double getGForceMagnitude() {
        return this.gForceMagnitude;
    }

    public final float getRawX() {
        return this.rawX;
    }

    public final float getRawY() {
        return this.rawY;
    }

    public final float getRawZ() {
        return this.rawZ;
    }

    public final double getVibrationIntensity() {
        return this.vibrationIntensity;
    }

    public final boolean getHardBrakingDetected() {
        return this.hardBrakingDetected;
    }

    public final boolean getHardLaunchDetected() {
        return this.hardLaunchDetected;
    }

    public final boolean getCrashOrFallDetected() {
        return this.crashOrFallDetected;
    }

    public final double getPitchAngleDeg() {
        return this.pitchAngleDeg;
    }

    public final double getRollLeanAngleDeg() {
        return this.rollLeanAngleDeg;
    }

    public final float getAngularVelocityX() {
        return this.angularVelocityX;
    }

    public final float getAngularVelocityY() {
        return this.angularVelocityY;
    }

    public final float getAngularVelocityZ() {
        return this.angularVelocityZ;
    }

    public final boolean isGyroAvailable() {
        return this.isGyroAvailable;
    }

    public final float getCompassHeadingDeg() {
        return this.compassHeadingDeg;
    }

    public final boolean isCompassAvailable() {
        return this.isCompassAvailable;
    }

    public final float getBarometricPressureHpa() {
        return this.barometricPressureHpa;
    }

    public final double getPressureAltitudeMeters() {
        return this.pressureAltitudeMeters;
    }

    public final boolean isBarometerAvailable() {
        return this.isBarometerAvailable;
    }

    public final float getAmbientLux() {
        return this.ambientLux;
    }

    public final boolean isNightDetected() {
        return this.isNightDetected;
    }

    public final boolean isLightSensorAvailable() {
        return this.isLightSensorAvailable;
    }

    public final boolean isAccelerometerAvailable() {
        return this.isAccelerometerAvailable;
    }
}
