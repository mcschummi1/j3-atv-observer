package com.cgs.atvobserver.data.db;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: EntitiesAndDao.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B3\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0016\u001a\u00020\bHÆ\u0003J\t\u0010\u0017\u001a\u00020\bHÆ\u0003J;\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\bHÖ\u0001R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u0011\u0010\t\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\f¨\u0006\u001f"}, d2 = {"Lcom/cgs/atvobserver/data/db/FuelRecordEntity;", "", "id", "", "timestamp", "fuelLitres", "", "entryType", "", "vehicleType", "(JJDLjava/lang/String;Ljava/lang/String;)V", "getEntryType", "()Ljava/lang/String;", "getFuelLitres", "()D", "getId", "()J", "getTimestamp", "getVehicleType", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "", "toString", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class FuelRecordEntity {
    public static final int $stable = 0;
    private final String entryType;
    private final double fuelLitres;
    private final long id;
    private final long timestamp;
    private final String vehicleType;

    /* renamed from: component1, reason: from getter */
    public final long getId() {
        return this.id;
    }

    /* renamed from: component2, reason: from getter */
    public final long getTimestamp() {
        return this.timestamp;
    }

    /* renamed from: component3, reason: from getter */
    public final double getFuelLitres() {
        return this.fuelLitres;
    }

    /* renamed from: component4, reason: from getter */
    public final String getEntryType() {
        return this.entryType;
    }

    /* renamed from: component5, reason: from getter */
    public final String getVehicleType() {
        return this.vehicleType;
    }

    public final FuelRecordEntity copy(long id, long timestamp, double fuelLitres, String entryType, String vehicleType) {
        Intrinsics.checkNotNullParameter(entryType, "entryType");
        Intrinsics.checkNotNullParameter(vehicleType, "vehicleType");
        return new FuelRecordEntity(id, timestamp, fuelLitres, entryType, vehicleType);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FuelRecordEntity)) {
            return false;
        }
        FuelRecordEntity fuelRecordEntity = (FuelRecordEntity) other;
        return this.id == fuelRecordEntity.id && this.timestamp == fuelRecordEntity.timestamp && Double.compare(this.fuelLitres, fuelRecordEntity.fuelLitres) == 0 && Intrinsics.areEqual(this.entryType, fuelRecordEntity.entryType) && Intrinsics.areEqual(this.vehicleType, fuelRecordEntity.vehicleType);
    }

    public int hashCode() {
        return (((((((Long.hashCode(this.id) * 31) + Long.hashCode(this.timestamp)) * 31) + Double.hashCode(this.fuelLitres)) * 31) + this.entryType.hashCode()) * 31) + this.vehicleType.hashCode();
    }

    public String toString() {
        return "FuelRecordEntity(id=" + this.id + ", timestamp=" + this.timestamp + ", fuelLitres=" + this.fuelLitres + ", entryType=" + this.entryType + ", vehicleType=" + this.vehicleType + ")";
    }

    public FuelRecordEntity(long id, long timestamp, double fuelLitres, String entryType, String vehicleType) {
        Intrinsics.checkNotNullParameter(entryType, "entryType");
        Intrinsics.checkNotNullParameter(vehicleType, "vehicleType");
        this.id = id;
        this.timestamp = timestamp;
        this.fuelLitres = fuelLitres;
        this.entryType = entryType;
        this.vehicleType = vehicleType;
    }

    public /* synthetic */ FuelRecordEntity(long j, long j2, double d, String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0L : j, (i & 2) != 0 ? System.currentTimeMillis() : j2, d, str, (i & 16) != 0 ? "ATV" : str2);
    }

    public final long getId() {
        return this.id;
    }

    public final long getTimestamp() {
        return this.timestamp;
    }

    public final double getFuelLitres() {
        return this.fuelLitres;
    }

    public final String getEntryType() {
        return this.entryType;
    }

    public final String getVehicleType() {
        return this.vehicleType;
    }
}
