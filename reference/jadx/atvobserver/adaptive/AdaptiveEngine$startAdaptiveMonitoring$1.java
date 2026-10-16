package com.cgs.atvobserver.adaptive;

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

/* compiled from: AdaptiveEngine.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.cgs.atvobserver.adaptive.AdaptiveEngine$startAdaptiveMonitoring$1", f = "AdaptiveEngine.kt", i = {0}, l = {52}, m = "invokeSuspend", n = {"$this$launch"}, s = {"L$0"})
/* loaded from: classes3.dex */
final class AdaptiveEngine$startAdaptiveMonitoring$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ AdaptiveEngine this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AdaptiveEngine$startAdaptiveMonitoring$1(AdaptiveEngine adaptiveEngine, Continuation<? super AdaptiveEngine$startAdaptiveMonitoring$1> continuation) {
        super(2, continuation);
        this.this$0 = adaptiveEngine;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        AdaptiveEngine$startAdaptiveMonitoring$1 adaptiveEngine$startAdaptiveMonitoring$1 = new AdaptiveEngine$startAdaptiveMonitoring$1(this.this$0, continuation);
        adaptiveEngine$startAdaptiveMonitoring$1.L$0 = obj;
        return adaptiveEngine$startAdaptiveMonitoring$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((AdaptiveEngine$startAdaptiveMonitoring$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object $result) {
        AdaptiveEngine$startAdaptiveMonitoring$1 adaptiveEngine$startAdaptiveMonitoring$1;
        CoroutineScope $this$launch;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                adaptiveEngine$startAdaptiveMonitoring$1 = this;
                $this$launch = (CoroutineScope) adaptiveEngine$startAdaptiveMonitoring$1.L$0;
                break;
            case 1:
                adaptiveEngine$startAdaptiveMonitoring$1 = this;
                $this$launch = (CoroutineScope) adaptiveEngine$startAdaptiveMonitoring$1.L$0;
                ResultKt.throwOnFailure($result);
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        while (CoroutineScopeKt.isActive($this$launch)) {
            adaptiveEngine$startAdaptiveMonitoring$1.this$0.measureSystemMetrics();
            adaptiveEngine$startAdaptiveMonitoring$1.L$0 = $this$launch;
            adaptiveEngine$startAdaptiveMonitoring$1.label = 1;
            if (DelayKt.delay(500L, adaptiveEngine$startAdaptiveMonitoring$1) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Unit.INSTANCE;
    }
}
