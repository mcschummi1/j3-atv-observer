package com.cgs.atvobserver.core.engine

import com.cgs.atvobserver.core.engine.export.ExportBundle
import com.cgs.atvobserver.core.engine.export.Json
import com.cgs.atvobserver.core.engine.export.RideExport
import com.cgs.atvobserver.core.engine.journal.JournalReader
import com.cgs.atvobserver.core.engine.rides.ProfileRides
import com.cgs.atvobserver.core.model.AppSettings
import com.cgs.atvobserver.core.model.ProcessingMode
import com.cgs.atvobserver.core.model.RideLog
import com.cgs.atvobserver.core.model.VehicleProfile
import com.cgs.atvobserver.core.model.VehicleSettings
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Assert.fail
import org.junit.Test
import java.io.BufferedReader
import java.io.StringReader

class ExportAndProfileTest {
    private val rides = listOf(
        RideLog(id = 1, startTime = 1000, endTime = 61_000, durationSeconds = 60, distanceKm = 1.5, maxSpeedKmh = 40.0,
            estimatedFuelUsedL = 0.04, weatherCondition = "Normal Dry", mode = "TRIP", vehicleType = "ATV", isFinished = true,
            terrainSummary = "Asphalt: 75% | Gravel: 25%"),
        RideLog(id = 2, startTime = 2000, endTime = 32_000, durationSeconds = 30, distanceKm = 0.7, maxSpeedKmh = 30.0,
            mode = "POCKET", vehicleType = "DAELIM", isFinished = true, weatherCondition = "Unknown",
            terrainSummary = "Recovered pocket journal, \"killed\" | fuel=unknown weather=unknown"),
        RideLog(id = 3, startTime = 3000, durationSeconds = 10, distanceKm = 0.2, vehicleType = "MOTOCROSS", estimatedFuelUsedL = 0.01),
        RideLog(id = 4, startTime = 4000, durationSeconds = 20, distanceKm = 0.3, vehicleType = "DAELIM", estimatedFuelUsedL = 0.02),
    )
    private val bundle = ExportBundle(
        exportedAtMs = 1_760_000_000_000, appVersion = "2.0.0-CGS-stage1",
        settings = AppSettings(activeVehicle = VehicleProfile.DAELIM, useMetric = false, processingMode = ProcessingMode.BASIC),
        vehicleSettings = VehicleProfile.entries.associateWith { VehicleSettings.defaults(it) } +
            (VehicleProfile.DAELIM to VehicleSettings(4.5, 105.0, 1500, "Fulbat 8.4Ah AGM")),
        rides = rides,
    )

    @Test fun profileIsolation() {
        assertEquals(listOf(4L, 2L), ProfileRides.ridesFor(rides, VehicleProfile.DAELIM).map { it.id })
        assertEquals(listOf(1L), ProfileRides.ridesFor(rides, VehicleProfile.ATV).map { it.id })
        val daelim = ProfileRides.statsFor(rides, VehicleProfile.DAELIM)
        assertEquals(2, daelim.rideCount); assertEquals(1.0, daelim.totalDistanceKm, 1e-9)
        assertEquals(1, daelim.ridesWithFuelEstimate)           // recovered ride: fuel unknown, not counted
        assertEquals(0.02, daelim.estimatedFuelL, 1e-9)
        // adding/removing rides of profile B never changes profile A's view
        val more = rides + RideLog(id = 9, startTime = 9000, vehicleType = "ATV", distanceKm = 50.0)
        assertEquals(daelim, ProfileRides.statsFor(more, VehicleProfile.DAELIM))
        assertEquals(daelim, ProfileRides.statsFor(rides.filter { it.vehicleType != "MOTOCROSS" }, VehicleProfile.DAELIM))
    }

    @Test fun jsonRoundTripRestoresEverything() {
        val json = RideExport.toJson(bundle)
        val back = RideExport.fromJson(json)
        assertEquals(bundle.settings, back.settings)
        assertEquals(bundle.vehicleSettings, back.vehicleSettings)
        assertEquals(bundle.rides, back.rides)
        assertEquals(bundle.appVersion, back.appVersion)
        @Suppress("UNCHECKED_CAST")
        val root = Json.parse(json) as Map<String, Any?>
        assertEquals("estimated", (root["columnProvenance"] as Map<String, Any?>)["estimatedFuelUsedL"])
        assertEquals("filtered", (root["columnProvenance"] as Map<String, Any?>)["distanceKm"])
        @Suppress("UNCHECKED_CAST")
        val r2 = (root["rides"] as List<Map<String, Any?>>)[1]
        assertNull("unknown fuel must export as null, not 0", r2["estimatedFuelUsedL"])
        assertEquals(false, r2["fuelKnown"])
    }

