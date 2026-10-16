package com.cgs.atvobserver.ui.screens;

import androidx.compose.runtime.MutableDoubleState;
import androidx.compose.runtime.MutableLongState;
import androidx.compose.runtime.MutableState;
import com.cgs.atvobserver.location.GpsData;
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
@DebugMetadata(c = "com.cgs.atvobserver.ui.screens.TestTrackScreenKt$TestTrackScreen$1$1", f = "TestTrackScreen.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes11.dex */
final class TestTrackScreenKt$TestTrackScreen$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ GpsData $gpsData;
    final /* synthetic */ MutableState<Boolean> $isPullActive$delegate;
    final /* synthetic */ MutableState<Boolean> $isTestRunning$delegate;
    final /* synthetic */ MutableLongState $pullStartTimeMs$delegate;
    final /* synthetic */ MutableDoubleState $pullTimeSec$delegate;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TestTrackScreenKt$TestTrackScreen$1$1(GpsData gpsData, MutableState<Boolean> mutableState, MutableState<Boolean> mutableState2, MutableLongState mutableLongState, MutableDoubleState mutableDoubleState, Continuation<? super TestTrackScreenKt$TestTrackScreen$1$1> continuation) {
        super(2, continuation);
        this.$gpsData = gpsData;
        this.$isTestRunning$delegate = mutableState;
        this.$isPullActive$delegate = mutableState2;
        this.$pullStartTimeMs$delegate = mutableLongState;
        this.$pullTimeSec$delegate = mutableDoubleState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TestTrackScreenKt$TestTrackScreen$1$1(this.$gpsData, this.$isTestRunning$delegate, this.$isPullActive$delegate, this.$pullStartTimeMs$delegate, this.$pullTimeSec$delegate, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((TestTrackScreenKt$TestTrackScreen$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean TestTrackScreen$lambda$1;
        boolean TestTrackScreen$lambda$19;
        long TestTrackScreen$lambda$13;
        boolean TestTrackScreen$lambda$192;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                TestTrackScreen$lambda$1 = TestTrackScreenKt.TestTrackScreen$lambda$1(this.$isTestRunning$delegate);
                if (TestTrackScreen$lambda$1) {
                    double spd = this.$gpsData.getCurrentSpeedKmh();
                    if (9.0d <= spd && spd <= 11.0d) {
                        TestTrackScreen$lambda$192 = TestTrackScreenKt.TestTrackScreen$lambda$19(this.$isPullActive$delegate);
                        if (!TestTrackScreen$lambda$192) {
                            this.$pullStartTimeMs$delegate.setLongValue(System.currentTimeMillis());
                            TestTrackScreenKt.TestTrackScreen$lambda$20(this.$isPullActive$delegate, true);
                        }
                    }
                    if (spd >= 40.0d) {
                        TestTrackScreen$lambda$19 = TestTrackScreenKt.TestTrackScreen$lambda$19(this.$isPullActive$delegate);
                        if (TestTrackScreen$lambda$19) {
                            long currentTimeMillis = System.currentTimeMillis();
                            TestTrackScreen$lambda$13 = TestTrackScreenKt.TestTrackScreen$lambda$13(this.$pullStartTimeMs$delegate);
                            long elapsedMs = currentTimeMillis - TestTrackScreen$lambda$13;
                            this.$pullTimeSec$delegate.setDoubleValue(elapsedMs / 1000.0d);
                            TestTrackScreenKt.TestTrackScreen$lambda$20(this.$isPullActive$delegate, false);
                        }
                    }
                }
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
