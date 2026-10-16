package com.cgs.atvobserver.core.engine;

/**
 * Public facade over the verbatim-ported AdaptiveEventFilter (whose API is package-private so the
 * frozen-line tests stay identical). Used by the app's service journal.
 */
public final class EventFilter {
    private final AdaptiveEventFilter f = new AdaptiveEventFilter();

    public AdaptiveEventFilter.State classify(double rmsMeanDb, double rmsMaxDb, double periodicFrac,
                                              double vibRms, double gyroRms, boolean pocketed, double speedKmh) {
        AdaptiveEventFilter.Features x = new AdaptiveEventFilter.Features();
        x.rmsMeanDb = rmsMeanDb; x.rmsMaxDb = rmsMaxDb; x.periodicFrac = periodicFrac;
        x.vibRms = vibRms; x.gyroRms = gyroRms; x.pocketed = pocketed; x.speedKmh = speedKmh;
        return f.classify(x);
    }

    public double lastScore() { return f.lastScore; }
    public AdaptiveEventFilter.State lastRaw() { return f.lastRaw; }
    public String summary() { return f.summary(); }
    public void reset() { f.reset(); }

    public static double floorDb() { return AdaptiveEventFilter.floorDb(); }
    public static double gateDb() { return AdaptiveEventFilter.gateDb(); }
    public static double engineGateDb(double rmsDb) { return AdaptiveEventFilter.engineGateDb(rmsDb); }
}
