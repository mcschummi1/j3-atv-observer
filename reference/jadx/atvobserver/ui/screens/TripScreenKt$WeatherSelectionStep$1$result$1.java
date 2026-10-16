package com.cgs.atvobserver.ui.screens;

import com.cgs.atvobserver.data.model.WeatherCondition;
import com.cgs.atvobserver.weather.WeatherManager;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: TripScreen.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/cgs/atvobserver/data/model/WeatherCondition;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.cgs.atvobserver.ui.screens.TripScreenKt$WeatherSelectionStep$1$result$1", f = "TripScreen.kt", i = {}, l = {676}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes11.dex */
final class TripScreenKt$WeatherSelectionStep$1$result$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super WeatherCondition>, Object> {
    final /* synthetic */ double $gpsLat;
    final /* synthetic */ double $gpsLon;
    final /* synthetic */ WeatherManager $weatherManager;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TripScreenKt$WeatherSelectionStep$1$result$1(WeatherManager weatherManager, double d, double d2, Continuation<? super TripScreenKt$WeatherSelectionStep$1$result$1> continuation) {
        super(2, continuation);
        this.$weatherManager = weatherManager;
        this.$gpsLat = d;
        this.$gpsLon = d2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TripScreenKt$WeatherSelectionStep$1$result$1(this.$weatherManager, this.$gpsLat, this.$gpsLon, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super WeatherCondition> continuation) {
        return ((TripScreenKt$WeatherSelectionStep$1$result$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object $result) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                this.label = 1;
                Object autoDetectWeather = this.$weatherManager.autoDetectWeather(this.$gpsLat, this.$gpsLon, this);
                return autoDetectWeather == coroutine_suspended ? coroutine_suspended : autoDetectWeather;
            case 1:
                ResultKt.throwOnFailure($result);
                return $result;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