    @Test fun importIntoEmptyInstallAndNoDuplicates() {
        val back = RideExport.fromJson(RideExport.toJson(bundle))
        val toEmpty = RideExport.ridesToInsert(emptyList(), back.rides)
        assertEquals(4, toEmpty.size); assertTrue(toEmpty.all { it.id == 0L })
        assertEquals(0, RideExport.ridesToInsert(rides, back.rides).size)
    }

    @Test fun importRejectsForeignOrFutureFiles() {
        for (bad in listOf("[]", "{\"format\":\"x\"}", "{\"format\":\"cgs-observer-export\",\"formatVersion\":2}", "{bad")) {
            try { RideExport.fromJson(bad); fail("accepted $bad") } catch (e: Exception) { /* expected */ }
        }
    }

    @Test fun csvQuotingAndUnknownFuel() {
        val csv = RideExport.ridesCsv(rides).lines()
        assertTrue(csv[0].startsWith("# cgs-observer rides csv v1; provenance: "))
        assertTrue(csv[0].contains("estimatedFuelUsedL=estimated"))
        assertEquals(RideLog.COLUMNS.joinToString(",") + ",fuelKnown", csv[1])
        assertTrue(csv[3].contains("\"Recovered pocket journal, \"\"killed\"\" | fuel=unknown weather=unknown\""))
        assertTrue(csv[3].endsWith(",false"))
        assertTrue(csv[3].contains(",0.7,30.0,0.0,,Unknown,POCKET,DAELIM,"))  // fuel cell empty, not 0
        val s = RideExport.settingsCsv(bundle.settings, bundle.vehicleSettings)
        assertTrue(s.contains("active_vehicle,DAELIM\n")); assertTrue(s.contains("daelim_tank,4.5\n"))
        assertTrue(s.contains("daelim_rpm,1500\n")); assertTrue(s.contains("cgs_processing_mode,BASIC\n"))
    }

    @Test fun jsonEscapes() {
        val v = mapOf("a" to "x\"y\\z\n\u0001", "b" to listOf(1L, 2.5, true, null), "c" to emptyMap<String, Any>())
        assertEquals(v, Json.parse(Json.write(v)))
    }

    private val v1 = "#J3ATV-JOURNAL v1 mode=POCKET fgsTypes=0x88 sdk=34 device=motorola/razr 40\n" +
        JournalReader.V1_COLUMNS.joinToString(",") + "\n" +
        "1760000000000,0,45.100000,24.300000,8.0,20.0,0.000,1,60.0,1400,20,1,80,10,60.0,62.0,0.80,40,52,0.400,1.05,0.100,90,,,,1,1,0.70,RIDING,RIDING\n" +
        "1760000001000,1,45.100100,24.300000,8.0,21.0,0.011,1,60.0,1400,20,1,80,10,60.0,62.0,0.80,40,52,0.400,1.05,0.100,90,,,,1,1,0.70,RIDING,RIDING\n"

    @Test fun journalReaderReadsV1WithAndWithoutVehicleToken() {
        val j = JournalReader.read(BufferedReader(StringReader(v1)))
        assertEquals(1, j.version); assertEquals("POCKET", j.mode); assertNull(j.vehicle)
        assertEquals(2, j.rows.size); assertEquals(31, j.columns.size)
        assertEquals(0.011, j.double(j.rows[1], "dist_km")!!, 1e-9)
        assertEquals("", j.rows[0]["pressure_hpa"]); assertNull(j.double(j.rows[0], "pressure_hpa"))
        assertFalse(j.isTerminated)
        val withVehicle = v1.replaceFirst("mode=POCKET", "mode=POCKET vehicle=DAELIM") + "#END reason=screen:MAIN_MENU rows=2\n"
        val j2 = JournalReader.read(BufferedReader(StringReader(withVehicle)))
        assertEquals("DAELIM", j2.vehicle); assertTrue(j2.isTerminated)
    }

    @Test fun journalReaderReadsV2ByColumnNameAndRejectsUnknownVersions() {
        val v2 = "#J3ATV-JOURNAL v2 mode=TRIP vehicle=MOTOCROSS\nt_ms,dist_km,new_col,lat\n1760000000000,0.5,x,45.1\n1760000001000,0.6,y,45.2\n"
        val j = JournalReader.read(BufferedReader(StringReader(v2)))
        assertEquals(2, j.version); assertEquals("MOTOCROSS", j.vehicle)
        assertEquals(0.6, j.double(j.rows[1], "dist_km")!!, 1e-9); assertEquals("y", j.rows[1]["new_col"])
        try { JournalReader.read(BufferedReader(StringReader("#J3ATV-JOURNAL v3 mode=TRIP\n"))); fail() } catch (e: JournalReader.UnsupportedJournalException) { }
        try { JournalReader.read(BufferedReader(StringReader("hello\n"))); fail() } catch (e: JournalReader.UnsupportedJournalException) { }
    }
}
