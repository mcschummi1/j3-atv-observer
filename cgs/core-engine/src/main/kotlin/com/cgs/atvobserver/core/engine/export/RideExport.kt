package com.cgs.atvobserver.core.engine.export

import com.cgs.atvobserver.core.model.AppSettings
import com.cgs.atvobserver.core.model.ProcessingMode
import com.cgs.atvobserver.core.model.RideLog
import com.cgs.atvobserver.core.model.VehicleProfile
import com.cgs.atvobserver.core.model.VehicleSettings

/** Rides + profile settings, the unit that is exported and re-imported. */
data class ExportBundle(
    val exportedAtMs: Long,
    val appVersion: String,
    val settings: AppSettings,
    val vehicleSettings: Map<VehicleProfile, VehicleSettings>,
    val rides: List<RideLog>,
)

/**
 * CSV and JSON serialisers. JSON format `cgs-observer-export` v1:
 * { format, formatVersion, exportedAtMs, appVersion, columnProvenance{col: category},
 *   settings{...}, vehicleSettings{PROFILE:{...}}, rides[{25 v5 columns}] }
 * Every value keeps its provenance (measured / filtered / estimated / manual) via columnProvenance,
 * and fuel-unknown rows export estimatedFuelUsedL as null with fuelKnown=false (never a fake 0 L).
 */
object RideExport {
    const val FORMAT = "cgs-observer-export"
    const val FORMAT_VERSION = 1L

    // ------------------------------------------------------------------ CSV
    fun ridesCsv(rides: List<RideLog>): String {
        val sb = StringBuilder()
        sb.append("# cgs-observer rides csv v1; provenance: ")
        sb.append(RideLog.COLUMN_PROVENANCE.entries.joinToString(" ") { "${it.key}=${it.value.name.lowercase()}" })
        sb.append('\n')
        sb.append(RideLog.COLUMNS.joinToString(",")).append(",fuelKnown\n")
        for (r in rides) {
            val vals = rowValues(r)
            sb.append(RideLog.COLUMNS.joinToString(",") { csvCell(vals[it]) }).append(',').append(!r.fuelUnknown).append('\n')
        }
        return sb.toString()
    }

    fun settingsCsv(s: AppSettings, v: Map<VehicleProfile, VehicleSettings>): String {
        val sb = StringBuilder("key,value\n")
        settingsMap(s).forEach { (k, value) -> sb.append(csvCell(k)).append(',').append(csvCell(value)).append('\n') }
        v.forEach { (p, vs) ->
            vehicleMap(vs).forEach { (k, value) -> sb.append(csvCell("${p.prefsPrefix}_$k")).append(',').append(csvCell(value)).append('\n') }
        }
        return sb.toString()
    }

    fun csvCell(v: Any?): String {
        val s = when (v) { null -> ""; is Boolean -> if (v) "1" else "0"; else -> v.toString() }
        return if (s.any { it == ',' || it == '"' || it == '\n' || it == '\r' }) "\"" + s.replace("\"", "\"\"") + "\"" else s
    }

    private fun rowValues(r: RideLog): Map<String, Any?> = linkedMapOf(
        "id" to r.id, "startTime" to r.startTime, "midTime" to r.midTime, "endTime" to r.endTime,
        "durationSeconds" to r.durationSeconds, "distanceKm" to r.distanceKm, "maxSpeedKmh" to r.maxSpeedKmh,
        "avgSpeedKmh" to r.avgSpeedKmh, "estimatedFuelUsedL" to (if (r.fuelUnknown) null else r.estimatedFuelUsedL),
        "weatherCondition" to r.weatherCondition, "mode" to r.mode, "vehicleType" to r.vehicleType,
        "warningCount" to r.warningCount, "isFinished" to r.isFinished, "startLat" to r.startLat,
        "startLon" to r.startLon, "midLat" to r.midLat, "midLon" to r.midLon, "endLat" to r.endLat,
        "endLon" to r.endLon, "peakGForce" to r.peakGForce, "smoothnessScore" to r.smoothnessScore,
        "launchAccelTimeSec" to r.launchAccelTimeSec, "terrainSummary" to r.terrainSummary,
        "isCompressed" to r.isCompressed,
    )

    private fun settingsMap(s: AppSettings): Map<String, Any?> = linkedMapOf(
        "active_vehicle" to s.activeVehicle.name, "voice_enabled" to s.voiceEnabled,
        "speak_auto_start" to s.speakAutoStart, "use_metric" to s.useMetric,
        "startup_screen" to s.startupScreen, "temp_monitoring_enabled" to s.temperatureMonitoringEnabled,
        "cgs_processing_mode" to s.processingMode.name, "cgs_developer_mode" to s.developerMode,
    )

    private fun vehicleMap(v: VehicleSettings): Map<String, Any?> = linkedMapOf(
        "tank" to v.tankCapacityL, "temp" to v.criticalTempC, "rpm" to v.targetIdleRpm.toLong(), "batt" to v.assignedBattery,
    )

