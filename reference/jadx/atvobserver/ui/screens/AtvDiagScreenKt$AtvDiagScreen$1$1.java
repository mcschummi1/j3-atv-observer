package com.cgs.atvobserver.ui.screens;

import androidx.compose.runtime.MutableState;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: AtvDiagScreen.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.cgs.atvobserver.ui.screens.AtvDiagScreenKt$AtvDiagScreen$1$1", f = "AtvDiagScreen.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes11.dex */
final class AtvDiagScreenKt$AtvDiagScreen$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ MutableState<Boolean> $showFanQuestion$delegate;
    final /* synthetic */ double $temperatureCelsius;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AtvDiagScreenKt$AtvDiagScreen$1$1(double d, MutableState<Boolean> mutableState, Continuation<? super AtvDiagScreenKt$AtvDiagScreen$1$1> continuation) {
        super(2, continuation);
        this.$temperatureCelsius = d;
        this.$showFanQuestion$delegate = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AtvDiagScreenKt$AtvDiagScreen$1$1(this.$temperatureCelsius, this.$showFanQuestion$delegate, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((AtvDiagScreenKt$AtvDiagScreen$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                if (this.$temperatureCelsius > 95.0d) {
                    AtvDiagScreenKt.AtvDiagScreen$lambda$2(this.$showFanQuestion$delegate, true);
                }
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
