package com.cgs.atvobserver

import android.Manifest
import android.os.Build
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.BackHandler
import androidx.activity.compose.setContent
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.darkColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.cgs.atvobserver.core.model.VehicleProfile
import com.cgs.atvobserver.ui.DashboardScreen
import com.cgs.atvobserver.ui.RidesScreen
import com.cgs.atvobserver.ui.SettingsScreen
import java.util.concurrent.Executors

enum class Screen { VEHICLE, DASHBOARD, SETTINGS, RIDES }

/** Same component name as the original launcher activity, so launcher shortcuts survive the update. */
class MainActivity : ComponentActivity() {
    val io = Executors.newSingleThreadExecutor()
    lateinit var repo: AppRepository
    private var screen by mutableStateOf(Screen.VEHICLE)
    var permissionTick by mutableStateOf(0)
    var pendingExport: ((android.net.Uri) -> Unit)? = null
    var message by mutableStateOf("")

    private val permissionLauncher = registerForActivityResult(ActivityResultContracts.RequestMultiplePermissions()) {
        permissionTick++
    }
    val createCsv = registerForActivityResult(ActivityResultContracts.CreateDocument("text/csv")) { uri ->
        if (uri != null) runIo("CSV export") { repo.exportCsv(uri); "Exported CSV" }
    }
    val createJson = registerForActivityResult(ActivityResultContracts.CreateDocument("application/json")) { uri ->
        if (uri != null) runIo("JSON export") { repo.exportJson(uri); "Exported JSON" }
    }
    val openJson = registerForActivityResult(ActivityResultContracts.OpenDocument()) { uri ->
        if (uri != null) runIo("JSON import") { "Imported ${repo.importJson(uri)} new ride(s)" }
    }

    fun runIo(what: String, block: () -> String) {
        io.execute {
            val msg = try { block() } catch (e: Exception) { "$what failed: ${e.message}" }
            runOnUiThread { message = msg }
        }
    }

    fun requestCorePermissions() {
        val perms = mutableListOf(Manifest.permission.ACCESS_FINE_LOCATION, Manifest.permission.ACCESS_COARSE_LOCATION,
            Manifest.permission.RECORD_AUDIO)
        if (Build.VERSION.SDK_INT >= 33) perms += Manifest.permission.POST_NOTIFICATIONS
        permissionLauncher.launch(perms.toTypedArray())
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        repo = AppRepository(applicationContext)
        val startup = repo.settings.appSettings().startupScreen
        screen = if (startup == "DASHBOARD" || startup == "TRIP") Screen.DASHBOARD else Screen.VEHICLE
        setContent {
            MaterialTheme(colorScheme = darkColorScheme()) {
                Surface(Modifier.fillMaxSize()) {
                    BackHandler(enabled = screen != Screen.VEHICLE) { screen = Screen.VEHICLE }
                    when (screen) {
                        Screen.VEHICLE -> VehicleSelector { screen = it }
                        Screen.DASHBOARD -> DashboardScreen(this) { screen = Screen.VEHICLE }
                        Screen.SETTINGS -> SettingsScreen(this) { screen = Screen.VEHICLE }
                        Screen.RIDES -> RidesScreen(this) { screen = Screen.VEHICLE }
                    }
                }
            }
        }
    }

    override fun onDestroy() {
        // Recording is owned by ObserverForegroundService and continues without the Activity.
        io.shutdown()
        super.onDestroy()
    }

    @Composable
    private fun VehicleSelector(go: (Screen) -> Unit) {
        var active by remember { mutableStateOf(repo.settings.activeVehicle()) }
        val dev = repo.settings.appSettings().developerMode
        Column(Modifier.fillMaxSize().padding(16.dp), verticalArrangement = Arrangement.spacedBy(12.dp)) {
            Text("CGS Vehicle Observer", fontSize = 26.sp)
            Text("Vehicle profile (data, settings and statistics are kept separate per profile)")
            for (p in VehicleProfile.selectable(dev)) {
                val label = (if (p == active) "● " else "○ ") + p.label + if (p.isTestProfile) "  [TEST]" else ""
                Button(onClick = { repo.settings.setActiveVehicle(p); active = p }, modifier = Modifier.fillMaxWidth()) {
                    Text(label, fontSize = 20.sp)
                }
            }
            Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                Button(onClick = { go(Screen.DASHBOARD) }) { Text("Dashboard") }
                OutlinedButton(onClick = { go(Screen.RIDES) }) { Text("Rides") }
                OutlinedButton(onClick = { go(Screen.SETTINGS) }) { Text("Settings") }
            }
        }
    }
}
