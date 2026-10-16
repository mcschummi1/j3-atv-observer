package com.cgs.atvobserver.core.model

/**
 * Android-free mirror of the v5 `ride_logs` row (25 columns, same names/order as the original
 * RideLogEntity). The Room entity in :app maps 1:1 onto this.
 */
data class RideLog(
    val id: Long = 0,
    val startTime: Long,
    val midTime: Long = 0,
    val endTime: Long = 0,
    val durationSeconds: Long = 0,
    val distanceKm: Double = 0.0,
    val maxSpeedKmh: Double = 0.0,
    val avgSpeedKmh: Double = 0.0,
    val estimatedFuelUsedL: Double = 0.0,
    val weatherCondition: String = "Unknown",
    val mode: String = "TRIP",
    val vehicleType: String = "ATV",
    val warningCount: Int = 0,
    val isFinished: Boolean = false,
    val startLat: Double = 0.0,
    val startLon: Double = 0.0,
    val midLat: Double = 0.0,
    val midLon: Double = 0.0,
    val endLat: Double = 0.0,
    val endLon: Double = 0.0,
    val peakGForce: Double = 1.0,
    val smoothnessScore: Int = 0,
    val launchAccelTimeSec: Double = 0.0,
    val terrainSummary: String = "",
    val isCompressed: Boolean = false,
) {
    val profile: VehicleProfile get() = VehicleProfile.fromStored(vehicleType)

    /** True when the fuel column holds no real estimate (service/recovered rows, or 0 L). */
    val fuelUnknown: Boolean get() = estimatedFuelUsedL <= 0.0 || terrainSummary.contains("fuel=unknown")

    companion object {
        /** Column names in v5 table order. */
        val COLUMNS = listOf(
            "id", "startTime", "midTime", "endTime", "durationSeconds", "distanceKm", "maxSpeedKmh",
            "avgSpeedKmh", "estimatedFuelUsedL", "weatherCondition", "mode", "vehicleType", "warningCount",
            "isFinished", "startLat", "startLon", "midLat", "midLon", "endLat", "endLon", "peakGForce",
            "smoothnessScore", "launchAccelTimeSec", "terrainSummary", "isCompressed",
        )

        /**
         * Provenance of each v5 column. The v5 schema has no per-value provenance column and Stage 1
         * deliberately stays at v5 (see docs/CGS_STAGE1.md), so the category is fixed per column:
         * estimates live only in `estimatedFuelUsedL` and never overwrite measured columns.
         */
        val COLUMN_PROVENANCE: Map<String, Provenance> = mapOf(
            "id" to Provenance.MEASURED,
            "startTime" to Provenance.MEASURED, "midTime" to Provenance.MEASURED, "endTime" to Provenance.MEASURED,
            "durationSeconds" to Provenance.MEASURED,
            "distanceKm" to Provenance.FILTERED, "maxSpeedKmh" to Provenance.FILTERED, "avgSpeedKmh" to Provenance.FILTERED,
            "estimatedFuelUsedL" to Provenance.ESTIMATED,
            "weatherCondition" to Provenance.MANUAL,
            "mode" to Provenance.MANUAL, "vehicleType" to Provenance.MANUAL,
            "warningCount" to Provenance.ESTIMATED, "isFinished" to Provenance.MEASURED,
            "startLat" to Provenance.MEASURED, "startLon" to Provenance.MEASURED,
            "midLat" to Provenance.MEASURED, "midLon" to Provenance.MEASURED,
            "endLat" to Provenance.MEASURED, "endLon" to Provenance.MEASURED,
            "peakGForce" to Provenance.MEASURED,
            "smoothnessScore" to Provenance.ESTIMATED, "launchAccelTimeSec" to Provenance.ESTIMATED,
            "terrainSummary" to Provenance.ESTIMATED, "isCompressed" to Provenance.MEASURED,
        )
    }
}
