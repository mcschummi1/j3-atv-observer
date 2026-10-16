package com.cgs.atvobserver.core.engine;

import com.cgs.atvobserver.core.engine.AdaptiveEventFilter;
import java.lang.reflect.*;

/** Host-JVM test of the pure-Java parts of AdaptiveEventFilter (no Android needed). */
/** Verbatim port of tests/FilterTest.java (frozen patch line) to JUnit. */
public class PortedFilterTest {
    static int fails = 0;
    static void check(String what, boolean ok) { System.out.println((ok ? "PASS " : "FAIL ") + what); if (!ok) fails++; }

    @org.junit.Test
    public void legacyHostSuite() throws Exception {
        fails = 0;
        // 1) engine gate: before evidence -> original 65 dB
        check("gate defaults to original 65 dB", AdaptiveEventFilter.engineGateDb(50) == 65.0);
        // quiet phone on the table at ~38 dB for 200 frames, then muffled engine at 55 dB
        double g = 0;
        for (int i = 0; i < 200; i++) g = AdaptiveEventFilter.engineGateDb(38 + (i % 3));
        System.out.println("     learned gate after quiet phase = " + g + " dB");
        check("gate learned from ambient floor (38+12=50)", g == 50.0);
        for (int i = 0; i < 300; i++) g = AdaptiveEventFilter.engineGateDb(55);
        check("muffled 55 dB engine passes adaptive gate (original 65 dB would reject)", 55 > g && !(55 > 65.0));
        check("gate never stricter than original", g <= 65.0);
        check("digital silence still rejected (0 dB -> gate 65)", AdaptiveEventFilter.engineGateDb(0) == 65.0);
        // 2) autocorr threshold
        check("loud frame keeps 0.15 absolute threshold", AdaptiveEventFilter.autocorrThreshold(5.0) == 0.15);
        check("quiet frame uses 0.4*energy", Math.abs(AdaptiveEventFilter.autocorrThreshold(0.1) - 0.04) < 1e-12);

        // 3) per-second classifier (package-private API via reflection)
        Constructor<AdaptiveEventFilter> c = AdaptiveEventFilter.class.getDeclaredConstructor();
        c.setAccessible(true);
        AdaptiveEventFilter f = c.newInstance();
        Class<?> featC = Class.forName("com.cgs.atvobserver.core.engine.AdaptiveEventFilter$Features");
        Constructor<?> fc = featC.getDeclaredConstructor(); fc.setAccessible(true);
        Method classify = AdaptiveEventFilter.class.getDeclaredMethod("classify", featC); classify.setAccessible(true);
        Method summary = AdaptiveEventFilter.class.getDeclaredMethod("summary"); summary.setAccessible(true);
        String[] script = new String[]{"quiet","quiet","quiet","quiet","noise","quiet","quiet","idle","idle","idle","idle","ride","ride","ride","ride","ride","noise","ride","ride","quiet"};
        StringBuilder out = new StringBuilder();
        for (String s : script) {
            Object ft = fc.newInstance();
            set(featC, ft, "vibRms", 0.06); set(featC, ft, "rmsMeanDb", 39.0); set(featC, ft, "periodicFrac", 0.0); set(featC, ft, "speedKmh", -1.0);
            switch (s) {
                case "noise": set(featC, ft, "rmsMeanDb", 58.0); break;                         // loud, aperiodic, no shake
                case "idle": set(featC, ft, "rmsMeanDb", 52.0); set(featC, ft, "periodicFrac", 0.8); set(featC, ft, "vibRms", 0.4); break;
                case "ride": set(featC, ft, "rmsMeanDb", 56.0); set(featC, ft, "periodicFrac", 0.7); set(featC, ft, "vibRms", 2.5); set(featC, ft, "speedKmh", 22.0); break;
            }
            out.append(s).append("->").append(classify.invoke(f, ft)).append(' ');
        }
        System.out.println("     " + out);
        String sum = (String) summary.invoke(f);
        System.out.println("     summary: " + sum);
        check("isolated noise seconds never become a stable state", !out.toString().contains("->NOISE"));
        check("riding detected", out.toString().contains("ride->RIDING"));
        check("engine idle detected", out.toString().contains("idle->ENGINE_IDLE"));
        check("noise seconds counted as rejected", sum.contains("Noise rejected 2s"));
        System.out.println(fails == 0 ? "ALL TESTS PASSED" : fails + " FAILURE(S)");
        org.junit.Assert.assertEquals("host-test failures", 0, fails);
    }
    static void set(Class<?> c, Object o, String n, double v) throws Exception { Field f = c.getDeclaredField(n); f.setAccessible(true); f.setDouble(o, v); }
}
