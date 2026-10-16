package com.cgs.atvobserver.ui.screens;

import android.content.Context;
import android.speech.tts.TextToSpeech;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.MutableState;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: TripScreen.kt */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Landroidx/compose/runtime/DisposableEffectResult;", "Landroidx/compose/runtime/DisposableEffectScope;", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes11.dex */
final class TripScreenKt$TripScreen$2 extends Lambda implements Function1<DisposableEffectScope, DisposableEffectResult> {
    final /* synthetic */ Context $context;
    final /* synthetic */ MutableState<TextToSpeech> $tts$delegate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TripScreenKt$TripScreen$2(Context context, MutableState<TextToSpeech> mutableState) {
        super(1);
        this.$context = context;
        this.$tts$delegate = mutableState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final DisposableEffectResult invoke(DisposableEffectScope DisposableEffect) {
        Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
        MutableState<TextToSpeech> mutableState = this.$tts$delegate;
        Context context = this.$context;
        final MutableState<TextToSpeech> mutableState2 = this.$tts$delegate;
        mutableState.setValue(new TextToSpeech(context, new TextToSpeech.OnInitListener() { // from class: com.cgs.atvobserver.ui.screens.TripScreenKt$TripScreen$2$$ExternalSyntheticLambda0
            @Override // android.speech.tts.TextToSpeech.OnInitListener
            public final void onInit(int i) {
                TripScreenKt$TripScreen$2.invoke$lambda$0(MutableState.this, i);
            }
        }));
        final MutableState<TextToSpeech> mutableState3 = this.$tts$delegate;
        return new DisposableEffectResult() { // from class: com.cgs.atvobserver.ui.screens.TripScreenKt$TripScreen$2$invoke$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void dispose() {
                TextToSpeech TripScreen$lambda$40;
                TextToSpeech TripScreen$lambda$402;
                TripScreen$lambda$40 = TripScreenKt.TripScreen$lambda$40(MutableState.this);
                if (TripScreen$lambda$40 != null) {
                    TripScreen$lambda$40.stop();
                }
                TripScreen$lambda$402 = TripScreenKt.TripScreen$lambda$40(MutableState.this);
                if (TripScreen$lambda$402 != null) {
                    TripScreen$lambda$402.shutdown();
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x0007, code lost:
    
        r0 = com.cgs.atvobserver.ui.screens.TripScreenKt.TripScreen$lambda$40(r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void invoke$lambda$0(MutableState tts$delegate, int status) {
        TextToSpeech TripScreen$lambda$40;
        Intrinsics.checkNotNullParameter(tts$delegate, "$tts$delegate");
        if (status != 0 || TripScreen$lambda$40 == null) {
            return;
        }
        TripScreen$lambda$40.setLanguage(Locale.ENGLISH);
    }
}
