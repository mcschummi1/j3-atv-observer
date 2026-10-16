package com.cgs.atvobserver.ui.screens;

import android.content.Context;
import android.speech.tts.TextToSpeech;
import androidx.compose.runtime.MutableLongState;
import androidx.compose.runtime.MutableState;
import com.cgs.atvobserver.audio.AudioAnalysisResult;
import com.cgs.atvobserver.audio.HeadsetAudioDetector;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;

/* compiled from: TripScreen.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.cgs.atvobserver.ui.screens.TripScreenKt$TripScreen$4", f = "TripScreen.kt", i = {}, l = {143}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes11.dex */
final class TripScreenKt$TripScreen$4 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ AudioAnalysisResult $audioData;
    final /* synthetic */ Context $context;
    final /* synthetic */ MutableState<Boolean> $isWarmupComplete$delegate;
    final /* synthetic */ MutableState<TextToSpeech> $tts$delegate;
    final /* synthetic */ MutableLongState $warmupSeconds$delegate;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TripScreenKt$TripScreen$4(AudioAnalysisResult audioAnalysisResult, Context context, MutableState<Boolean> mutableState, MutableLongState mutableLongState, MutableState<TextToSpeech> mutableState2, Continuation<? super TripScreenKt$TripScreen$4> continuation) {
        super(2, continuation);
        this.$audioData = audioAnalysisResult;
        this.$context = context;
        this.$isWarmupComplete$delegate = mutableState;
        this.$warmupSeconds$delegate = mutableLongState;
        this.$tts$delegate = mutableState2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TripScreenKt$TripScreen$4(this.$audioData, this.$context, this.$isWarmupComplete$delegate, this.$warmupSeconds$delegate, this.$tts$delegate, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((TripScreenKt$TripScreen$4) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0063, code lost:
    
        r0 = com.cgs.atvobserver.ui.screens.TripScreenKt.TripScreen$lambda$40(r1.$tts$delegate);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0028, code lost:
    
        if (r2 == false) goto L11;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0054  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0042 -> B:7:0x0045). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object $result) {
        TripScreenKt$TripScreen$4 tripScreenKt$TripScreen$4;
        boolean TripScreen$lambda$37;
        long TripScreen$lambda$34;
        TextToSpeech TripScreen$lambda$40;
        long TripScreen$lambda$342;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                tripScreenKt$TripScreen$4 = this;
                if (tripScreenKt$TripScreen$4.$audioData.isEngineRunning()) {
                    TripScreen$lambda$37 = TripScreenKt.TripScreen$lambda$37(tripScreenKt$TripScreen$4.$isWarmupComplete$delegate);
                    break;
                }
                return Unit.INSTANCE;
            case 1:
                tripScreenKt$TripScreen$4 = this;
                ResultKt.throwOnFailure($result);
                TripScreen$lambda$342 = TripScreenKt.TripScreen$lambda$34(tripScreenKt$TripScreen$4.$warmupSeconds$delegate);
                tripScreenKt$TripScreen$4.$warmupSeconds$delegate.setLongValue(TripScreen$lambda$342 + 1);
                TripScreen$lambda$34 = TripScreenKt.TripScreen$lambda$34(tripScreenKt$TripScreen$4.$warmupSeconds$delegate);
                if (TripScreen$lambda$34 >= 180) {
                    tripScreenKt$TripScreen$4.label = 1;
                    if (DelayKt.delay(1000L, tripScreenKt$TripScreen$4) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    TripScreen$lambda$342 = TripScreenKt.TripScreen$lambda$34(tripScreenKt$TripScreen$4.$warmupSeconds$delegate);
                    tripScreenKt$TripScreen$4.$warmupSeconds$delegate.setLongValue(TripScreen$lambda$342 + 1);
                    TripScreen$lambda$34 = TripScreenKt.TripScreen$lambda$34(tripScreenKt$TripScreen$4.$warmupSeconds$delegate);
                    if (TripScreen$lambda$34 >= 180) {
                        TripScreenKt.TripScreen$lambda$38(tripScreenKt$TripScreen$4.$isWarmupComplete$delegate, true);
                        if (HeadsetAudioDetector.INSTANCE.isHeadsetConnected(tripScreenKt$TripScreen$4.$context) && TripScreen$lambda$40 != null) {
                            Boxing.boxInt(TripScreen$lambda$40.speak("Engine warm-up complete. Ready to ride!", 0, null, null));
                        }
                        return Unit.INSTANCE;
                    }
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
