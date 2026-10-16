package com.cgs.atvobserver.domain;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.camera.video.AudioStats;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: DaelimOdometerManager.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\b\u0010\u0012\u001a\u00020\u0007H\u0002J\"\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00112\b\b\u0002\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u0011J\u000e\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u0011R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/cgs/atvobserver/domain/DaelimOdometerManager;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "_odometerState", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/cgs/atvobserver/domain/DaelimOdometerState;", "odometerState", "Lkotlinx/coroutines/flow/StateFlow;", "getOdometerState", "()Lkotlinx/coroutines/flow/StateFlow;", "prefs", "Landroid/content/SharedPreferences;", "addGpsRideDistance", "", "gpsKm", "", "loadOdometerState", "recalibrateWithMechanicalReading", "currentMechanicalKm", "riddenWithoutPhoneIfKnown", "", "unrecordedMilesKm", "setInitialPhysicalOdometer", "km", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes13.dex */
public final class DaelimOdometerManager {
    public static final int $stable = 8;
    private final MutableStateFlow<DaelimOdometerState> _odometerState;
    private final StateFlow<DaelimOdometerState> odometerState;
    private final SharedPreferences prefs;

    public DaelimOdometerManager(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        SharedPreferences sharedPreferences = context.getSharedPreferences("cgs_daelim_odometer", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        this.prefs = sharedPreferences;
        this._odometerState = StateFlowKt.MutableStateFlow(loadOdometerState());
        this.odometerState = FlowKt.asStateFlow(this._odometerState);
    }

    public final StateFlow<DaelimOdometerState> getOdometerState() {
        return this.odometerState;
    }

    private final DaelimOdometerState loadOdometerState() {
        return new DaelimOdometerState(this.prefs.getFloat("initial_physical_km", 18420.0f), this.prefs.getFloat("total_gps_km", 0.0f), this.prefs.getFloat("manual_adj_km", 0.0f), this.prefs.getFloat("correction_factor", 1.0f), this.prefs.getFloat("last_physical_check_km", 18420.0f), this.prefs.getLong("last_check_time", System.currentTimeMillis()));
    }

    public final void setInitialPhysicalOdometer(double km) {
        SharedPreferences.Editor $this$setInitialPhysicalOdometer_u24lambda_u240 = this.prefs.edit();
        $this$setInitialPhysicalOdometer_u24lambda_u240.putFloat("initial_physical_km", (float) km);
        $this$setInitialPhysicalOdometer_u24lambda_u240.putFloat("last_physical_check_km", (float) km);
        $this$setInitialPhysicalOdometer_u24lambda_u240.putFloat("total_gps_km", 0.0f);
        $this$setInitialPhysicalOdometer_u24lambda_u240.putFloat("manual_adj_km", 0.0f);
        $this$setInitialPhysicalOdometer_u24lambda_u240.putFloat("correction_factor", 1.0f);
        $this$setInitialPhysicalOdometer_u24lambda_u240.putLong("last_check_time", System.currentTimeMillis());
        $this$setInitialPhysicalOdometer_u24lambda_u240.apply();
        this._odometerState.setValue(loadOdometerState());
    }

    public final void addGpsRideDistance(double gpsKm) {
        DaelimOdometerState copy;
        DaelimOdometerState current = this._odometerState.getValue();
        double newGpsTotal = current.getTotalGpsKmSinceSetup() + gpsKm;
        this.prefs.edit().putFloat("total_gps_km", (float) newGpsTotal).apply();
        MutableStateFlow<DaelimOdometerState> mutableStateFlow = this._odometerState;
        copy = current.copy((r26 & 1) != 0 ? current.initialPhysicalOdometerKm : AudioStats.AUDIO_AMPLITUDE_NONE, (r26 & 2) != 0 ? current.totalGpsKmSinceSetup : newGpsTotal, (r26 & 4) != 0 ? current.manualAdjustmentKm : AudioStats.AUDIO_AMPLITUDE_NONE, (r26 & 8) != 0 ? current.distanceCorrectionFactor : AudioStats.AUDIO_AMPLITUDE_NONE, (r26 & 16) != 0 ? current.lastPhysicalCheckKm : AudioStats.AUDIO_AMPLITUDE_NONE, (r26 & 32) != 0 ? current.lastCheckTimestamp : 0L);
        mutableStateFlow.setValue(copy);
    }

    public static /* synthetic */ double recalibrateWithMechanicalReading$default(DaelimOdometerManager daelimOdometerManager, double d, boolean z, double d2, int i, Object obj) {
        boolean z2;
        double d3;
        if ((i & 2) == 0) {
            z2 = z;
        } else {
            z2 = false;
        }
        if ((i & 4) == 0) {
            d3 = d2;
        } else {
            d3 = 0.0d;
        }
        return daelimOdometerManager.recalibrateWithMechanicalReading(d, z2, d3);
    }

    public final double recalibrateWithMechanicalReading(double currentMechanicalKm, boolean riddenWithoutPhoneIfKnown, double unrecordedMilesKm) {
        DaelimOdometerState current = this._odometerState.getValue();
        double physicalDeltaKm = currentMechanicalKm - current.getLastPhysicalCheckKm();
        if (physicalDeltaKm <= AudioStats.AUDIO_AMPLITUDE_NONE) {
            return current.getDistanceCorrectionFactor();
        }
        if (riddenWithoutPhoneIfKnown && unrecordedMilesKm > AudioStats.AUDIO_AMPLITUDE_NONE) {
            double newAdj = current.getManualAdjustmentKm() + unrecordedMilesKm;
            this.prefs.edit().putFloat("manual_adj_km", (float) newAdj).apply();
        } else if (!riddenWithoutPhoneIfKnown && current.getTotalGpsKmSinceSetup() > 5.0d) {
            double rawFactor = physicalDeltaKm / (current.getTotalGpsKmSinceSetup() * current.getDistanceCorrectionFactor());
            double smoothFactor = (current.getDistanceCorrectionFactor() * 0.8d) + (0.2d * rawFactor);
            double clampedFactor = RangesKt.coerceIn(smoothFactor, 0.85d, 1.15d);
            this.prefs.edit().putFloat("correction_factor", (float) clampedFactor).apply();
        }
        SharedPreferences.Editor $this$recalibrateWithMechanicalReading_u24lambda_u241 = this.prefs.edit();
        $this$recalibrateWithMechanicalReading_u24lambda_u241.putFloat("last_physical_check_km", (float) currentMechanicalKm);
        $this$recalibrateWithMechanicalReading_u24lambda_u241.putLong("last_check_time", System.currentTimeMillis());
        $this$recalibrateWithMechanicalReading_u24lambda_u241.apply();
        this._odometerState.setValue(loadOdometerState());
        return this._odometerState.getValue().getDistanceCorrectionFactor();
    }
}
