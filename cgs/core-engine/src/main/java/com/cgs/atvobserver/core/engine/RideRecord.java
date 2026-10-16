package com.cgs.atvobserver.core.engine;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

/**
 * Android-free part of the service ride journal: journal header, vehicle-profile handling, orphan
 * journal parsing and the ride_logs row that PocketRecorder inserts. Kept free of android.* so the
 * host tests (tests/RecorderTest.java) can exercise the exact code that runs on the phone.
 *
 * Profile rule (CGS "profile learning never crosses"): a ride carries the vehicle profile that was
 * active in cgs_atv_config/active_vehicle when the ride STARTED. The profile is written into the
 * journal header (vehicle=...) so crash recovery files the ride under the same profile even if the
 * user switched profiles before the next app start.
 */
public final class RideRecord {
    private RideRecord() { }

    public static final String PREFS = "cgs_atv_config";
    public static final String KEY_ACTIVE_VEHICLE = "active_vehicle";
    public static final String[] VEHICLES = {"ATV", "MOTOCROSS", "DAELIM", "APP_TEST"};

    /** Stored in ride_logs.weatherCondition (TEXT NOT NULL) when no weather was entered/detected. */
    public static final String WEATHER_UNKNOWN = "Unknown";
    /**
     * ride_logs.estimatedFuelUsedL is REAL NOT NULL in the frozen v5 schema, so "unknown" cannot be
     * stored as NULL. 0.0 is kept (least-wrong value) and the row's terrainSummary carries
     * FUEL_UNKNOWN_NOTE so the value is not mistaken for a measured 0 L.
     */
    public static final double FUEL_UNKNOWN_L = 0.0;
    public static final String FUEL_UNKNOWN_NOTE = "fuel=unknown";

    /** Same mapping as the original AppConfigManager.loadConfig(): anything unrecognised -> ATV. */
    public static String normalizeVehicle(String v) {
        if (v != null) {
            String u = v.trim().toUpperCase(Locale.ROOT);
            for (String k : VEHICLES) if (k.equals(u)) return k;
        }
        return "ATV";
    }

    /** First line of a journal file. Extra key=value tokens are ignored by older readers. */
    public static String journalHeader(String mode, String vehicle, int fgsTypes, int sdk, String device) {
        return "#J3ATV-JOURNAL v1 mode=" + mode + " vehicle=" + normalizeVehicle(vehicle)
                + " fgsTypes=0x" + Integer.toHexString(fgsTypes) + " sdk=" + sdk + " device=" + device;
    }

    /** Value of a key=value token in a "#J3ATV-JOURNAL" header line, or null. */
    public static String headerToken(String line, String key) {
        if (line == null) return null;
        for (String tok : line.split(" ")) {
            if (tok.startsWith(key + "=")) return tok.substring(key.length() + 1);
        }
        return null;
    }

    /** Result of parsing one (possibly unterminated) journal file. */
    public static final class Parsed {
        public String mode = "POCKET";
        /** Profile from the header, or null for journals written before the header carried it. */
        public String headerVehicle;
        public boolean ended;
        public final JournalSummary summary = new JournalSummary();
    }

    public static Parsed parseJournal(BufferedReader r) throws IOException {
        Parsed p = new Parsed();
        String line, last = null;
        while ((line = r.readLine()) != null) {
            if (line.startsWith("#J3ATV-JOURNAL")) {
                String m = headerToken(line, "mode");
                if (m != null && !m.isEmpty()) p.mode = m;
                String v = headerToken(line, "vehicle");
                if (v != null && !v.isEmpty()) p.headerVehicle = normalizeVehicle(v);
            } else if (!line.startsWith("#") && !line.startsWith("t_ms")) {
                p.summary.addCsv(line);
            }
            if (!line.isEmpty()) last = line;
        }
        p.ended = last != null && last.startsWith("#END");
        return p;
    }

    /**
     * Profile to file a recovered ride under: the header value if present; for legacy journals
     * (no vehicle= token) the profile active now - the best information available.
     */
    public static String recoveredVehicle(Parsed p, String activeVehicleNow) {
        return p.headerVehicle != null ? p.headerVehicle : normalizeVehicle(activeVehicleNow);
    }

