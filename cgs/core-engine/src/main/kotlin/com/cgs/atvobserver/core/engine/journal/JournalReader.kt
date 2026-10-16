package com.cgs.atvobserver.core.engine.journal

import com.cgs.atvobserver.core.engine.RideRecord
import java.io.BufferedReader

/**
 * Reader for ride journals `ride_<mode>_<yyyyMMdd_HHmmss>.csv` in
 * `Android/data/com.cgs.atvobserver/files/ride_journal/`.
 *
 * Versions:
 *  - v1: `#J3ATV-JOURNAL v1 mode=... [vehicle=...] fgsTypes=... sdk=... device=...`, then the 32-column
 *    header (written by the frozen v1.1.7 patch line and, unchanged, by this app).
 *  - v2: reserved for a future format. Same first-line shape with `v2`; columns are always resolved
 *    by NAME from the header line, so v2 may add columns. Unknown versions are rejected.
 */
object JournalReader {
    const val MAGIC = "#J3ATV-JOURNAL"
    val SUPPORTED_VERSIONS = setOf(1, 2)

    /** The 32 v1 columns, in file order. */
    val V1_COLUMNS: List<String> = ("t_ms,elapsed_s,lat,lon,acc_m,speed_kmh,dist_km,gps_ok,rms_db,rpm,rpm_var,engine," +
        "audio_conf,audio_frames,rms_mean_db,rms_max_db,periodic_frac,audio_floor_db,engine_gate_db,vib_rms,peak_g," +
        "gyro_rms,heading_deg,pressure_hpa,alt_m,lux,prox_near,pocketed,score,raw_state,state").split(',')

    data class Journal(
        val version: Int,
        val tokens: Map<String, String>,
        val columns: List<String>,
        val rows: List<Map<String, String>>,
        val endLine: String?,
    ) {
        val mode: String get() = tokens["mode"] ?: "POCKET"
        /** Profile from the header, or null (journals from before the vehicle= token existed). */
        val vehicle: String? get() = tokens["vehicle"]?.let { RideRecord.normalizeVehicle(it) }
        val isTerminated: Boolean get() = endLine != null
        fun double(row: Map<String, String>, col: String): Double? = row[col]?.takeIf { it.isNotEmpty() }?.toDoubleOrNull()
    }

    class UnsupportedJournalException(msg: String) : Exception(msg)

    fun parseHeader(line: String): Pair<Int, Map<String, String>> {
        if (!line.startsWith(MAGIC)) throw UnsupportedJournalException("not a journal: missing $MAGIC")
        val parts = line.removePrefix(MAGIC).trim().split(' ').filter { it.isNotEmpty() }
        val version = parts.firstOrNull()?.removePrefix("v")?.toIntOrNull()
            ?: throw UnsupportedJournalException("missing version")
        if (version !in SUPPORTED_VERSIONS) throw UnsupportedJournalException("unsupported journal version v$version")
        val tokens = parts.drop(1).mapNotNull { t ->
            val i = t.indexOf('='); if (i <= 0) null else t.substring(0, i) to t.substring(i + 1)
        }.toMap()
        return version to tokens
    }

    fun read(reader: BufferedReader): Journal {
        val first = reader.readLine() ?: throw UnsupportedJournalException("empty file")
        val (version, tokens) = parseHeader(first)
        var columns = V1_COLUMNS
        val rows = ArrayList<Map<String, String>>()
        var end: String? = null
        reader.lineSequence().forEach { line ->
            when {
                line.isEmpty() -> Unit
                line.startsWith("#END") -> end = line
                line.startsWith("#") -> Unit
                line.startsWith("t_ms,") -> columns = line.split(',')
                else -> {
                    val p = line.split(',')
                    if (p.size >= minOf(7, columns.size) && p[0].toLongOrNull() != null) {
                        rows += columns.indices.associate { i -> columns[i] to (p.getOrNull(i) ?: "") }
                    }
                }
            }
        }
        return Journal(version, tokens, columns, rows, end)
    }
}
