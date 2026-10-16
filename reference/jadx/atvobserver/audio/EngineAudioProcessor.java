package com.cgs.atvobserver.audio;

import android.media.AudioRecord;
import androidx.camera.video.AudioStats;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.scheduling.WorkQueueKt;

/* compiled from: EngineAudioProcessor.kt */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0017\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u000fH\u0002J\u000e\u0010!\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020\u0015J\u0010\u0010#\u001a\u00020\u001d2\u0006\u0010$\u001a\u00020%H\u0007J\u0006\u0010&\u001a\u00020\u001dR\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000fX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000fX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u000f0\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u000fX\u0082D¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcom/cgs/atvobserver/audio/EngineAudioProcessor;", "", "()V", "_analysisState", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/cgs/atvobserver/audio/AudioAnalysisResult;", "analysisState", "Lkotlinx/coroutines/flow/StateFlow;", "getAnalysisState", "()Lkotlinx/coroutines/flow/StateFlow;", "audioRecord", "Landroid/media/AudioRecord;", "baselineRms", "", "bufferSize", "", "butterworthFilter", "Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;", "frameSize", "historyCapacity", "isDiagnosticMode", "", "isRecording", "processingJob", "Lkotlinx/coroutines/Job;", "rpmHistory", "Lkotlin/collections/ArrayDeque;", "sampleRate", "processAudioBuffer", "", "buffer", "", "size", "setDiagnosticMode", "enabled", "startListening", "scope", "Lkotlinx/coroutines/CoroutineScope;", "stopListening", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes14.dex */
public final class EngineAudioProcessor {
    public static final int $stable = 8;
    private AudioRecord audioRecord;
    private double baselineRms;
    private volatile boolean isDiagnosticMode;
    private boolean isRecording;
    private Job processingJob;
    private final MutableStateFlow<AudioAnalysisResult> _analysisState = StateFlowKt.MutableStateFlow(new AudioAnalysisResult(0, 0, false, false, false, AudioStats.AUDIO_AMPLITUDE_NONE, null, WorkQueueKt.MASK, null));
    private final StateFlow<AudioAnalysisResult> analysisState = this._analysisState;
    private final int sampleRate = 22050;
    private final int frameSize = 4096;
    private final int bufferSize = RangesKt.coerceAtLeast(AudioRecord.getMinBufferSize(this.sampleRate, 16, 2), this.frameSize * 2);
    private final ButterworthBandpassFilter butterworthFilter = new ButterworthBandpassFilter(2.0d, 700.0d, this.sampleRate);
    private final ArrayDeque<Integer> rpmHistory = new ArrayDeque<>();
    private final int historyCapacity = 10;

    public final StateFlow<AudioAnalysisResult> getAnalysisState() {
        return this.analysisState;
    }

    public final void setDiagnosticMode(boolean enabled) {
        this.isDiagnosticMode = enabled;
    }

    public final void startListening(CoroutineScope scope) {
        Job launch$default;
        Intrinsics.checkNotNullParameter(scope, "scope");
        if (this.isRecording) {
            return;
        }
        try {
            this.audioRecord = new AudioRecord(1, this.sampleRate, 16, 2, this.bufferSize);
            AudioRecord audioRecord = this.audioRecord;
            if (audioRecord != null) {
                audioRecord.startRecording();
            }
            this.isRecording = true;
            launch$default = BuildersKt__Builders_commonKt.launch$default(scope, Dispatchers.getDefault(), null, new EngineAudioProcessor$startListening$1(this, null), 2, null);
            this.processingJob = launch$default;
        } catch (Exception e) {
            this.isRecording = false;
            this._analysisState.setValue(new AudioAnalysisResult(0, 0, false, false, false, AudioStats.AUDIO_AMPLITUDE_NONE, "UNAVAILABLE", 55, null));
        }
    }

