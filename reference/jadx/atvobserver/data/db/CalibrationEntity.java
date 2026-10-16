package com.cgs.atvobserver.data.db;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: EntitiesAndDao.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0007HÆ\u0003J1\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\n¨\u0006\u001a"}, d2 = {"Lcom/cgs/atvobserver/data/db/CalibrationEntity;", "", "key", "", "value", "confidence", "lastUpdated", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V", "getConfidence", "()Ljava/lang/String;", "getKey", "getLastUpdated", "()J", "getValue", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class CalibrationEntity {
    public static final int $stable = 0;
    private final String confidence;
    private final String key;
    private final long lastUpdated;
    private final String value;

    public static /* synthetic */ CalibrationEntity copy$default(CalibrationEntity calibrationEntity, String str, String str2, String str3, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            str = calibrationEntity.key;
        }
        if ((i & 2) != 0) {
            str2 = calibrationEntity.value;
        }
        String str4 = str2;
        if ((i & 4) != 0) {
            str3 = calibrationEntity.confidence;
        }
        String str5 = str3;
        if ((i & 8) != 0) {
            j = calibrationEntity.lastUpdated;
        }
        return calibrationEntity.copy(str, str4, str5, j);
    }

    /* renamed from: component1, reason: from getter */
    public final String getKey() {
        return this.key;
    }

    /* renamed from: component2, reason: from getter */
    public final String getValue() {
        return this.value;
    }

    /* renamed from: component3, reason: from getter */
    public final String getConfidence() {
        return this.confidence;
    }

    /* renamed from: component4, reason: from getter */
    public final long getLastUpdated() {
        return this.lastUpdated;
    }

    public final CalibrationEntity copy(String key, String value, String confidence, long lastUpdated) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(confidence, "confidence");
        return new CalibrationEntity(key, value, confidence, lastUpdated);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CalibrationEntity)) {
            return false;
        }
        CalibrationEntity calibrationEntity = (CalibrationEntity) other;
        return Intrinsics.areEqual(this.key, calibrationEntity.key) && Intrinsics.areEqual(this.value, calibrationEntity.value) && Intrinsics.areEqual(this.confidence, calibrationEntity.confidence) && this.lastUpdated == calibrationEntity.lastUpdated;
    }

    public int hashCode() {
        return (((((this.key.hashCode() * 31) + this.value.hashCode()) * 31) + this.confidence.hashCode()) * 31) + Long.hashCode(this.lastUpdated);
    }

    public String toString() {
        return "CalibrationEntity(key=" + this.key + ", value=" + this.value + ", confidence=" + this.confidence + ", lastUpdated=" + this.lastUpdated + ")";
    }

    public CalibrationEntity(String key, String value, String confidence, long lastUpdated) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(confidence, "confidence");
        this.key = key;
        this.value = value;
        this.confidence = confidence;
        this.lastUpdated = lastUpdated;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ CalibrationEntity(String str, String str2, String str3, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, r3, r4);
        String str4;
        long j2;
        if ((i & 4) == 0) {
            str4 = str3;
        } else {
            str4 = "VALID";
        }
        if ((i & 8) == 0) {
            j2 = j;
        } else {
            j2 = System.currentTimeMillis();
        }
    }

    public final String getKey() {
        return this.key;
    }

    public final String getValue() {
        return this.value;
    }

    public final String getConfidence() {
        return this.confidence;
    }

    public final long getLastUpdated() {
        return this.lastUpdated;
    }
}
