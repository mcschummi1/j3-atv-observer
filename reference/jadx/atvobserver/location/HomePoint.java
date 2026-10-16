package com.cgs.atvobserver.location;

import androidx.camera.video.AudioStats;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: HomePointManager.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u000f\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B-\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0013\u001a\u00020\bHÆ\u0003J1\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00062\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001b"}, d2 = {"Lcom/cgs/atvobserver/location/HomePoint;", "", "latitude", "", "longitude", "isSet", "", "setTimestamp", "", "(DDZJ)V", "()Z", "getLatitude", "()D", "getLongitude", "getSetTimestamp", "()J", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "", "toString", "", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes10.dex */
public final /* data */ class HomePoint {
    public static final int $stable = 0;
    private final boolean isSet;
    private final double latitude;
    private final double longitude;
    private final long setTimestamp;

    public HomePoint() {
        this(AudioStats.AUDIO_AMPLITUDE_NONE, AudioStats.AUDIO_AMPLITUDE_NONE, false, 0L, 15, null);
    }

    /* renamed from: component1, reason: from getter */
    public final double getLatitude() {
        return this.latitude;
    }

    /* renamed from: component2, reason: from getter */
    public final double getLongitude() {
        return this.longitude;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getIsSet() {
        return this.isSet;
    }

    /* renamed from: component4, reason: from getter */
    public final long getSetTimestamp() {
        return this.setTimestamp;
    }

    public final HomePoint copy(double latitude, double longitude, boolean isSet, long setTimestamp) {
        return new HomePoint(latitude, longitude, isSet, setTimestamp);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HomePoint)) {
            return false;
        }
        HomePoint homePoint = (HomePoint) other;
        return Double.compare(this.latitude, homePoint.latitude) == 0 && Double.compare(this.longitude, homePoint.longitude) == 0 && this.isSet == homePoint.isSet && this.setTimestamp == homePoint.setTimestamp;
    }

    public int hashCode() {
        return (((((Double.hashCode(this.latitude) * 31) + Double.hashCode(this.longitude)) * 31) + Boolean.hashCode(this.isSet)) * 31) + Long.hashCode(this.setTimestamp);
    }

    public String toString() {
        return "HomePoint(latitude=" + this.latitude + ", longitude=" + this.longitude + ", isSet=" + this.isSet + ", setTimestamp=" + this.setTimestamp + ")";
    }

    public HomePoint(double latitude, double longitude, boolean isSet, long setTimestamp) {
        this.latitude = latitude;
        this.longitude = longitude;
        this.isSet = isSet;
        this.setTimestamp = setTimestamp;
    }

    public /* synthetic */ HomePoint(double d, double d2, boolean z, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0.0d : d, (i & 2) == 0 ? d2 : AudioStats.AUDIO_AMPLITUDE_NONE, (i & 4) != 0 ? false : z, (i & 8) != 0 ? 0L : j);
    }

    public final double getLatitude() {
        return this.latitude;
    }

    public final double getLongitude() {
        return this.longitude;
    }

    public final boolean isSet() {
        return this.isSet;
    }

    public final long getSetTimestamp() {
        return this.setTimestamp;
    }
}