    public final void stopListening() {
        this.isRecording = false;
        Job job = this.processingJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        try {
            AudioRecord audioRecord = this.audioRecord;
            if (audioRecord != null) {
                audioRecord.stop();
            }
            AudioRecord audioRecord2 = this.audioRecord;
            if (audioRecord2 != null) {
                audioRecord2.release();
            }
        } catch (Exception e) {
        }
        this.audioRecord = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void processAudioBuffer(short[] buffer, int size) {
        int rawRpm;
        double exactLag;
        double exactLag2;
        double sumSquares = AudioStats.AUDIO_AMPLITUDE_NONE;
        for (int i = 0; i < size; i++) {
            double sample = buffer[i] / 32768.0d;
            sumSquares += sample * sample;
        }
        double rms = Math.sqrt(sumSquares / size);
        double rmsDb = rms > 1.0E-5d ? (20 * Math.log10(rms)) + 90.0d : AudioStats.AUDIO_AMPLITUDE_NONE;
        boolean isRunning = rmsDb > 65.0d;
        if (!isRunning) {
            this.rpmHistory.clear();
            this._analysisState.setValue(new AudioAnalysisResult(0, 0, true, false, false, rmsDb, "UNAVAILABLE"));
            return;
        }
        int minLag = RangesKt.coerceAtLeast((int) (this.sampleRate / 166.66666666666666d), 10);
        int maxLag = RangesKt.coerceAtMost((int) (this.sampleRate / 3.3333333333333335d), size / 2);
        int bestLag = -1;
        double maxAutocorr = -1.0d;
        int lag = minLag;
        if (lag <= maxLag) {
            while (true) {
                double sum = AudioStats.AUDIO_AMPLITUDE_NONE;
                int i2 = 0;
                for (int i3 = size - lag; i2 < i3; i3 = i3) {
                    double sumSquares2 = sumSquares;
                    double sumSquares3 = buffer[i2];
                    sum += (sumSquares3 / 32768.0d) * (buffer[i2 + lag] / 32768.0d);
                    i2++;
                    sumSquares = sumSquares2;
                }
                double sumSquares4 = sumSquares;
                if (sum > maxAutocorr) {
                    maxAutocorr = sum;
                    bestLag = lag;
                }
                if (lag == maxLag) {
                    break;
                }
                lag++;
                sumSquares = sumSquares4;
            }
        }
        double maxAutocorr2 = maxAutocorr;
        int rawRpm2 = 0;
        if (bestLag > 0 && maxAutocorr2 > 0.15d) {
            double exactLag3 = bestLag;
            if (bestLag <= minLag || bestLag >= maxLag) {
                exactLag = exactLag3;
            } else {
                double alpha = AudioStats.AUDIO_AMPLITUDE_NONE;
                double gamma = AudioStats.AUDIO_AMPLITUDE_NONE;
                int i4 = 0;
                while (i4 < size - (bestLag - 1)) {
                    alpha += (buffer[i4] / 32768.0d) * (buffer[(i4 + bestLag) - 1] / 32768.0d);
                    i4++;
                    maxAutocorr2 = maxAutocorr2;
                    rawRpm2 = rawRpm2;
                    exactLag3 = exactLag3;
                }
                exactLag = exactLag3;
                int i5 = 0;
                while (i5 < size - (bestLag + 1)) {
                    gamma += (buffer[i5] / 32768.0d) * (buffer[(i5 + bestLag) + 1] / 32768.0d);
                    i5++;
                    minLag = minLag;
                }
                double d = 2;
                double denominator = (alpha - (d * maxAutocorr2)) + gamma;
                if (Math.abs(denominator) > 1.0E-5d) {
                    double delta = (alpha - gamma) / (d * denominator);
                    exactLag2 = bestLag + delta;
                    double crankFreqHz = this.sampleRate / exactLag2;
                    rawRpm = RangesKt.coerceIn((int) (120.0d * crankFreqHz), 50, AccessibilityNodeInfoCompat.EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_MAX_LENGTH);
                }
            }
            exactLag2 = exactLag;
            double crankFreqHz2 = this.sampleRate / exactLag2;
            rawRpm = RangesKt.coerceIn((int) (120.0d * crankFreqHz2), 50, AccessibilityNodeInfoCompat.EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_MAX_LENGTH);
        } else {
            rawRpm = 0;
        }
        if (rawRpm > 0) {
            if (this.rpmHistory.size() >= this.historyCapacity) {
                this.rpmHistory.removeFirst();
            }
            this.rpmHistory.addLast(Integer.valueOf(rawRpm));
        }
        int smoothedRpm = this.rpmHistory.isEmpty() ^ true ? (int) CollectionsKt.averageOfInt(this.rpmHistory) : 0;
        Integer num = (Integer) CollectionsKt.minOrNull((Iterable) this.rpmHistory);
        int minHistoricalRpm = num != null ? num.intValue() : smoothedRpm;
        Integer num2 = (Integer) CollectionsKt.maxOrNull((Iterable) this.rpmHistory);
        int maxHistoricalRpm = num2 != null ? num2.intValue() : smoothedRpm;
        int variation = (maxHistoricalRpm - minHistoricalRpm) / 2;
        if ((this.baselineRms == AudioStats.AUDIO_AMPLITUDE_NONE) && isRunning) {
            this.baselineRms = rmsDb;
        }
        boolean soundChanged = Math.abs(rmsDb - this.baselineRms) > 18.0d;
        this._analysisState.setValue(new AudioAnalysisResult(smoothedRpm, variation, variation <= 80, smoothedRpm > 0, soundChanged, rmsDb, variation < 120 ? "VALID" : "LOW CONFIDENCE"));
    }
}
