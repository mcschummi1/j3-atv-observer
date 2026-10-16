package com.cgs.atvobserver.patch;

import android.app.Activity;
import android.content.Intent;
import java.lang.ref.WeakReference;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/** Tiny bridge for the main menu's existing version subtitle (patch 04). No start-up network work. */
public final class UpdaterEntry {
    private static WeakReference<Activity> owner = new WeakReference<>(null);
    private static final Function0<Unit> CLICK = new Function0<Unit>() {
        @Override public Unit invoke() {
            Activity activity = owner.get();
            if (activity != null && !activity.isFinishing() && !activity.isDestroyed())
                activity.startActivity(new Intent(activity, UpdateActivity.class));
            return Unit.INSTANCE;
        }
    };
    private UpdaterEntry() { }
    public static void onResume(Activity activity) { owner = new WeakReference<>(activity); }
    public static Function0<Unit> click() { return CLICK; }
    private static String label;
    /** Called from composition: cached, so no PackageManager binder call on every recomposition. */
    public static synchronized String menuLabel() {
        if (label != null) return label;
        Activity activity = owner.get();
        if (activity == null) return "Catalin Garage Standard (CGS) - tap to check for updates";
        try {
            android.content.pm.PackageInfo p = activity.getPackageManager().getPackageInfo(activity.getPackageName(), 0);
            label = "Catalin Garage Standard (CGS) v" + p.versionName + " (Build " + p.getLongVersionCode() + ")\nTap here to check for updates";
            return label;
        } catch (Exception e) { return "Catalin Garage Standard (CGS) - tap to check for updates"; }
    }
}
