package com.cgs.atvobserver.data.storage;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: AppStorageManager.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0015\u001a\u00020\tHÆ\u0003J;\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00062\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\tHÖ\u0001J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000e¨\u0006\u001c"}, d2 = {"Lcom/cgs/atvobserver/data/storage/StorageStatus;", "", "freeSpaceMb", "", "totalSpaceMb", "isStorageLow", "", "isAutoPruneActive", "compressedRideCount", "", "(JJZZI)V", "getCompressedRideCount", "()I", "getFreeSpaceMb", "()J", "()Z", "getTotalSpaceMb", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", "toString", "", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes11.dex */
public final /* data */ class StorageStatus {
    public static final int $stable = 0;
    private final int compressedRideCount;
    private final long freeSpaceMb;
    private final boolean isAutoPruneActive;
    private final boolean isStorageLow;
    private final long totalSpaceMb;

    public StorageStatus() {
        this(0L, 0L, false, false, 0, 31, null);
    }

    /* renamed from: component1, reason: from getter */
    public final long getFreeSpaceMb() {
        return this.freeSpaceMb;
    }

    /* renamed from: component2, reason: from getter */
    public final long getTotalSpaceMb() {
        return this.totalSpaceMb;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getIsStorageLow() {
        return this.isStorageLow;
    }

    /* renamed from: component4, reason: from getter */
    public final boolean getIsAutoPruneActive() {
        return this.isAutoPruneActive;
    }

    /* renamed from: component5, reason: from getter */
    public final int getCompressedRideCount() {
        return this.compressedRideCount;
    }

    public final StorageStatus copy(long freeSpaceMb, long totalSpaceMb, boolean isStorageLow, boolean isAutoPruneActive, int compressedRideCount) {
        return new StorageStatus(freeSpaceMb, totalSpaceMb, isStorageLow, isAutoPruneActive, compressedRideCount);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof StorageStatus)) {
            return false;
        }
        StorageStatus storageStatus = (StorageStatus) other;
        return this.freeSpaceMb == storageStatus.freeSpaceMb && this.totalSpaceMb == storageStatus.totalSpaceMb && this.isStorageLow == storageStatus.isStorageLow && this.isAutoPruneActive == storageStatus.isAutoPruneActive && this.compressedRideCount == storageStatus.compressedRideCount;
    }

    public int hashCode() {
        return (((((((Long.hashCode(this.freeSpaceMb) * 31) + Long.hashCode(this.totalSpaceMb)) * 31) + Boolean.hashCode(this.isStorageLow)) * 31) + Boolean.hashCode(this.isAutoPruneActive)) * 31) + Integer.hashCode(this.compressedRideCount);
    }

    public String toString() {
        return "StorageStatus(freeSpaceMb=" + this.freeSpaceMb + ", totalSpaceMb=" + this.totalSpaceMb + ", isStorageLow=" + this.isStorageLow + ", isAutoPruneActive=" + this.isAutoPruneActive + ", compressedRideCount=" + this.compressedRideCount + ")";
    }

    public StorageStatus(long freeSpaceMb, long totalSpaceMb, boolean isStorageLow, boolean isAutoPruneActive, int compressedRideCount) {
        this.freeSpaceMb = freeSpaceMb;
        this.totalSpaceMb = totalSpaceMb;
        this.isStorageLow = isStorageLow;
        this.isAutoPruneActive = isAutoPruneActive;
        this.compressedRideCount = compressedRideCount;
    }

    public /* synthetic */ StorageStatus(long j, long j2, boolean z, boolean z2, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 1024L : j, (i2 & 2) != 0 ? 16000L : j2, (i2 & 4) != 0 ? false : z, (i2 & 8) != 0 ? false : z2, (i2 & 16) == 0 ? i : 0);
    }

    public final long getFreeSpaceMb() {
        return this.freeSpaceMb;
    }

    public final long getTotalSpaceMb() {
        return this.totalSpaceMb;
    }

    public final boolean isStorageLow() {
        return this.isStorageLow;
    }

    public final boolean isAutoPruneActive() {
        return this.isAutoPruneActive;
    }

    public final int getCompressedRideCount() {
        return this.compressedRideCount;
    }
}
