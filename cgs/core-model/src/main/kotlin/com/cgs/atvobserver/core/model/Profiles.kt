package com.cgs.atvobserver.core.model

/**
 * Vehicle profile (CGS axis 1). Decides what is learned and stored. The enum names are the exact
 * values persisted in `cgs_atv_config/active_vehicle` and `ride_logs.vehicleType` by v1.1.6/v1.1.7,
 * so they must never be renamed.
 *
 * Defaults are taken verbatim from the original `AppConfigManager.loadConfig()`
 * (reference/jadx/atvobserver/data/config/AppConfigManager.java) so an install without saved
 * values shows the same numbers as before.
 */
enum class VehicleProfile(
    val label: String,
    val isTestProfile: Boolean,
    val defaultTankL: Double,
    val defaultCriticalTempC: Double,
    val defaultIdleRpm: Int,
    val defaultBattery: String,
) {
    // labels = VehicleType display names of the original; defaults = AppConfigManager WhenMappings
    // (DAELIM=1, MOTOCROSS=2, ATV=3, else APP_TEST)
    ATV("Chinese ATV 110cc", false, 2.0, 130.0, 1380, "Elektra EB10L-BP (11Ah)"),
    MOTOCROSS("Motocross 125cc", false, 3.0, 150.0, 1380, "None (Kick Start)"),
    DAELIM("Daelim City Ace 110", false, 3.0, 110.0, 1380, "Fulbat 8.4Ah AGM"),
    APP_TEST("App Simulation & Test (developer)", true, 2.0, 115.0, 1380, "Elektra EB10L-BP (11Ah)");

    /** Prefix of the per-vehicle keys (`atv_tank`, `daelim_rpm`, ...). Same as the original. */
    val prefsPrefix: String get() = name.lowercase()

    companion object {
        /** Same mapping as the original: unknown / missing value -> ATV. */
        fun fromStored(value: String?): VehicleProfile =
            entries.firstOrNull { it.name == value?.trim()?.uppercase() } ?: ATV

        /** Profiles shown in the normal vehicle selector (APP_TEST only in developer mode). */
        fun selectable(developerMode: Boolean): List<VehicleProfile> =
            entries.filter { developerMode || !it.isTestProfile }
    }
}

/** Processing mode (CGS axis 2, file 1). Decides how much work runs. Independent of profile/device. */
enum class ProcessingMode(val label: String, val description: String) {
    BASIC("Basic", "GPS + trip only; lowest battery and CPU use"),
    STANDARD("Standard", "GPS, audio and motion sensors at normal rates"),
    MAXIMUM("Maximum", "All sources at the highest rate the device supports"),
    SAFE("Safe", "Minimal processing after overheating, low battery or repeated crashes");

    companion object {
        fun fromStored(value: String?): ProcessingMode =
            entries.firstOrNull { it.name == value } ?: STANDARD
    }
}

/**
 * Device class (CGS axis 3). Decides capability limits only. It is derived from measured
 * capabilities (RAM, SDK), never from Build.MODEL strings, and it never selects a vehicle profile.
 */
enum class DeviceClass(val label: String) {
    LOW_RAM_LEGACY("Low-RAM Android 9 class (e.g. Galaxy J3)"),
    MID("Mid-range"),
    HIGH("High-end Android 14+ class (e.g. Razr 40 / S22)");

    companion object {
        fun fromCapabilities(sdkInt: Int, totalRamMb: Long, isLowRamDevice: Boolean): DeviceClass = when {
            isLowRamDevice || totalRamMb in 1..2600 -> LOW_RAM_LEGACY
            sdkInt >= 34 && totalRamMb >= 6000 -> HIGH
            else -> MID
        }
    }
}
