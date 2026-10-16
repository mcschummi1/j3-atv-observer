package com.cgs.atvobserver.core.engine.dashboard

import com.cgs.atvobserver.core.model.Confidence
import com.cgs.atvobserver.core.model.Provenance
import com.cgs.atvobserver.core.model.Reading
import com.cgs.atvobserver.core.model.VehicleProfile

/** Last GPS fix as delivered by the platform (elapsed-realtime clock). */
data class GpsFix(
    val elapsedRealtimeMs: Long,
    val speedKmh: Double?,
    val accuracyM: Double?,
    val lat: Double,
    val lon: Double,
)

enum class RideState(val label: String) { IDLE("Not riding"), RIDING("Riding"), PAUSED("Paused") }

/** Everything the dashboard needs, sampled by the app once per second. */
data class DashboardInput(
    val profile: VehicleProfile,
    val nowElapsedMs: Long,
    val nowWallMs: Long,
    val locationPermission: Boolean,
    val gpsProviderEnabled: Boolean,
    val lastFix: GpsFix?,
    val tripDistanceKm: Double?,
    val rideStartElapsedMs: Long?,
    val rideState: RideState,
    /** 0..100, or null if the battery status could not be read. */
    val batteryPct: Int?,
    val micPermission: Boolean,
    val cameraPermission: Boolean,
)

data class DashboardState(
    val profile: VehicleProfile,
    val speedKmh: Reading<Double>,
    val tripDistanceKm: Reading<Double>,
    val tripTimeSeconds: Reading<Long>,
    val clockWallMs: Reading<Long>,
    val batteryPct: Reading<Int>,
    val rideState: RideState,
    val fuelRemainingL: Reading<Double>,
    val rangeKm: Reading<Double>,
    val audio: Reading<String>,
    val camera: Reading<String>,
)

/**
 * Pure dashboard reducer. Rules (CGS Stage 1 acceptance §5.4):
 *  - GPS speed is Unknown when there is no fix, the fix is older than [GPS_STALE_MS] (5 s) or its
 *    accuracy is worse than [MAX_SPEED_ACCURACY_M]; Unavailable when the permission is denied.
 *  - Fuel remaining and range are always Unknown until the Stage 3 fuel model exists.
 *  - A missing source never stops the other values.
 */
object DashboardEngine {
    const val GPS_STALE_MS = 5_000L
    const val MAX_SPEED_ACCURACY_M = 50.0

    fun reduce(i: DashboardInput): DashboardState {
        val speed: Reading<Double> = when {
            !i.locationPermission -> Reading.unavailable("GPS", "location permission denied")
            !i.gpsProviderEnabled -> Reading.unavailable("GPS", "location is switched off")
            i.lastFix == null -> Reading.unknown("GPS", "no fix yet")
            else -> {
                val age = i.nowElapsedMs - i.lastFix.elapsedRealtimeMs
                val acc = i.lastFix.accuracyM
                when {
                    age > GPS_STALE_MS -> Reading.unknown("GPS", "no fix for ${age / 1000} s", age)
                    i.lastFix.speedKmh == null -> Reading.unknown("GPS", "fix has no speed", age)
                    acc == null || acc <= 0 || acc > MAX_SPEED_ACCURACY_M ->
                        Reading.unknown("GPS", "accuracy ${acc ?: "unknown"} m is too poor", age)
                    else -> Reading.known(
                        i.lastFix.speedKmh, if (acc <= 15) Confidence.HIGH else Confidence.MEDIUM,
                        Provenance.MEASURED, "GPS", age, "accuracy ${"%.0f".format(java.util.Locale.US, acc)} m",
                    )
                }
            }
        }
        val distance: Reading<Double> = when {
            !i.locationPermission -> Reading.unavailable("GPS", "location permission denied")
            i.rideStartElapsedMs == null -> Reading.unknown("GPS", "no trip running")
            i.tripDistanceKm == null -> Reading.unknown("GPS", "no valid fixes in this trip")
            else -> Reading.known(i.tripDistanceKm, Confidence.MEDIUM, Provenance.FILTERED, "GPS", reason = "sum of fixes with accuracy < 25 m")
        }
        val tripTime: Reading<Long> = if (i.rideStartElapsedMs == null) Reading.unknown("clock", "no trip running")
        else Reading.known((i.nowElapsedMs - i.rideStartElapsedMs).coerceAtLeast(0) / 1000, Confidence.HIGH, Provenance.MEASURED, "clock")
        val battery: Reading<Int> = if (i.batteryPct == null || i.batteryPct !in 0..100) Reading.unknown("battery", "battery status not readable")
        else Reading.known(i.batteryPct, Confidence.HIGH, Provenance.MEASURED, "battery")
        return DashboardState(
            profile = i.profile,
            speedKmh = speed,
            tripDistanceKm = distance,
            tripTimeSeconds = tripTime,
            clockWallMs = Reading.known(i.nowWallMs, Confidence.HIGH, Provenance.MEASURED, "clock"),
            batteryPct = battery,
            rideState = i.rideState,
            fuelRemainingL = Reading.unknown("fuel model", "fuel model arrives in Stage 3"),
            rangeKm = Reading.unknown("fuel model", "range needs the Stage 3 fuel model"),
            audio = if (i.micPermission) Reading.unknown("microphone", "audio engine not in Stage 1 dashboard")
            else Reading.unavailable("microphone", "microphone permission denied"),
            camera = if (i.cameraPermission) Reading.unknown("camera", "camera engine arrives in Stage 7")
            else Reading.unavailable("camera", "camera permission denied"),
        )
    }

    fun formatDuration(seconds: Long): String =
        "%d:%02d:%02d".format(seconds / 3600, (seconds % 3600) / 60, seconds % 60)
}

/**
 * GPS trip distance accumulator with the original rule (only fixes with accuracy < 25 m count) plus
 * a basic plausibility guard (no jump implying > 200 km/h). Pure, so it is host-tested.
 */
class TripDistance {
    private var last: GpsFix? = null
    var km: Double = 0.0; private set
    var validFixes: Int = 0; private set

    fun reset() { last = null; km = 0.0; validFixes = 0 }

    fun add(f: GpsFix) {
        val acc = f.accuracyM ?: return
        if (acc <= 0 || acc >= 25.0) return
        val prev = last
        last = f
        validFixes++
        if (prev == null) return
        val d = haversineKm(prev.lat, prev.lon, f.lat, f.lon)
        val dtH = (f.elapsedRealtimeMs - prev.elapsedRealtimeMs) / 3_600_000.0
        if (dtH <= 0) return
        if (d / dtH > 200.0) return          // implausible jump: drop the segment
        if (d * 1000 < acc / 2) return       // below noise: stationary drift
        km += d
    }

    companion object {
        fun haversineKm(lat1: Double, lon1: Double, lat2: Double, lon2: Double): Double {
            val r = 6371.0088
            val dLat = Math.toRadians(lat2 - lat1)
            val dLon = Math.toRadians(lon2 - lon1)
            val a = Math.sin(dLat / 2).let { it * it } +
                Math.cos(Math.toRadians(lat1)) * Math.cos(Math.toRadians(lat2)) * Math.sin(dLon / 2).let { it * it }
            return 2 * r * Math.asin(Math.min(1.0, Math.sqrt(a)))
        }
    }
}
