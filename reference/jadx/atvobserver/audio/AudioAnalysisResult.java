package com.cgs.atvobserver.audio;

import androidx.camera.video.AudioStats;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.scheduling.WorkQueueKt;

/* compiled from: EngineAudioProcessor.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0017\b\u0087\b\u0018\u00002\u00020\u0001BK\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001c\u001a\u00020\nHÆ\u0003J\t\u0010\u001d\u001a\u00020\fHÆ\u0003JO\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\fHÆ\u0001J\u0013\u0010\u001f\u001a\u00020\u00062\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\u0003HÖ\u0001J\t\u0010\"\u001a\u00020\fHÖ\u0001R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\u0014R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0013R\u0011\u0010\b\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0014¨\u0006#"}, d2 = {"Lcom/cgs/atvobserver/audio/AudioAnalysisResult;", "", "estimatedRpm", "", "rpmVariation", "isIdleStable", "", "isEngineRunning", "soundChanged", "audioRmsDb", "", "confidence", "", "(IIZZZDLjava/lang/String;)V", "getAudioRmsDb", "()D", "getConfidence", "()Ljava/lang/String;", "getEstimatedRpm", "()I", "()Z", "getRpmVariation", "getSoundChanged", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "other", "hashCode", "toString", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes14.dex */
public final /* data */ class AudioAnalysisResult {
    public static final int $stable = 0;
    private final double audioRmsDb;
    private final String confidence;
    private final int estimatedRpm;
    private final boolean isEngineRunning;
    private final boolean isIdleStable;
    private final int rpmVariation;
    private final boolean soundChanged;

    public AudioAnalysisResult() {
        this(0, 0, false, false, false, AudioStats.AUDIO_AMPLITUDE_NONE, null, WorkQueueKt.MASK, null);
    }

    /* renamed from: component1, reason: from getter */
    public final int getEstimatedRpm() {
        return this.estimatedRpm;
    }

    /* renamed from: component2, reason: from getter */
    public final int getRpmVariation() {
        return this.rpmVariation;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getIsIdleStable() {
        return this.isIdleStable;
    }

    /* renamed from: component4, reason: from getter */
    public final boolean getIsEngineRunning() {
        return this.isEngineRunning;
    }

    /* renamed from: component5, reason: from getter */
    public final boolean getSoundChanged() {
        return this.soundChanged;
    }

    /* renamed from: component6, reason: from getter */
    public final double getAudioRmsDb() {
        return this.audioRmsDb;
    }

    /* renamed from: component7, reason: from getter */
    public final String getConfidence() {
        return this.confidence;
    }

    public final AudioAnalysisResult copy(int estimatedRpm, int rpmVariation, boolean isIdleStable, boolean isEngineRunning, boolean soundChanged, double audioRmsDb, String confidence) {
        Intrinsics.checkNotNullParameter(confidence, "confidence");
        return new AudioAnalysisResult(estimatedRpm, rpmVariation, isIdleStable, isEngineRunning, soundChanged, audioRmsDb, confidence);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AudioAnalysisResult)) {
            return false;
        }
        AudioAnalysisResult audioAnalysisResult = (AudioAnalysisResult) other;
        return this.estimatedRpm == audioAnalysisResult.estimatedRpm && this.rpmVariation == audioAnalysisResult.rpmVariation && this.isIdleStable == audioAnalysisResult.isIdleStable && this.isEngineRunning == audioAnalysisResult.isEngineRunning && this.soundChanged == audioAnalysisResult.soundChanged && Double.compare(this.audioRmsDb, audioAnalysisResult.audioRmsDb) == 0 && Intrinsics.areEqual(this.confidence, audioAnalysisResult.confidence);
    }

    public int hashCode() {
        return (((((((((((Integer.hashCode(this.estimatedRpm) * 31) + Integer.hashCode(this.rpmVariation)) * 31) + Boolean.hashCode(this.isIdleStable)) * 31) + Boolean.hashCode(this.isEngineRunning)) * 31) + Boolean.hashCode(this.soundChanged)) * 31) + Double.hashCode(this.audioRmsDb)) * 31) + this.confidence.hashCode();
    }

    public String toString() {
        return "AudioAnalysisResult(estimatedRpm=" + this.estimatedRpm + ", rpmVariation=" + this.rpmVariation + ", isIdleStable=" + this.isIdleStable + ", isEngineRunning=" + this.isEngineRunning + ", soundChanged=" + this.soundChanged + ", audioRmsDb=" + this.audioRmsDb + ", confidence=" + this.confidence + ")";
    }

    public AudioAnalysisResult(int estimatedRpm, int rpmVariation, boolean isIdleStable, boolean isEngineRunning, boolean soundChanged, double audioRmsDb, String confidence) {
        Intrinsics.checkNotNullParameter(confidence, "confidence");
        this.estimatedRpm = estimatedRpm;
        this.rpmVariation = rpmVariation;
        this.isIdleStable = isIdleStable;
        this.isEngineRunning = isEngineRunning;
        this.soundChanged = soundChanged;
        this.audioRmsDb = audioRmsDb;
        this.confidence = confidence;
    }

    public /* synthetic */ AudioAnalysisResult(int i, int i2, boolean z, boolean z2, boolean z3, double d, String str, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? 0 : i2, (i3 & 4) != 0 ? true : z, (i3 & 8) != 0 ? false : z2, (i3 & 16) == 0 ? z3 : false, (i3 & 32) != 0 ? AudioStats.AUDIO_AMPLITUDE_NONE : d, (i3 & 64) != 0 ? "UNAVAILABLE" : str);
    }

    public final int getEstimatedRpm() {
        return this.estimatedRpm;
    }

    public final int getRpmVariation() {
        return this.rpmVariation;
    }

    public final boolean isIdleStable() {
        return this.isIdleStable;
    }

    public final boolean isEngineRunning() {
        return this.isEngineRunning;
    }

    public final boolean getSoundChanged() {
        return this.soundChanged;
    }

    public final double getAudioRmsDb() {
        return this.audioRmsDb;
    }

    public final String getConfidence() {
        return this.confidence;
    }
}
