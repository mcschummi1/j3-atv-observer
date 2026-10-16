package com.cgs.atvobserver

import android.content.Context
import android.net.Uri
import android.os.StatFs
import com.cgs.atvobserver.core.engine.export.ExportBundle
import com.cgs.atvobserver.core.engine.export.RideExport
import com.cgs.atvobserver.core.engine.rides.ProfileRides
import com.cgs.atvobserver.core.engine.rides.ProfileStats
import com.cgs.atvobserver.core.engine.settings.SettingsRepository
import com.cgs.atvobserver.core.model.RideLog
import com.cgs.atvobserver.core.model.VehicleProfile
import com.cgs.atvobserver.data.db.AppDatabase
import com.cgs.atvobserver.data.db.RideLogEntity
import com.cgs.atvobserver.data.prefs.SharedPrefsStore
import java.io.File

/** Thin Android layer over the host-tested engine code. All DB calls must run off the main thread. */
class AppRepository(private val context: Context) {
    val settings = SettingsRepository(SharedPrefsStore.config(context))
    private val dao get() = AppDatabase.get(context).rideDao()

    fun allRides(): List<RideLog> = dao.getAllRides().map { it.toModel() }
    fun ridesFor(p: VehicleProfile): List<RideLog> = dao.getRidesByVehicle(p.name).map { it.toModel() }
    fun statsFor(p: VehicleProfile): ProfileStats = ProfileRides.statsFor(ridesFor(p), p)

    fun bundle(): ExportBundle = ExportBundle(
        exportedAtMs = System.currentTimeMillis(),
        appVersion = BuildConfigCompat.versionName(context),
        settings = settings.appSettings(),
        vehicleSettings = VehicleProfile.entries.associateWith { settings.vehicleSettings(it) },
        rides = allRides(),
    )

    /** Writes via the Storage Access Framework URI the user picked (no storage permission needed). */
    fun writeTo(uri: Uri, text: String) {
        context.contentResolver.openOutputStream(uri, "wt")!!.use { it.write(text.toByteArray(Charsets.UTF_8)) }
    }

    fun readFrom(uri: Uri): String =
        context.contentResolver.openInputStream(uri)!!.use { it.readBytes().toString(Charsets.UTF_8) }

    fun exportJson(uri: Uri) = writeTo(uri, RideExport.toJson(bundle()))

    fun exportCsv(uri: Uri) {
        val b = bundle()
        writeTo(uri, RideExport.ridesCsv(b.rides) + "\n# settings\n" + RideExport.settingsCsv(b.settings, b.vehicleSettings))
    }

    /** Imports rides (never overwrites or deletes existing rows) and vehicle settings. Returns rides added. */
    fun importJson(uri: Uri): Int {
        val b = RideExport.fromJson(readFrom(uri))
        val add = RideExport.ridesToInsert(allRides(), b.rides)
        val db = AppDatabase.get(context)
        db.runInTransaction { add.forEach { dao.insertRide(RideLogEntity.from(it)) } }
        b.vehicleSettings.forEach { (p, v) ->
            settings.updateVehicleSettings(p, v.tankCapacityL.toString(), v.criticalTempC.toString(), v.targetIdleRpm.toString(), v.assignedBattery)
        }
        return add.size
    }

    // ------------------------------------------------------------------ storage
    fun freeBytes(): Long = try { StatFs(context.filesDir.absolutePath).availableBytes } catch (e: Exception) { -1 }

    /** Temp data only: the app cache dirs. Never the DB, prefs, journals or exports. */
    fun tempBytes(): Long = cacheDirs().sumOf { dirSize(it) }

    fun clearTempData(): Long {
        val before = tempBytes()
        cacheDirs().forEach { d -> d.listFiles()?.forEach { it.deleteRecursively() } }
        return before - tempBytes()
    }

    private fun cacheDirs(): List<File> = listOfNotNull(context.cacheDir, context.externalCacheDir)
    private fun dirSize(f: File): Long = if (f.isFile) f.length() else (f.listFiles()?.sumOf { dirSize(it) } ?: 0L)
}

object BuildConfigCompat {
    fun versionName(c: Context): String = try {
        c.packageManager.getPackageInfo(c.packageName, 0).versionName ?: "?"
    } catch (e: Exception) { "?" }
}
