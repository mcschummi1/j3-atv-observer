package com.cgs.atvobserver.domain;

import androidx.camera.video.AudioStats;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: DaelimOdometerManager.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001BA\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\tHÆ\u0003JE\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001f\u001a\u00020 HÖ\u0001J\t\u0010!\u001a\u00020\"HÖ\u0001R\u0011\u0010\u000b\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\r¨\u0006#"}, d2 = {"Lcom/cgs/atvobserver/domain/DaelimOdometerState;", "", "initialPhysicalOdometerKm", "", "totalGpsKmSinceSetup", "manualAdjustmentKm", "distanceCorrectionFactor", "lastPhysicalCheckKm", "lastCheckTimestamp", "", "(DDDDDJ)V", "currentAppOdometerKm", "getCurrentAppOdometerKm", "()D", "getDistanceCorrectionFactor", "getInitialPhysicalOdometerKm", "getLastCheckTimestamp", "()J", "getLastPhysicalCheckKm", "getManualAdjustmentKm", "getTotalGpsKmSinceSetup", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "", "toString", "", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes13.dex */
public final /* data */ class DaelimOdometerState {
    public static final int $stable = 0;
    private final double distanceCorrectionFactor;
    private final double initialPhysicalOdometerKm;
    private final long lastCheckTimestamp;
    private final double lastPhysicalCheckKm;
    private final double manualAdjustmentKm;
    private final double totalGpsKmSinceSetup;

    public DaelimOdometerState() {
        this(AudioStats.AUDIO_AMPLITUDE_NONE, AudioStats.AUDIO_AMPLITUDE_NONE, AudioStats.AUDIO_AMPLITUDE_NONE, AudioStats.AUDIO_AMPLITUDE_NONE, AudioStats.AUDIO_AMPLITUDE_NONE, 0L, 63, null);
    }

    /* renamed from: component1, reason: from getter */
    public final double getInitialPhysicalOdometerKm() {
        return this.initialPhysicalOdometerKm;
    }

    /* renamed from: component2, reason: from getter */
    public final double getTotalGpsKmSinceSetup() {
        return this.totalGpsKmSinceSetup;
    }

    /* renamed from: component3, reason: from getter */
    public final double getManualAdjustmentKm() {
        return this.manualAdjustmentKm;
    }

    /* renamed from: component4, reason: from getter */
    public final double getDistanceCorrectionFactor() {
        return this.distanceCorrectionFactor;
    }

    /* renamed from: component5, reason: from getter */
    public final double getLastPhysicalCheckKm() {
        return this.lastPhysicalCheckKm;
    }

    /* renamed from: component6, reason: from getter */
    public final long getLastCheckTimestamp() {
        return this.lastCheckTimestamp;
    }

    public final DaelimOdometerState copy(double initialPhysicalOdometerKm, double totalGpsKmSinceSetup, double manualAdjustmentKm, double distanceCorrectionFactor, double lastPhysicalCheckKm, long lastCheckTimestamp) {
        return new DaelimOdometerState(initialPhysicalOdometerKm, totalGpsKmSinceSetup, manualAdjustmentKm, distanceCorrectionFactor, lastPhysicalCheckKm, lastCheckTimestamp);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DaelimOdometerState)) {
            return false;
        }
        DaelimOdometerState daelimOdometerState = (DaelimOdometerState) other;
        return Double.compare(this.initialPhysicalOdometerKm, daelimOdometerState.initialPhysicalOdometerKm) == 0 && Double.compare(this.totalGpsKmSinceSetup, daelimOdometerState.totalGpsKmSinceSetup) == 0 && Double.compare(this.manualAdjustmentKm, daelimOdometerState.manualAdjustmentKm) == 0 && Double.compare(this.distanceCorrectionFactor, daelimOdometerState.distanceCorrectionFactor) == 0 && Double.compare(this.lastPhysicalCheckKm, daelimOdometerState.lastPhysicalCheckKm) == 0 && this.lastCheckTimestamp == daelimOdometerState.lastCheckTimestamp;
    }

    public int hashCode() {
        return (((((((((Double.hashCode(this.initialPhysicalOdometerKm) * 31) + Double.hashCode(this.totalGpsKmSinceSetup)) * 31) + Double.hashCode(this.manualAdjustmentKm)) * 31) + Double.hashCode(this.distanceCorrectionFactor)) * 31) + Double.hashCode(this.lastPhysicalCheckKm)) * 31) + Long.hashCode(this.lastCheckTimestamp);
    }

    public String toString() {
        return "DaelimOdometerState(initialPhysicalOdometerKm=" + this.initialPhysicalOdometerKm + ", totalGpsKmSinceSetup=" + this.totalGpsKmSinceSetup + ", manualAdjustmentKm=" + this.manualAdjustmentKm + ", distanceCorrectionFactor=" + this.distanceCorrectionFactor + ", lastPhysicalCheckKm=" + this.lastPhysicalCheckKm + ", lastCheckTimestamp=" + this.lastCheckTimestamp + ")";
    }

    public DaelimOdometerState(double initialPhysicalOdometerKm, double totalGpsKmSinceSetup, double manualAdjustmentKm, double distanceCorrectionFactor, double lastPhysicalCheckKm, long lastCheckTimestamp) {
        this.initialPhysicalOdometerKm = initialPhysicalOdometerKm;
        this.totalGpsKmSinceSetup = totalGpsKmSinceSetup;
        this.manualAdjustmentKm = manualAdjustmentKm;
        this.distanceCorrectionFactor = distanceCorrectionFactor;
        this.lastPhysicalCheckKm = lastPhysicalCheckKm;
        this.lastCheckTimestamp = lastCheckTimestamp;
    }

    public /* synthetic */ DaelimOdometerState(double d, double d2, double d3, double d4, double d5, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 18420.0d : d, (i & 2) != 0 ? 0.0d : d2, (i & 4) == 0 ? d3 : AudioStats.AUDIO_AMPLITUDE_NONE, (i & 8) != 0 ? 1.0d : d4, (i & 16) == 0 ? d5 : 18420.0d, (i & 32) != 0 ? System.currentTimeMillis() : j);
    }

    public final double getInitialPhysicalOdometerKm() {
        return this.initialPhysicalOdometerKm;
    }

    public final double getTotalGpsKmSinceSetup() {
        return this.totalGpsKmSinceSetup;
    }

    public final double getManualAdjustmentKm() {
        return this.manualAdjustmentKm;
    }

    public final double getDistanceCorrectionFactor() {
        return this.distanceCorrectionFactor;
    }

    public final double getLastPhysicalCheckKm() {
        return this.lastPhysicalCheckKm;
    }

    public final long getLastCheckTimestamp() {
        return this.lastCheckTimestamp;
    }

    public final double getCurrentAppOdometerKm() {
        return this.initialPhysicalOdometerKm + (this.totalGpsKmSinceSetup * this.distanceCorrectionFactor) + this.manualAdjustmentKm;
    }
}
