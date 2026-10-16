package com.cgs.atvobserver.ui.screens;

import android.content.Context;
import android.speech.tts.TextToSpeech;
import androidx.compose.runtime.MutableLongState;
import androidx.compose.runtime.MutableState;
import com.cgs.atvobserver.ai.ObserverAiOutput;
import com.cgs.atvobserver.audio.HeadsetAudioDetector;
import com.cgs.atvobserver.data.model.SystemWarning;
import com.cgs.atvobserver.data.model.WarningLevel;
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
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: TripScreen.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.cgs.atvobserver.ui.screens.TripScreenKt$TripScreen$3", f = "TripScreen.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes11.dex */
final class TripScreenKt$TripScreen$3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ ObserverAiOutput $aiOutput;
    final /* synthetic */ Context $context;
    final /* synthetic */ MutableState<SystemWarning> $currentWarning$delegate;
    final /* synthetic */ double $estimatedFuelUsed;
    final /* synthetic */ GpsData $gpsData;
    final /* synthetic */ Function3<Double, Long, Double, Unit> $onPeriodicFlushToStorage;
    final /* synthetic */ MutableLongState $rideDurationSeconds$delegate;
    final /* synthetic */ MutableState<TextToSpeech> $tts$delegate;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    TripScreenKt$TripScreen$3(ObserverAiOutput observerAiOutput, Context context, Function3<? super Double, ? super Long, ? super Double, Unit> function3, GpsData gpsData, double d, MutableState<SystemWarning> mutableState, MutableState<TextToSpeech> mutableState2, MutableLongState mutableLongState, Continuation<? super TripScreenKt$TripScreen$3> continuation) {
        super(2, continuation);
        this.$aiOutput = observerAiOutput;
        this.$context = context;
        this.$onPeriodicFlushToStorage = function3;
        this.$gpsData = gpsData;
        this.$estimatedFuelUsed = d;
        this.$currentWarning$delegate = mutableState;
        this.$tts$delegate = mutableState2;
        this.$rideDurationSeconds$delegate = mutableLongState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TripScreenKt$TripScreen$3(this.$aiOutput, this.$context, this.$onPeriodicFlushToStorage, this.$gpsData, this.$estimatedFuelUsed, this.$currentWarning$delegate, this.$tts$delegate, this.$rideDurationSeconds$delegate, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((TripScreenKt$TripScreen$3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003e, code lost:
    
        r1 = com.cgs.atvobserver.ui.screens.TripScreenKt.TripScreen$lambda$40(r11.$tts$delegate);
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        long TripScreen$lambda$16;
        TextToSpeech TripScreen$lambda$40;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                if (this.$aiOutput.isEmergencyCrashActive()) {
                    this.$currentWarning$delegate.setValue(new SystemWarning("CRASH DETECTED", "TELEMETRY SAVED IMMEDIATELY", WarningLevel.PINK, 0L, 8, null));
                    if (HeadsetAudioDetector.INSTANCE.isHeadsetConnected(this.$context) && TripScreen$lambda$40 != null) {
                        Boxing.boxInt(TripScreen$lambda$40.speak("Emergency crash detected! Telemetry saved.", 0, null, null));
                    }
                    Function3<Double, Long, Double, Unit> function3 = this.$onPeriodicFlushToStorage;
                    Double boxDouble = Boxing.boxDouble(this.$gpsData.getDistanceKm());
                    TripScreen$lambda$16 = TripScreenKt.TripScreen$lambda$16(this.$rideDurationSeconds$delegate);
                    function3.invoke(boxDouble, Boxing.boxLong(TripScreen$lambda$16), Boxing.boxDouble(this.$estimatedFuelUsed));
                }
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