    // ------------------------------------------------------------------ JSON
    fun toJson(b: ExportBundle): String = Json.write(linkedMapOf(
        "format" to FORMAT,
        "formatVersion" to FORMAT_VERSION,
        "exportedAtMs" to b.exportedAtMs,
        "appVersion" to b.appVersion,
        "columnProvenance" to RideLog.COLUMN_PROVENANCE.mapValues { it.value.name.lowercase() },
        "settings" to settingsMap(b.settings),
        "vehicleSettings" to b.vehicleSettings.entries.associate { it.key.name to vehicleMap(it.value) },
        "rides" to b.rides.map { r -> rowValues(r) + ("fuelKnown" to !r.fuelUnknown) },
    ))

    class ImportException(msg: String) : Exception(msg)

    @Suppress("UNCHECKED_CAST")
    fun fromJson(text: String): ExportBundle {
        val root = Json.parse(text) as? Map<String, Any?> ?: throw ImportException("not a JSON object")
        if (root["format"] != FORMAT) throw ImportException("not a $FORMAT file")
        val ver = (root["formatVersion"] as? Number)?.toLong()
        if (ver != FORMAT_VERSION) throw ImportException("unsupported export version $ver")
        val s = root["settings"] as? Map<String, Any?> ?: emptyMap()
        val settings = AppSettings(
            activeVehicle = VehicleProfile.fromStored(s["active_vehicle"] as? String),
            voiceEnabled = s["voice_enabled"] as? Boolean ?: true,
            speakAutoStart = s["speak_auto_start"] as? Boolean ?: false,
            useMetric = s["use_metric"] as? Boolean ?: true,
            startupScreen = s["startup_screen"] as? String ?: "MAIN_MENU",
            temperatureMonitoringEnabled = s["temp_monitoring_enabled"] as? Boolean ?: false,
            processingMode = ProcessingMode.fromStored(s["cgs_processing_mode"] as? String),
            developerMode = s["cgs_developer_mode"] as? Boolean ?: false,
        )
        val vs = (root["vehicleSettings"] as? Map<String, Any?> ?: emptyMap()).mapNotNull { (k, v) ->
            val p = VehicleProfile.entries.firstOrNull { it.name == k } ?: return@mapNotNull null
            val m = v as? Map<String, Any?> ?: return@mapNotNull null
            val d = VehicleSettings.defaults(p)
            p to VehicleSettings(
                (m["tank"] as? Number)?.toDouble() ?: d.tankCapacityL,
                (m["temp"] as? Number)?.toDouble() ?: d.criticalTempC,
                (m["rpm"] as? Number)?.toInt() ?: d.targetIdleRpm,
                m["batt"] as? String ?: d.assignedBattery,
            )
        }.toMap()
        val rides = (root["rides"] as? List<Any?> ?: emptyList()).map { e ->
            val m = e as? Map<String, Any?> ?: throw ImportException("ride is not an object")
            fun l(k: String) = (m[k] as? Number)?.toLong() ?: 0L
            fun d(k: String) = (m[k] as? Number)?.toDouble() ?: 0.0
            fun str(k: String, def: String) = m[k] as? String ?: def
            val fuelKnown = m["fuelKnown"] as? Boolean ?: (m["estimatedFuelUsedL"] != null)
            val terrain = str("terrainSummary", "")
            RideLog(
                id = l("id"), startTime = l("startTime"), midTime = l("midTime"), endTime = l("endTime"),
                durationSeconds = l("durationSeconds"), distanceKm = d("distanceKm"), maxSpeedKmh = d("maxSpeedKmh"),
                avgSpeedKmh = d("avgSpeedKmh"), estimatedFuelUsedL = if (fuelKnown) d("estimatedFuelUsedL") else 0.0,
                weatherCondition = str("weatherCondition", "Unknown"), mode = str("mode", "TRIP"),
                vehicleType = str("vehicleType", "ATV"), warningCount = l("warningCount").toInt(),
                isFinished = m["isFinished"] as? Boolean ?: false, startLat = d("startLat"), startLon = d("startLon"),
                midLat = d("midLat"), midLon = d("midLon"), endLat = d("endLat"), endLon = d("endLon"),
                peakGForce = (m["peakGForce"] as? Number)?.toDouble() ?: 1.0, smoothnessScore = l("smoothnessScore").toInt(),
                launchAccelTimeSec = d("launchAccelTimeSec"),
                terrainSummary = if (!fuelKnown && !terrain.contains("fuel=unknown")) "$terrain | fuel=unknown".trimStart(' ', '|') else terrain,
                isCompressed = m["isCompressed"] as? Boolean ?: false,
            )
        }
        return ExportBundle(
            exportedAtMs = (root["exportedAtMs"] as? Number)?.toLong() ?: 0L,
            appVersion = root["appVersion"] as? String ?: "",
            settings = settings, vehicleSettings = vs, rides = rides,
        )
    }

    /**
     * Rides from an import that are not yet present (same startTime + vehicleType + mode), with id
     * reset so Room assigns fresh keys. Existing rows are never modified or deleted.
     */
    fun ridesToInsert(existing: List<RideLog>, imported: List<RideLog>): List<RideLog> {
        val keys = existing.map { Triple(it.startTime, it.vehicleType, it.mode) }.toHashSet()
        return imported.filter { keys.add(Triple(it.startTime, it.vehicleType, it.mode)) }.map { it.copy(id = 0) }
    }
}
