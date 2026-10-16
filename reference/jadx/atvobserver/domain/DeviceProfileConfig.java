package com.cgs.atvobserver.domain;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DeviceProfiler.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u001b\b\u0087\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\b\b\u0002\u0010\f\u001a\u00020\n¢\u0006\u0002\u0010\rJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001c\u001a\u00020\bHÆ\u0003J\t\u0010\u001d\u001a\u00020\nHÆ\u0003J\t\u0010\u001e\u001a\u00020\bHÆ\u0003J\t\u0010\u001f\u001a\u00020\nHÆ\u0003JO\u0010 \u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\b2\b\b\u0002\u0010\f\u001a\u00020\nHÆ\u0001J\u0013\u0010!\u001a\u00020\n2\b\u0010\"\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010#\u001a\u00020\u0005HÖ\u0001J\t\u0010$\u001a\u00020\bHÖ\u0001R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\f\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0011R\u0011\u0010\u000b\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018¨\u0006%"}, d2 = {"Lcom/cgs/atvobserver/domain/DeviceProfileConfig;", "", "tier", "Lcom/cgs/atvobserver/domain/DevicePerformanceTier;", "maxAllowedRamMb", "", "cameraAnalysisIntervalSec", "aiModelPrecision", "", "enableHeavySensorFusion", "", "profileName", "hasRootAccess", "(Lcom/cgs/atvobserver/domain/DevicePerformanceTier;IILjava/lang/String;ZLjava/lang/String;Z)V", "getAiModelPrecision", "()Ljava/lang/String;", "getCameraAnalysisIntervalSec", "()I", "getEnableHeavySensorFusion", "()Z", "getHasRootAccess", "getMaxAllowedRamMb", "getProfileName", "getTier", "()Lcom/cgs/atvobserver/domain/DevicePerformanceTier;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "other", "hashCode", "toString", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes13.dex */
public final /* data */ class DeviceProfileConfig {
    public static final int $stable = 0;
    private final String aiModelPrecision;
    private final int cameraAnalysisIntervalSec;
    private final boolean enableHeavySensorFusion;
    private final boolean hasRootAccess;
    private final int maxAllowedRamMb;
    private final String profileName;
    private final DevicePerformanceTier tier;

    public static /* synthetic */ DeviceProfileConfig copy$default(DeviceProfileConfig deviceProfileConfig, DevicePerformanceTier devicePerformanceTier, int i, int i2, String str, boolean z, String str2, boolean z2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            devicePerformanceTier = deviceProfileConfig.tier;
        }
        if ((i3 & 2) != 0) {
            i = deviceProfileConfig.maxAllowedRamMb;
        }
        int i4 = i;
        if ((i3 & 4) != 0) {
            i2 = deviceProfileConfig.cameraAnalysisIntervalSec;
        }
        int i5 = i2;
        if ((i3 & 8) != 0) {
            str = deviceProfileConfig.aiModelPrecision;
        }
        String str3 = str;
        if ((i3 & 16) != 0) {
            z = deviceProfileConfig.enableHeavySensorFusion;
        }
        boolean z3 = z;
        if ((i3 & 32) != 0) {
            str2 = deviceProfileConfig.profileName;
        }
        String str4 = str2;
        if ((i3 & 64) != 0) {
            z2 = deviceProfileConfig.hasRootAccess;
        }
        return deviceProfileConfig.copy(devicePerformanceTier, i4, i5, str3, z3, str4, z2);
    }

    /* renamed from: component1, reason: from getter */
    public final DevicePerformanceTier getTier() {
        return this.tier;
    }

    /* renamed from: component2, reason: from getter */
    public final int getMaxAllowedRamMb() {
        return this.maxAllowedRamMb;
    }

    /* renamed from: component3, reason: from getter */
    public final int getCameraAnalysisIntervalSec() {
        return this.cameraAnalysisIntervalSec;
    }

    /* renamed from: component4, reason: from getter */
    public final String getAiModelPrecision() {
        return this.aiModelPrecision;
    }

    /* renamed from: component5, reason: from getter */
    public final boolean getEnableHeavySensorFusion() {
        return this.enableHeavySensorFusion;
    }

    /* renamed from: component6, reason: from getter */
    public final String getProfileName() {
        return this.profileName;
    }

    /* renamed from: component7, reason: from getter */
    public final boolean getHasRootAccess() {
        return this.hasRootAccess;
    }

    public final DeviceProfileConfig copy(DevicePerformanceTier tier, int maxAllowedRamMb, int cameraAnalysisIntervalSec, String aiModelPrecision, boolean enableHeavySensorFusion, String profileName, boolean hasRootAccess) {
        Intrinsics.checkNotNullParameter(tier, "tier");
        Intrinsics.checkNotNullParameter(aiModelPrecision, "aiModelPrecision");
        Intrinsics.checkNotNullParameter(profileName, "profileName");
        return new DeviceProfileConfig(tier, maxAllowedRamMb, cameraAnalysisIntervalSec, aiModelPrecision, enableHeavySensorFusion, profileName, hasRootAccess);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DeviceProfileConfig)) {
            return false;
        }
        DeviceProfileConfig deviceProfileConfig = (DeviceProfileConfig) other;
        return this.tier == deviceProfileConfig.tier && this.maxAllowedRamMb == deviceProfileConfig.maxAllowedRamMb && this.cameraAnalysisIntervalSec == deviceProfileConfig.cameraAnalysisIntervalSec && Intrinsics.areEqual(this.aiModelPrecision, deviceProfileConfig.aiModelPrecision) && this.enableHeavySensorFusion == deviceProfileConfig.enableHeavySensorFusion && Intrinsics.areEqual(this.profileName, deviceProfileConfig.profileName) && this.hasRootAccess == deviceProfileConfig.hasRootAccess;
    }

    public int hashCode() {
        return (((((((((((this.tier.hashCode() * 31) + Integer.hashCode(this.maxAllowedRamMb)) * 31) + Integer.hashCode(this.cameraAnalysisIntervalSec)) * 31) + this.aiModelPrecision.hashCode()) * 31) + Boolean.hashCode(this.enableHeavySensorFusion)) * 31) + this.profileName.hashCode()) * 31) + Boolean.hashCode(this.hasRootAccess);
    }

    public String toString() {
        return "DeviceProfileConfig(tier=" + this.tier + ", maxAllowedRamMb=" + this.maxAllowedRamMb + ", cameraAnalysisIntervalSec=" + this.cameraAnalysisIntervalSec + ", aiModelPrecision=" + this.aiModelPrecision + ", enableHeavySensorFusion=" + this.enableHeavySensorFusion + ", profileName=" + this.profileName + ", hasRootAccess=" + this.hasRootAccess + ")";
    }

    public DeviceProfileConfig(DevicePerformanceTier tier, int maxAllowedRamMb, int cameraAnalysisIntervalSec, String aiModelPrecision, boolean enableHeavySensorFusion, String profileName, boolean hasRootAccess) {
        Intrinsics.checkNotNullParameter(tier, "tier");
        Intrinsics.checkNotNullParameter(aiModelPrecision, "aiModelPrecision");
        Intrinsics.checkNotNullParameter(profileName, "profileName");
        this.tier = tier;
        this.maxAllowedRamMb = maxAllowedRamMb;
        this.cameraAnalysisIntervalSec = cameraAnalysisIntervalSec;
        this.aiModelPrecision = aiModelPrecision;
        this.enableHeavySensorFusion = enableHeavySensorFusion;
        this.profileName = profileName;
        this.hasRootAccess = hasRootAccess;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ DeviceProfileConfig(DevicePerformanceTier devicePerformanceTier, int i, int i2, String str, boolean z, String str2, boolean z2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(devicePerformanceTier, i, i2, str, z, str2, r8);
        boolean z3;
        if ((i3 & 64) == 0) {
            z3 = z2;
        } else {
            z3 = false;
        }
    }

    public final DevicePerformanceTier getTier() {
        return this.tier;
    }

    public final int getMaxAllowedRamMb() {
        return this.maxAllowedRamMb;
    }

    public final int getCameraAnalysisIntervalSec() {
        return this.cameraAnalysisIntervalSec;
    }

    public final String getAiModelPrecision() {
        return this.aiModelPrecision;
    }

    public final boolean getEnableHeavySensorFusion() {
        return this.enableHeavySensorFusion;
    }

    public final String getProfileName() {
        return this.profileName;
    }

    public final boolean getHasRootAccess() {
        return this.hasRootAccess;
    }
}
