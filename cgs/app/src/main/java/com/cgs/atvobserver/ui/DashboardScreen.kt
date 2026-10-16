package com.cgs.atvobserver.ui

import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.os.BatteryManager
import android.os.SystemClock
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.cgs.atvobserver.MainActivity
import com.cgs.atvobserver.core.engine.dashboard.DashboardEngine
import com.cgs.atvobserver.core.engine.dashboard.DashboardInput
import com.cgs.atvobserver.core.engine.dashboard.DashboardState
import com.cgs.atvobserver.core.engine.dashboard.RideState
import com.cgs.atvobserver.core.model.Reading
import com.cgs.atvobserver.core.model.display
import com.cgs.atvobserver.recording.ObserverCompat
import com.cgs.atvobserver.recording.PocketRecorder
import com.cgs.atvobserver.recording.Telemetry
import com.cgs.atvobserver.service.ObserverForegroundService
import kotlinx.coroutines.delay
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

fun batteryPct(c: Context): Int? = try {
    val i: Intent? = c.registerReceiver(null, IntentFilter(Intent.ACTION_BATTERY_CHANGED))
    val level = i?.getIntExtra(BatteryManager.EXTRA_LEVEL, -1) ?: -1
    val scale = i?.getIntExtra(BatteryManager.EXTRA_SCALE, -1) ?: -1
    if (level < 0 || scale <= 0) null else level * 100 / scale
} catch (e: Exception) { null }

fun sampleDashboard(a: MainActivity): DashboardState {
    val tel = Telemetry.get(a)
    val profile = a.repo.settings.activeVehicle()
    val running = tel.tripRunning()
    return DashboardEngine.reduce(DashboardInput(
        profile = profile,
        nowElapsedMs = SystemClock.elapsedRealtime(),
        nowWallMs = System.currentTimeMillis(),
        locationPermission = ObserverCompat.hasLocation(a),
        gpsProviderEnabled = tel.gpsProviderEnabled(),
        lastFix = tel.lastFix(),
        tripDistanceKm = if (running && tel.tripValidFixes() > 0) tel.tripKm() else null,
        rideStartElapsedMs = if (running) tel.tripStartElapsedMs() else null,
        rideState = if (running || PocketRecorder.isSessionActive()) RideState.RIDING else RideState.IDLE,
        batteryPct = batteryPct(a),
        micPermission = ObserverCompat.hasMic(a),
        cameraPermission = ObserverCompat.hasCamera(a),
    ))
}

@Composable
fun DashboardScreen(a: MainActivity, back: () -> Unit) {
    var state by remember { mutableStateOf(sampleDashboard(a)) }
    val metric = remember { a.repo.settings.appSettings().useMetric }
    LaunchedEffect(a.permissionTick) {
        Telemetry.get(a).startGps()   // UI-only GPS when the service is not running yet
        while (true) { state = sampleDashboard(a); delay(1000) }
    }
    val speedUnit = if (metric) "km/h" else "mph"
    val distUnit = if (metric) "km" else "mi"
    val k = if (metric) 1.0 else 0.621371
    BoxWithConstraints(Modifier.fillMaxSize().padding(12.dp)) {
        // CGS: speed digits at least 1/4 of the screen height
        val speedSp = with(LocalDensity.current) { (maxHeight / 4).toSp() }
        Column(verticalArrangement = Arrangement.spacedBy(6.dp)) {
            Text("${state.profile.label} - ${state.rideState.label}", fontSize = 18.sp)
            Text(state.speedKmh.display { "%.0f".format(Locale.US, it * k) }, fontSize = speedSp, fontWeight = FontWeight.Bold)
            Text("$speedUnit  ${evidence(state.speedKmh)}", fontSize = 14.sp)
            Line("Trip distance", state.tripDistanceKm.display { "%.2f %s".format(Locale.US, it * k, distUnit) }, state.tripDistanceKm)
            Line("Trip time", state.tripTimeSeconds.display { DashboardEngine.formatDuration(it) }, state.tripTimeSeconds)
            Line("Clock", state.clockWallMs.display { SimpleDateFormat("HH:mm", Locale.getDefault()).format(Date(it)) }, state.clockWallMs)
            Line("Phone battery", state.batteryPct.display { "$it %" }, state.batteryPct)
            Line("Fuel remaining", state.fuelRemainingL.display { "%.1f L".format(Locale.US, it) }, state.fuelRemainingL)
            Line("Range", state.rangeKm.display { "%.0f %s".format(Locale.US, it * k, distUnit) }, state.rangeKm)
            Line("Microphone", state.audio.display { it }, state.audio)
            Line("Camera", state.camera.display { it }, state.camera)
            Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                if (state.rideState == RideState.IDLE) {
                    Button(onClick = {
                        if (!ObserverCompat.hasLocation(a) && !ObserverCompat.hasMic(a)) a.requestCorePermissions()
                        else ObserverForegroundService.send(a, ObserverForegroundService.ACTION_START_RIDE, "TRIP")
                    }) { Text("Start ride") }
                } else {
                    Button(onClick = { ObserverForegroundService.send(a, ObserverForegroundService.ACTION_STOP_RIDE) }) { Text("End ride") }
                }
                OutlinedButton(onClick = { a.requestCorePermissions() }) { Text("Permissions") }
                OutlinedButton(onClick = back) { Text("Back") }
            }
        }
    }
}

fun evidence(r: Reading<*>): String =
    "[${r.confidence.label}${r.ageMs?.let { ", ${it / 1000}s old" } ?: ""}${if (r.reason.isNotEmpty()) ", ${r.reason}" else ""}]"

@Composable
private fun Line(label: String, value: String, r: Reading<*>) {
    Column {
        Text("$label: $value", fontSize = 22.sp)
        Text(evidence(r), fontSize = 12.sp)
    }
}
