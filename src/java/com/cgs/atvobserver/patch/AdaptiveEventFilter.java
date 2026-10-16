package com.cgs.atvobserver.patch;

/**
 * On-device event filter for the ride journal (step 4).
 *
 * HONEST SCOPE: this is adaptive DSP + a hand-weighted logistic score. It is NOT a trained
 * machine-learning model and contains no TFLite/NN code. See docs/AI_FILTERING.md for what a
 * full model-based implementation would look like.
 *
 * Two parts:
 *  1. {@link #engineGateDb(double)} - replaces the hard-coded 65 dB "engine running" gate in
 *     EngineAudioProcessor.processAudioBuffer with a per-device threshold learned from the low
 *     percentile of observed frame levels. It is never stricter than the original 65 dB.
 *     {@link #autocorrThreshold(double)} likewise relaxes the absolute 0.15 autocorrelation
 *     threshold to an energy-normalised one for quiet (pocketed) signals.
 *  2. {@link #classify} - per-second fusion of audio, motion and GPS features into
 *     QUIET / NOISE / ENGINE_IDLE / RIDING with 3 s majority-vote hysteresis, so short transients
 *     (fabric rubbing, wind gusts, speech, phone handling) are rejected instead of logged as events.
 */
public final class AdaptiveEventFilter {
    // ---------------------------------------------------------------- engine gate (per audio frame)
    private static final double ORIGINAL_GATE_DB = 65.0;
    private static final double MIN_GATE_DB = 35.0;
    private static final double GATE_MARGIN_DB = 12.0;
    private static final int BINS = 121;                       // 0..120 dB, 1 dB bins
    private static final double[] HIST = new double[BINS];
    private static double histTotal;
    private static int framesSinceDecay;
    private static volatile double sLastGate = ORIGINAL_GATE_DB;
    private static volatile double sFloorDb = Double.NaN;

    AdaptiveEventFilter() { }

    /** Returns the threshold the original code compares {@code rmsDb > threshold} against. */
    public static synchronized double engineGateDb(double rmsDb) {
        if (!(rmsDb > 0)) return ORIGINAL_GATE_DB;            // digital silence: keep original behaviour
        int b = (int) Math.max(0, Math.min(BINS - 1, Math.round(rmsDb)));
        HIST[b] += 1.0;
        histTotal += 1.0;
        if (++framesSinceDecay >= 1000) {                      // ~3 min at 22 kHz / 4096: slow forgetting
            framesSinceDecay = 0;
            for (int i = 0; i < BINS; i++) HIST[i] *= 0.5;
            histTotal *= 0.5;
        }
        if (histTotal < 30) return ORIGINAL_GATE_DB;           // not enough evidence yet
        double target = histTotal * 0.05, acc = 0;            // 5th percentile = ambient floor
        int p5 = 0;
        for (int i = 0; i < BINS; i++) { acc += HIST[i]; if (acc >= target) { p5 = i; break; } }
        sFloorDb = p5;
        double gate = Math.max(MIN_GATE_DB, Math.min(ORIGINAL_GATE_DB, p5 + GATE_MARGIN_DB));
        sLastGate = gate;
        return gate;
    }

    /**
     * Replaces the absolute {@code maxAutocorr > 0.15} test. Accepts either the original absolute
     * value or a normalised autocorrelation above 0.4 of the frame energy.
     */
    public static double autocorrThreshold(double sumSquares) {
        if (!(sumSquares > 0)) return 0.15;
        return Math.min(0.15, 0.4 * sumSquares);
    }

    static double floorDb() { return sFloorDb; }
    static double gateDb() { return sLastGate; }

    // ---------------------------------------------------------------- per-second classifier
    public enum State { QUIET, NOISE, ENGINE_IDLE, RIDING }

    /** Per-second feature vector (filled by PocketRecorder). */
    static final class Features {
        double rmsMeanDb, rmsMaxDb;      // audio level after the app's 2-700 Hz band-pass
        double periodicFrac;             // fraction of frames with an RPM estimate (autocorr peak)
        double vibRms;                   // m/s^2, gravity removed
        double gyroRms;                  // rad/s
        double speedKmh = -1;            // < 0 = no usable GPS fix
        boolean pocketed;
    }

    private double vibFloor = Double.NaN;
    private final State[] window = new State[3];
    private int wIdx;
    private State stable = State.QUIET;
    double lastScore;
    State lastRaw = State.QUIET;
    int noiseRejectedSeconds;
    final int[] secondsByState = new int[State.values().length];

    State classify(Features f) {
        // adaptive vibration floor (fast down / slow up) - phone-on-table vs. engine shake
        if (Double.isNaN(vibFloor)) vibFloor = Math.max(0.05, f.vibRms);
        else if (f.vibRms < vibFloor) vibFloor += 0.3 * (f.vibRms - vibFloor);
        else vibFloor += 0.01 * (f.vibRms - vibFloor);
        vibFloor = Math.max(0.05, vibFloor);

        double floor = Double.isNaN(sFloorDb) ? 40.0 : sFloorDb;
        double snr = f.rmsMeanDb > 0 ? f.rmsMeanDb - floor : 0;
        double vibRatio = f.vibRms / vibFloor;
        boolean moving = f.speedKmh > 5.0;

        // hand-weighted logistic score ("is the engine/vehicle active?")
        double z = -3.0
                + 1.2 * clamp(snr / 10.0, 0, 3)
                + 2.0 * f.periodicFrac
                + 0.8 * clamp(Math.log(Math.max(vibRatio, 1e-3)) / Math.log(2), -2, 3)
                + (moving ? 1.5 : 0);
        lastScore = 1.0 / (1.0 + Math.exp(-z));

        State raw;
        if (moving && (lastScore > 0.5 || vibRatio > 1.5)) raw = State.RIDING;
        else if (lastScore > 0.7 && vibRatio > 3.0 && f.vibRms > 1.5) raw = State.RIDING; // no GPS: strong terrain shake
        else if (lastScore > 0.6) raw = State.ENGINE_IDLE;
        else if (snr > 6.0 && f.periodicFrac < 0.2 && vibRatio < 1.5) raw = State.NOISE; // loud but aperiodic + no shake
        else raw = State.QUIET;
        lastRaw = raw;
        if (raw == State.NOISE) noiseRejectedSeconds++;

        // 3-second majority vote -> hysteresis; NOISE never becomes a stable event state
        window[wIdx] = raw == State.NOISE ? State.QUIET : raw;
        wIdx = (wIdx + 1) % window.length;
        int[] votes = new int[State.values().length];
        for (State s : window) if (s != null) votes[s.ordinal()]++;
        for (State s : State.values()) if (votes[s.ordinal()] >= 2) { stable = s; break; }
        secondsByState[stable.ordinal()]++;
        return stable;
    }

    String summary() {
        int total = 0;
        for (int v : secondsByState) total += v;
        if (total == 0) return "no samples";
        return String.format(java.util.Locale.US, "Riding %d%% | Engine idle %d%% | Quiet %d%% | Noise rejected %ds",
                100 * secondsByState[State.RIDING.ordinal()] / total,
                100 * secondsByState[State.ENGINE_IDLE.ordinal()] / total,
                100 * secondsByState[State.QUIET.ordinal()] / total, noiseRejectedSeconds);
    }

    void reset() {
        vibFloor = Double.NaN; wIdx = 0; stable = State.QUIET; noiseRejectedSeconds = 0;
        java.util.Arrays.fill(window, null);
        java.util.Arrays.fill(secondsByState, 0);
    }

    private static double clamp(double v, double lo, double hi) { return Math.max(lo, Math.min(hi, v)); }
}
