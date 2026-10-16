package com.cgs.atvobserver.data.config;

import android.content.Context;
import android.content.SharedPreferences;
import com.cgs.atvobserver.data.model.VehicleType;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.scheduling.WorkQueueKt;

/* compiled from: AppConfigManager.kt */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000e\u001a\u00020\u0007H\u0002J\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0007J\u0016\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0018R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/cgs/atvobserver/data/config/AppConfigManager;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "_configState", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/cgs/atvobserver/data/config/AppConfig;", "configState", "Lkotlinx/coroutines/flow/StateFlow;", "getConfigState", "()Lkotlinx/coroutines/flow/StateFlow;", "prefs", "Landroid/content/SharedPreferences;", "loadConfig", "resetToDefaults", "", "setActiveVehicle", "vehicle", "Lcom/cgs/atvobserver/data/model/VehicleType;", "updateConfig", "newConfig", "updateVehicleConfig", "specificConfig", "Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class AppConfigManager {
    public static final int $stable = 8;
    private final MutableStateFlow<AppConfig> _configState;
    private final StateFlow<AppConfig> configState;
    private final SharedPreferences prefs;

    /* compiled from: AppConfigManager.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[VehicleType.values().length];
            try {
                iArr[VehicleType.DAELIM.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[VehicleType.MOTOCROSS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[VehicleType.ATV.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public AppConfigManager(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        SharedPreferences sharedPreferences = context.getSharedPreferences("cgs_atv_config", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        this.prefs = sharedPreferences;
        this._configState = StateFlowKt.MutableStateFlow(loadConfig());
        this.configState = FlowKt.asStateFlow(this._configState);
    }

    public final StateFlow<AppConfig> getConfigState() {
        return this.configState;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private final AppConfig loadConfig() {
        VehicleType vehicle;
        double defaultTemp;
        String defaultBattery;
        String string = this.prefs.getString("active_vehicle", "ATV");
        String vehicleStr = string != null ? string : "ATV";
        switch (vehicleStr.hashCode()) {
            case -1924979037:
                if (vehicleStr.equals("MOTOCROSS")) {
                    vehicle = VehicleType.MOTOCROSS;
                    break;
                }
                vehicle = VehicleType.ATV;
                break;
            case 1980010512:
                if (vehicleStr.equals("APP_TEST")) {
                    vehicle = VehicleType.APP_TEST;
                    break;
                }
                vehicle = VehicleType.ATV;
                break;
            case 2008942088:
                if (vehicleStr.equals("DAELIM")) {
                    vehicle = VehicleType.DAELIM;
                    break;
                }
                vehicle = VehicleType.ATV;
                break;
            default:
                vehicle = VehicleType.ATV;
                break;
        }
        Map configs = new LinkedHashMap();
        Iterator it = VehicleType.getEntries().iterator();
        while (it.hasNext()) {
            VehicleType v = (VehicleType) it.next();
            String prefix = v.name().toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(prefix, "toLowerCase(...)");
            double d = 3.0d;
            switch (WhenMappings.$EnumSwitchMapping$0[v.ordinal()]) {
                case 1:
                case 2:
                    break;
                default:
                    d = 2.0d;
                    break;
            }
            double defaultTank = d;
            switch (WhenMappings.$EnumSwitchMapping$0[v.ordinal()]) {
                case 1:
                    defaultTemp = 110.0d;
                    break;
                case 2:
                    defaultTemp = 150.0d;
                    break;
                case 3:
                    defaultTemp = 130.0d;
                    break;
                default:
                    defaultTemp = 115.0d;
                    break;
            }
            switch (WhenMappings.$EnumSwitchMapping$0[v.ordinal()]) {
                case 1:
                    defaultBattery = "Fulbat 8.4Ah AGM";
                    break;
                case 2:
                    defaultBattery = "None (Kick Start)";
                    break;
                default:
                    defaultBattery = "Elektra EB10L-BP (11Ah)";
                    break;
            }
            double d2 = this.prefs.getFloat(prefix + "_tank", (float) defaultTank);
            String vehicleStr2 = vehicleStr;
            Iterator it2 = it;
            double defaultTank2 = this.prefs.getFloat(prefix + "_temp", (float) defaultTemp);
            int i = this.prefs.getInt(prefix + "_rpm", 1380);
            String string2 = this.prefs.getString(prefix + "_batt", defaultBattery);
            configs.put(v, new VehicleSpecificConfig(d2, defaultTank2, i, string2 == null ? defaultBattery : string2));
            vehicleStr = vehicleStr2;
            it = it2;
        }
        boolean z = this.prefs.getBoolean("voice_enabled", true);
        boolean z2 = this.prefs.getBoolean("speak_auto_start", false);
        boolean z3 = this.prefs.getBoolean("use_metric", true);
        String string3 = this.prefs.getString("startup_screen", "MAIN_MENU");
        return new AppConfig(vehicle, z, z2, z3, string3 != null ? string3 : "MAIN_MENU", this.prefs.getBoolean("temp_monitoring_enabled", false), configs);
    }

    public final void updateVehicleConfig(VehicleType vehicle, VehicleSpecificConfig specificConfig) {
        Intrinsics.checkNotNullParameter(vehicle, "vehicle");
        Intrinsics.checkNotNullParameter(specificConfig, "specificConfig");
        String prefix = vehicle.name().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(prefix, "toLowerCase(...)");
        SharedPreferences.Editor $this$updateVehicleConfig_u24lambda_u240 = this.prefs.edit();
        $this$updateVehicleConfig_u24lambda_u240.putFloat(prefix + "_tank", (float) specificConfig.getTankCapacityL());
        $this$updateVehicleConfig_u24lambda_u240.putFloat(prefix + "_temp", (float) specificConfig.getCriticalTempC());
        $this$updateVehicleConfig_u24lambda_u240.putInt(prefix + "_rpm", specificConfig.getTargetIdleRpm());
        $this$updateVehicleConfig_u24lambda_u240.putString(prefix + "_batt", specificConfig.getAssignedBattery());
        $this$updateVehicleConfig_u24lambda_u240.apply();
        Map currentConfigs = MapsKt.toMutableMap(this._configState.getValue().getVehicleConfigs());
        currentConfigs.put(vehicle, specificConfig);
        this._configState.setValue(AppConfig.copy$default(this._configState.getValue(), null, false, false, false, null, false, currentConfigs, 63, null));
    }

    public final void updateConfig(AppConfig newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        SharedPreferences.Editor $this$updateConfig_u24lambda_u241 = this.prefs.edit();
        $this$updateConfig_u24lambda_u241.putString("active_vehicle", newConfig.getActiveVehicle().name());
        $this$updateConfig_u24lambda_u241.putBoolean("voice_enabled", newConfig.getVoiceAssistantEnabled());
        $this$updateConfig_u24lambda_u241.putBoolean("speak_auto_start", newConfig.getSpeakStatusAutoOnStart());
        $this$updateConfig_u24lambda_u241.putBoolean("use_metric", newConfig.getUseMetricUnits());
        $this$updateConfig_u24lambda_u241.putString("startup_screen", newConfig.getStartupScreen());
        $this$updateConfig_u24lambda_u241.putBoolean("temp_monitoring_enabled", newConfig.getTemperatureMonitoringEnabled());
        $this$updateConfig_u24lambda_u241.apply();
        this._configState.setValue(newConfig);
    }

    public final void setActiveVehicle(VehicleType vehicle) {
        Intrinsics.checkNotNullParameter(vehicle, "vehicle");
        this.prefs.edit().putString("active_vehicle", vehicle.name()).apply();
        this._configState.setValue(AppConfig.copy$default(this._configState.getValue(), vehicle, false, false, false, null, false, null, 126, null));
    }

    public final void resetToDefaults() {
        this.prefs.edit().clear().apply();
        this._configState.setValue(new AppConfig(null, false, false, false, null, false, null, WorkQueueKt.MASK, null));
    }
}
