package com.cgs.atvobserver.audio;

import androidx.camera.video.AudioStats;
import androidx.compose.ui.layout.LayoutKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: ButterworthBandpassFilter.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\b\r\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0017\n\u0000\n\u0002\u0010\b\n\u0000\b\u0007\u0018\u00002\u00020\u0001B#\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\u001e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003J\u0016\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;", "", "lowCutoffHz", "", "highCutoffHz", "sampleRateHz", "(DDD)V", "a0", "a1", "a2", "b1", "b2", "x1", "x2", "y1", "y2", "configureCoefficients", "", "filterBufferInPlace", "buffer", "", "size", "", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes14.dex */
public final class ButterworthBandpassFilter {
    public static final int $stable = 8;
    private double a0;
    private double a1;
    private double a2;
    private double b1;
    private double b2;
    private double x1;
    private double x2;
    private double y1;
    private double y2;

    public ButterworthBandpassFilter() {
        this(AudioStats.AUDIO_AMPLITUDE_NONE, AudioStats.AUDIO_AMPLITUDE_NONE, AudioStats.AUDIO_AMPLITUDE_NONE, 7, null);
    }

    public ButterworthBandpassFilter(double lowCutoffHz, double highCutoffHz, double sampleRateHz) {
        configureCoefficients(lowCutoffHz, highCutoffHz, sampleRateHz);
    }

    public /* synthetic */ ButterworthBandpassFilter(double d, double d2, double d3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 2.0d : d, (i & 2) != 0 ? 700.0d : d2, (i & 4) != 0 ? 22050.0d : d3);
    }

    public final void configureCoefficients(double lowCutoffHz, double highCutoffHz, double sampleRateHz) {
        double w1 = (lowCutoffHz * 6.283185307179586d) / sampleRateHz;
        double w2 = (6.283185307179586d * highCutoffHz) / sampleRateHz;
        double bw = w2 - w1;
        double w0 = Math.tan(Math.sqrt(w1 * w2));
        double alpha = Math.tan(bw / 2.0d);
        double beta = Math.tan(w0) * 2.0d;
        double norm = alpha + 1.0d + (alpha * alpha);
        this.a0 = alpha / norm;
        this.a1 = AudioStats.AUDIO_AMPLITUDE_NONE;
        this.a2 = (-alpha) / norm;
        this.b1 = ((-2.0d) * beta) / norm;
        this.b2 = ((1.0d - alpha) + (alpha * alpha)) / norm;
    }

    public final void filterBufferInPlace(short[] buffer, int size) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        for (int i = 0; i < size; i++) {
            double x0 = buffer[i];
            double y0 = ((((this.a0 * x0) + (this.a1 * this.x1)) + (this.a2 * this.x2)) - (this.b1 * this.y1)) - (this.b2 * this.y2);
            this.x2 = this.x1;
            this.x1 = x0;
            this.y2 = this.y1;
            this.y1 = y0;
            buffer[i] = (short) RangesKt.coerceIn((int) y0, -32768, LayoutKt.LargeDimension);
        }
    }
}
