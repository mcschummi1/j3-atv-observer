package com.cgs.atvobserver.sensor;

import androidx.camera.video.AudioStats;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: MotionSensorManager.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u001d\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001Bi\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\f\u001a\u00020\n\u0012\b\b\u0002\u0010\r\u001a\u00020\n\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u000fHÆ\u0003J\t\u0010 \u001a\u00020\u0005HÆ\u0003J\t\u0010!\u001a\u00020\u0005HÆ\u0003J\t\u0010\"\u001a\u00020\u0005HÆ\u0003J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\nHÆ\u0003J\t\u0010%\u001a\u00020\nHÆ\u0003J\t\u0010&\u001a\u00020\nHÆ\u0003J\t\u0010'\u001a\u00020\nHÆ\u0003Jm\u0010(\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\n2\b\b\u0002\u0010\r\u001a\u00020\n2\b\b\u0002\u0010\u000e\u001a\u00020\u000fHÆ\u0001J\u0013\u0010)\u001a\u00020\n2\b\u0010*\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010+\u001a\u00020\u000fHÖ\u0001J\t\u0010,\u001a\u00020-HÖ\u0001R\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\f\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0014R\u0011\u0010\u000b\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0014R\u0011\u0010\r\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001aR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001aR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0016¨\u0006."}, d2 = {"Lcom/cgs/atvobserver/sensor/MotionSensorData;", "", "gForceMagnitude", "", "rawX", "", "rawY", "rawZ", "vibrationIntensity", "hardBrakingDetected", "", "hardLaunchDetected", "crashOrFallDetected", "isSensorAvailable", "activeSamplingFps", "", "(DFFFDZZZZI)V", "getActiveSamplingFps", "()I", "getCrashOrFallDetected", "()Z", "getGForceMagnitude", "()D", "getHardBrakingDetected", "getHardLaunchDetected", "getRawX", "()F", "getRawY", "getRawZ", "getVibrationIntensity", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "toString", "", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes9.dex */
public final /* data */ class MotionSensorData {
    public static final int $stable = 0;
    private final int activeSamplingFps;
    private final boolean crashOrFallDetected;
    private final double gForceMagnitude;
    private final boolean hardBrakingDetected;
    private final boolean hardLaunchDetected;
    private final boolean isSensorAvailable;
    private final float rawX;
    private final float rawY;
    private final float rawZ;
    private final double vibrationIntensity;

    public MotionSensorData() {
        this(AudioStats.AUDIO_AMPLITUDE_NONE, 0.0f, 0.0f, 0.0f, AudioStats.AUDIO_AMPLITUDE_NONE, false, false, false, false, 0, 1023, null);
    }

    /* renamed from: component1, reason: from getter */
    public final double getGForceMagnitude() {
        return this.gForceMagnitude;
    }

    /* renamed from: component10, reason: from getter */
    public final int getActiveSamplingFps() {
        return this.activeSamplingFps;
    }

    /* renamed from: component2, reason: from getter */
    public final float getRawX() {
        return this.rawX;
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
    public final boolean getIsSensorAvailable() {
        return this.isSensorAvailable;
    }

    public final MotionSensorData copy(double gForceMagnitude, float rawX, float rawY, float rawZ, double vibrationIntensity, boolean hardBrakingDetected, boolean hardLaunchDetected, boolean crashOrFallDetected, boolean isSensorAvailable, int activeSamplingFps) {
        return new MotionSensorData(gForceMagnitude, rawX, rawY, rawZ, vibrationIntensity, hardBrakingDetected, hardLaunchDetected, crashOrFallDetected, isSensorAvailable, activeSamplingFps);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MotionSensorData)) {
            return false;
        }
        MotionSensorData motionSensorData = (MotionSensorData) other;
        return Double.compare(this.gForceMagnitude, motionSensorData.gForceMagnitude) == 0 && Float.compare(this.rawX, motionSensorData.rawX) == 0 && Float.compare(this.rawY, motionSensorData.rawY) == 0 && Float.compare(this.rawZ, motionSensorData.rawZ) == 0 && Double.compare(this.vibrationIntensity, motionSensorData.vibrationIntensity) == 0 && this.hardBrakingDetected == motionSensorData.hardBrakingDetected && this.hardLaunchDetected == motionSensorData.hardLaunchDetected && this.crashOrFallDetected == motionSensorData.crashOrFallDetected && this.isSensorAvailable == motionSensorData.isSensorAvailable && this.activeSamplingFps == motionSensorData.activeSamplingFps;
    }

    public int hashCode() {
        return (((((((((((((((((Double.hashCode(this.gForceMagnitude) * 31) + Float.hashCode(this.rawX)) * 31) + Float.hashCode(this.rawY)) * 31) + Float.hashCode(this.rawZ)) * 31) + Double.hashCode(this.vibrationIntensity)) * 31) + Boolean.hashCode(this.hardBrakingDetected)) * 31) + Boolean.hashCode(this.hardLaunchDetected)) * 31) + Boolean.hashCode(this.crashOrFallDetected)) * 31) + Boolean.hashCode(this.isSensorAvailable)) * 31) + Integer.hashCode(this.activeSamplingFps);
    }

    public String toString() {
        return "MotionSensorData(gForceMagnitude=" + this.gForceMagnitude + ", rawX=" + this.rawX + ", rawY=" + this.rawY + ", rawZ=" + this.rawZ + ", vibrationIntensity=" + this.vibrationIntensity + ", hardBrakingDetected=" + this.hardBrakingDetected + ", hardLaunchDetected=" + this.hardLaunchDetected + ", crashOrFallDetected=" + this.crashOrFallDetected + ", isSensorAvailable=" + this.isSensorAvailable + ", activeSamplingFps=" + this.activeSamplingFps + ")";
    }

    public MotionSensorData(double gForceMagnitude, float rawX, float rawY, float rawZ, double vibrationIntensity, boolean hardBrakingDetected, boolean hardLaunchDetected, boolean crashOrFallDetected, boolean isSensorAvailable, int activeSamplingFps) {
        this.gForceMagnitude = gForceMagnitude;
        this.rawX = rawX;
        this.rawY = rawY;
        this.rawZ = rawZ;
        this.vibrationIntensity = vibrationIntensity;
        this.hardBrakingDetected = hardBrakingDetected;
        this.hardLaunchDetected = hardLaunchDetected;
        this.crashOrFallDetected = crashOrFallDetected;
        this.isSensorAvailable = isSensorAvailable;
        this.activeSamplingFps = activeSamplingFps;
    }

    public /* synthetic */ MotionSensorData(double d, float f, float f2, float f3, double d2, boolean z, boolean z2, boolean z3, boolean z4, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 1.0d : d, (i2 & 2) != 0 ? 0.0f : f, (i2 & 4) != 0 ? 0.0f : f2, (i2 & 8) == 0 ? f3 : 0.0f, (i2 & 16) != 0 ? AudioStats.AUDIO_AMPLITUDE_NONE : d2, (i2 & 32) != 0 ? false : z, (i2 & 64) != 0 ? false : z2, (i2 & 128) != 0 ? false : z3, (i2 & 256) == 0 ? z4 : false, (i2 & 512) != 0 ? 60 : i);
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

    public final boolean isSensorAvailable() {
        return this.isSensorAvailable;
    }

    public final int getActiveSamplingFps() {
        return this.activeSamplingFps;
    }
}
