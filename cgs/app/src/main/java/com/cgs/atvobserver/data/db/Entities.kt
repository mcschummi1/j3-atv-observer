package com.cgs.atvobserver.data.db

import androidx.room.Entity
import androidx.room.PrimaryKey
import com.cgs.atvobserver.core.model.RideLog

/*
 * Room v5 schema of the original v1.1.6 app, reproduced EXACTLY (same table, column names, order,
 * types, nullability, primary keys; no indices, no defaults). Any change here changes the Room
 * identity hash (asserted by RoomSchemaIdentityTest = c0123e4383c0dbb3474efce306556582) and
 * requires an explicit, tested Migration - never a destructive fallback.
 */

@Entity(tableName = "ride_logs")
data class RideLogEntity(
    @PrimaryKey(autoGenerate = true) val id: Long = 0,
    val startTime: Long,
    val midTime: Long,
    val endTime: Long,
    val durationSeconds: Long,
    val distanceKm: Double,
    val maxSpeedKmh: Double,
    val avgSpeedKmh: Double,
    val estimatedFuelUsedL: Double,
    val weatherCondition: String,
    val mode: String,
    val vehicleType: String,
    val warningCount: Int,
    val isFinished: Boolean,
    val startLat: Double,
    val startLon: Double,
    val midLat: Double,
    val midLon: Double,
    val endLat: Double,
    val endLon: Double,
    val peakGForce: Double,
    val smoothnessScore: Int,
    val launchAccelTimeSec: Double,
    val terrainSummary: String,
    val isCompressed: Boolean,
) {
    fun toModel() = RideLog(
        id, startTime, midTime, endTime, durationSeconds, distanceKm, maxSpeedKmh, avgSpeedKmh, estimatedFuelUsedL,
        weatherCondition, mode, vehicleType, warningCount, isFinished, startLat, startLon, midLat, midLon, endLat, endLon,
        peakGForce, smoothnessScore, launchAccelTimeSec, terrainSummary, isCompressed,
    )

    companion object {
        fun from(r: RideLog) = RideLogEntity(
            r.id, r.startTime, r.midTime, r.endTime, r.durationSeconds, r.distanceKm, r.maxSpeedKmh, r.avgSpeedKmh,
            r.estimatedFuelUsedL, r.weatherCondition, r.mode, r.vehicleType, r.warningCount, r.isFinished, r.startLat,
            r.startLon, r.midLat, r.midLon, r.endLat, r.endLon, r.peakGForce, r.smoothnessScore, r.launchAccelTimeSec,
            r.terrainSummary, r.isCompressed,
        )
    }
}

@Entity(tableName = "fuel_records")
data class FuelRecordEntity(
    @PrimaryKey(autoGenerate = true) val id: Long = 0,
    val timestamp: Long,
    val fuelLitres: Double,
    val entryType: String,
    val vehicleType: String,
)

@Entity(tableName = "calibration_records")
data class CalibrationEntity(
    @PrimaryKey val key: String,
    val value: String,
    val confidence: String,
    val lastUpdated: Long,
)
