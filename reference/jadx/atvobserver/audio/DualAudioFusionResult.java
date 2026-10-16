package com.cgs.atvobserver.audio;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: DualAudioFusionEngine.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0006HÆ\u0003J'\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/cgs/atvobserver/audio/DualAudioFusionResult;", "", "fusedRpm", "", "confidenceScore", "isWindContaminationMitigated", "", "(IIZ)V", "getConfidenceScore", "()I", "getFusedRpm", "()Z", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "toString", "", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes14.dex */
public final /* data */ class DualAudioFusionResult {
    public static final int $stable = 0;
    private final int confidenceScore;
    private final int fusedRpm;
    private final boolean isWindContaminationMitigated;

    public DualAudioFusionResult() {
        this(0, 0, false, 7, null);
    }

    public static /* synthetic */ DualAudioFusionResult copy$default(DualAudioFusionResult dualAudioFusionResult, int i, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = dualAudioFusionResult.fusedRpm;
        }
        if ((i3 & 2) != 0) {
            i2 = dualAudioFusionResult.confidenceScore;
        }
        if ((i3 & 4) != 0) {
            z = dualAudioFusionResult.isWindContaminationMitigated;
        }
        return dualAudioFusionResult.copy(i, i2, z);
    }

    /* renamed from: component1, reason: from getter */
    public final int getFusedRpm() {
        return this.fusedRpm;
    }

    /* renamed from: component2, reason: from getter */
    public final int getConfidenceScore() {
        return this.confidenceScore;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getIsWindContaminationMitigated() {
        return this.isWindContaminationMitigated;
    }

    public final DualAudioFusionResult copy(int fusedRpm, int confidenceScore, boolean isWindContaminationMitigated) {
        return new DualAudioFusionResult(fusedRpm, confidenceScore, isWindContaminationMitigated);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DualAudioFusionResult)) {
            return false;
        }
        DualAudioFusionResult dualAudioFusionResult = (DualAudioFusionResult) other;
        return this.fusedRpm == dualAudioFusionResult.fusedRpm && this.confidenceScore == dualAudioFusionResult.confidenceScore && this.isWindContaminationMitigated == dualAudioFusionResult.isWindContaminationMitigated;
    }

    public int hashCode() {
        return (((Integer.hashCode(this.fusedRpm) * 31) + Integer.hashCode(this.confidenceScore)) * 31) + Boolean.hashCode(this.isWindContaminationMitigated);
    }

    public String toString() {
        return "DualAudioFusionResult(fusedRpm=" + this.fusedRpm + ", confidenceScore=" + this.confidenceScore + ", isWindContaminationMitigated=" + this.isWindContaminationMitigated + ")";
    }

    public DualAudioFusionResult(int fusedRpm, int confidenceScore, boolean isWindContaminationMitigated) {
        this.fusedRpm = fusedRpm;
        this.confidenceScore = confidenceScore;
        this.isWindContaminationMitigated = isWindContaminationMitigated;
    }

    public /* synthetic */ DualAudioFusionResult(int i, int i2, boolean z, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? 90 : i2, (i3 & 4) != 0 ? true : z);
    }

    public final int getFusedRpm() {
        return this.fusedRpm;
    }

    public final int getConfidenceScore() {
        return this.confidenceScore;
    }

    public final boolean isWindContaminationMitigated() {
        return this.isWindContaminationMitigated;
    }
}
