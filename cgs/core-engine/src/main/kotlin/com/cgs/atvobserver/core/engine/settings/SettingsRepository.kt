package com.cgs.atvobserver.core.engine.settings

import com.cgs.atvobserver.core.model.AppSettings
import com.cgs.atvobserver.core.model.ProcessingMode
import com.cgs.atvobserver.core.model.STARTUP_SCREENS
import com.cgs.atvobserver.core.model.VehicleProfile
import com.cgs.atvobserver.core.model.VehicleSettings

/**
 * Minimal key/value abstraction over SharedPreferences, so the settings logic is host-testable.
 * Types match what the original app stored: tank/temp as Float, rpm as Int, battery as String.
 */
interface KeyValueStore {
    fun getString(key: String, def: String?): String?
    fun getFloat(key: String, def: Float): Float
    fun getInt(key: String, def: Int): Int
    fun getBoolean(key: String, def: Boolean): Boolean
    fun contains(key: String): Boolean
    fun edit(block: Editor.() -> Unit)

    interface Editor {
        fun putString(key: String, v: String)
        fun putFloat(key: String, v: Float)
        fun putInt(key: String, v: Int)
        fun putBoolean(key: String, v: Boolean)
        fun remove(key: String)
    }
}

/** In-memory store for tests and previews. */
class InMemoryStore(initial: Map<String, Any> = emptyMap()) : KeyValueStore {
    val values = LinkedHashMap<String, Any>(initial)
    override fun getString(key: String, def: String?) = values[key] as? String ?: def
    override fun getFloat(key: String, def: Float) = values[key] as? Float ?: def
    override fun getInt(key: String, def: Int) = values[key] as? Int ?: def
    override fun getBoolean(key: String, def: Boolean) = values[key] as? Boolean ?: def
    override fun contains(key: String) = values.containsKey(key)
    override fun edit(block: KeyValueStore.Editor.() -> Unit) {
        val staged = LinkedHashMap(values)
        object : KeyValueStore.Editor {
            override fun putString(key: String, v: String) { staged[key] = v }
            override fun putFloat(key: String, v: Float) { staged[key] = v }
            override fun putInt(key: String, v: Int) { staged[key] = v }
            override fun putBoolean(key: String, v: Boolean) { staged[key] = v }
            override fun remove(key: String) { staged.remove(key) }
        }.block()
        values.clear(); values.putAll(staged)
    }
}

/** Keys of `cgs_atv_config`. The first block is the original v1.1.6 key set, unchanged. */
object ConfigKeys {
    const val PREFS_FILE = "cgs_atv_config"
    const val ODOMETER_PREFS_FILE = "cgs_daelim_odometer"
    const val HOME_POINT_PREFS_FILE = "cgs_home_point"

    const val ACTIVE_VEHICLE = "active_vehicle"
    const val VOICE_ENABLED = "voice_enabled"
    const val SPEAK_AUTO_START = "speak_auto_start"
    const val USE_METRIC = "use_metric"
    const val STARTUP_SCREEN = "startup_screen"
    const val TEMP_MONITORING = "temp_monitoring_enabled"
    fun tank(p: VehicleProfile) = "${p.prefsPrefix}_tank"
    fun temp(p: VehicleProfile) = "${p.prefsPrefix}_temp"
    fun rpm(p: VehicleProfile) = "${p.prefsPrefix}_rpm"
    fun batt(p: VehicleProfile) = "${p.prefsPrefix}_batt"

    // CGS additions (new keys only; the old app ignores them)
    const val PROCESSING_MODE = "cgs_processing_mode"
    const val DEVELOPER_MODE = "cgs_developer_mode"
}

sealed class ValidationResult<out T> {
    data class Ok<T>(val value: T) : ValidationResult<T>()
    data class Invalid(val message: String) : ValidationResult<Nothing>()
}

/** Input validation for the Settings screen. Invalid input is rejected and never stored. */
object SettingsValidator {
    fun tankLitres(text: String): ValidationResult<Double> = positiveDouble(text, "Tank capacity", max = 60.0)
    fun criticalTempC(text: String): ValidationResult<Double> = positiveDouble(text, "Critical temperature", max = 250.0)
    fun idleRpm(text: String): ValidationResult<Int> {
        val v = text.trim().toIntOrNull() ?: return ValidationResult.Invalid("Idle RPM must be a whole number")
        if (v <= 0) return ValidationResult.Invalid("Idle RPM must be greater than 0")
        if (v > 20000) return ValidationResult.Invalid("Idle RPM must be at most 20000")
        return ValidationResult.Ok(v)
    }
    fun battery(text: String): ValidationResult<String> {
        val t = text.trim()
        if (t.isEmpty()) return ValidationResult.Invalid("Battery description must not be empty")
        if (t.length > 80) return ValidationResult.Invalid("Battery description is too long (max 80)")
        return ValidationResult.Ok(t)
    }
    fun startupScreen(v: String): ValidationResult<String> =
        if (v in STARTUP_SCREENS) ValidationResult.Ok(v) else ValidationResult.Invalid("Unknown startup screen: $v")

