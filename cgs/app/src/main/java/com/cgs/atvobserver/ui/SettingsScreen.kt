package com.cgs.atvobserver.ui

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.Button
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Switch
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.cgs.atvobserver.MainActivity
import com.cgs.atvobserver.core.model.ProcessingMode
import com.cgs.atvobserver.core.model.STARTUP_SCREENS
import com.cgs.atvobserver.core.model.SettingsCategory

@Composable
fun SettingsScreen(a: MainActivity, back: () -> Unit) {
    val repo = a.repo
    var tick by remember { mutableStateOf(0) }
    val s = remember(tick) { repo.settings.appSettings() }
    val p = s.activeVehicle
    val v = remember(tick) { repo.settings.vehicleSettings(p) }
    var tank by remember(tick) { mutableStateOf(v.tankCapacityL.toString()) }
    var temp by remember(tick) { mutableStateOf(v.criticalTempC.toString()) }
    var rpm by remember(tick) { mutableStateOf(v.targetIdleRpm.toString()) }
    var batt by remember(tick) { mutableStateOf(v.assignedBattery) }
    var errors by remember { mutableStateOf(listOf<String>()) }
    var storage by remember { mutableStateOf("") }
    Column(Modifier.fillMaxSize().padding(12.dp).verticalScroll(rememberScrollState()), verticalArrangement = Arrangement.spacedBy(8.dp)) {
        Text("Settings", fontSize = 24.sp)
        for (c in SettingsCategory.entries) {
            Text(c.label, fontSize = 20.sp)
            when (c) {
                SettingsCategory.VEHICLE -> {
                    Text("Profile: ${p.label}")
                    OutlinedTextField(tank, { tank = it }, label = { Text("Tank capacity (L)") })
                    OutlinedTextField(temp, { temp = it }, label = { Text("Critical temperature (°C)") })
                    OutlinedTextField(rpm, { rpm = it }, label = { Text("Target idle RPM") })
                    OutlinedTextField(batt, { batt = it }, label = { Text("Battery") })
                    Button(onClick = { errors = repo.settings.updateVehicleSettings(p, tank, temp, rpm, batt); if (errors.isEmpty()) tick++ }) { Text("Save vehicle settings") }
                    errors.forEach { Text("Not saved: $it") }
                }
                SettingsCategory.UI -> {
                    Row { Text("Metric units "); Switch(s.useMetric, { repo.settings.setUseMetric(it); tick++ }) }
                    Row { Text("Voice "); Switch(s.voiceEnabled, { repo.settings.setVoiceEnabled(it); tick++ }) }
                    Text("Startup screen: ${s.startupScreen}")
                    Row(horizontalArrangement = Arrangement.spacedBy(4.dp)) {
                        STARTUP_SCREENS.forEach { sc -> OutlinedButton(onClick = { repo.settings.setStartupScreen(sc); tick++ }) { Text(sc, fontSize = 10.sp) } }
                    }
                    Text("Processing mode: ${s.processingMode.label}")
                    Row(horizontalArrangement = Arrangement.spacedBy(4.dp)) {
                        ProcessingMode.entries.forEach { m -> OutlinedButton(onClick = { repo.settings.setProcessingMode(m); tick++ }) { Text(m.label, fontSize = 11.sp) } }
                    }
                    Text("(Processing mode is stored; feature gating by mode is not yet wired in Stage 1)", fontSize = 12.sp)
                }
                SettingsCategory.STORAGE -> {
                    Button(onClick = { a.runIo("storage") { "Free: ${repo.freeBytes() / 1_048_576} MB, temp data: ${repo.tempBytes() / 1024} KB" }.also { } }) { Text("Show free space") }
                    Button(onClick = { a.runIo("clear") { "Cleared ${repo.clearTempData() / 1024} KB of temp data (rides, settings, journals untouched)" } }) { Text("Clear temp data") }
                    if (a.message.isNotEmpty()) Text(a.message)
                    if (storage.isNotEmpty()) Text(storage)
                }
                SettingsCategory.DEVELOPER -> {
                    Row { Text("Developer mode (shows APP_TEST profile) "); Switch(s.developerMode, { repo.settings.setDeveloperMode(it); tick++ }) }
                }
                else -> Text("Not yet available (later CGS stage)", fontSize = 13.sp)
            }
        }
        OutlinedButton(onClick = back) { Text("Back") }
    }
}
