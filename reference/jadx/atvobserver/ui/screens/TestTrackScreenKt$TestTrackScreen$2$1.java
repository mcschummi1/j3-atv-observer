package com.cgs.atvobserver.ui.screens;

import androidx.camera.video.AudioStats;
import androidx.compose.runtime.MutableDoubleState;
import androidx.compose.runtime.MutableIntState;
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

/* compiled from: TestTrackScreen.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.cgs.atvobserver.ui.screens.TestTrackScreenKt$TestTrackScreen$2$1", f = "TestTrackScreen.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes11.dex */
final class TestTrackScreenKt$TestTrackScreen$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ MutableState<Boolean> $isTestRunning$delegate;
    final /* synthetic */ MutableIntState $passCount$delegate;
    final /* synthetic */ MutableDoubleState $sprintDistanceKm$delegate;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TestTrackScreenKt$TestTrackScreen$2$1(MutableState<Boolean> mutableState, MutableDoubleState mutableDoubleState, MutableIntState mutableIntState, Continuation<? super TestTrackScreenKt$TestTrackScreen$2$1> continuation) {
        super(2, continuation);
        this.$isTestRunning$delegate = mutableState;
        this.$sprintDistanceKm$delegate = mutableDoubleState;
        this.$passCount$delegate = mutableIntState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TestTrackScreenKt$TestTrackScreen$2$1(this.$isTestRunning$delegate, this.$sprintDistanceKm$delegate, this.$passCount$delegate, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((TestTrackScreenKt$TestTrackScreen$2$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean TestTrackScreen$lambda$1;
        double TestTrackScreen$lambda$7;
        double TestTrackScreen$lambda$72;
        int TestTrackScreen$lambda$22;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                TestTrackScreen$lambda$1 = TestTrackScreenKt.TestTrackScreen$lambda$1(this.$isTestRunning$delegate);
                if (TestTrackScreen$lambda$1) {
                    TestTrackScreen$lambda$7 = TestTrackScreenKt.TestTrackScreen$lambda$7(this.$sprintDistanceKm$delegate);
                    if (TestTrackScreen$lambda$7 > AudioStats.AUDIO_AMPLITUDE_NONE) {
                        TestTrackScreen$lambda$72 = TestTrackScreenKt.TestTrackScreen$lambda$7(this.$sprintDistanceKm$delegate);
                        int estimatedPasses = (int) ((TestTrackScreen$lambda$72 * 1000.0d) / 100.0d);
                        TestTrackScreen$lambda$22 = TestTrackScreenKt.TestTrackScreen$lambda$22(this.$passCount$delegate);
                        if (estimatedPasses > TestTrackScreen$lambda$22) {
                            this.$passCount$delegate.setIntValue(estimatedPasses);
                        }
                    }
                }
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