    /** The ride_logs row (24 columns, id is autoincrement) for a service-inserted / recovered ride. */
    public static Map<String, Object> rideRow(String mode, String vehicle, JournalSummary s, String note) {
        long dur = Math.max(0, (s.lastT - s.firstT) / 1000L);
        Map<String, Object> cv = new LinkedHashMap<>();
        cv.put("startTime", s.firstT);
        cv.put("midTime", s.firstT + (s.lastT - s.firstT) / 2);
        cv.put("endTime", s.lastT);
        cv.put("durationSeconds", dur);
        cv.put("distanceKm", s.distanceKm());
        cv.put("maxSpeedKmh", s.maxSpeed);
        cv.put("avgSpeedKmh", dur > 0 ? s.distanceKm() / (dur / 3600.0) : 0.0);
        cv.put("estimatedFuelUsedL", FUEL_UNKNOWN_L);
        cv.put("weatherCondition", WEATHER_UNKNOWN);
        cv.put("mode", mode);
        cv.put("vehicleType", normalizeVehicle(vehicle));
        cv.put("warningCount", 0);
        cv.put("isFinished", 1);
        cv.put("startLat", s.startLat);
        cv.put("startLon", s.startLon);
        cv.put("midLat", s.endLat);
        cv.put("midLon", s.endLon);
        cv.put("endLat", s.endLat);
        cv.put("endLon", s.endLon);
        cv.put("peakGForce", s.peakG > 0 ? s.peakG : 1.0);
        cv.put("smoothnessScore", 0);
        cv.put("launchAccelTimeSec", 0.0);
        cv.put("terrainSummary", note + " | " + FUEL_UNKNOWN_NOTE + " weather=unknown");
        cv.put("isCompressed", 0);
        return cv;
    }

    public static String fmt(double v, int digits) {
        return String.format(Locale.US, "%." + digits + "f", v);
    }

    /** Running aggregate of a ride (from live samples or from a CSV journal). */
    public static class JournalSummary {
        public int samples;
        public long firstT, lastT;
        public double minDist = Double.MAX_VALUE, maxDist;
        public double maxSpeed;
        public double startLat, startLon, endLat, endLon;
        public double peakG, minAlt = Double.MAX_VALUE, maxAlt = -Double.MAX_VALUE;
        public String filterSummary = "";

        public double altRange() { return minAlt == Double.MAX_VALUE ? 0 : maxAlt - minAlt; }

        public void reset() {
            samples = 0; firstT = lastT = 0; minDist = Double.MAX_VALUE; maxDist = 0; maxSpeed = 0;
            peakG = 0; minAlt = Double.MAX_VALUE; maxAlt = -Double.MAX_VALUE; filterSummary = "";
            startLat = startLon = endLat = endLon = 0;
        }

        public void addTime(long t) {
            if (samples == 0) firstT = t;
            lastT = t;
            samples++;
        }

        public void addCsv(String line) {
            String[] p = line.split(",", -1);
            if (p.length < 7) return;
            try {
                long t = Long.parseLong(p[0]);
                addTime(t);
                if (p[2].isEmpty()) return;
                if (p.length > 20 && !p[20].isEmpty()) peakG = Math.max(peakG, Double.parseDouble(p[20]));
                addValues(Double.parseDouble(p[2]), Double.parseDouble(p[3]),
                        Double.parseDouble(p[5]), Double.parseDouble(p[6]));
            } catch (NumberFormatException ignored) { }
        }

        public void addValues(double lat, double lon, double speed, double dist) {
            if (lat != 0 || lon != 0) {
                if (startLat == 0 && startLon == 0) { startLat = lat; startLon = lon; }
                endLat = lat; endLon = lon;
            }
            if (speed > maxSpeed) maxSpeed = speed;
            if (dist < minDist) minDist = dist;
            if (dist > maxDist) maxDist = dist;
        }

        public double distanceKm() { return minDist == Double.MAX_VALUE ? 0 : Math.max(0, maxDist - minDist); }

        public String summaryLine() {
            return "samples=" + samples + " dur_s=" + Math.max(0, (lastT - firstT) / 1000L)
                    + " dist_km=" + fmt(distanceKm(), 3) + " vmax_kmh=" + fmt(maxSpeed, 1);
        }
    }
}
