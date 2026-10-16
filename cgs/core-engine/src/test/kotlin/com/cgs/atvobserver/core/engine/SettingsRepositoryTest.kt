package com.cgs.atvobserver.core.engine

import com.cgs.atvobserver.core.engine.settings.ConfigKeys
import com.cgs.atvobserver.core.engine.settings.InMemoryStore
import com.cgs.atvobserver.core.engine.settings.SettingsRepository
import com.cgs.atvobserver.core.model.DeviceClass
import com.cgs.atvobserver.core.model.ProcessingMode
import com.cgs.atvobserver.core.model.VehicleProfile
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class SettingsRepositoryTest {
    /** Key set and types exactly as the original AppConfigManager wrote them (v1.1.6 / v1.1.7). */
    private fun legacyPrefs() = InMemoryStore(mapOf(
        "active_vehicle" to "DAELIM", "voice_enabled" to false, "speak_auto_start" to true,
        "use_metric" to true, "startup_screen" to "TRIP", "temp_monitoring_enabled" to true,
        "daelim_tank" to 4.5f, "daelim_temp" to 105.0f, "daelim_rpm" to 1500, "daelim_batt" to "Fulbat 8.4Ah AGM",
        "atv_tank" to 7.0f, "atv_temp" to 120.0f, "atv_rpm" to 1300, "atv_batt" to "Yuasa",
    ))

    @Test fun legacyValuesReadUnchanged() {
        val r = SettingsRepository(legacyPrefs())
        val s = r.appSettings()
        assertEquals(VehicleProfile.DAELIM, s.activeVehicle)
        assertFalse(s.voiceEnabled); assertTrue(s.speakAutoStart); assertEquals("TRIP", s.startupScreen)
        assertTrue(s.temperatureMonitoringEnabled)
        assertEquals(ProcessingMode.STANDARD, s.processingMode) // new key absent -> default
        val d = r.vehicleSettings(VehicleProfile.DAELIM)
        assertEquals(4.5, d.tankCapacityL, 1e-6); assertEquals(105.0, d.criticalTempC, 1e-6)
        assertEquals(1500, d.targetIdleRpm); assertEquals("Fulbat 8.4Ah AGM", d.assignedBattery)
        assertEquals(7.0, r.vehicleSettings(VehicleProfile.ATV).tankCapacityL, 1e-6)
    }

    @Test fun defaultsMatchOriginalAppConfigManager() {
        val r = SettingsRepository(InMemoryStore())
        // golden values from reference/jadx/.../AppConfigManager.loadConfig()
        assertEquals(VehicleProfile.ATV, r.activeVehicle())
        with(r.vehicleSettings(VehicleProfile.DAELIM)) { assertEquals(3.0, tankCapacityL, 0.0); assertEquals(110.0, criticalTempC, 0.0); assertEquals("Fulbat 8.4Ah AGM", assignedBattery) }
        with(r.vehicleSettings(VehicleProfile.MOTOCROSS)) { assertEquals(3.0, tankCapacityL, 0.0); assertEquals(150.0, criticalTempC, 0.0); assertEquals("None (Kick Start)", assignedBattery) }
        with(r.vehicleSettings(VehicleProfile.ATV)) { assertEquals(2.0, tankCapacityL, 0.0); assertEquals(130.0, criticalTempC, 0.0); assertEquals("Elektra EB10L-BP (11Ah)", assignedBattery) }
        with(r.vehicleSettings(VehicleProfile.APP_TEST)) { assertEquals(2.0, tankCapacityL, 0.0); assertEquals(115.0, criticalTempC, 0.0) }
        VehicleProfile.entries.forEach { assertEquals(1380, r.vehicleSettings(it).targetIdleRpm) }
    }

    @Test fun activeVehiclePersistsWithOriginalKeyAndValues() {
        val store = InMemoryStore()
        val r = SettingsRepository(store)
        for (p in VehicleProfile.entries) {
            r.setActiveVehicle(p)
            assertEquals(p.name, store.values["active_vehicle"])
            assertEquals(p, SettingsRepository(store).activeVehicle()) // "restart": fresh repository
        }
        store.values["active_vehicle"] = "SOMETHING_ELSE"
        assertEquals(VehicleProfile.ATV, r.activeVehicle())
    }

    @Test fun appTestHiddenUnlessDeveloperMode() {
        assertFalse(VehicleProfile.APP_TEST in VehicleProfile.selectable(false))
        assertEquals(listOf(VehicleProfile.ATV, VehicleProfile.MOTOCROSS, VehicleProfile.DAELIM), VehicleProfile.selectable(false))
        assertTrue(VehicleProfile.APP_TEST in VehicleProfile.selectable(true))
    }

    @Test fun invalidInputRejectedAndNeverStored() {
        val store = legacyPrefs()
        val r = SettingsRepository(store)
        val before = HashMap(store.values)
        for ((tank, rpm) in listOf("0" to "1400", "-1" to "1400", "abc" to "1400", "4" to "0", "4" to "-5", "4" to "1.5x", "" to "1400", "NaN" to "1400")) {
            val errs = r.updateVehicleSettings(VehicleProfile.DAELIM, tank, "110", rpm, "Battery")
            assertTrue("expected rejection for tank=$tank rpm=$rpm", errs.isNotEmpty())
        }
        assertTrue(r.updateVehicleSettings(VehicleProfile.DAELIM, "4", "110", "1400", "  ").isNotEmpty())
        assertTrue(r.setStartupScreen("NOPE").isNotEmpty())
        assertEquals(before, store.values)
    }

    @Test fun validInputStoredWithOriginalTypesAndOnlyForThatProfile() {
        val store = legacyPrefs()
        val r = SettingsRepository(store)
        assertEquals(emptyList<String>(), r.updateVehicleSettings(VehicleProfile.DAELIM, "4,2", "112", "1450", "New batt"))
        assertEquals(4.2f, store.values["daelim_tank"]); assertEquals(1450, store.values["daelim_rpm"])
        assertEquals(112.0f, store.values["daelim_temp"]); assertEquals("New batt", store.values["daelim_batt"])
        // profile isolation: ATV keys untouched
        assertEquals(7.0f, store.values["atv_tank"]); assertEquals(1300, store.values["atv_rpm"])
        assertFalse(store.contains(ConfigKeys.tank(VehicleProfile.MOTOCROSS)))
    }

    @Test fun processingModeIsSeparateFromProfile() {
        val store = legacyPrefs(); val r = SettingsRepository(store)
        r.setProcessingMode(ProcessingMode.SAFE)
        assertEquals(ProcessingMode.SAFE, r.appSettings().processingMode)
        assertEquals(VehicleProfile.DAELIM, r.activeVehicle())
        r.setActiveVehicle(VehicleProfile.MOTOCROSS)
        assertEquals(ProcessingMode.SAFE, r.appSettings().processingMode)
    }

    @Test fun deviceClassNeverChangesProfile() {
        val store = legacyPrefs(); val r = SettingsRepository(store)
        for ((sdk, ram, low) in listOf(Triple(28, 1900L, true), Triple(36, 8000L, false), Triple(33, 4000L, false))) {
            DeviceClass.fromCapabilities(sdk, ram, low)
            assertEquals(VehicleProfile.DAELIM, r.activeVehicle())
        }
        assertEquals(DeviceClass.LOW_RAM_LEGACY, DeviceClass.fromCapabilities(28, 1900, false))
        assertEquals(DeviceClass.HIGH, DeviceClass.fromCapabilities(36, 8000, false))
    }
}
