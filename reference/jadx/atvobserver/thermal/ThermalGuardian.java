package com.cgs.atvobserver.thermal;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: ThermalGuardian.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\f\u001a\u00020\u0007R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/cgs/atvobserver/thermal/ThermalGuardian;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "_thermalStatus", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/cgs/atvobserver/thermal/ThermalStatus;", "thermalStatus", "Lkotlinx/coroutines/flow/StateFlow;", "getThermalStatus", "()Lkotlinx/coroutines/flow/StateFlow;", "checkThermalStatus", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes6.dex */
public final class ThermalGuardian {
    public static final int $stable = 8;
    private final MutableStateFlow<ThermalStatus> _thermalStatus;
    private final Context context;
    private final StateFlow<ThermalStatus> thermalStatus;

    public ThermalGuardian(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this._thermalStatus = StateFlowKt.MutableStateFlow(checkThermalStatus());
        this.thermalStatus = FlowKt.asStateFlow(this._thermalStatus);
    }

    public final StateFlow<ThermalStatus> getThermalStatus() {
        return this.thermalStatus;
    }

    public final ThermalStatus checkThermalStatus() {
        ThermalState state;
        IntentFilter intentFilter = new IntentFilter("android.intent.action.BATTERY_CHANGED");
        Intent batteryIntent = this.context.registerReceiver(null, intentFilter);
        int tempTenthsCelsius = batteryIntent != null ? batteryIntent.getIntExtra("temperature", 250) : 250;
        float tempCelsius = tempTenthsCelsius / 10.0f;
        if (tempCelsius >= 48.0f) {
            state = ThermalState.CRITICAL;
        } else if (tempCelsius >= 42.0f) {
            state = ThermalState.HOT;
        } else if (tempCelsius >= 37.0f) {
            state = ThermalState.WARM;
        } else {
            state = tempCelsius < 20.0f ? ThermalState.COOL : ThermalState.NORMAL;
        }
        ThermalStatus status = new ThermalStatus(tempCelsius, state);
        this._thermalStatus.setValue(status);
        return status;
    }
}
