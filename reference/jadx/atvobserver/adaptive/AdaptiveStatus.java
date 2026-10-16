package com.cgs.atvobserver.adaptive;

import com.cgs.atvobserver.ai.AppOperatingMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AdaptiveEngine.kt */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001BA\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0003¢\u0006\u0002\u0010\fJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001a\u001a\u00020\bHÆ\u0003J\t\u0010\u001b\u001a\u00020\nHÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003JE\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\"HÖ\u0001J\t\u0010#\u001a\u00020$HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0010¨\u0006%"}, d2 = {"Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;", "", "cpuLoadPct", "", "freeRamMb", "", "zramUsedMb", "zone", "Lcom/cgs/atvobserver/adaptive/AdaptiveZone;", "targetOperatingMode", "Lcom/cgs/atvobserver/ai/AppOperatingMode;", "smoothedModeAlpha", "(FJJLcom/cgs/atvobserver/adaptive/AdaptiveZone;Lcom/cgs/atvobserver/ai/AppOperatingMode;F)V", "getCpuLoadPct", "()F", "getFreeRamMb", "()J", "getSmoothedModeAlpha", "getTargetOperatingMode", "()Lcom/cgs/atvobserver/ai/AppOperatingMode;", "getZone", "()Lcom/cgs/atvobserver/adaptive/AdaptiveZone;", "getZramUsedMb", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "", "toString", "", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class AdaptiveStatus {
    public static final int $stable = 0;
    private final float cpuLoadPct;
    private final long freeRamMb;
    private final float smoothedModeAlpha;
    private final AppOperatingMode targetOperatingMode;
    private final AdaptiveZone zone;
    private final long zramUsedMb;

    public AdaptiveStatus() {
        this(0.0f, 0L, 0L, null, null, 0.0f, 63, null);
    }

    /* renamed from: component1, reason: from getter */
    public final float getCpuLoadPct() {
        return this.cpuLoadPct;
    }

    /* renamed from: component2, reason: from getter */
    public final long getFreeRamMb() {
        return this.freeRamMb;
    }

    /* renamed from: component3, reason: from getter */
    public final long getZramUsedMb() {
        return this.zramUsedMb;
    }

    /* renamed from: component4, reason: from getter */
    public final AdaptiveZone getZone() {
        return this.zone;
    }

    /* renamed from: component5, reason: from getter */
    public final AppOperatingMode getTargetOperatingMode() {
        return this.targetOperatingMode;
    }

    /* renamed from: component6, reason: from getter */
    public final float getSmoothedModeAlpha() {
        return this.smoothedModeAlpha;
    }

    public final AdaptiveStatus copy(float cpuLoadPct, long freeRamMb, long zramUsedMb, AdaptiveZone zone, AppOperatingMode targetOperatingMode, float smoothedModeAlpha) {
        Intrinsics.checkNotNullParameter(zone, "zone");
        Intrinsics.checkNotNullParameter(targetOperatingMode, "targetOperatingMode");
        return new AdaptiveStatus(cpuLoadPct, freeRamMb, zramUsedMb, zone, targetOperatingMode, smoothedModeAlpha);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AdaptiveStatus)) {
            return false;
        }
        AdaptiveStatus adaptiveStatus = (AdaptiveStatus) other;
        return Float.compare(this.cpuLoadPct, adaptiveStatus.cpuLoadPct) == 0 && this.freeRamMb == adaptiveStatus.freeRamMb && this.zramUsedMb == adaptiveStatus.zramUsedMb && this.zone == adaptiveStatus.zone && this.targetOperatingMode == adaptiveStatus.targetOperatingMode && Float.compare(this.smoothedModeAlpha, adaptiveStatus.smoothedModeAlpha) == 0;
    }

    public int hashCode() {
        return (((((((((Float.hashCode(this.cpuLoadPct) * 31) + Long.hashCode(this.freeRamMb)) * 31) + Long.hashCode(this.zramUsedMb)) * 31) + this.zone.hashCode()) * 31) + this.targetOperatingMode.hashCode()) * 31) + Float.hashCode(this.smoothedModeAlpha);
    }

    public String toString() {
        return "AdaptiveStatus(cpuLoadPct=" + this.cpuLoadPct + ", freeRamMb=" + this.freeRamMb + ", zramUsedMb=" + this.zramUsedMb + ", zone=" + this.zone + ", targetOperatingMode=" + this.targetOperatingMode + ", smoothedModeAlpha=" + this.smoothedModeAlpha + ")";
    }

    public AdaptiveStatus(float cpuLoadPct, long freeRamMb, long zramUsedMb, AdaptiveZone zone, AppOperatingMode targetOperatingMode, float smoothedModeAlpha) {
        Intrinsics.checkNotNullParameter(zone, "zone");
        Intrinsics.checkNotNullParameter(targetOperatingMode, "targetOperatingMode");
        this.cpuLoadPct = cpuLoadPct;
        this.freeRamMb = freeRamMb;
        this.zramUsedMb = zramUsedMb;
        this.zone = zone;
        this.targetOperatingMode = targetOperatingMode;
        this.smoothedModeAlpha = smoothedModeAlpha;
    }

    public /* synthetic */ AdaptiveStatus(float f, long j, long j2, AdaptiveZone adaptiveZone, AppOperatingMode appOperatingMode, float f2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0.0f : f, (i & 2) != 0 ? 400L : j, (i & 4) != 0 ? 0L : j2, (i & 8) != 0 ? AdaptiveZone.NOMINAL : adaptiveZone, (i & 16) != 0 ? AppOperatingMode.STANDARD_MODE : appOperatingMode, (i & 32) != 0 ? 1.0f : f2);
    }

    public final float getCpuLoadPct() {
        return this.cpuLoadPct;
    }

    public final long getFreeRamMb() {
        return this.freeRamMb;
    }

    public final long getZramUsedMb() {
        return this.zramUsedMb;
    }

    public final AdaptiveZone getZone() {
        return this.zone;
    }

    public final AppOperatingMode getTargetOperatingMode() {
        return this.targetOperatingMode;
    }

    public final float getSmoothedModeAlpha() {
        return this.smoothedModeAlpha;
    }
}
