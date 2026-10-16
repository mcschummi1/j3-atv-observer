package com.cgs.atvobserver.core.engine

import com.cgs.atvobserver.core.engine.dashboard.DashboardEngine
import com.cgs.atvobserver.core.engine.dashboard.DashboardInput
import com.cgs.atvobserver.core.engine.dashboard.GpsFix
import com.cgs.atvobserver.core.engine.dashboard.RideState
import com.cgs.atvobserver.core.engine.dashboard.TripDistance
import com.cgs.atvobserver.core.model.Availability
import com.cgs.atvobserver.core.model.Confidence
import com.cgs.atvobserver.core.model.VehicleProfile
import com.cgs.atvobserver.core.model.display
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class DashboardEngineTest {
    private fun input(now: Long = 100_000, fix: GpsFix? = GpsFix(99_000, 32.0, 8.0, 45.1, 24.3), loc: Boolean = true,
                      mic: Boolean = true, cam: Boolean = true, battery: Int? = 77) = DashboardInput(
        profile = VehicleProfile.DAELIM, nowElapsedMs = now, nowWallMs = 1_760_000_000_000, locationPermission = loc,
        gpsProviderEnabled = true, lastFix = fix, tripDistanceKm = 1.25, rideStartElapsedMs = 40_000,
        rideState = RideState.RIDING, batteryPct = battery, micPermission = mic, cameraPermission = cam,
    )

    @Test fun freshFixShowsSpeed() {
        val s = DashboardEngine.reduce(input())
        assertEquals(32.0, s.speedKmh.value!!, 0.0)
        assertEquals(Confidence.HIGH, s.speedKmh.confidence)
        assertEquals("32", s.speedKmh.display { "%.0f".format(it) })
    }

    @Test fun noFixForMoreThan5sIsUnknownNotLastValue() {
        val at5s = DashboardEngine.reduce(input(now = 104_000))      // 5.0 s old -> still valid
        assertTrue(at5s.speedKmh.isKnown)
        val stale = DashboardEngine.reduce(input(now = 104_001))     // > 5 s
        assertNull(stale.speedKmh.value)
        assertEquals(Availability.UNKNOWN, stale.speedKmh.availability)
        assertEquals("Unknown", stale.speedKmh.display { it.toString() })
    }

    @Test fun poorAccuracyIsUnknown() {
        assertEquals("Unknown", DashboardEngine.reduce(input(fix = GpsFix(99_000, 30.0, 80.0, 0.0, 0.0))).speedKmh.display { it.toString() })
        assertEquals("Unknown", DashboardEngine.reduce(input(fix = null)).speedKmh.display { it.toString() })
    }

    @Test fun fuelAndRangeAlwaysUnknownInStage1() {
        val s = DashboardEngine.reduce(input())
        assertEquals("Unknown", s.fuelRemainingL.display { it.toString() })
        assertEquals("Unknown", s.rangeKm.display { it.toString() })
        assertEquals(Confidence.UNKNOWN, s.fuelRemainingL.confidence)
        assertEquals(Confidence.UNKNOWN, s.rangeKm.confidence)
    }

    @Test fun deniedPermissionsShowUnavailableAndOtherValuesContinue() {
        val s = DashboardEngine.reduce(input(loc = false, mic = false, cam = false))
        assertEquals("Unavailable", s.speedKmh.display { it.toString() })
        assertEquals("Unavailable", s.tripDistanceKm.display { it.toString() })
        assertEquals("Unavailable", s.audio.display { it })
        assertEquals("Unavailable", s.camera.display { it })
        assertEquals(60L, s.tripTimeSeconds.value)
        assertEquals(77, s.batteryPct.value)
        assertTrue(s.clockWallMs.isKnown)
        assertEquals(RideState.RIDING, s.rideState)
    }

    @Test fun unreadableBatteryIsUnknown() {
        assertEquals("Unknown", DashboardEngine.reduce(input(battery = null)).batteryPct.display { "$it %" })
        assertEquals("Unknown", DashboardEngine.reduce(input(battery = -1)).batteryPct.display { "$it %" })
    }

    @Test fun tripDistanceUsesOnlyAccurateFixesAndRejectsJumps() {
        val t = TripDistance()
        // 0.001 deg latitude ~ 111 m, 10 s apart = 40 km/h
        t.add(GpsFix(0, 40.0, 8.0, 45.000, 24.0))
        t.add(GpsFix(10_000, 40.0, 8.0, 45.001, 24.0))
        assertEquals(0.111, t.km, 0.002)
        t.add(GpsFix(20_000, 40.0, 40.0, 45.002, 24.0))   // accuracy >= 25 m: ignored
        assertEquals(0.111, t.km, 0.002)
        t.add(GpsFix(21_000, 40.0, 8.0, 45.100, 24.0))    // 11 km in 11 s: implausible, dropped
        assertEquals(0.111, t.km, 0.002)
        t.reset(); assertEquals(0.0, t.km, 0.0)
    }

    @Test fun durationFormat() { assertEquals("1:02:03", DashboardEngine.formatDuration(3723)) }
}
