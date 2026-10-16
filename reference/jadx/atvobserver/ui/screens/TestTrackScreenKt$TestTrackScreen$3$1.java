package com.cgs.atvobserver.ui.screens;

import androidx.camera.video.AudioStats;
import androidx.compose.runtime.MutableDoubleState;
import androidx.compose.runtime.MutableIntState;
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
import kotlinx.coroutines.DelayKt;

/* compiled from: TestTrackScreen.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.cgs.atvobserver.ui.screens.TestTrackScreenKt$TestTrackScreen$3$1", f = "TestTrackScreen.kt", i = {}, l = {96}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes11.dex */
final class TestTrackScreenKt$TestTrackScreen$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ GpsData $gpsData;
    final /* synthetic */ MutableState<Boolean> $isPullActive$delegate;
    final /* synthetic */ MutableState<Boolean> $isTestRunning$delegate;
    final /* synthetic */ MutableIntState $passCount$delegate;
    final /* synthetic */ MutableDoubleState $peakSprintSpeed$delegate;
    final /* synthetic */ MutableDoubleState $pullTimeSec$delegate;
    final /* synthetic */ MutableDoubleState $sprintDistanceKm$delegate;
    final /* synthetic */ MutableLongState $testTimerSeconds$delegate;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TestTrackScreenKt$TestTrackScreen$3$1(GpsData gpsData, MutableState<Boolean> mutableState, MutableLongState mutableLongState, MutableDoubleState mutableDoubleState, MutableDoubleState mutableDoubleState2, MutableIntState mutableIntState, MutableDoubleState mutableDoubleState3, MutableState<Boolean> mutableState2, Continuation<? super TestTrackScreenKt$TestTrackScreen$3$1> continuation) {
        super(2, continuation);
        this.$gpsData = gpsData;
        this.$isTestRunning$delegate = mutableState;
        this.$testTimerSeconds$delegate = mutableLongState;
        this.$sprintDistanceKm$delegate = mutableDoubleState;
        this.$peakSprintSpeed$delegate = mutableDoubleState2;
        this.$passCount$delegate = mutableIntState;
        this.$pullTimeSec$delegate = mutableDoubleState3;
        this.$isPullActive$delegate = mutableState2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TestTrackScreenKt$TestTrackScreen$3$1(this.$gpsData, this.$isTestRunning$delegate, this.$testTimerSeconds$delegate, this.$sprintDistanceKm$delegate, this.$peakSprintSpeed$delegate, this.$passCount$delegate, this.$pullTimeSec$delegate, this.$isPullActive$delegate, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((TestTrackScreenKt$TestTrackScreen$3$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0085  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0059 -> B:7:0x005c). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object $result) {
        TestTrackScreenKt$TestTrackScreen$3$1 testTrackScreenKt$TestTrackScreen$3$1;
        boolean TestTrackScreen$lambda$1;
        boolean TestTrackScreen$lambda$12;
        long TestTrackScreen$lambda$4;
        double currentSpeedKmh;
        double TestTrackScreen$lambda$10;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                testTrackScreenKt$TestTrackScreen$3$1 = this;
                TestTrackScreen$lambda$1 = TestTrackScreenKt.TestTrackScreen$lambda$1(testTrackScreenKt$TestTrackScreen$3$1.$isTestRunning$delegate);
                if (TestTrackScreen$lambda$1) {
                    testTrackScreenKt$TestTrackScreen$3$1.$testTimerSeconds$delegate.setLongValue(0L);
                    testTrackScreenKt$TestTrackScreen$3$1.$sprintDistanceKm$delegate.setDoubleValue(AudioStats.AUDIO_AMPLITUDE_NONE);
                    testTrackScreenKt$TestTrackScreen$3$1.$peakSprintSpeed$delegate.setDoubleValue(AudioStats.AUDIO_AMPLITUDE_NONE);
                    testTrackScreenKt$TestTrackScreen$3$1.$passCount$delegate.setIntValue(0);
                    testTrackScreenKt$TestTrackScreen$3$1.$pullTimeSec$delegate.setDoubleValue(AudioStats.AUDIO_AMPLITUDE_NONE);
                    TestTrackScreenKt.TestTrackScreen$lambda$20(testTrackScreenKt$TestTrackScreen$3$1.$isPullActive$delegate, false);
                    TestTrackScreen$lambda$12 = TestTrackScreenKt.TestTrackScreen$lambda$1(testTrackScreenKt$TestTrackScreen$3$1.$isTestRunning$delegate);
                    if (TestTrackScreen$lambda$12) {
                        testTrackScreenKt$TestTrackScreen$3$1.label = 1;
                        if (DelayKt.delay(1000L, testTrackScreenKt$TestTrackScreen$3$1) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        TestTrackScreen$lambda$4 = TestTrackScreenKt.TestTrackScreen$lambda$4(testTrackScreenKt$TestTrackScreen$3$1.$testTimerSeconds$delegate);
                        testTrackScreenKt$TestTrackScreen$3$1.$testTimerSeconds$delegate.setLongValue(TestTrackScreen$lambda$4 + 1);
                        testTrackScreenKt$TestTrackScreen$3$1.$sprintDistanceKm$delegate.setDoubleValue(testTrackScreenKt$TestTrackScreen$3$1.$gpsData.getDistanceKm());
                        currentSpeedKmh = testTrackScreenKt$TestTrackScreen$3$1.$gpsData.getCurrentSpeedKmh();
                        TestTrackScreen$lambda$10 = TestTrackScreenKt.TestTrackScreen$lambda$10(testTrackScreenKt$TestTrackScreen$3$1.$peakSprintSpeed$delegate);
                        if (currentSpeedKmh > TestTrackScreen$lambda$10) {
                            testTrackScreenKt$TestTrackScreen$3$1.$peakSprintSpeed$delegate.setDoubleValue(testTrackScreenKt$TestTrackScreen$3$1.$gpsData.getCurrentSpeedKmh());
                        }
                        TestTrackScreen$lambda$12 = TestTrackScreenKt.TestTrackScreen$lambda$1(testTrackScreenKt$TestTrackScreen$3$1.$isTestRunning$delegate);
                        if (TestTrackScreen$lambda$12) {
                        }
                    }
                }
                return Unit.INSTANCE;
            case 1:
                testTrackScreenKt$TestTrackScreen$3$1 = this;
                ResultKt.throwOnFailure($result);
                TestTrackScreen$lambda$4 = TestTrackScreenKt.TestTrackScreen$lambda$4(testTrackScreenKt$TestTrackScreen$3$1.$testTimerSeconds$delegate);
                testTrackScreenKt$TestTrackScreen$3$1.$testTimerSeconds$delegate.setLongValue(TestTrackScreen$lambda$4 + 1);
                testTrackScreenKt$TestTrackScreen$3$1.$sprintDistanceKm$delegate.setDoubleValue(testTrackScreenKt$TestTrackScreen$3$1.$gpsData.getDistanceKm());
                currentSpeedKmh = testTrackScreenKt$TestTrackScreen$3$1.$gpsData.getCurrentSpeedKmh();
                TestTrackScreen$lambda$10 = TestTrackScreenKt.TestTrackScreen$lambda$10(testTrackScreenKt$TestTrackScreen$3$1.$peakSprintSpeed$delegate);
                if (currentSpeedKmh > TestTrackScreen$lambda$10) {
                }
                TestTrackScreen$lambda$12 = TestTrackScreenKt.TestTrackScreen$lambda$1(testTrackScreenKt$TestTrackScreen$3$1.$isTestRunning$delegate);
                if (TestTrackScreen$lambda$12) {
                }
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
