package com.cgs.atvobserver.sensor;

import androidx.camera.video.AudioStats;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: LeanAngleTracker.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B-\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0002\u0010\bJ\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0006HÆ\u0003J1\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00062\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000b¨\u0006\u0018"}, d2 = {"Lcom/cgs/atvobserver/sensor/LeanAngleData;", "", "rollLeanAngleDeg", "", "pitchAngleDeg", "isWheelieDetected", "", "isSharpCornering", "(DDZZ)V", "()Z", "getPitchAngleDeg", "()D", "getRollLeanAngleDeg", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "", "toString", "", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes9.dex */
public final /* data */ class LeanAngleData {
    public static final int $stable = 0;
    private final boolean isSharpCornering;
    private final boolean isWheelieDetected;
    private final double pitchAngleDeg;
    private final double rollLeanAngleDeg;

    public LeanAngleData() {
        this(AudioStats.AUDIO_AMPLITUDE_NONE, AudioStats.AUDIO_AMPLITUDE_NONE, false, false, 15, null);
    }

    public static /* synthetic */ LeanAngleData copy$default(LeanAngleData leanAngleData, double d, double d2, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            d = leanAngleData.rollLeanAngleDeg;
        }
        double d3 = d;
        if ((i & 2) != 0) {
            d2 = leanAngleData.pitchAngleDeg;
        }
        double d4 = d2;
        if ((i & 4) != 0) {
            z = leanAngleData.isWheelieDetected;
        }
        boolean z3 = z;
        if ((i & 8) != 0) {
            z2 = leanAngleData.isSharpCornering;
        }
        return leanAngleData.copy(d3, d4, z3, z2);
    }

    /* renamed from: component1, reason: from getter */
    public final double getRollLeanAngleDeg() {
        return this.rollLeanAngleDeg;
    }

    /* renamed from: component2, reason: from getter */
    public final double getPitchAngleDeg() {
        return this.pitchAngleDeg;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getIsWheelieDetected() {
        return this.isWheelieDetected;
    }

    /* renamed from: component4, reason: from getter */
    public final boolean getIsSharpCornering() {
        return this.isSharpCornering;
    }

    public final LeanAngleData copy(double rollLeanAngleDeg, double pitchAngleDeg, boolean isWheelieDetected, boolean isSharpCornering) {
        return new LeanAngleData(rollLeanAngleDeg, pitchAngleDeg, isWheelieDetected, isSharpCornering);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LeanAngleData)) {
            return false;
        }
        LeanAngleData leanAngleData = (LeanAngleData) other;
        return Double.compare(this.rollLeanAngleDeg, leanAngleData.rollLeanAngleDeg) == 0 && Double.compare(this.pitchAngleDeg, leanAngleData.pitchAngleDeg) == 0 && this.isWheelieDetected == leanAngleData.isWheelieDetected && this.isSharpCornering == leanAngleData.isSharpCornering;
    }

    public int hashCode() {
        return (((((Double.hashCode(this.rollLeanAngleDeg) * 31) + Double.hashCode(this.pitchAngleDeg)) * 31) + Boolean.hashCode(this.isWheelieDetected)) * 31) + Boolean.hashCode(this.isSharpCornering);
    }

    public String toString() {
        return "LeanAngleData(rollLeanAngleDeg=" + this.rollLeanAngleDeg + ", pitchAngleDeg=" + this.pitchAngleDeg + ", isWheelieDetected=" + this.isWheelieDetected + ", isSharpCornering=" + this.isSharpCornering + ")";
    }

    public LeanAngleData(double rollLeanAngleDeg, double pitchAngleDeg, boolean isWheelieDetected, boolean isSharpCornering) {
        this.rollLeanAngleDeg = rollLeanAngleDeg;
        this.pitchAngleDeg = pitchAngleDeg;
        this.isWheelieDetected = isWheelieDetected;
        this.isSharpCornering = isSharpCornering;
    }

    public /* synthetic */ LeanAngleData(double d, double d2, boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0.0d : d, (i & 2) == 0 ? d2 : AudioStats.AUDIO_AMPLITUDE_NONE, (i & 4) != 0 ? false : z, (i & 8) != 0 ? false : z2);
    }

    public final double getRollLeanAngleDeg() {
        return this.rollLeanAngleDeg;
    }

    public final double getPitchAngleDeg() {
        return this.pitchAngleDeg;
    }

    public final boolean isWheelieDetected() {
        return this.isWheelieDetected;
    }

    public final boolean isSharpCornering() {
        return this.isSharpCornering;
    }
}
