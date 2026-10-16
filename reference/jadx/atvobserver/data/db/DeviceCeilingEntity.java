package com.cgs.atvobserver.data.db;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DeviceCeilingEntity.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\nHÆ\u0003J;\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u0007HÖ\u0001J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006 "}, d2 = {"Lcom/cgs/atvobserver/data/db/DeviceCeilingEntity;", "", "deviceModel", "", "learnedCeilingFactor", "", "maxFps", "", "aiRatePerSec", "lastUpdated", "", "(Ljava/lang/String;FIFJ)V", "getAiRatePerSec", "()F", "getDeviceModel", "()Ljava/lang/String;", "getLastUpdated", "()J", "getLearnedCeilingFactor", "getMaxFps", "()I", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class DeviceCeilingEntity {
    public static final int $stable = 0;
    private final float aiRatePerSec;
    private final String deviceModel;
    private final long lastUpdated;
    private final float learnedCeilingFactor;
    private final int maxFps;

    public static /* synthetic */ DeviceCeilingEntity copy$default(DeviceCeilingEntity deviceCeilingEntity, String str, float f, int i, float f2, long j, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = deviceCeilingEntity.deviceModel;
        }
        if ((i2 & 2) != 0) {
            f = deviceCeilingEntity.learnedCeilingFactor;
        }
        float f3 = f;
        if ((i2 & 4) != 0) {
            i = deviceCeilingEntity.maxFps;
        }
        int i3 = i;
        if ((i2 & 8) != 0) {
            f2 = deviceCeilingEntity.aiRatePerSec;
        }
        float f4 = f2;
        if ((i2 & 16) != 0) {
            j = deviceCeilingEntity.lastUpdated;
        }
        return deviceCeilingEntity.copy(str, f3, i3, f4, j);
    }

    /* renamed from: component1, reason: from getter */
    public final String getDeviceModel() {
        return this.deviceModel;
    }

    /* renamed from: component2, reason: from getter */
    public final float getLearnedCeilingFactor() {
        return this.learnedCeilingFactor;
    }

    /* renamed from: component3, reason: from getter */
    public final int getMaxFps() {
        return this.maxFps;
    }

    /* renamed from: component4, reason: from getter */
    public final float getAiRatePerSec() {
        return this.aiRatePerSec;
    }

    /* renamed from: component5, reason: from getter */
    public final long getLastUpdated() {
        return this.lastUpdated;
    }

    public final DeviceCeilingEntity copy(String deviceModel, float learnedCeilingFactor, int maxFps, float aiRatePerSec, long lastUpdated) {
        Intrinsics.checkNotNullParameter(deviceModel, "deviceModel");
        return new DeviceCeilingEntity(deviceModel, learnedCeilingFactor, maxFps, aiRatePerSec, lastUpdated);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DeviceCeilingEntity)) {
            return false;
        }
        DeviceCeilingEntity deviceCeilingEntity = (DeviceCeilingEntity) other;
        return Intrinsics.areEqual(this.deviceModel, deviceCeilingEntity.deviceModel) && Float.compare(this.learnedCeilingFactor, deviceCeilingEntity.learnedCeilingFactor) == 0 && this.maxFps == deviceCeilingEntity.maxFps && Float.compare(this.aiRatePerSec, deviceCeilingEntity.aiRatePerSec) == 0 && this.lastUpdated == deviceCeilingEntity.lastUpdated;
    }

    public int hashCode() {
        return (((((((this.deviceModel.hashCode() * 31) + Float.hashCode(this.learnedCeilingFactor)) * 31) + Integer.hashCode(this.maxFps)) * 31) + Float.hashCode(this.aiRatePerSec)) * 31) + Long.hashCode(this.lastUpdated);
    }

    public String toString() {
        return "DeviceCeilingEntity(deviceModel=" + this.deviceModel + ", learnedCeilingFactor=" + this.learnedCeilingFactor + ", maxFps=" + this.maxFps + ", aiRatePerSec=" + this.aiRatePerSec + ", lastUpdated=" + this.lastUpdated + ")";
    }

    public DeviceCeilingEntity(String deviceModel, float learnedCeilingFactor, int maxFps, float aiRatePerSec, long lastUpdated) {
        Intrinsics.checkNotNullParameter(deviceModel, "deviceModel");
        this.deviceModel = deviceModel;
        this.learnedCeilingFactor = learnedCeilingFactor;
        this.maxFps = maxFps;
        this.aiRatePerSec = aiRatePerSec;
        this.lastUpdated = lastUpdated;
    }

    public /* synthetic */ DeviceCeilingEntity(String str, float f, int i, float f2, long j, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? 1.0f : f, (i2 & 4) != 0 ? 60 : i, (i2 & 8) != 0 ? 10.0f : f2, (i2 & 16) != 0 ? System.currentTimeMillis() : j);
    }

    public final String getDeviceModel() {
        return this.deviceModel;
    }

    public final float getLearnedCeilingFactor() {
        return this.learnedCeilingFactor;
    }

    public final int getMaxFps() {
        return this.maxFps;
    }

    public final float getAiRatePerSec() {
        return this.aiRatePerSec;
    }

    public final long getLastUpdated() {
        return this.lastUpdated;
    }
}
