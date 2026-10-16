package com.cgs.atvobserver.core.engine;

import com.cgs.atvobserver.core.engine.RideRecord;

import java.io.BufferedReader;
import java.io.StringReader;
import java.util.Map;

/**
 * Host-JVM test of the pure-Java ride-record logic used by PocketRecorder (no Android needed):
 * vehicle-profile propagation into the journal header and the ride_logs row, orphan-journal
 * recovery with a Daelim active profile, legacy (pre-fix) journal handling, no fabricated weather.
 */
/** Verbatim port of tests/RecorderTest.java (frozen patch line) to JUnit. */
public class PortedRecorderTest {
    static int fails = 0;
    static void check(String what, boolean ok) { System.out.println((ok ? "PASS " : "FAIL ") + what); if (!ok) fails++; }

    static final String HEADER_ROW = "t_ms,elapsed_s,lat,lon,acc_m,speed_kmh,dist_km,gps_ok,rms_db,rpm,rpm_var,engine,audio_conf"
            + ",audio_frames,rms_mean_db,rms_max_db,periodic_frac,audio_floor_db,engine_gate_db"
            + ",vib_rms,peak_g,gyro_rms,heading_deg,pressure_hpa,alt_m,lux,prox_near,pocketed,score,raw_state,state";

    static String rows(int n) {
        StringBuilder sb = new StringBuilder();
        long t0 = 1_760_000_000_000L;
        for (int i = 0; i < n; i++) {
            double dist = 0.010 * i;
            sb.append(t0 + i * 1000L).append(',').append(i).append(",45.100000,24.300000,8.0,")
              .append(String.format(java.util.Locale.US, "%.1f", 20.0 + i)).append(',')
              .append(String.format(java.util.Locale.US, "%.3f", dist))
              .append(",1,60.0,1400,20,1,80,10,60.0,62.0,0.80,40,52,0.400,")
              .append(i == 3 ? "2.10" : "1.05").append(",0.100,90,,,,1,1,0.70,RIDING,RIDING\n");
        }
        return sb.toString();
    }

    @org.junit.Test
    public void legacyHostSuite() throws Exception {
        fails = 0;
        // 1) normalisation matches original AppConfigManager (unknown -> ATV)
        check("DAELIM kept", RideRecord.normalizeVehicle("DAELIM").equals("DAELIM"));
        check("MOTOCROSS kept", RideRecord.normalizeVehicle("MOTOCROSS").equals("MOTOCROSS"));
        check("APP_TEST kept", RideRecord.normalizeVehicle("APP_TEST").equals("APP_TEST"));
        check("null -> ATV (original default)", RideRecord.normalizeVehicle(null).equals("ATV"));
        check("garbage -> ATV (original default)", RideRecord.normalizeVehicle("TRACTOR").equals("ATV"));

        // 2) header carries the profile active at ride start and stays a v1 header
        String h = RideRecord.journalHeader("POCKET", "DAELIM", 0x88, 28, "samsung/SM-J330F");
        check("header is still #J3ATV-JOURNAL v1", h.startsWith("#J3ATV-JOURNAL v1 mode=POCKET "));
        check("header has vehicle=DAELIM", "DAELIM".equals(RideRecord.headerToken(h, "vehicle")));
        check("header keeps fgsTypes token", "0x88".equals(RideRecord.headerToken(h, "fgsTypes")));
        // the pre-fix recovery code parsed mode with substring(indexOf("mode=")+5).split(" ")[0]
        String oldParse = h.substring(h.indexOf("mode=") + 5).split(" ")[0];
        check("old v1 reader still parses mode from new header", oldParse.equals("POCKET"));

        // 3) orphan recovery: Daelim ride killed mid-way, user switched to ATV before relaunch
        String daelimJournal = h + "\n" + HEADER_ROW + "\n" + rows(12);   // no #END -> orphan
        RideRecord.Parsed p = RideRecord.parseJournal(new BufferedReader(new StringReader(daelimJournal)));
        check("orphan detected (no #END)", !p.ended);
        check("12 samples parsed", p.summary.samples == 12);
        String vehicle = RideRecord.recoveredVehicle(p, "ATV" /* active NOW */);
        check("recovered ride filed under DAELIM (profile at ride start), not ATV", vehicle.equals("DAELIM"));
        Map<String, Object> row = RideRecord.rideRow(p.mode, vehicle, p.summary, "Recovered");
        check("row vehicleType=DAELIM", "DAELIM".equals(row.get("vehicleType")));
        check("row mode=POCKET", "POCKET".equals(row.get("mode")));
        check("row has 24 non-id ride_logs columns", row.size() == 24);
        check("weather not fabricated (Unknown, not 'Normal Dry')", "Unknown".equals(row.get("weatherCondition")));
        check("fuel 0.0 flagged unknown in terrainSummary",
                ((Double) row.get("estimatedFuelUsedL")) == 0.0 && ((String) row.get("terrainSummary")).contains("fuel=unknown"));
        check("distance 0.110 km", Math.abs((Double) row.get("distanceKm") - 0.11) < 1e-9);
        check("duration 11 s", ((Long) row.get("durationSeconds")) == 11L);
        check("max speed 31 km/h", Math.abs((Double) row.get("maxSpeedKmh") - 31.0) < 1e-9);
        check("peak g from journal column 20", Math.abs((Double) row.get("peakGForce") - 2.10) < 1e-9);

        // 4) terminated journal is not recovered again (no duplicate ride)
        RideRecord.Parsed ended = RideRecord.parseJournal(new BufferedReader(new StringReader(
                daelimJournal + "#END reason=recovered rows=12 vehicle=DAELIM samples=12\n")));
        check("journal with #END is skipped (no duplicate on 2nd launch)", ended.ended);

        // 5) legacy journal written before the fix (no vehicle= token): falls back to active profile
        String legacy = "#J3ATV-JOURNAL v1 mode=TRIP fgsTypes=0x8 sdk=28 device=samsung/SM-J330F\n" + HEADER_ROW + "\n" + rows(6);
        RideRecord.Parsed lp = RideRecord.parseJournal(new BufferedReader(new StringReader(legacy)));
        check("legacy journal: mode TRIP parsed", lp.mode.equals("TRIP"));
        check("legacy journal: no header vehicle", lp.headerVehicle == null);
        check("legacy journal with DAELIM active -> DAELIM", RideRecord.recoveredVehicle(lp, "DAELIM").equals("DAELIM"));

        // 6) live-session path: same row builder, profile from the session
        RideRecord.JournalSummary live = new RideRecord.JournalSummary();
        for (int i = 0; i < 6; i++) { live.addTime(1000L * i); live.addValues(45.1, 24.3, 10, 0.01 * i); }
        check("live MOTOCROSS session row vehicleType=MOTOCROSS",
                "MOTOCROSS".equals(RideRecord.rideRow("TRIP", "MOTOCROSS", live, "Pocket journal").get("vehicleType")));

        System.out.println(fails == 0 ? "ALL TESTS PASSED" : fails + " FAILURE(S)");
        org.junit.Assert.assertEquals("host-test failures", 0, fails);
    }
}
