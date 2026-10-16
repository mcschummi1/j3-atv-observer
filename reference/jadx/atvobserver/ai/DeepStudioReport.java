package com.cgs.atvobserver.ai;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DeepStudioAnalysisEngine.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0002\u0010\rJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001d\u001a\u00020\tHÆ\u0003J\t\u0010\u001e\u001a\u00020\u000bHÆ\u0003J\t\u0010\u001f\u001a\u00020\tHÆ\u0003JO\u0010 \u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\tHÆ\u0001J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010$\u001a\u00020\u000bHÖ\u0001J\t\u0010%\u001a\u00020\tHÖ\u0001R\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\f\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000fR\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0011¨\u0006&"}, d2 = {"Lcom/cgs/atvobserver/ai/DeepStudioReport;", "", "rideId", "", "liveEstimatedFuelL", "", "deepCrunchFusedFuelL", "accuracyScorePct", "terrainBreakdownDeep", "", "peakRpmObserved", "", "analysisVerdict", "(JDDDLjava/lang/String;ILjava/lang/String;)V", "getAccuracyScorePct", "()D", "getAnalysisVerdict", "()Ljava/lang/String;", "getDeepCrunchFusedFuelL", "getLiveEstimatedFuelL", "getPeakRpmObserved", "()I", "getRideId", "()J", "getTerrainBreakdownDeep", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", "other", "hashCode", "toString", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes14.dex */
public final /* data */ class DeepStudioReport {
    public static final int $stable = 0;
    private final double accuracyScorePct;
    private final String analysisVerdict;
    private final double deepCrunchFusedFuelL;
    private final double liveEstimatedFuelL;
    private final int peakRpmObserved;
    private final long rideId;
    private final String terrainBreakdownDeep;

    /* renamed from: component1, reason: from getter */
    public final long getRideId() {
        return this.rideId;
    }

    /* renamed from: component2, reason: from getter */
    public final double getLiveEstimatedFuelL() {
        return this.liveEstimatedFuelL;
    }

    /* renamed from: component3, reason: from getter */
    public final double getDeepCrunchFusedFuelL() {
        return this.deepCrunchFusedFuelL;
    }

    /* renamed from: component4, reason: from getter */
    public final double getAccuracyScorePct() {
        return this.accuracyScorePct;
    }

    /* renamed from: component5, reason: from getter */
    public final String getTerrainBreakdownDeep() {
        return this.terrainBreakdownDeep;
    }

    /* renamed from: component6, reason: from getter */
    public final int getPeakRpmObserved() {
        return this.peakRpmObserved;
    }

    /* renamed from: component7, reason: from getter */
    public final String getAnalysisVerdict() {
        return this.analysisVerdict;
    }

    public final DeepStudioReport copy(long rideId, double liveEstimatedFuelL, double deepCrunchFusedFuelL, double accuracyScorePct, String terrainBreakdownDeep, int peakRpmObserved, String analysisVerdict) {
        Intrinsics.checkNotNullParameter(terrainBreakdownDeep, "terrainBreakdownDeep");
        Intrinsics.checkNotNullParameter(analysisVerdict, "analysisVerdict");
        return new DeepStudioReport(rideId, liveEstimatedFuelL, deepCrunchFusedFuelL, accuracyScorePct, terrainBreakdownDeep, peakRpmObserved, analysisVerdict);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DeepStudioReport)) {
            return false;
        }
        DeepStudioReport deepStudioReport = (DeepStudioReport) other;
        return this.rideId == deepStudioReport.rideId && Double.compare(this.liveEstimatedFuelL, deepStudioReport.liveEstimatedFuelL) == 0 && Double.compare(this.deepCrunchFusedFuelL, deepStudioReport.deepCrunchFusedFuelL) == 0 && Double.compare(this.accuracyScorePct, deepStudioReport.accuracyScorePct) == 0 && Intrinsics.areEqual(this.terrainBreakdownDeep, deepStudioReport.terrainBreakdownDeep) && this.peakRpmObserved == deepStudioReport.peakRpmObserved && Intrinsics.areEqual(this.analysisVerdict, deepStudioReport.analysisVerdict);
    }

    public int hashCode() {
        return (((((((((((Long.hashCode(this.rideId) * 31) + Double.hashCode(this.liveEstimatedFuelL)) * 31) + Double.hashCode(this.deepCrunchFusedFuelL)) * 31) + Double.hashCode(this.accuracyScorePct)) * 31) + this.terrainBreakdownDeep.hashCode()) * 31) + Integer.hashCode(this.peakRpmObserved)) * 31) + this.analysisVerdict.hashCode();
    }

    public String toString() {
        return "DeepStudioReport(rideId=" + this.rideId + ", liveEstimatedFuelL=" + this.liveEstimatedFuelL + ", deepCrunchFusedFuelL=" + this.deepCrunchFusedFuelL + ", accuracyScorePct=" + this.accuracyScorePct + ", terrainBreakdownDeep=" + this.terrainBreakdownDeep + ", peakRpmObserved=" + this.peakRpmObserved + ", analysisVerdict=" + this.analysisVerdict + ")";
    }

    public DeepStudioReport(long rideId, double liveEstimatedFuelL, double deepCrunchFusedFuelL, double accuracyScorePct, String terrainBreakdownDeep, int peakRpmObserved, String analysisVerdict) {
        Intrinsics.checkNotNullParameter(terrainBreakdownDeep, "terrainBreakdownDeep");
        Intrinsics.checkNotNullParameter(analysisVerdict, "analysisVerdict");
        this.rideId = rideId;
        this.liveEstimatedFuelL = liveEstimatedFuelL;
        this.deepCrunchFusedFuelL = deepCrunchFusedFuelL;
        this.accuracyScorePct = accuracyScorePct;
        this.terrainBreakdownDeep = terrainBreakdownDeep;
        this.peakRpmObserved = peakRpmObserved;
        this.analysisVerdict = analysisVerdict;
    }

    public final long getRideId() {
        return this.rideId;
    }

    public final double getLiveEstimatedFuelL() {
        return this.liveEstimatedFuelL;
    }

    public final double getDeepCrunchFusedFuelL() {
        return this.deepCrunchFusedFuelL;
    }

    public final double getAccuracyScorePct() {
        return this.accuracyScorePct;
    }

    public final String getTerrainBreakdownDeep() {
        return this.terrainBreakdownDeep;
    }

    public final int getPeakRpmObserved() {
        return this.peakRpmObserved;
    }

    public final String getAnalysisVerdict() {
        return this.analysisVerdict;
    }
}