    private fun positiveDouble(text: String, what: String, max: Double): ValidationResult<Double> {
        val v = text.trim().replace(',', '.').toDoubleOrNull()
            ?: return ValidationResult.Invalid("$what must be a number")
        if (v.isNaN() || v.isInfinite()) return ValidationResult.Invalid("$what must be a number")
        if (v <= 0.0) return ValidationResult.Invalid("$what must be greater than 0")
        if (v > max) return ValidationResult.Invalid("$what must be at most $max")
        return ValidationResult.Ok(v)
    }
}

/**
 * Reads/writes settings with the original key set and types, so values written by v1.1.6/v1.1.7
 * are read unchanged and the frozen app can still read what this app writes.
 */
class SettingsRepository(private val store: KeyValueStore) {

    fun appSettings(): AppSettings = AppSettings(
        activeVehicle = VehicleProfile.fromStored(store.getString(ConfigKeys.ACTIVE_VEHICLE, "ATV")),
        voiceEnabled = store.getBoolean(ConfigKeys.VOICE_ENABLED, true),
        speakAutoStart = store.getBoolean(ConfigKeys.SPEAK_AUTO_START, false),
        useMetric = store.getBoolean(ConfigKeys.USE_METRIC, true),
        startupScreen = store.getString(ConfigKeys.STARTUP_SCREEN, "MAIN_MENU") ?: "MAIN_MENU",
        temperatureMonitoringEnabled = store.getBoolean(ConfigKeys.TEMP_MONITORING, false),
        processingMode = ProcessingMode.fromStored(store.getString(ConfigKeys.PROCESSING_MODE, null)),
        developerMode = store.getBoolean(ConfigKeys.DEVELOPER_MODE, false),
    )

    fun activeVehicle(): VehicleProfile = appSettings().activeVehicle

    fun setActiveVehicle(p: VehicleProfile) = store.edit { putString(ConfigKeys.ACTIVE_VEHICLE, p.name) }

    fun vehicleSettings(p: VehicleProfile): VehicleSettings {
        val d = VehicleSettings.defaults(p)
        return VehicleSettings(
            tankCapacityL = store.getFloat(ConfigKeys.tank(p), d.tankCapacityL.toFloat()).toDouble(),
            criticalTempC = store.getFloat(ConfigKeys.temp(p), d.criticalTempC.toFloat()).toDouble(),
            targetIdleRpm = store.getInt(ConfigKeys.rpm(p), d.targetIdleRpm),
            assignedBattery = store.getString(ConfigKeys.batt(p), d.assignedBattery) ?: d.assignedBattery,
        )
    }

    /** Validates all fields first; stores nothing unless every field is valid. Only touches profile [p]'s keys. */
    fun updateVehicleSettings(p: VehicleProfile, tank: String, temp: String, rpm: String, battery: String): List<String> {
        val t = SettingsValidator.tankLitres(tank)
        val c = SettingsValidator.criticalTempC(temp)
        val r = SettingsValidator.idleRpm(rpm)
        val b = SettingsValidator.battery(battery)
        val errors = listOf(t, c, r, b).filterIsInstance<ValidationResult.Invalid>().map { it.message }
        if (errors.isNotEmpty()) return errors
        store.edit {
            putFloat(ConfigKeys.tank(p), ((t as ValidationResult.Ok).value).toFloat())
            putFloat(ConfigKeys.temp(p), ((c as ValidationResult.Ok).value).toFloat())
            putInt(ConfigKeys.rpm(p), (r as ValidationResult.Ok).value)
            putString(ConfigKeys.batt(p), (b as ValidationResult.Ok).value)
        }
        return emptyList()
    }

    fun setUseMetric(v: Boolean) = store.edit { putBoolean(ConfigKeys.USE_METRIC, v) }
    fun setVoiceEnabled(v: Boolean) = store.edit { putBoolean(ConfigKeys.VOICE_ENABLED, v) }
    fun setProcessingMode(m: ProcessingMode) = store.edit { putString(ConfigKeys.PROCESSING_MODE, m.name) }
    fun setDeveloperMode(v: Boolean) = store.edit { putBoolean(ConfigKeys.DEVELOPER_MODE, v) }

    fun setStartupScreen(v: String): List<String> = when (val r = SettingsValidator.startupScreen(v)) {
        is ValidationResult.Ok -> { store.edit { putString(ConfigKeys.STARTUP_SCREEN, r.value) }; emptyList() }
        is ValidationResult.Invalid -> listOf(r.message)
    }
}
