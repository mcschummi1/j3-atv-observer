package com.cgs.atvobserver.wear;

import android.content.Context;
import android.content.Intent;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SamsungHealthBridge.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\n"}, d2 = {"Lcom/cgs/atvobserver/wear/SamsungHealthBridge;", "", "()V", "startSamsungHealthWorkoutSession", "", "context", "Landroid/content/Context;", "vehicleName", "", "stopSamsungHealthWorkoutSession", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes8.dex */
public final class SamsungHealthBridge {
    public static final int $stable = 0;
    public static final SamsungHealthBridge INSTANCE = new SamsungHealthBridge();

    private SamsungHealthBridge() {
    }

    public final void startSamsungHealthWorkoutSession(Context context, String vehicleName) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(vehicleName, "vehicleName");
        try {
            Intent intent = new Intent("com.sec.android.app.shealth.ACTION_TRACKER_START");
            intent.putExtra("com.sec.android.app.shealth.tracker.EXERCISE_TYPE", 100);
            intent.putExtra("com.sec.android.app.shealth.tracker.TITLE", "CGS " + vehicleName + " Observer Ride");
            intent.addFlags(268435456);
            context.startActivity(intent);
        } catch (Exception e) {
        }
    }

    public final void stopSamsungHealthWorkoutSession(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Intent intent = new Intent("com.sec.android.app.shealth.ACTION_TRACKER_STOP");
            intent.addFlags(268435456);
            context.startActivity(intent);
        } catch (Exception e) {
        }
    }
}
