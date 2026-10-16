package com.cgs.atvobserver.ui.screens;

import android.content.Context;
import androidx.compose.runtime.MutableState;
import com.cgs.atvobserver.data.model.WeatherCondition;
import com.cgs.atvobserver.weather.WeatherManager;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutKt;

/* compiled from: TripScreen.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.cgs.atvobserver.ui.screens.TripScreenKt$WeatherSelectionStep$1", f = "TripScreen.kt", i = {}, l = {675}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes11.dex */
final class TripScreenKt$WeatherSelectionStep$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ MutableState<String> $detectedLabel$delegate;
    final /* synthetic */ double $gpsLat;
    final /* synthetic */ double $gpsLon;
    final /* synthetic */ MutableState<Boolean> $isCheckingWeather$delegate;
    final /* synthetic */ Function1<WeatherCondition, Unit> $onWeatherSelected;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    TripScreenKt$WeatherSelectionStep$1(Context context, Function1<? super WeatherCondition, Unit> function1, double d, double d2, MutableState<Boolean> mutableState, MutableState<String> mutableState2, Continuation<? super TripScreenKt$WeatherSelectionStep$1> continuation) {
        super(2, continuation);
        this.$context = context;
        this.$onWeatherSelected = function1;
        this.$gpsLat = d;
        this.$gpsLon = d2;
        this.$isCheckingWeather$delegate = mutableState;
        this.$detectedLabel$delegate = mutableState2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TripScreenKt$WeatherSelectionStep$1(this.$context, this.$onWeatherSelected, this.$gpsLat, this.$gpsLon, this.$isCheckingWeather$delegate, this.$detectedLabel$delegate, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((TripScreenKt$WeatherSelectionStep$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object $result) {
        TripScreenKt$WeatherSelectionStep$1 tripScreenKt$WeatherSelectionStep$1;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                tripScreenKt$WeatherSelectionStep$1 = this;
                WeatherManager weatherManager = new WeatherManager(tripScreenKt$WeatherSelectionStep$1.$context);
                tripScreenKt$WeatherSelectionStep$1.label = 1;
                Object withTimeoutOrNull = TimeoutKt.withTimeoutOrNull(1500L, new TripScreenKt$WeatherSelectionStep$1$result$1(weatherManager, tripScreenKt$WeatherSelectionStep$1.$gpsLat, tripScreenKt$WeatherSelectionStep$1.$gpsLon, null), tripScreenKt$WeatherSelectionStep$1);
                if (withTimeoutOrNull != coroutine_suspended) {
                    $result = withTimeoutOrNull;
                    break;
                } else {
                    return coroutine_suspended;
                }
            case 1:
                ResultKt.throwOnFailure($result);
                tripScreenKt$WeatherSelectionStep$1 = this;
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        WeatherCondition result = (WeatherCondition) $result;
        TripScreenKt.WeatherSelectionStep$lambda$75(tripScreenKt$WeatherSelectionStep$1.$isCheckingWeather$delegate, false);
        if (result != null) {
            tripScreenKt$WeatherSelectionStep$1.$onWeatherSelected.invoke(result);
        } else {
            tripScreenKt$WeatherSelectionStep$1.$detectedLabel$delegate.setValue("Offline fallback ready (Tap condition below)");
        }
        return Unit.INSTANCE;
    }
}
