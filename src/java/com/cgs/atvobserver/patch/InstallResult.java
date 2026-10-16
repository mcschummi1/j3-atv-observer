package com.cgs.atvobserver.patch;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInstaller;
import android.os.Build;

/** Explicit, non-exported receiver; mutable PackageInstaller callback survives Activity/process recreation. */
public final class InstallResult extends BroadcastReceiver {
    static final String ACTION = "com.cgs.atvobserver.patch.INSTALL_STATUS";
    static final String PREFS = "atv_updater";
    static final String RELEASES = "https://github.com/" + ReleaseUpdater.REPO + "/releases";
    static final int WAITING = -1000;
    /** Exact confirmation Intent from the platform (parcelable extras intact); URI copy in prefs is only a fallback. */
    static volatile Intent pendingConfirmation;
    static SharedPreferences prefs(Context c) { return c.getSharedPreferences(PREFS, Context.MODE_PRIVATE); }

    @Override public void onReceive(Context context, Intent intent) {
        SharedPreferences sp = prefs(context);
        int session = intent.getIntExtra(PackageInstaller.EXTRA_SESSION_ID, -1);
        if (!ACTION.equals(intent.getAction()) || session < 0 || session != sp.getInt("session", -2)) return;
        int status = intent.getIntExtra(PackageInstaller.EXTRA_STATUS, PackageInstaller.STATUS_FAILURE);
        String message = intent.getStringExtra(PackageInstaller.EXTRA_STATUS_MESSAGE);
        Intent confirm = intent.getParcelableExtra(Intent.EXTRA_INTENT);
        pendingConfirmation = status == PackageInstaller.STATUS_PENDING_USER_ACTION ? confirm : null;
        // Intent.toUri preserves the platform's explicit confirmation component + primitive session extras.
        // A missing/unparseable confirmation is handled by offering cancellation/retry, never a silent commit.
        sp.edit().putInt("status", status).putString("detail", message == null ? "" : message)
                .putString("confirmation", status == PackageInstaller.STATUS_PENDING_USER_ACTION && confirm != null
                        ? confirm.toUri(Intent.URI_INTENT_SCHEME) : "").commit();
        if (!UpdateActivity.refreshIfVisible()) notifyResult(context, status);
    }

    private static void notifyResult(Context c, int status) {
        // No background Activity launches: if notifications are disabled, the result is retained for the next visit.
        if (Build.VERSION.SDK_INT >= 33 && c.checkSelfPermission("android.permission.POST_NOTIFICATIONS") != 0) return;
        try {
            NotificationManager nm = (NotificationManager) c.getSystemService(Context.NOTIFICATION_SERVICE);
            nm.createNotificationChannel(new NotificationChannel("app_updates", "App updates", NotificationManager.IMPORTANCE_DEFAULT));
            Intent open = new Intent(c, UpdateActivity.class).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TOP);
            PendingIntent pi = PendingIntent.getActivity(c, 4720, open, PendingIntent.FLAG_UPDATE_CURRENT | PendingIntent.FLAG_IMMUTABLE);
            String text = status == PackageInstaller.STATUS_PENDING_USER_ACTION ? "Tap to continue the system installer."
                    : status == PackageInstaller.STATUS_SUCCESS ? "Update installed." : "Installation did not finish. Tap for details.";
            nm.notify(4720, new Notification.Builder(c, "app_updates").setSmallIcon(android.R.drawable.stat_sys_download_done)
                    .setContentTitle("J3 ATV Observer update").setContentText(text).setContentIntent(pi).setAutoCancel(true).build());
        } catch (Exception ignored) { /* Result is still in private preferences. */ }
    }
}
