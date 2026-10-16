package com.cgs.atvobserver.location;

import androidx.camera.video.AudioStats;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.scheduling.WorkQueueKt;

/* compiled from: GpsTracker.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0015\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001BK\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u000bHÆ\u0003JO\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u000bHÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u00072\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020!HÖ\u0001J\t\u0010\"\u001a\u00020#HÖ\u0001R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0012R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0010R\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0010¨\u0006$"}, d2 = {"Lcom/cgs/atvobserver/location/GpsData;", "", "currentSpeedKmh", "", "maxSpeedKmh", "distanceKm", "isGpsAvailable", "", "latitude", "longitude", "accuracyMeters", "", "(DDDZDDF)V", "getAccuracyMeters", "()F", "getCurrentSpeedKmh", "()D", "getDistanceKm", "()Z", "getLatitude", "getLongitude", "getMaxSpeedKmh", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "other", "hashCode", "", "toString", "", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes10.dex */
public final /* data */ class GpsData {
    public static final int $stable = 0;
    private final float accuracyMeters;
    private final double currentSpeedKmh;
    private final double distanceKm;
    private final boolean isGpsAvailable;
    private final double latitude;
    private final double longitude;
    private final double maxSpeedKmh;

    public GpsData() {
        this(AudioStats.AUDIO_AMPLITUDE_NONE, AudioStats.AUDIO_AMPLITUDE_NONE, AudioStats.AUDIO_AMPLITUDE_NONE, false, AudioStats.AUDIO_AMPLITUDE_NONE, AudioStats.AUDIO_AMPLITUDE_NONE, 0.0f, WorkQueueKt.MASK, null);
    }

    /* renamed from: component1, reason: from getter */
    public final double getCurrentSpeedKmh() {
        return this.currentSpeedKmh;
    }

    /* renamed from: component2, reason: from getter */
    public final double getMaxSpeedKmh() {
        return this.maxSpeedKmh;
    }

    /* renamed from: component3, reason: from getter */
    public final double getDistanceKm() {
        return this.distanceKm;
    }

    /* renamed from: component4, reason: from getter */
    public final boolean getIsGpsAvailable() {
        return this.isGpsAvailable;
    }

    /* renamed from: component5, reason: from getter */
    public final double getLatitude() {
        return this.latitude;
    }

    /* renamed from: component6, reason: from getter */
    public final double getLongitude() {
        return this.longitude;
    }

    /* renamed from: component7, reason: from getter */
    public final float getAccuracyMeters() {
        return this.accuracyMeters;
    }

    public final GpsData copy(double currentSpeedKmh, double maxSpeedKmh, double distanceKm, boolean isGpsAvailable, double latitude, double longitude, float accuracyMeters) {
        return new GpsData(currentSpeedKmh, maxSpeedKmh, distanceKm, isGpsAvailable, latitude, longitude, accuracyMeters);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GpsData)) {
            return false;
        }
        GpsData gpsData = (GpsData) other;
        return Double.compare(this.currentSpeedKmh, gpsData.currentSpeedKmh) == 0 && Double.compare(this.maxSpeedKmh, gpsData.maxSpeedKmh) == 0 && Double.compare(this.distanceKm, gpsData.distanceKm) == 0 && this.isGpsAvailable == gpsData.isGpsAvailable && Double.compare(this.latitude, gpsData.latitude) == 0 && Double.compare(this.longitude, gpsData.longitude) == 0 && Float.compare(this.accuracyMeters, gpsData.accuracyMeters) == 0;
    }

    public int hashCode() {
        return (((((((((((Double.hashCode(this.currentSpeedKmh) * 31) + Double.hashCode(this.maxSpeedKmh)) * 31) + Double.hashCode(this.distanceKm)) * 31) + Boolean.hashCode(this.isGpsAvailable)) * 31) + Double.hashCode(this.latitude)) * 31) + Double.hashCode(this.longitude)) * 31) + Float.hashCode(this.accuracyMeters);
    }

    public String toString() {
        return "GpsData(currentSpeedKmh=" + this.currentSpeedKmh + ", maxSpeedKmh=" + this.maxSpeedKmh + ", distanceKm=" + this.distanceKm + ", isGpsAvailable=" + this.isGpsAvailable + ", latitude=" + this.latitude + ", longitude=" + this.longitude + ", accuracyMeters=" + this.accuracyMeters + ")";
    }

    public GpsData(double currentSpeedKmh, double maxSpeedKmh, double distanceKm, boolean isGpsAvailable, double latitude, double longitude, float accuracyMeters) {
        this.currentSpeedKmh = currentSpeedKmh;
        this.maxSpeedKmh = maxSpeedKmh;
        this.distanceKm = distanceKm;
        this.isGpsAvailable = isGpsAvailable;
        this.latitude = latitude;
        this.longitude = longitude;
        this.accuracyMeters = accuracyMeters;
    }

    public /* synthetic */ GpsData(double d, double d2, double d3, boolean z, double d4, double d5, float f, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0.0d : d, (i & 2) != 0 ? 0.0d : d2, (i & 4) != 0 ? 0.0d : d3, (i & 8) != 0 ? false : z, (i & 16) != 0 ? 0.0d : d4, (i & 32) == 0 ? d5 : AudioStats.AUDIO_AMPLITUDE_NONE, (i & 64) != 0 ? 0.0f : f);
    }

    public final double getCurrentSpeedKmh() {
        return this.currentSpeedKmh;
    }

    public final double getMaxSpeedKmh() {
        return this.maxSpeedKmh;
    }

    public final double getDistanceKm() {
        return this.distanceKm;
    }

    public final boolean isGpsAvailable() {
        return this.isGpsAvailable;
    }

    public final double getLatitude() {
        return this.latitude;
    }

    public final double getLongitude() {
        return this.longitude;
    }

    public final float getAccuracyMeters() {
        return this.accuracyMeters;
    }
}
