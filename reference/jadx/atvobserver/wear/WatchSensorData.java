package com.cgs.atvobserver.wear;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: SmartwatchSensorReceiver.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0011\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B-\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0015\u001a\u00020\tHÆ\u0003J1\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00072\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u000bR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001c"}, d2 = {"Lcom/cgs/atvobserver/wear/WatchSensorData;", "", "watchHeartRateBpm", "", "watchBezelRotationDelta", "", "isWatchConnected", "", "lastUpdated", "", "(IFZJ)V", "()Z", "getLastUpdated", "()J", "getWatchBezelRotationDelta", "()F", "getWatchHeartRateBpm", "()I", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "toString", "", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes8.dex */
public final /* data */ class WatchSensorData {
    public static final int $stable = 0;
    private final boolean isWatchConnected;
    private final long lastUpdated;
    private final float watchBezelRotationDelta;
    private final int watchHeartRateBpm;

    public WatchSensorData() {
        this(0, 0.0f, false, 0L, 15, null);
    }

    public static /* synthetic */ WatchSensorData copy$default(WatchSensorData watchSensorData, int i, float f, boolean z, long j, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = watchSensorData.watchHeartRateBpm;
        }
        if ((i2 & 2) != 0) {
            f = watchSensorData.watchBezelRotationDelta;
        }
        float f2 = f;
        if ((i2 & 4) != 0) {
            z = watchSensorData.isWatchConnected;
        }
        boolean z2 = z;
        if ((i2 & 8) != 0) {
            j = watchSensorData.lastUpdated;
        }
        return watchSensorData.copy(i, f2, z2, j);
    }

    /* renamed from: component1, reason: from getter */
    public final int getWatchHeartRateBpm() {
        return this.watchHeartRateBpm;
    }

    /* renamed from: component2, reason: from getter */
    public final float getWatchBezelRotationDelta() {
        return this.watchBezelRotationDelta;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getIsWatchConnected() {
        return this.isWatchConnected;
    }

    /* renamed from: component4, reason: from getter */
    public final long getLastUpdated() {
        return this.lastUpdated;
    }

    public final WatchSensorData copy(int watchHeartRateBpm, float watchBezelRotationDelta, boolean isWatchConnected, long lastUpdated) {
        return new WatchSensorData(watchHeartRateBpm, watchBezelRotationDelta, isWatchConnected, lastUpdated);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof WatchSensorData)) {
            return false;
        }
        WatchSensorData watchSensorData = (WatchSensorData) other;
        return this.watchHeartRateBpm == watchSensorData.watchHeartRateBpm && Float.compare(this.watchBezelRotationDelta, watchSensorData.watchBezelRotationDelta) == 0 && this.isWatchConnected == watchSensorData.isWatchConnected && this.lastUpdated == watchSensorData.lastUpdated;
    }

    public int hashCode() {
        return (((((Integer.hashCode(this.watchHeartRateBpm) * 31) + Float.hashCode(this.watchBezelRotationDelta)) * 31) + Boolean.hashCode(this.isWatchConnected)) * 31) + Long.hashCode(this.lastUpdated);
    }

    public String toString() {
        return "WatchSensorData(watchHeartRateBpm=" + this.watchHeartRateBpm + ", watchBezelRotationDelta=" + this.watchBezelRotationDelta + ", isWatchConnected=" + this.isWatchConnected + ", lastUpdated=" + this.lastUpdated + ")";
    }

    public WatchSensorData(int watchHeartRateBpm, float watchBezelRotationDelta, boolean isWatchConnected, long lastUpdated) {
        this.watchHeartRateBpm = watchHeartRateBpm;
        this.watchBezelRotationDelta = watchBezelRotationDelta;
        this.isWatchConnected = isWatchConnected;
        this.lastUpdated = lastUpdated;
    }

    public /* synthetic */ WatchSensorData(int i, float f, boolean z, long j, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? 0.0f : f, (i2 & 4) == 0 ? z : false, (i2 & 8) != 0 ? System.currentTimeMillis() : j);
    }

    public final int getWatchHeartRateBpm() {
        return this.watchHeartRateBpm;
    }

    public final float getWatchBezelRotationDelta() {
        return this.watchBezelRotationDelta;
    }

    public final boolean isWatchConnected() {
        return this.isWatchConnected;
    }

    public final long getLastUpdated() {
        return this.lastUpdated;
    }
}
