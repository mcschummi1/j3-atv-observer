package com.cgs.atvobserver.ui.screens;

import android.content.Context;
import android.speech.tts.TextToSpeech;
import androidx.compose.runtime.MutableLongState;
import androidx.compose.runtime.MutableState;
import com.cgs.atvobserver.ai.ObserverAiOutput;
import com.cgs.atvobserver.location.GpsData;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: PocketTripScreen.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.cgs.atvobserver.ui.screens.PocketTripScreenKt$PocketTripScreen$2", f = "PocketTripScreen.kt", i = {}, l = {58}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes11.dex */
final class PocketTripScreenKt$PocketTripScreen$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ ObserverAiOutput $aiOutput;
    final /* synthetic */ Context $context;
    final /* synthetic */ GpsData $gpsData;
    final /* synthetic */ MutableLongState $rideSeconds$delegate;
    final /* synthetic */ MutableState<TextToSpeech> $tts$delegate;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PocketTripScreenKt$PocketTripScreen$2(Context context, GpsData gpsData, ObserverAiOutput observerAiOutput, MutableLongState mutableLongState, MutableState<TextToSpeech> mutableState, Continuation<? super PocketTripScreenKt$PocketTripScreen$2> continuation) {
        super(2, continuation);
        this.$context = context;
        this.$gpsData = gpsData;
        this.$aiOutput = observerAiOutput;
        this.$rideSeconds$delegate = mutableLongState;
        this.$tts$delegate = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PocketTripScreenKt$PocketTripScreen$2(this.$context, this.$gpsData, this.$aiOutput, this.$rideSeconds$delegate, this.$tts$delegate, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((PocketTripScreenKt$PocketTripScreen$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0029 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0044  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0027 -> B:7:0x002a). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r9.label
            r2 = 1
            switch(r1) {
                case 0: goto L17;
                case 1: goto L12;
                default: goto La;
            }
        La:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L12:
            r1 = r9
            kotlin.ResultKt.throwOnFailure(r10)
            goto L2a
        L17:
            kotlin.ResultKt.throwOnFailure(r10)
            r1 = r9
        L1b:
            r3 = r1
            kotlin.coroutines.Continuation r3 = (kotlin.coroutines.Continuation) r3
            r1.label = r2
            r4 = 1000(0x3e8, double:4.94E-321)
            java.lang.Object r3 = kotlinx.coroutines.DelayKt.delay(r4, r3)
            if (r3 != r0) goto L2a
            return r0
        L2a:
            androidx.compose.runtime.MutableLongState r3 = r1.$rideSeconds$delegate
            long r3 = com.cgs.atvobserver.ui.screens.PocketTripScreenKt.access$PocketTripScreen$lambda$1(r3)
            androidx.compose.runtime.MutableLongState r5 = r1.$rideSeconds$delegate
            r6 = 1
            long r3 = r3 + r6
            com.cgs.atvobserver.ui.screens.PocketTripScreenKt.access$PocketTripScreen$lambda$2(r5, r3)
            androidx.compose.runtime.MutableLongState r3 = r1.$rideSeconds$delegate
            long r3 = com.cgs.atvobserver.ui.screens.PocketTripScreenKt.access$PocketTripScreen$lambda$1(r3)
            r5 = 0
            int r3 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r3 <= 0) goto L1b
            androidx.compose.runtime.MutableLongState r3 = r1.$rideSeconds$delegate
            long r3 = com.cgs.atvobserver.ui.screens.PocketTripScreenKt.access$PocketTripScreen$lambda$1(r3)
            r7 = 60
            long r3 = r3 % r7
            int r3 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r3 != 0) goto L1b
            com.cgs.atvobserver.audio.HeadsetAudioDetector r3 = com.cgs.atvobserver.audio.HeadsetAudioDetector.INSTANCE
            android.content.Context r4 = r1.$context
            boolean r3 = r3.isHeadsetConnected(r4)
            if (r3 == 0) goto L1b
            kotlin.jvm.internal.StringCompanionObject r3 = kotlin.jvm.internal.StringCompanionObject.INSTANCE
            java.util.Locale r3 = java.util.Locale.getDefault()
            com.cgs.atvobserver.location.GpsData r4 = r1.$gpsData
            double r4 = r4.getDistanceKm()
            java.lang.Double r4 = kotlin.coroutines.jvm.internal.Boxing.boxDouble(r4)
            java.lang.Object[] r4 = new java.lang.Object[]{r4}
            java.lang.Object[] r4 = java.util.Arrays.copyOf(r4, r2)
            java.lang.String r5 = "%.1f"
            java.lang.String r3 = java.lang.String.format(r3, r5, r4)
            java.lang.String r4 = "format(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
            com.cgs.atvobserver.ai.ObserverAiOutput r4 = r1.$aiOutput
            double r4 = r4.getFusedSpeedKmh()
            int r4 = (int) r4
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "Pocket update: Distance "
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.StringBuilder r3 = r5.append(r3)
            java.lang.String r5 = " kilometers. Speed "
            java.lang.StringBuilder r3 = r3.append(r5)
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r4 = " kilometers per hour."
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r3 = r3.toString()
            androidx.compose.runtime.MutableState<android.speech.tts.TextToSpeech> r4 = r1.$tts$delegate
            android.speech.tts.TextToSpeech r4 = com.cgs.atvobserver.ui.screens.PocketTripScreenKt.access$PocketTripScreen$lambda$4(r4)
            if (r4 == 0) goto Lbd
            r5 = r3
            java.lang.CharSequence r5 = (java.lang.CharSequence) r5
            r6 = 0
            int r4 = r4.speak(r5, r2, r6, r6)
            kotlin.coroutines.jvm.internal.Boxing.boxInt(r4)
            goto L1b
        Lbd:
            goto L1b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cgs.atvobserver.ui.screens.PocketTripScreenKt$PocketTripScreen$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
