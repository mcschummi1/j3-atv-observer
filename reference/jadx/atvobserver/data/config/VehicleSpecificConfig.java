package com.cgs.atvobserver.data.config;

import androidx.camera.video.AudioStats;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AppConfigManager.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B-\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0014\u001a\u00020\bHÆ\u0003J1\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0006HÖ\u0001J\t\u0010\u001a\u001a\u00020\bHÖ\u0001R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001b"}, d2 = {"Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;", "", "tankCapacityL", "", "criticalTempC", "targetIdleRpm", "", "assignedBattery", "", "(DDILjava/lang/String;)V", "getAssignedBattery", "()Ljava/lang/String;", "getCriticalTempC", "()D", "getTankCapacityL", "getTargetIdleRpm", "()I", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes5.dex */
public final /* data */ class VehicleSpecificConfig {
    public static final int $stable = 0;
    private final String assignedBattery;
    private final double criticalTempC;
    private final double tankCapacityL;
    private final int targetIdleRpm;

    public VehicleSpecificConfig() {
        this(AudioStats.AUDIO_AMPLITUDE_NONE, AudioStats.AUDIO_AMPLITUDE_NONE, 0, null, 15, null);
    }

    public static /* synthetic */ VehicleSpecificConfig copy$default(VehicleSpecificConfig vehicleSpecificConfig, double d, double d2, int i, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            d = vehicleSpecificConfig.tankCapacityL;
        }
        double d3 = d;
        if ((i2 & 2) != 0) {
            d2 = vehicleSpecificConfig.criticalTempC;
        }
        double d4 = d2;
        if ((i2 & 4) != 0) {
            i = vehicleSpecificConfig.targetIdleRpm;
        }
        int i3 = i;
        if ((i2 & 8) != 0) {
            str = vehicleSpecificConfig.assignedBattery;
        }
        return vehicleSpecificConfig.copy(d3, d4, i3, str);
    }

    /* renamed from: component1, reason: from getter */
    public final double getTankCapacityL() {
        return this.tankCapacityL;
    }

    /* renamed from: component2, reason: from getter */
    public final double getCriticalTempC() {
        return this.criticalTempC;
    }

    /* renamed from: component3, reason: from getter */
    public final int getTargetIdleRpm() {
        return this.targetIdleRpm;
    }

    /* renamed from: component4, reason: from getter */
    public final String getAssignedBattery() {
        return this.assignedBattery;
    }

    public final VehicleSpecificConfig copy(double tankCapacityL, double criticalTempC, int targetIdleRpm, String assignedBattery) {
        Intrinsics.checkNotNullParameter(assignedBattery, "assignedBattery");
        return new VehicleSpecificConfig(tankCapacityL, criticalTempC, targetIdleRpm, assignedBattery);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VehicleSpecificConfig)) {
            return false;
        }
        VehicleSpecificConfig vehicleSpecificConfig = (VehicleSpecificConfig) other;
        return Double.compare(this.tankCapacityL, vehicleSpecificConfig.tankCapacityL) == 0 && Double.compare(this.criticalTempC, vehicleSpecificConfig.criticalTempC) == 0 && this.targetIdleRpm == vehicleSpecificConfig.targetIdleRpm && Intrinsics.areEqual(this.assignedBattery, vehicleSpecificConfig.assignedBattery);
    }

    public int hashCode() {
        return (((((Double.hashCode(this.tankCapacityL) * 31) + Double.hashCode(this.criticalTempC)) * 31) + Integer.hashCode(this.targetIdleRpm)) * 31) + this.assignedBattery.hashCode();
    }

    public String toString() {
        return "VehicleSpecificConfig(tankCapacityL=" + this.tankCapacityL + ", criticalTempC=" + this.criticalTempC + ", targetIdleRpm=" + this.targetIdleRpm + ", assignedBattery=" + this.assignedBattery + ")";
    }

    public VehicleSpecificConfig(double tankCapacityL, double criticalTempC, int targetIdleRpm, String assignedBattery) {
        Intrinsics.checkNotNullParameter(assignedBattery, "assignedBattery");
        this.tankCapacityL = tankCapacityL;
        this.criticalTempC = criticalTempC;
        this.targetIdleRpm = targetIdleRpm;
        this.assignedBattery = assignedBattery;
    }

    public /* synthetic */ VehicleSpecificConfig(double d, double d2, int i, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 2.0d : d, (i2 & 2) != 0 ? 115.0d : d2, (i2 & 4) != 0 ? 1380 : i, (i2 & 8) != 0 ? "None" : str);
    }

    public final double getTankCapacityL() {
        return this.tankCapacityL;
    }

    public final double getCriticalTempC() {
        return this.criticalTempC;
    }

    public final int getTargetIdleRpm() {
        return this.targetIdleRpm;
    }

    public final String getAssignedBattery() {
        return this.assignedBattery;
    }
}
