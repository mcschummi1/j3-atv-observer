package com.cgs.atvobserver.domain;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* compiled from: DeviceProfiler.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/cgs/atvobserver/domain/DevicePerformanceTier;", "", "(Ljava/lang/String;I)V", "OPTIMIZED_LITE_J3", "MID_TIER_A71_ROOTED", "HIGH_PERFORMANCE_RAZR", "FLAGSHIP_S22_EXYNOS", "UNIVERSAL_AUTO_TIER", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes13.dex */
public enum DevicePerformanceTier {
    OPTIMIZED_LITE_J3,
    MID_TIER_A71_ROOTED,
    HIGH_PERFORMANCE_RAZR,
    FLAGSHIP_S22_EXYNOS,
    UNIVERSAL_AUTO_TIER;

    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries($VALUES);

    public static EnumEntries<DevicePerformanceTier> getEntries() {
        return $ENTRIES;
    }
}
