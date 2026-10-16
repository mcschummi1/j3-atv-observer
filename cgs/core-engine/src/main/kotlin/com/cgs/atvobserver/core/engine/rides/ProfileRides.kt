package com.cgs.atvobserver.core.engine.rides

import com.cgs.atvobserver.core.model.RideLog
import com.cgs.atvobserver.core.model.VehicleProfile

/** Per-profile statistics. Fuel is only summed over rows that carry a real estimate. */
data class ProfileStats(
    val profile: VehicleProfile,
    val rideCount: Int,
    val totalDistanceKm: Double,
    val totalDurationSeconds: Long,
    val maxSpeedKmh: Double,
    val ridesWithFuelEstimate: Int,
    val estimatedFuelL: Double,
)

/**
 * Profile isolation (CGS "profile data never crosses"): every query takes the profile explicitly
 * and only ever returns rows whose stored vehicleType equals that profile's stored name.
 */
object ProfileRides {
    fun ridesFor(all: List<RideLog>, profile: VehicleProfile): List<RideLog> =
        all.filter { it.vehicleType == profile.name }.sortedByDescending { it.startTime }

    fun statsFor(all: List<RideLog>, profile: VehicleProfile): ProfileStats {
        val rides = ridesFor(all, profile)
        val withFuel = rides.filter { !it.fuelUnknown }
        return ProfileStats(
            profile = profile,
            rideCount = rides.size,
            totalDistanceKm = rides.sumOf { it.distanceKm },
            totalDurationSeconds = rides.sumOf { it.durationSeconds },
            maxSpeedKmh = rides.maxOfOrNull { it.maxSpeedKmh } ?: 0.0,
            ridesWithFuelEstimate = withFuel.size,
            estimatedFuelL = withFuel.sumOf { it.estimatedFuelUsedL },
        )
    }
}
