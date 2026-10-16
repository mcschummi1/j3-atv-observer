package com.cgs.atvobserver.core.model

/** CGS confidence scale. UNKNOWN means "no usable value"; it is never rendered as a number. */
enum class Confidence(val label: String) {
    UNKNOWN("Unknown"),
    VERY_LOW("Very low"),
    LOW("Low"),
    MEDIUM("Medium"),
    HIGH("High"),
}

/** CGS data category (file 1): measured, filtered, estimated, corrected and manual data stay separate. */
enum class Provenance { MEASURED, FILTERED, ESTIMATED, CORRECTED, MANUAL, UNKNOWN }

/** Availability of a source. UNAVAILABLE = permission denied / sensor missing; UNKNOWN = no valid data now. */
enum class Availability { OK, UNKNOWN, UNAVAILABLE }

/**
 * One displayed/stored value with its evidence. `value` is null whenever availability != OK, so a
 * stale or invented number can never be shown by accident.
 */
data class Reading<out T>(
    val value: T?,
    val availability: Availability,
    val confidence: Confidence,
    val provenance: Provenance,
    val source: String,
    val ageMs: Long? = null,
    val reason: String = "",
) {
    val isKnown: Boolean get() = availability == Availability.OK && value != null

    companion object {
        fun <T> known(value: T, confidence: Confidence, provenance: Provenance, source: String, ageMs: Long? = null, reason: String = "") =
            Reading(value, Availability.OK, confidence, provenance, source, ageMs, reason)

        fun <T> unknown(source: String, reason: String, ageMs: Long? = null): Reading<T> =
            Reading(null, Availability.UNKNOWN, Confidence.UNKNOWN, Provenance.UNKNOWN, source, ageMs, reason)

        fun <T> unavailable(source: String, reason: String): Reading<T> =
            Reading(null, Availability.UNAVAILABLE, Confidence.UNKNOWN, Provenance.UNKNOWN, source, null, reason)
    }
}

/** Formats a reading for the UI: the value, or exactly "Unknown" / "Unavailable". */
fun <T> Reading<T>.display(format: (T) -> String): String = when {
    availability == Availability.UNAVAILABLE -> "Unavailable"
    value == null || availability == Availability.UNKNOWN -> "Unknown"
    else -> format(value)
}
