package com.cgs.atvobserver.wear;

import android.content.Context;
import android.content.Intent;
import com.cgs.atvobserver.ai.ObserverAiOutput;
import com.cgs.atvobserver.location.GpsData;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SmartwatchCompanionBridge.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/cgs/atvobserver/wear/SmartwatchCompanionBridge;", "", "()V", "ACTION_WATCH_TELEMETRY_UPDATE", "", "broadcastWristHudUpdate", "", "context", "Landroid/content/Context;", "gpsData", "Lcom/cgs/atvobserver/location/GpsData;", "aiOutput", "Lcom/cgs/atvobserver/ai/ObserverAiOutput;", "fuelRemainingL", "", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes8.dex */
public final class SmartwatchCompanionBridge {
    public static final int $stable = 0;
    public static final String ACTION_WATCH_TELEMETRY_UPDATE = "com.cgs.atvobserver.WATCH_TELEMETRY_UPDATE";
    public static final SmartwatchCompanionBridge INSTANCE = new SmartwatchCompanionBridge();

    private SmartwatchCompanionBridge() {
    }

    public final void broadcastWristHudUpdate(Context context, GpsData gpsData, ObserverAiOutput aiOutput, double fuelRemainingL) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(gpsData, "gpsData");
        Intrinsics.checkNotNullParameter(aiOutput, "aiOutput");
        Intent intent = new Intent(ACTION_WATCH_TELEMETRY_UPDATE);
        intent.putExtra("speed_kmh", (int) gpsData.getCurrentSpeedKmh());
        intent.putExtra("rpm", aiOutput.getFusedRpm());
        intent.putExtra("gear", aiOutput.getEstimatedGear());
        intent.putExtra("fuel_litres", (float) fuelRemainingL);
        intent.putExtra("confidence_pct", aiOutput.getSystemConfidencePct());
        intent.putExtra("ride_state", aiOutput.getRideState().name());
        context.sendBroadcast(intent);
    }
}
