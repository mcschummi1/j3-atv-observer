package com.cgs.atvobserver.core.model

/** Per-vehicle settings stored under `<prefix>_tank/_temp/_rpm/_batt` in `cgs_atv_config`. */
data class VehicleSettings(
    val tankCapacityL: Double,
    val criticalTempC: Double,
    val targetIdleRpm: Int,
    val assignedBattery: String,
) {
    companion object {
        fun defaults(p: VehicleProfile) =
            VehicleSettings(p.defaultTankL, p.defaultCriticalTempC, p.defaultIdleRpm, p.defaultBattery)
    }
}

/** App-wide settings. Original keys kept; CGS additions use new keys in the same file. */
data class AppSettings(
    val activeVehicle: VehicleProfile = VehicleProfile.ATV,
    val voiceEnabled: Boolean = true,
    val speakAutoStart: Boolean = false,
    val useMetric: Boolean = true,
    val startupScreen: String = "MAIN_MENU",
    val temperatureMonitoringEnabled: Boolean = false,
    val processingMode: ProcessingMode = ProcessingMode.STANDARD,
    val developerMode: Boolean = false,
)

/** CGS settings categories (file 7). Stage 1 implements the ones with [availableInStage1]. */
enum class SettingsCategory(val label: String, val availableInStage1: Boolean) {
    VEHICLE("Vehicle", true),
    FUEL("Fuel", false),
    AUDIO("Audio", false),
    CAMERA("Camera", false),
    STORAGE("Storage", true),
    LEARNING("Learning", false),
    UI("UI", true),
    NOTIFICATIONS("Notifications", false),
    DEVELOPER("Developer", true),
}

/** `startup_screen` values: the original Config screen offered MAIN_MENU / TRIP / ATV_DIAG; DASHBOARD is new (CGS app). */
val STARTUP_SCREENS = listOf("MAIN_MENU", "TRIP", "ATV_DIAG", "DASHBOARD")
