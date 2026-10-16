package com.cgs.atvobserver.audio;

import android.media.AudioRecord;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.DelayKt;

/* compiled from: EngineAudioProcessor.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.cgs.atvobserver.audio.EngineAudioProcessor$startListening$1", f = "EngineAudioProcessor.kt", i = {0, 0}, l = {89}, m = "invokeSuspend", n = {"$this$launch", "pcmBuffer"}, s = {"L$0", "L$1"})
/* loaded from: classes14.dex */
final class EngineAudioProcessor$startListening$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ EngineAudioProcessor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    EngineAudioProcessor$startListening$1(EngineAudioProcessor engineAudioProcessor, Continuation<? super EngineAudioProcessor$startListening$1> continuation) {
        super(2, continuation);
        this.this$0 = engineAudioProcessor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        EngineAudioProcessor$startListening$1 engineAudioProcessor$startListening$1 = new EngineAudioProcessor$startListening$1(this.this$0, continuation);
        engineAudioProcessor$startListening$1.L$0 = obj;
        return engineAudioProcessor$startListening$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((EngineAudioProcessor$startListening$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object $result) {
        EngineAudioProcessor$startListening$1 engineAudioProcessor$startListening$1;
        int i;
        CoroutineScope $this$launch;
        short[] pcmBuffer;
        boolean z;
        AudioRecord audioRecord;
        int i2;
        boolean z2;
        ButterworthBandpassFilter butterworthBandpassFilter;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                engineAudioProcessor$startListening$1 = this;
                CoroutineScope $this$launch2 = (CoroutineScope) engineAudioProcessor$startListening$1.L$0;
                i = engineAudioProcessor$startListening$1.this$0.frameSize;
                short[] sArr = new short[i];
                $this$launch = $this$launch2;
                pcmBuffer = sArr;
                break;
            case 1:
                engineAudioProcessor$startListening$1 = this;
                pcmBuffer = (short[]) engineAudioProcessor$startListening$1.L$1;
                $this$launch = (CoroutineScope) engineAudioProcessor$startListening$1.L$0;
                ResultKt.throwOnFailure($result);
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        while (CoroutineScopeKt.isActive($this$launch)) {
            z = engineAudioProcessor$startListening$1.this$0.isRecording;
            if (z) {
                audioRecord = engineAudioProcessor$startListening$1.this$0.audioRecord;
                int readSamples = audioRecord != null ? audioRecord.read(pcmBuffer, 0, pcmBuffer.length) : 0;
                i2 = engineAudioProcessor$startListening$1.this$0.frameSize;
                if (readSamples >= i2 / 2) {
                    butterworthBandpassFilter = engineAudioProcessor$startListening$1.this$0.butterworthFilter;
                    butterworthBandpassFilter.filterBufferInPlace(pcmBuffer, readSamples);
                    engineAudioProcessor$startListening$1.this$0.processAudioBuffer(pcmBuffer, readSamples);
                }
                z2 = engineAudioProcessor$startListening$1.this$0.isDiagnosticMode;
                long delayMs = z2 ? 20L : 40L;
                engineAudioProcessor$startListening$1.L$0 = $this$launch;
                engineAudioProcessor$startListening$1.L$1 = pcmBuffer;
                engineAudioProcessor$startListening$1.label = 1;
                if (DelayKt.delay(delayMs, engineAudioProcessor$startListening$1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                return Unit.INSTANCE;
            }
        }
        return Unit.INSTANCE;
    }
}
