package com.cgs.atvobserver.adaptive;

import android.app.ActivityManager;
import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.cgs.atvobserver.ai.AppOperatingMode;
import java.io.RandomAccessFile;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: AdaptiveEngine.kt */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0015\u001a\u00020\u0016H\u0002J\b\u0010\u0017\u001a\u00020\tH\u0002J\u0014\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u0019H\u0002J\u000e\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u001cJ\u0006\u0010\u001d\u001a\u00020\u0016R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00070\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u001e"}, d2 = {"Lcom/cgs/atvobserver/adaptive/AdaptiveEngine;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "_status", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/cgs/atvobserver/adaptive/AdaptiveStatus;", "currentAlpha", "", "lastCpuTotalTime", "", "lastCpuWorkTime", "monitoringJob", "Lkotlinx/coroutines/Job;", "panicCounter", "", NotificationCompat.CATEGORY_STATUS, "Lkotlinx/coroutines/flow/StateFlow;", "getStatus", "()Lkotlinx/coroutines/flow/StateFlow;", "measureSystemMetrics", "", "readCpuLoadPct", "readRamAndZram", "Lkotlin/Pair;", "startAdaptiveMonitoring", "scope", "Lkotlinx/coroutines/CoroutineScope;", "stopAdaptiveMonitoring", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class AdaptiveEngine {
    public static final int $stable = 8;
    private final MutableStateFlow<AdaptiveStatus> _status;
    private final Context context;
    private float currentAlpha;
    private long lastCpuTotalTime;
    private long lastCpuWorkTime;
    private Job monitoringJob;
    private int panicCounter;
    private final StateFlow<AdaptiveStatus> status;

    /* compiled from: AdaptiveEngine.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[AdaptiveZone.values().length];
            try {
                iArr[AdaptiveZone.PANIC.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[AdaptiveZone.CRITICAL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[AdaptiveZone.PRESSURE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[AdaptiveZone.NOMINAL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                iArr[AdaptiveZone.COMFORT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[AppOperatingMode.values().length];
            try {
                iArr2[AppOperatingMode.SAFE_MODE.ordinal()] = 1;
            } catch (NoSuchFieldError e6) {
            }
            try {
                iArr2[AppOperatingMode.BASIC_MODE.ordinal()] = 2;
            } catch (NoSuchFieldError e7) {
            }
            try {
                iArr2[AppOperatingMode.STANDARD_MODE.ordinal()] = 3;
            } catch (NoSuchFieldError e8) {
            }
            try {
                iArr2[AppOperatingMode.MAXIMUM_MODE.ordinal()] = 4;
            } catch (NoSuchFieldError e9) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public AdaptiveEngine(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this._status = StateFlowKt.MutableStateFlow(new AdaptiveStatus(0.0f, 0L, 0L, null, null, 0.0f, 63, null));
        this.status = FlowKt.asStateFlow(this._status);
        this.currentAlpha = 1.0f;
    }

    public final StateFlow<AdaptiveStatus> getStatus() {
        return this.status;
    }

    public final void startAdaptiveMonitoring(CoroutineScope scope) {
        Job launch$default;
        Intrinsics.checkNotNullParameter(scope, "scope");
        if (this.monitoringJob != null) {
            return;
        }
        launch$default = BuildersKt__Builders_commonKt.launch$default(scope, Dispatchers.getIO(), null, new AdaptiveEngine$startAdaptiveMonitoring$1(this, null), 2, null);
        this.monitoringJob = launch$default;
    }

    public final void stopAdaptiveMonitoring() {
        Job job = this.monitoringJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        this.monitoringJob = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void measureSystemMetrics() {
        AdaptiveZone targetZone;
        AppOperatingMode targetMode;
        float f;
        float cpuLoad = readCpuLoadPct();
        Pair<Long, Long> readRamAndZram = readRamAndZram();
        long freeRamMb = readRamAndZram.component1().longValue();
        long zramMb = readRamAndZram.component2().longValue();
        if (cpuLoad > 95.0f || freeRamMb < 50) {
            this.panicCounter++;
        } else {
            this.panicCounter = Math.max(0, this.panicCounter - 1);
        }
        if (this.panicCounter >= 10 || (cpuLoad > 95.0f && freeRamMb < 50)) {
            targetZone = AdaptiveZone.PANIC;
        } else if (cpuLoad > 85.0f || freeRamMb < 100) {
            targetZone = AdaptiveZone.CRITICAL;
        } else if (cpuLoad > 70.0f || freeRamMb < 200) {
            targetZone = AdaptiveZone.PRESSURE;
        } else {
            targetZone = (cpuLoad >= 50.0f || freeRamMb <= 400) ? AdaptiveZone.NOMINAL : AdaptiveZone.COMFORT;
        }
        switch (WhenMappings.$EnumSwitchMapping$0[targetZone.ordinal()]) {
            case 1:
                targetMode = AppOperatingMode.SAFE_MODE;
                break;
            case 2:
                targetMode = AppOperatingMode.BASIC_MODE;
                break;
            case 3:
                targetMode = AppOperatingMode.STANDARD_MODE;
                break;
            case 4:
                targetMode = AppOperatingMode.STANDARD_MODE;
                break;
            case 5:
                targetMode = AppOperatingMode.MAXIMUM_MODE;
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        switch (WhenMappings.$EnumSwitchMapping$1[targetMode.ordinal()]) {
            case 1:
                f = 0.1f;
                break;
            case 2:
                f = 0.35f;
                break;
            case 3:
                f = 0.7f;
                break;
            case 4:
                f = 1.0f;
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        float targetAlpha = f;
        this.currentAlpha = (this.currentAlpha * 0.85f) + (0.15f * targetAlpha);
        this._status.setValue(new AdaptiveStatus(cpuLoad, freeRamMb, zramMb, targetZone, targetMode, this.currentAlpha));
    }

    private final float readCpuLoadPct() {
        try {
            RandomAccessFile reader = new RandomAccessFile("/proc/stat", "r");
            String line = reader.readLine();
            if (line == null) {
                line = "";
            }
            reader.close();
            List tokens = new Regex("\\s+").split(line, 0);
            if (tokens.size() < 8) {
                return 35.0f;
            }
            long user = Long.parseLong(tokens.get(1));
            long nice = Long.parseLong(tokens.get(2));
            long system = Long.parseLong(tokens.get(3));
            long idle = Long.parseLong(tokens.get(4));
            long iowait = Long.parseLong(tokens.get(5));
            long irq = Long.parseLong(tokens.get(6));
            long softirq = Long.parseLong(tokens.get(7));
            long work = user + nice + system + irq + softirq;
            long total = work + idle + iowait;
            long workDiff = work - this.lastCpuWorkTime;
            long totalDiff = total - this.lastCpuTotalTime;
            this.lastCpuWorkTime = work;
            this.lastCpuTotalTime = total;
            if (totalDiff > 0) {
                return RangesKt.coerceIn((workDiff / totalDiff) * 100.0f, 0.0f, 100.0f);
            }
            return 35.0f;
        } catch (Exception e) {
            return 35.0f;
        }
    }

    private final Pair<Long, Long> readRamAndZram() {
        long zramMb;
        ActivityManager.MemoryInfo mi;
        ActivityManager activityManager;
        long zramMb2;
        try {
            ActivityManager.MemoryInfo mi2 = new ActivityManager.MemoryInfo();
            Object systemService = this.context.getSystemService("activity");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
            ActivityManager activityManager2 = (ActivityManager) systemService;
            activityManager2.getMemoryInfo(mi2);
            long freeMb = mi2.availMem / 1048576;
            long zramMb3 = 0;
            RandomAccessFile memInfoReader = new RandomAccessFile("/proc/meminfo", "r");
            long swapTotal = 0;
            long swapFree = 0;
            while (true) {
                String it = memInfoReader.readLine();
                if (it == null) {
                    break;
                }
                if (it == null) {
                    mi = mi2;
                    activityManager = activityManager2;
                    zramMb2 = zramMb3;
                } else {
                    mi = mi2;
                    if (!StringsKt.startsWith$default(it, "SwapTotal:", false, 2, (Object) null)) {
                        activityManager = activityManager2;
                        zramMb2 = zramMb3;
                        if (StringsKt.startsWith$default(it, "SwapFree:", false, 2, (Object) null)) {
                            Long longOrNull = StringsKt.toLongOrNull(new Regex("[^0-9]").replace(it, ""));
                            swapFree = longOrNull != null ? longOrNull.longValue() : 0L;
                            mi2 = mi;
                            zramMb3 = zramMb2;
                            activityManager2 = activityManager;
                        }
                    } else {
                        Long longOrNull2 = StringsKt.toLongOrNull(new Regex("[^0-9]").replace(it, ""));
                        swapTotal = longOrNull2 != null ? longOrNull2.longValue() : 0L;
                        mi2 = mi;
                    }
                }
                mi2 = mi;
                zramMb3 = zramMb2;
                activityManager2 = activityManager;
            }
            long zramMb4 = zramMb3;
            memInfoReader.close();
            if (swapTotal <= 0) {
                zramMb = zramMb4;
            } else {
                zramMb = (swapTotal - swapFree) / 1024;
            }
            return new Pair<>(Long.valueOf(freeMb), Long.valueOf(zramMb));
        } catch (Exception e) {
            return new Pair<>(350L, 0L);
        }
    }
}
