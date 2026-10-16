package com.cgs.atvobserver.wear;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: SmartwatchSensorReceiver.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\n"}, d2 = {"Lcom/cgs/atvobserver/wear/SmartwatchSensorReceiver;", "Landroid/content/BroadcastReceiver;", "()V", "onReceive", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "Companion", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes8.dex */
public final class SmartwatchSensorReceiver extends BroadcastReceiver {
    public static final int $stable = 0;
    public static final String ACTION_WATCH_SENSOR_EVENT = "com.cgs.atvobserver.WATCH_SENSOR_EVENT";

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final MutableStateFlow<WatchSensorData> _watchData = StateFlowKt.MutableStateFlow(new WatchSensorData(0, 0.0f, false, 0, 15, null));
    private static final StateFlow<WatchSensorData> watchData = FlowKt.asStateFlow(_watchData);

    /* compiled from: SmartwatchSensorReceiver.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0012"}, d2 = {"Lcom/cgs/atvobserver/wear/SmartwatchSensorReceiver$Companion;", "", "()V", "ACTION_WATCH_SENSOR_EVENT", "", "_watchData", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/cgs/atvobserver/wear/WatchSensorData;", "watchData", "Lkotlinx/coroutines/flow/StateFlow;", "getWatchData", "()Lkotlinx/coroutines/flow/StateFlow;", "simulateWatchInput", "", "heartRate", "", "bezelDelta", "", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final StateFlow<WatchSensorData> getWatchData() {
            return SmartwatchSensorReceiver.watchData;
        }

        public final void simulateWatchInput(int heartRate, float bezelDelta) {
            SmartwatchSensorReceiver._watchData.setValue(new WatchSensorData(heartRate, bezelDelta, true, System.currentTimeMillis()));
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (Intrinsics.areEqual(intent != null ? intent.getAction() : null, ACTION_WATCH_SENSOR_EVENT)) {
            int hr = intent.getIntExtra("heart_rate", 72);
            float bezel = intent.getFloatExtra("bezel_delta", 0.0f);
            _watchData.setValue(new WatchSensorData(hr, bezel, true, System.currentTimeMillis()));
        }
    }
}
