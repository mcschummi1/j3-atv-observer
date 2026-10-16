package com.cgs.atvobserver.data.model;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Models.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0014\u001a\u00020\bHÆ\u0003J1\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\r¨\u0006\u001c"}, d2 = {"Lcom/cgs/atvobserver/data/model/SystemWarning;", "", "title", "", "message", "level", "Lcom/cgs/atvobserver/data/model/WarningLevel;", "timestamp", "", "(Ljava/lang/String;Ljava/lang/String;Lcom/cgs/atvobserver/data/model/WarningLevel;J)V", "getLevel", "()Lcom/cgs/atvobserver/data/model/WarningLevel;", "getMessage", "()Ljava/lang/String;", "getTimestamp", "()J", "getTitle", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes10.dex */
public final /* data */ class SystemWarning {
    public static final int $stable = 0;
    private final WarningLevel level;
    private final String message;
    private final long timestamp;
    private final String title;

    public static /* synthetic */ SystemWarning copy$default(SystemWarning systemWarning, String str, String str2, WarningLevel warningLevel, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            str = systemWarning.title;
        }
        if ((i & 2) != 0) {
            str2 = systemWarning.message;
        }
        String str3 = str2;
        if ((i & 4) != 0) {
            warningLevel = systemWarning.level;
        }
        WarningLevel warningLevel2 = warningLevel;
        if ((i & 8) != 0) {
            j = systemWarning.timestamp;
        }
        return systemWarning.copy(str, str3, warningLevel2, j);
    }

    /* renamed from: component1, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* renamed from: component2, reason: from getter */
    public final String getMessage() {
        return this.message;
    }

    /* renamed from: component3, reason: from getter */
    public final WarningLevel getLevel() {
        return this.level;
    }

    /* renamed from: component4, reason: from getter */
    public final long getTimestamp() {
        return this.timestamp;
    }

    public final SystemWarning copy(String title, String message, WarningLevel level, long timestamp) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(level, "level");
        return new SystemWarning(title, message, level, timestamp);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SystemWarning)) {
            return false;
        }
        SystemWarning systemWarning = (SystemWarning) other;
        return Intrinsics.areEqual(this.title, systemWarning.title) && Intrinsics.areEqual(this.message, systemWarning.message) && this.level == systemWarning.level && this.timestamp == systemWarning.timestamp;
    }

    public int hashCode() {
        return (((((this.title.hashCode() * 31) + this.message.hashCode()) * 31) + this.level.hashCode()) * 31) + Long.hashCode(this.timestamp);
    }

    public String toString() {
        return "SystemWarning(title=" + this.title + ", message=" + this.message + ", level=" + this.level + ", timestamp=" + this.timestamp + ")";
    }

    public SystemWarning(String title, String message, WarningLevel level, long timestamp) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(level, "level");
        this.title = title;
        this.message = message;
        this.level = level;
        this.timestamp = timestamp;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ SystemWarning(String str, String str2, WarningLevel warningLevel, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, warningLevel, r4);
        long j2;
        if ((i & 8) == 0) {
            j2 = j;
        } else {
            j2 = System.currentTimeMillis();
        }
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getMessage() {
        return this.message;
    }

    public final WarningLevel getLevel() {
        return this.level;
    }

    public final long getTimestamp() {
        return this.timestamp;
    }
}
