package com.cgs.atvobserver.data.db;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: EntitiesAndDao.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\bG\b\u0087\b\u0018\u00002\u00020\u0001Bý\u0001\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\t\u0012\b\b\u0002\u0010\f\u001a\u00020\t\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0014\u0012\b\b\u0002\u0010\u0015\u001a\u00020\t\u0012\b\b\u0002\u0010\u0016\u001a\u00020\t\u0012\b\b\u0002\u0010\u0017\u001a\u00020\t\u0012\b\b\u0002\u0010\u0018\u001a\u00020\t\u0012\b\b\u0002\u0010\u0019\u001a\u00020\t\u0012\b\b\u0002\u0010\u001a\u001a\u00020\t\u0012\b\b\u0002\u0010\u001b\u001a\u00020\t\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0012\u0012\b\b\u0002\u0010\u001d\u001a\u00020\t\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u001f\u001a\u00020\u0014¢\u0006\u0002\u0010 J\t\u0010=\u001a\u00020\u0003HÆ\u0003J\t\u0010>\u001a\u00020\u000eHÆ\u0003J\t\u0010?\u001a\u00020\u000eHÆ\u0003J\t\u0010@\u001a\u00020\u000eHÆ\u0003J\t\u0010A\u001a\u00020\u0012HÆ\u0003J\t\u0010B\u001a\u00020\u0014HÆ\u0003J\t\u0010C\u001a\u00020\tHÆ\u0003J\t\u0010D\u001a\u00020\tHÆ\u0003J\t\u0010E\u001a\u00020\tHÆ\u0003J\t\u0010F\u001a\u00020\tHÆ\u0003J\t\u0010G\u001a\u00020\tHÆ\u0003J\t\u0010H\u001a\u00020\u0003HÆ\u0003J\t\u0010I\u001a\u00020\tHÆ\u0003J\t\u0010J\u001a\u00020\tHÆ\u0003J\t\u0010K\u001a\u00020\u0012HÆ\u0003J\t\u0010L\u001a\u00020\tHÆ\u0003J\t\u0010M\u001a\u00020\u000eHÆ\u0003J\t\u0010N\u001a\u00020\u0014HÆ\u0003J\t\u0010O\u001a\u00020\u0003HÆ\u0003J\t\u0010P\u001a\u00020\u0003HÆ\u0003J\t\u0010Q\u001a\u00020\u0003HÆ\u0003J\t\u0010R\u001a\u00020\tHÆ\u0003J\t\u0010S\u001a\u00020\tHÆ\u0003J\t\u0010T\u001a\u00020\tHÆ\u0003J\t\u0010U\u001a\u00020\tHÆ\u0003J\u0083\u0002\u0010V\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u000b\u001a\u00020\t2\b\b\u0002\u0010\f\u001a\u00020\t2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\u000e2\b\b\u0002\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\t2\b\b\u0002\u0010\u0016\u001a\u00020\t2\b\b\u0002\u0010\u0017\u001a\u00020\t2\b\b\u0002\u0010\u0018\u001a\u00020\t2\b\b\u0002\u0010\u0019\u001a\u00020\t2\b\b\u0002\u0010\u001a\u001a\u00020\t2\b\b\u0002\u0010\u001b\u001a\u00020\t2\b\b\u0002\u0010\u001c\u001a\u00020\u00122\b\b\u0002\u0010\u001d\u001a\u00020\t2\b\b\u0002\u0010\u001e\u001a\u00020\u000e2\b\b\u0002\u0010\u001f\u001a\u00020\u0014HÆ\u0001J\u0013\u0010W\u001a\u00020\u00142\b\u0010X\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010Y\u001a\u00020\u0012HÖ\u0001J\t\u0010Z\u001a\u00020\u000eHÖ\u0001R\u0011\u0010\u000b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\"R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u0011\u0010\u0019\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\"R\u0011\u0010\u001a\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\"R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b(\u0010%R\u0011\u0010\f\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\"R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010%R\u0011\u0010\u001f\u001a\u00020\u0014¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010+R\u0011\u0010\u0013\u001a\u00020\u0014¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010+R\u0011\u0010\u001d\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\"R\u0011\u0010\n\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b-\u0010\"R\u0011\u0010\u0017\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b.\u0010\"R\u0011\u0010\u0018\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b/\u0010\"R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b0\u0010%R\u0011\u0010\u000f\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b1\u00102R\u0011\u0010\u001b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b3\u0010\"R\u0011\u0010\u001c\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b4\u00105R\u0011\u0010\u0015\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b6\u0010\"R\u0011\u0010\u0016\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b7\u0010\"R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b8\u0010%R\u0011\u0010\u001e\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b9\u00102R\u0011\u0010\u0010\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b:\u00102R\u0011\u0010\u0011\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b;\u00105R\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b<\u00102¨\u0006["}, d2 = {"Lcom/cgs/atvobserver/data/db/RideLogEntity;", "", "id", "", "startTime", "midTime", "endTime", "durationSeconds", "distanceKm", "", "maxSpeedKmh", "avgSpeedKmh", "estimatedFuelUsedL", "weatherCondition", "", "mode", "vehicleType", "warningCount", "", "isFinished", "", "startLat", "startLon", "midLat", "midLon", "endLat", "endLon", "peakGForce", "smoothnessScore", "launchAccelTimeSec", "terrainSummary", "isCompressed", "(JJJJJDDDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZDDDDDDDIDLjava/lang/String;Z)V", "getAvgSpeedKmh", "()D", "getDistanceKm", "getDurationSeconds", "()J", "getEndLat", "getEndLon", "getEndTime", "getEstimatedFuelUsedL", "getId", "()Z", "getLaunchAccelTimeSec", "getMaxSpeedKmh", "getMidLat", "getMidLon", "getMidTime", "getMode", "()Ljava/lang/String;", "getPeakGForce", "getSmoothnessScore", "()I", "getStartLat", "getStartLon", "getStartTime", "getTerrainSummary", "getVehicleType", "getWarningCount", "getWeatherCondition", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component23", "component24", "component25", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "toString", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class RideLogEntity {
    public static final int $stable = 0;
    private final double avgSpeedKmh;
    private final double distanceKm;
    private final long durationSeconds;
    private final double endLat;
    private final double endLon;
    private final long endTime;
    private final double estimatedFuelUsedL;
    private final long id;
    private final boolean isCompressed;
    private final boolean isFinished;
    private final double launchAccelTimeSec;
    private final double maxSpeedKmh;
    private final double midLat;
    private final double midLon;
    private final long midTime;
    private final String mode;
    private final double peakGForce;
    private final int smoothnessScore;
    private final double startLat;
    private final double startLon;
    private final long startTime;
    private final String terrainSummary;
    private final String vehicleType;
    private final int warningCount;
    private final String weatherCondition;

    /* renamed from: component1, reason: from getter */
    public final long getId() {
        return this.id;
    }

    /* renamed from: component10, reason: from getter */
    public final String getWeatherCondition() {
        return this.weatherCondition;
    }

    /* renamed from: component11, reason: from getter */
    public final String getMode() {
        return this.mode;
    }

    /* renamed from: component12, reason: from getter */
    public final String getVehicleType() {
        return this.vehicleType;
    }

    /* renamed from: component13, reason: from getter */
    public final int getWarningCount() {
        return this.warningCount;
    }

    /* renamed from: component14, reason: from getter */
    public final boolean getIsFinished() {
        return this.isFinished;
    }

    /* renamed from: component15, reason: from getter */
    public final double getStartLat() {
        return this.startLat;
    }

    /* renamed from: component16, reason: from getter */
    public final double getStartLon() {
        return this.startLon;
    }

    /* renamed from: component17, reason: from getter */
    public final double getMidLat() {
        return this.midLat;
    }

    /* renamed from: component18, reason: from getter */
    public final double getMidLon() {
        return this.midLon;
    }

    /* renamed from: component19, reason: from getter */
    public final double getEndLat() {
        return this.endLat;
    }

    /* renamed from: component2, reason: from getter */
    public final long getStartTime() {
        return this.startTime;
    }

    /* renamed from: component20, reason: from getter */
    public final double getEndLon() {
        return this.endLon;
    }

    /* renamed from: component21, reason: from getter */
    public final double getPeakGForce() {
        return this.peakGForce;
    }

    /* renamed from: component22, reason: from getter */
    public final int getSmoothnessScore() {
        return this.smoothnessScore;
    }

    /* renamed from: component23, reason: from getter */
    public final double getLaunchAccelTimeSec() {
        return this.launchAccelTimeSec;
    }

    /* renamed from: component24, reason: from getter */
    public final String getTerrainSummary() {
        return this.terrainSummary;
    }

    /* renamed from: component25, reason: from getter */
    public final boolean getIsCompressed() {
        return this.isCompressed;
    }

    /* renamed from: component3, reason: from getter */
    public final long getMidTime() {
        return this.midTime;
    }

    /* renamed from: component4, reason: from getter */
    public final long getEndTime() {
        return this.endTime;
    }

    /* renamed from: component5, reason: from getter */
    public final long getDurationSeconds() {
        return this.durationSeconds;
    }

    /* renamed from: component6, reason: from getter */
    public final double getDistanceKm() {
        return this.distanceKm;
    }

    /* renamed from: component7, reason: from getter */
    public final double getMaxSpeedKmh() {
        return this.maxSpeedKmh;
    }

    /* renamed from: component8, reason: from getter */
    public final double getAvgSpeedKmh() {
        return this.avgSpeedKmh;
    }

    /* renamed from: component9, reason: from getter */
    public final double getEstimatedFuelUsedL() {
        return this.estimatedFuelUsedL;
    }

    public final RideLogEntity copy(long id, long startTime, long midTime, long endTime, long durationSeconds, double distanceKm, double maxSpeedKmh, double avgSpeedKmh, double estimatedFuelUsedL, String weatherCondition, String mode, String vehicleType, int warningCount, boolean isFinished, double startLat, double startLon, double midLat, double midLon, double endLat, double endLon, double peakGForce, int smoothnessScore, double launchAccelTimeSec, String terrainSummary, boolean isCompressed) {
        Intrinsics.checkNotNullParameter(weatherCondition, "weatherCondition");
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.checkNotNullParameter(vehicleType, "vehicleType");
        Intrinsics.checkNotNullParameter(terrainSummary, "terrainSummary");
        return new RideLogEntity(id, startTime, midTime, endTime, durationSeconds, distanceKm, maxSpeedKmh, avgSpeedKmh, estimatedFuelUsedL, weatherCondition, mode, vehicleType, warningCount, isFinished, startLat, startLon, midLat, midLon, endLat, endLon, peakGForce, smoothnessScore, launchAccelTimeSec, terrainSummary, isCompressed);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RideLogEntity)) {
            return false;
        }
        RideLogEntity rideLogEntity = (RideLogEntity) other;
        return this.id == rideLogEntity.id && this.startTime == rideLogEntity.startTime && this.midTime == rideLogEntity.midTime && this.endTime == rideLogEntity.endTime && this.durationSeconds == rideLogEntity.durationSeconds && Double.compare(this.distanceKm, rideLogEntity.distanceKm) == 0 && Double.compare(this.maxSpeedKmh, rideLogEntity.maxSpeedKmh) == 0 && Double.compare(this.avgSpeedKmh, rideLogEntity.avgSpeedKmh) == 0 && Double.compare(this.estimatedFuelUsedL, rideLogEntity.estimatedFuelUsedL) == 0 && Intrinsics.areEqual(this.weatherCondition, rideLogEntity.weatherCondition) && Intrinsics.areEqual(this.mode, rideLogEntity.mode) && Intrinsics.areEqual(this.vehicleType, rideLogEntity.vehicleType) && this.warningCount == rideLogEntity.warningCount && this.isFinished == rideLogEntity.isFinished && Double.compare(this.startLat, rideLogEntity.startLat) == 0 && Double.compare(this.startLon, rideLogEntity.startLon) == 0 && Double.compare(this.midLat, rideLogEntity.midLat) == 0 && Double.compare(this.midLon, rideLogEntity.midLon) == 0 && Double.compare(this.endLat, rideLogEntity.endLat) == 0 && Double.compare(this.endLon, rideLogEntity.endLon) == 0 && Double.compare(this.peakGForce, rideLogEntity.peakGForce) == 0 && this.smoothnessScore == rideLogEntity.smoothnessScore && Double.compare(this.launchAccelTimeSec, rideLogEntity.launchAccelTimeSec) == 0 && Intrinsics.areEqual(this.terrainSummary, rideLogEntity.terrainSummary) && this.isCompressed == rideLogEntity.isCompressed;
    }

    public int hashCode() {
        return (((((((((((((((((((((((((((((((((((((((((((((((Long.hashCode(this.id) * 31) + Long.hashCode(this.startTime)) * 31) + Long.hashCode(this.midTime)) * 31) + Long.hashCode(this.endTime)) * 31) + Long.hashCode(this.durationSeconds)) * 31) + Double.hashCode(this.distanceKm)) * 31) + Double.hashCode(this.maxSpeedKmh)) * 31) + Double.hashCode(this.avgSpeedKmh)) * 31) + Double.hashCode(this.estimatedFuelUsedL)) * 31) + this.weatherCondition.hashCode()) * 31) + this.mode.hashCode()) * 31) + this.vehicleType.hashCode()) * 31) + Integer.hashCode(this.warningCount)) * 31) + Boolean.hashCode(this.isFinished)) * 31) + Double.hashCode(this.startLat)) * 31) + Double.hashCode(this.startLon)) * 31) + Double.hashCode(this.midLat)) * 31) + Double.hashCode(this.midLon)) * 31) + Double.hashCode(this.endLat)) * 31) + Double.hashCode(this.endLon)) * 31) + Double.hashCode(this.peakGForce)) * 31) + Integer.hashCode(this.smoothnessScore)) * 31) + Double.hashCode(this.launchAccelTimeSec)) * 31) + this.terrainSummary.hashCode()) * 31) + Boolean.hashCode(this.isCompressed);
    }

    public String toString() {
        return "RideLogEntity(id=" + this.id + ", startTime=" + this.startTime + ", midTime=" + this.midTime + ", endTime=" + this.endTime + ", durationSeconds=" + this.durationSeconds + ", distanceKm=" + this.distanceKm + ", maxSpeedKmh=" + this.maxSpeedKmh + ", avgSpeedKmh=" + this.avgSpeedKmh + ", estimatedFuelUsedL=" + this.estimatedFuelUsedL + ", weatherCondition=" + this.weatherCondition + ", mode=" + this.mode + ", vehicleType=" + this.vehicleType + ", warningCount=" + this.warningCount + ", isFinished=" + this.isFinished + ", startLat=" + this.startLat + ", startLon=" + this.startLon + ", midLat=" + this.midLat + ", midLon=" + this.midLon + ", endLat=" + this.endLat + ", endLon=" + this.endLon + ", peakGForce=" + this.peakGForce + ", smoothnessScore=" + this.smoothnessScore + ", launchAccelTimeSec=" + this.launchAccelTimeSec + ", terrainSummary=" + this.terrainSummary + ", isCompressed=" + this.isCompressed + ")";
    }

    public RideLogEntity(long id, long startTime, long midTime, long endTime, long durationSeconds, double distanceKm, double maxSpeedKmh, double avgSpeedKmh, double estimatedFuelUsedL, String weatherCondition, String mode, String vehicleType, int warningCount, boolean isFinished, double startLat, double startLon, double midLat, double midLon, double endLat, double endLon, double peakGForce, int smoothnessScore, double launchAccelTimeSec, String terrainSummary, boolean isCompressed) {
        Intrinsics.checkNotNullParameter(weatherCondition, "weatherCondition");
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.checkNotNullParameter(vehicleType, "vehicleType");
        Intrinsics.checkNotNullParameter(terrainSummary, "terrainSummary");
        this.id = id;
        this.startTime = startTime;
        this.midTime = midTime;
        this.endTime = endTime;
        this.durationSeconds = durationSeconds;
        this.distanceKm = distanceKm;
        this.maxSpeedKmh = maxSpeedKmh;
        this.avgSpeedKmh = avgSpeedKmh;
        this.estimatedFuelUsedL = estimatedFuelUsedL;
        this.weatherCondition = weatherCondition;
        this.mode = mode;
        this.vehicleType = vehicleType;
        this.warningCount = warningCount;
        this.isFinished = isFinished;
        this.startLat = startLat;
        this.startLon = startLon;
        this.midLat = midLat;
        this.midLon = midLon;
        this.endLat = endLat;
        this.endLon = endLon;
        this.peakGForce = peakGForce;
        this.smoothnessScore = smoothnessScore;
        this.launchAccelTimeSec = launchAccelTimeSec;
        this.terrainSummary = terrainSummary;
        this.isCompressed = isCompressed;
    }

    public /* synthetic */ RideLogEntity(long j, long j2, long j3, long j4, long j5, double d, double d2, double d3, double d4, String str, String str2, String str3, int i, boolean z, double d5, double d6, double d7, double d8, double d9, double d10, double d11, int i2, double d12, String str4, boolean z2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0L : j, j2, (i3 & 4) != 0 ? 0L : j3, (i3 & 8) != 0 ? 0L : j4, (i3 & 16) != 0 ? 0L : j5, (i3 & 32) != 0 ? 0.0d : d, (i3 & 64) != 0 ? 0.0d : d2, (i3 & 128) != 0 ? 0.0d : d3, (i3 & 256) != 0 ? 0.0d : d4, (i3 & 512) != 0 ? "Normal Dry" : str, (i3 & 1024) != 0 ? "TRIP" : str2, (i3 & 2048) != 0 ? "ATV" : str3, (i3 & 4096) != 0 ? 0 : i, (i3 & 8192) != 0 ? false : z, (i3 & 16384) != 0 ? 0.0d : d5, (32768 & i3) != 0 ? 0.0d : d6, (65536 & i3) != 0 ? 0.0d : d7, (131072 & i3) != 0 ? 0.0d : d8, (262144 & i3) != 0 ? 0.0d : d9, (524288 & i3) != 0 ? 0.0d : d10, (1048576 & i3) != 0 ? 1.0d : d11, (2097152 & i3) != 0 ? 95 : i2, (4194304 & i3) != 0 ? 0.0d : d12, (8388608 & i3) != 0 ? "Asphalt: 75% | Gravel: 25%" : str4, (i3 & 16777216) != 0 ? false : z2);
    }

    public final long getId() {
        return this.id;
    }

    public final long getStartTime() {
        return this.startTime;
    }

    public final long getMidTime() {
        return this.midTime;
    }

    public final long getEndTime() {
        return this.endTime;
    }

    public final long getDurationSeconds() {
        return this.durationSeconds;
    }

    public final double getDistanceKm() {
        return this.distanceKm;
    }

    public final double getMaxSpeedKmh() {
        return this.maxSpeedKmh;
    }

    public final double getAvgSpeedKmh() {
        return this.avgSpeedKmh;
    }

    public final double getEstimatedFuelUsedL() {
        return this.estimatedFuelUsedL;
    }

    public final String getWeatherCondition() {
        return this.weatherCondition;
    }

    public final String getMode() {
        return this.mode;
    }

    public final String getVehicleType() {
        return this.vehicleType;
    }

    public final int getWarningCount() {
        return this.warningCount;
    }

    public final boolean isFinished() {
        return this.isFinished;
    }

    public final double getStartLat() {
        return this.startLat;
    }

    public final double getStartLon() {
        return this.startLon;
    }

    public final double getMidLat() {
        return this.midLat;
    }

    public final double getMidLon() {
        return this.midLon;
    }

    public final double getEndLat() {
        return this.endLat;
    }

    public final double getEndLon() {
        return this.endLon;
    }

    public final double getPeakGForce() {
        return this.peakGForce;
    }

    public final int getSmoothnessScore() {
        return this.smoothnessScore;
    }

    public final double getLaunchAccelTimeSec() {
        return this.launchAccelTimeSec;
    }

    public final String getTerrainSummary() {
        return this.terrainSummary;
    }

    public final boolean isCompressed() {
        return this.isCompressed;
    }
}
