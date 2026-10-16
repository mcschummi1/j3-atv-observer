package com.cgs.atvobserver.service

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.app.Service
import android.content.Context
import android.content.Intent
import android.os.IBinder
import android.util.Log
import com.cgs.atvobserver.MainActivity
import com.cgs.atvobserver.recording.ObserverCompat
import com.cgs.atvobserver.recording.PocketRecorder
import com.cgs.atvobserver.recording.Telemetry

/**
 * Same component name as the original service. Typed FGS (location|microphone, whatever is
 * granted), owns the telemetry sources and the ride journal, so recording continues with the
 * screen off / Activity destroyed. Ride start/stop arrive as intent actions from the dashboard.
 */
class ObserverForegroundService : Service() {
    override fun onBind(intent: Intent?): IBinder? = null

    override fun onCreate() {
        super.onCreate()
        PocketRecorder.start(applicationContext)
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        val types = ObserverCompat.startForegroundCompat(this, NOTIFICATION_ID, notification(intent?.action))
        PocketRecorder.noteForegroundTypes(types)
        val tel = Telemetry.get(this)
        tel.startGps()
        tel.ensureAudio()
        when (intent?.action) {
            ACTION_START_RIDE -> PocketRecorder.beginRide(intent.getStringExtra(EXTRA_MODE) ?: "TRIP")
            ACTION_STOP_RIDE -> PocketRecorder.endRide("user-stop")
        }
        return START_STICKY
    }

    override fun onDestroy() {
        PocketRecorder.stop()
        Telemetry.get(this).apply { stopAudio(); stopGps() }
        super.onDestroy()
    }

    private fun notification(action: String?): Notification {
        val nm = getSystemService(NotificationManager::class.java)
        if (nm.getNotificationChannel(CHANNEL) == null) {
            nm.createNotificationChannel(NotificationChannel(CHANNEL, "Ride recording", NotificationManager.IMPORTANCE_LOW))
        }
        val pi = PendingIntent.getActivity(this, 0, Intent(this, MainActivity::class.java), PendingIntent.FLAG_IMMUTABLE)
        val text = if (action == ACTION_START_RIDE || PocketRecorder.isSessionActive()) "Recording ride" else "Observer active"
        return Notification.Builder(this, CHANNEL)
            .setContentTitle("CGS Vehicle Observer")
            .setContentText(text)
            .setSmallIcon(android.R.drawable.ic_menu_mylocation)
            .setContentIntent(pi)
            .setOngoing(true)
            .build()
    }

    companion object {
        const val CHANNEL = "cgs_observer"
        const val NOTIFICATION_ID = 1001
        const val ACTION_START_RIDE = "com.cgs.atvobserver.START_RIDE"
        const val ACTION_STOP_RIDE = "com.cgs.atvobserver.STOP_RIDE"
        const val EXTRA_MODE = "mode"

        fun send(c: Context, action: String?, mode: String? = null) {
            if (!ObserverCompat.hasLocation(c) && !ObserverCompat.hasMic(c)) {
                Log.w(ObserverCompat.TAG, "not starting service: no location/microphone permission")
                return
            }
            val i = Intent(c, ObserverForegroundService::class.java).setAction(action)
            if (mode != null) i.putExtra(EXTRA_MODE, mode)
            try { c.startForegroundService(i) } catch (e: Exception) { Log.e(ObserverCompat.TAG, "startForegroundService failed", e) }
        }
    }
}
