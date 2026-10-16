package com.cgs.atvobserver.ui.screens;

import android.content.Context;
import android.speech.tts.TextToSpeech;
import androidx.compose.runtime.MutableLongState;
import androidx.compose.runtime.MutableState;
import com.cgs.atvobserver.audio.HeadsetAudioDetector;
import com.cgs.atvobserver.location.GpsData;
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

/* compiled from: TripScreen.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.cgs.atvobserver.ui.screens.TripScreenKt$TripScreen$5", f = "TripScreen.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes11.dex */
final class TripScreenKt$TripScreen$5 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ GpsData $gpsData;
    final /* synthetic */ MutableState<Boolean> $isPitStopPaused$delegate;
    final /* synthetic */ MutableLongState $stationaryTimerSeconds$delegate;
    final /* synthetic */ MutableState<TextToSpeech> $tts$delegate;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TripScreenKt$TripScreen$5(GpsData gpsData, Context context, MutableState<Boolean> mutableState, MutableLongState mutableLongState, MutableState<TextToSpeech> mutableState2, Continuation<? super TripScreenKt$TripScreen$5> continuation) {
        super(2, continuation);
        this.$gpsData = gpsData;
        this.$context = context;
        this.$isPitStopPaused$delegate = mutableState;
        this.$stationaryTimerSeconds$delegate = mutableLongState;
        this.$tts$delegate = mutableState2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TripScreenKt$TripScreen$5(this.$gpsData, this.$context, this.$isPitStopPaused$delegate, this.$stationaryTimerSeconds$delegate, this.$tts$delegate, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((TripScreenKt$TripScreen$5) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0054, code lost:
    
        r1 = com.cgs.atvobserver.ui.screens.TripScreenKt.TripScreen$lambda$40(r8.$tts$delegate);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0092, code lost:
    
        r1 = com.cgs.atvobserver.ui.screens.TripScreenKt.TripScreen$lambda$40(r8.$tts$delegate);
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        boolean TripScreen$lambda$28;
        TextToSpeech TripScreen$lambda$40;
        boolean TripScreen$lambda$282;
        long TripScreen$lambda$31;
        long TripScreen$lambda$312;
        TextToSpeech TripScreen$lambda$402;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                if (this.$gpsData.getCurrentSpeedKmh() < 2.0d) {
                    TripScreen$lambda$282 = TripScreenKt.TripScreen$lambda$28(this.$isPitStopPaused$delegate);
                    if (!TripScreen$lambda$282) {
                        TripScreen$lambda$31 = TripScreenKt.TripScreen$lambda$31(this.$stationaryTimerSeconds$delegate);
                        this.$stationaryTimerSeconds$delegate.setLongValue(TripScreen$lambda$31 + 1);
                        TripScreen$lambda$312 = TripScreenKt.TripScreen$lambda$31(this.$stationaryTimerSeconds$delegate);
                        if (TripScreen$lambda$312 >= 30) {
                            TripScreenKt.TripScreen$lambda$29(this.$isPitStopPaused$delegate, true);
                            if (HeadsetAudioDetector.INSTANCE.isHeadsetConnected(this.$context) && TripScreen$lambda$402 != null) {
                                Boxing.boxInt(TripScreen$lambda$402.speak("Pit stop detected. Ride paused.", 0, null, null));
                            }
                        }
                        return Unit.INSTANCE;
                    }
                }
                if (this.$gpsData.getCurrentSpeedKmh() >= 3.0d) {
                    TripScreen$lambda$28 = TripScreenKt.TripScreen$lambda$28(this.$isPitStopPaused$delegate);
                    if (TripScreen$lambda$28) {
                        TripScreenKt.TripScreen$lambda$29(this.$isPitStopPaused$delegate, false);
                        this.$stationaryTimerSeconds$delegate.setLongValue(0L);
                        if (HeadsetAudioDetector.INSTANCE.isHeadsetConnected(this.$context) && TripScreen$lambda$40 != null) {
                            Boxing.boxInt(TripScreen$lambda$40.speak("Resuming ride.", 0, null, null));
                        }
                        return Unit.INSTANCE;
                    }
                }
                if (this.$gpsData.getCurrentSpeedKmh() >= 3.0d) {
                    this.$stationaryTimerSeconds$delegate.setLongValue(0L);
                }
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
