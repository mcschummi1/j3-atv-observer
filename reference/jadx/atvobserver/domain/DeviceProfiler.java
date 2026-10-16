package com.cgs.atvobserver.domain;

import android.content.Context;
import android.os.Build;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* compiled from: DeviceProfiler.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/cgs/atvobserver/domain/DeviceProfiler;", "", "()V", "getDeviceProfile", "Lcom/cgs/atvobserver/domain/DeviceProfileConfig;", "context", "Landroid/content/Context;", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes13.dex */
public final class DeviceProfiler {
    public static final int $stable = 0;
    public static final DeviceProfiler INSTANCE = new DeviceProfiler();

    private DeviceProfiler() {
    }

    public final DeviceProfileConfig getDeviceProfile(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        String model = Build.MODEL;
        if (model == null) {
            model = "";
        }
        int maxMemoryMb = (int) (Runtime.getRuntime().maxMemory() / 1048576);
        int cpuCores = Runtime.getRuntime().availableProcessors();
        if (StringsKt.contains((CharSequence) model, (CharSequence) "J330", true) || StringsKt.contains((CharSequence) model, (CharSequence) "SM-J3", true)) {
            return new DeviceProfileConfig(DevicePerformanceTier.OPTIMIZED_LITE_J3, 1024, 3, "LITE_HEURISTIC_INT8", false, "Samsung Galaxy J3 (1.0 GB RAM Limit)", false, 64, null);
        }
        if (StringsKt.contains((CharSequence) model, (CharSequence) "A71", true) || StringsKt.contains((CharSequence) model, (CharSequence) "SM-A715", true)) {
            return new DeviceProfileConfig(DevicePerformanceTier.MID_TIER_A71_ROOTED, 2048, 2, "STANDARD_DNN_FP16_ROOTED", true, "Samsung Galaxy A71 (Rooted Mid Tier)", true);
        }
        if (StringsKt.contains((CharSequence) model, (CharSequence) "Razr 40", true) || StringsKt.contains((CharSequence) model, (CharSequence) "SM7450", true)) {
            return new DeviceProfileConfig(DevicePerformanceTier.HIGH_PERFORMANCE_RAZR, 6144, 1, "HIGH_ACCURACY_DNN_FP16", true, "Motorola Razr 40 (High Tier)", false, 64, null);
        }
        if (StringsKt.contains((CharSequence) model, (CharSequence) "S22", true) || StringsKt.contains((CharSequence) model, (CharSequence) "SM-S901", true) || StringsKt.contains((CharSequence) model, (CharSequence) "SM-S906", true)) {
            return new DeviceProfileConfig(DevicePerformanceTier.FLAGSHIP_S22_EXYNOS, 8192, 1, "MAX_PRECISION_EXYNOS_VULKAN_FP32", true, "Samsung Galaxy S22 (Exynos 2200 Flagship)", false, 64, null);
        }
        if (maxMemoryMb >= 1024 && cpuCores >= 8) {
            return new DeviceProfileConfig(DevicePerformanceTier.UNIVERSAL_AUTO_TIER, RangesKt.coerceAtMost((int) (maxMemoryMb * 0.6d), 6144), 1, "UNIVERSAL_HIGH_PRECISION", true, "Universal High-End Device (" + cpuCores + " Cores)", false, 64, null);
        }
        if (maxMemoryMb >= 512 && cpuCores >= 4) {
            return new DeviceProfileConfig(DevicePerformanceTier.UNIVERSAL_AUTO_TIER, RangesKt.coerceAtMost((int) (maxMemoryMb * 0.5d), 2048), 2, "UNIVERSAL_MID_PRECISION", true, "Universal Mid-Range Device (" + cpuCores + " Cores)", false, 64, null);
        }
        return new DeviceProfileConfig(DevicePerformanceTier.UNIVERSAL_AUTO_TIER, 512, 4, "UNIVERSAL_LITE_PRECISION", false, "Universal Lite Device (" + cpuCores + " Cores)", false, 64, null);
    }
}
