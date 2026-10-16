package com.cgs.atvobserver.ui.screens;

import android.content.Context;
import android.speech.tts.TextToSpeech;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.MutableState;
import com.cgs.atvobserver.audio.HeadsetAudioDetector;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: PocketTripScreen.kt */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Landroidx/compose/runtime/DisposableEffectResult;", "Landroidx/compose/runtime/DisposableEffectScope;", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes11.dex */
final class PocketTripScreenKt$PocketTripScreen$1 extends Lambda implements Function1<DisposableEffectScope, DisposableEffectResult> {
    final /* synthetic */ Context $context;
    final /* synthetic */ MutableState<TextToSpeech> $tts$delegate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PocketTripScreenKt$PocketTripScreen$1(Context context, MutableState<TextToSpeech> mutableState) {
        super(1);
        this.$context = context;
        this.$tts$delegate = mutableState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final DisposableEffectResult invoke(DisposableEffectScope DisposableEffect) {
        Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
        MutableState<TextToSpeech> mutableState = this.$tts$delegate;
        Context context = this.$context;
        final Context context2 = this.$context;
        final MutableState<TextToSpeech> mutableState2 = this.$tts$delegate;
        mutableState.setValue(new TextToSpeech(context, new TextToSpeech.OnInitListener() { // from class: com.cgs.atvobserver.ui.screens.PocketTripScreenKt$PocketTripScreen$1$$ExternalSyntheticLambda0
            @Override // android.speech.tts.TextToSpeech.OnInitListener
            public final void onInit(int i) {
                PocketTripScreenKt$PocketTripScreen$1.invoke$lambda$0(context2, mutableState2, i);
            }
        }));
        final MutableState<TextToSpeech> mutableState3 = this.$tts$delegate;
        return new DisposableEffectResult() { // from class: com.cgs.atvobserver.ui.screens.PocketTripScreenKt$PocketTripScreen$1$invoke$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void dispose() {
                TextToSpeech PocketTripScreen$lambda$4;
                TextToSpeech PocketTripScreen$lambda$42;
                PocketTripScreen$lambda$4 = PocketTripScreenKt.PocketTripScreen$lambda$4(MutableState.this);
                if (PocketTripScreen$lambda$4 != null) {
                    PocketTripScreen$lambda$4.stop();
                }
                PocketTripScreen$lambda$42 = PocketTripScreenKt.PocketTripScreen$lambda$4(MutableState.this);
                if (PocketTripScreen$lambda$42 != null) {
                    PocketTripScreen$lambda$42.shutdown();
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0020, code lost:
    
        r0 = com.cgs.atvobserver.ui.screens.PocketTripScreenKt.PocketTripScreen$lambda$4(r5);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void invoke$lambda$0(Context context, MutableState tts$delegate, int status) {
        TextToSpeech PocketTripScreen$lambda$4;
        TextToSpeech PocketTripScreen$lambda$42;
        Intrinsics.checkNotNullParameter(context, "$context");
        Intrinsics.checkNotNullParameter(tts$delegate, "$tts$delegate");
        if (status == 0) {
            PocketTripScreen$lambda$4 = PocketTripScreenKt.PocketTripScreen$lambda$4(tts$delegate);
            if (PocketTripScreen$lambda$4 != null) {
                PocketTripScreen$lambda$4.setLanguage(Locale.ENGLISH);
            }
            if (!HeadsetAudioDetector.INSTANCE.isHeadsetConnected(context) || PocketTripScreen$lambda$42 == null) {
                return;
            }
            PocketTripScreen$lambda$42.speak("Pocket Trip Mode active. My Lil Buds Pro connected.", 0, null, null);
        }
    }
}
