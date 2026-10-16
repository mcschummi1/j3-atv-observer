package com.cgs.atvobserver.data.config;

import com.cgs.atvobserver.data.model.VehicleType;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.scheduling.WorkQueueKt;

/* compiled from: AppConfigManager.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BW\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u0005\u0012\u0014\b\u0002\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\r0\f¢\u0006\u0002\u0010\u000eJ\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001e\u001a\u00020\tHÆ\u0003J\t\u0010\u001f\u001a\u00020\u0005HÆ\u0003J\u0015\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\r0\fHÆ\u0003J[\u0010!\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u00052\u0014\b\u0002\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\r0\fHÆ\u0001J\u0013\u0010\"\u001a\u00020\u00052\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010$\u001a\u00020%HÖ\u0001J\t\u0010&\u001a\u00020\tHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\n\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0012R\u001d\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\r0\f¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0012¨\u0006'"}, d2 = {"Lcom/cgs/atvobserver/data/config/AppConfig;", "", "activeVehicle", "Lcom/cgs/atvobserver/data/model/VehicleType;", "voiceAssistantEnabled", "", "speakStatusAutoOnStart", "useMetricUnits", "startupScreen", "", "temperatureMonitoringEnabled", "vehicleConfigs", "", "Lcom/cgs/atvobserver/data/config/VehicleSpecificConfig;", "(Lcom/cgs/atvobserver/data/model/VehicleType;ZZZLjava/lang/String;ZLjava/util/Map;)V", "getActiveVehicle", "()Lcom/cgs/atvobserver/data/model/VehicleType;", "getSpeakStatusAutoOnStart", "()Z", "getStartupScreen", "()Ljava/lang/String;", "getTemperatureMonitoringEnabled", "getUseMetricUnits", "getVehicleConfigs", "()Ljava/util/Map;", "getVoiceAssistantEnabled", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "other", "hashCode", "", "toString", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes5.dex */
public final /* data */ class AppConfig {
    public static final int $stable = 8;
    private final VehicleType activeVehicle;
    private final boolean speakStatusAutoOnStart;
    private final String startupScreen;
    private final boolean temperatureMonitoringEnabled;
    private final boolean useMetricUnits;
    private final Map<VehicleType, VehicleSpecificConfig> vehicleConfigs;
    private final boolean voiceAssistantEnabled;

    public AppConfig() {
        this(null, false, false, false, null, false, null, WorkQueueKt.MASK, null);
    }

    public static /* synthetic */ AppConfig copy$default(AppConfig appConfig, VehicleType vehicleType, boolean z, boolean z2, boolean z3, String str, boolean z4, Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            vehicleType = appConfig.activeVehicle;
        }
        if ((i & 2) != 0) {
            z = appConfig.voiceAssistantEnabled;
        }
        boolean z5 = z;
        if ((i & 4) != 0) {
            z2 = appConfig.speakStatusAutoOnStart;
        }
        boolean z6 = z2;
        if ((i & 8) != 0) {
            z3 = appConfig.useMetricUnits;
        }
        boolean z7 = z3;
        if ((i & 16) != 0) {
            str = appConfig.startupScreen;
        }
        String str2 = str;
        if ((i & 32) != 0) {
            z4 = appConfig.temperatureMonitoringEnabled;
        }
        boolean z8 = z4;
        if ((i & 64) != 0) {
            map = appConfig.vehicleConfigs;
        }
        return appConfig.copy(vehicleType, z5, z6, z7, str2, z8, map);
    }

    /* renamed from: component1, reason: from getter */
    public final VehicleType getActiveVehicle() {
        return this.activeVehicle;
    }

    /* renamed from: component2, reason: from getter */
    public final boolean getVoiceAssistantEnabled() {
        return this.voiceAssistantEnabled;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getSpeakStatusAutoOnStart() {
        return this.speakStatusAutoOnStart;
    }

    /* renamed from: component4, reason: from getter */
    public final boolean getUseMetricUnits() {
        return this.useMetricUnits;
    }

    /* renamed from: component5, reason: from getter */
    public final String getStartupScreen() {
        return this.startupScreen;
    }

    /* renamed from: component6, reason: from getter */
    public final boolean getTemperatureMonitoringEnabled() {
        return this.temperatureMonitoringEnabled;
    }

    public final Map<VehicleType, VehicleSpecificConfig> component7() {
        return this.vehicleConfigs;
    }

    public final AppConfig copy(VehicleType activeVehicle, boolean voiceAssistantEnabled, boolean speakStatusAutoOnStart, boolean useMetricUnits, String startupScreen, boolean temperatureMonitoringEnabled, Map<VehicleType, VehicleSpecificConfig> vehicleConfigs) {
        Intrinsics.checkNotNullParameter(activeVehicle, "activeVehicle");
        Intrinsics.checkNotNullParameter(startupScreen, "startupScreen");
        Intrinsics.checkNotNullParameter(vehicleConfigs, "vehicleConfigs");
        return new AppConfig(activeVehicle, voiceAssistantEnabled, speakStatusAutoOnStart, useMetricUnits, startupScreen, temperatureMonitoringEnabled, vehicleConfigs);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AppConfig)) {
            return false;
        }
        AppConfig appConfig = (AppConfig) other;
        return this.activeVehicle == appConfig.activeVehicle && this.voiceAssistantEnabled == appConfig.voiceAssistantEnabled && this.speakStatusAutoOnStart == appConfig.speakStatusAutoOnStart && this.useMetricUnits == appConfig.useMetricUnits && Intrinsics.areEqual(this.startupScreen, appConfig.startupScreen) && this.temperatureMonitoringEnabled == appConfig.temperatureMonitoringEnabled && Intrinsics.areEqual(this.vehicleConfigs, appConfig.vehicleConfigs);
    }

    public int hashCode() {
        return (((((((((((this.activeVehicle.hashCode() * 31) + Boolean.hashCode(this.voiceAssistantEnabled)) * 31) + Boolean.hashCode(this.speakStatusAutoOnStart)) * 31) + Boolean.hashCode(this.useMetricUnits)) * 31) + this.startupScreen.hashCode()) * 31) + Boolean.hashCode(this.temperatureMonitoringEnabled)) * 31) + this.vehicleConfigs.hashCode();
    }

    public String toString() {
        return "AppConfig(activeVehicle=" + this.activeVehicle + ", voiceAssistantEnabled=" + this.voiceAssistantEnabled + ", speakStatusAutoOnStart=" + this.speakStatusAutoOnStart + ", useMetricUnits=" + this.useMetricUnits + ", startupScreen=" + this.startupScreen + ", temperatureMonitoringEnabled=" + this.temperatureMonitoringEnabled + ", vehicleConfigs=" + this.vehicleConfigs + ")";
    }

    public AppConfig(VehicleType activeVehicle, boolean voiceAssistantEnabled, boolean speakStatusAutoOnStart, boolean useMetricUnits, String startupScreen, boolean temperatureMonitoringEnabled, Map<VehicleType, VehicleSpecificConfig> vehicleConfigs) {
        Intrinsics.checkNotNullParameter(activeVehicle, "activeVehicle");
        Intrinsics.checkNotNullParameter(startupScreen, "startupScreen");
        Intrinsics.checkNotNullParameter(vehicleConfigs, "vehicleConfigs");
        this.activeVehicle = activeVehicle;
        this.voiceAssistantEnabled = voiceAssistantEnabled;
        this.speakStatusAutoOnStart = speakStatusAutoOnStart;
        this.useMetricUnits = useMetricUnits;
        this.startupScreen = startupScreen;
        this.temperatureMonitoringEnabled = temperatureMonitoringEnabled;
        this.vehicleConfigs = vehicleConfigs;
    }

    public /* synthetic */ AppConfig(VehicleType vehicleType, boolean z, boolean z2, boolean z3, String str, boolean z4, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? VehicleType.ATV : vehicleType, (i & 2) != 0 ? true : z, (i & 4) != 0 ? false : z2, (i & 8) != 0 ? true : z3, (i & 16) != 0 ? "MAIN_MENU" : str, (i & 32) != 0 ? false : z4, (i & 64) != 0 ? MapsKt.mapOf(TuplesKt.to(VehicleType.ATV, new VehicleSpecificConfig(2.0d, 130.0d, 1380, "Elektra EB10L-BP (11Ah)")), TuplesKt.to(VehicleType.MOTOCROSS, new VehicleSpecificConfig(3.0d, 150.0d, 1600, "None (Kick Start)")), TuplesKt.to(VehicleType.DAELIM, new VehicleSpecificConfig(3.0d, 110.0d, 1400, "Fulbat 8.4Ah AGM")), TuplesKt.to(VehicleType.APP_TEST, new VehicleSpecificConfig(2.0d, 115.0d, 1380, "Sandbox Battery"))) : map);
    }

    public final VehicleType getActiveVehicle() {
        return this.activeVehicle;
    }

    public final boolean getVoiceAssistantEnabled() {
        return this.voiceAssistantEnabled;
    }

    public final boolean getSpeakStatusAutoOnStart() {
        return this.speakStatusAutoOnStart;
    }

    public final boolean getUseMetricUnits() {
        return this.useMetricUnits;
    }

    public final String getStartupScreen() {
        return this.startupScreen;
    }

    public final boolean getTemperatureMonitoringEnabled() {
        return this.temperatureMonitoringEnabled;
    }

    public final Map<VehicleType, VehicleSpecificConfig> getVehicleConfigs() {
        return this.vehicleConfigs;
    }
}
