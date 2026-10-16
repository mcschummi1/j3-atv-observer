package com.cgs.atvobserver.ui

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
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
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.cgs.atvobserver.MainActivity
import com.cgs.atvobserver.core.engine.rides.ProfileRides
import com.cgs.atvobserver.core.engine.rides.ProfileStats
import com.cgs.atvobserver.core.model.RideLog
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

@Composable
fun RidesScreen(a: MainActivity, back: () -> Unit) {
    val profile = remember { a.repo.settings.activeVehicle() }
    var rides by remember { mutableStateOf(listOf<RideLog>()) }
    var stats by remember { mutableStateOf<ProfileStats?>(null) }
    LaunchedEffect(a.message) {
        a.io.execute {
            val r = a.repo.ridesFor(profile)
            a.runOnUiThread { rides = r; stats = ProfileRides.statsFor(r, profile) }
        }
    }
    val fmt = SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.getDefault())
    Column(Modifier.fillMaxSize().padding(12.dp), verticalArrangement = Arrangement.spacedBy(6.dp)) {
        Text("Rides - ${profile.label}", fontSize = 22.sp)
        stats?.let { Text("${it.rideCount} rides, %.1f km, fuel estimate on ${it.ridesWithFuelEstimate} ride(s)".format(Locale.US, it.totalDistanceKm)) }
        Row(horizontalArrangement = Arrangement.spacedBy(6.dp)) {
            Button(onClick = { a.createCsv.launch("cgs_rides_${System.currentTimeMillis()}.csv") }) { Text("Export CSV") }
            Button(onClick = { a.createJson.launch("cgs_backup_${System.currentTimeMillis()}.json") }) { Text("Export JSON") }
            OutlinedButton(onClick = { a.openJson.launch(arrayOf("application/json", "*/*")) }) { Text("Import JSON") }
        }
        if (a.message.isNotEmpty()) Text(a.message)
        OutlinedButton(onClick = back) { Text("Back") }
        LazyColumn(verticalArrangement = Arrangement.spacedBy(4.dp)) {
            items(rides) { r ->
                Text("${fmt.format(Date(r.startTime))} ${r.mode}: %.2f km, %d s, max %.0f km/h, fuel %s, weather %s".format(
                    Locale.US, r.distanceKm, r.durationSeconds, r.maxSpeedKmh,
                    if (r.fuelUnknown) "Unknown" else "%.2f L (estimated)".format(Locale.US, r.estimatedFuelUsedL), r.weatherCondition), fontSize = 13.sp)
            }
        }
    }
}
