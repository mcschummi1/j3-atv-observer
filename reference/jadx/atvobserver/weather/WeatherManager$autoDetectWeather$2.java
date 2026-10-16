package com.cgs.atvobserver.weather;

import androidx.camera.video.AudioStats;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import com.cgs.atvobserver.data.model.WeatherCondition;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* compiled from: WeatherManager.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/cgs/atvobserver/data/model/WeatherCondition;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.cgs.atvobserver.weather.WeatherManager$autoDetectWeather$2", f = "WeatherManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes10.dex */
final class WeatherManager$autoDetectWeather$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super WeatherCondition>, Object> {
    final /* synthetic */ double $lat;
    final /* synthetic */ double $lon;
    int label;
    final /* synthetic */ WeatherManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    WeatherManager$autoDetectWeather$2(WeatherManager weatherManager, double d, double d2, Continuation<? super WeatherManager$autoDetectWeather$2> continuation) {
        super(2, continuation);
        this.this$0 = weatherManager;
        this.$lat = d;
        this.$lon = d2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new WeatherManager$autoDetectWeather$2(this.this$0, this.$lat, this.$lon, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super WeatherCondition> continuation) {
        return ((WeatherManager$autoDetectWeather$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MutableStateFlow mutableStateFlow;
        WeatherCondition detected;
        MutableStateFlow mutableStateFlow2;
        MutableStateFlow mutableStateFlow3;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                if (!this.this$0.isInternetAvailable()) {
                    WeatherCondition fallback = WeatherCondition.NORMAL_DRY;
                    mutableStateFlow3 = this.this$0._currentWeather;
                    mutableStateFlow3.setValue(fallback);
                    return fallback;
                }
                double queryLat = (this.$lat > AudioStats.AUDIO_AMPLITUDE_NONE ? 1 : (this.$lat == AudioStats.AUDIO_AMPLITUDE_NONE ? 0 : -1)) == 0 ? 44.4268d : this.$lat;
                double queryLon = this.$lon == AudioStats.AUDIO_AMPLITUDE_NONE ? 26.1025d : this.$lon;
                try {
                    URL url = new URL("https://api.open-meteo.com/v1/forecast?latitude=" + queryLat + "&longitude=" + queryLon + "&current_weather=true");
                    URLConnection openConnection = url.openConnection();
                    Intrinsics.checkNotNull(openConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
                    HttpURLConnection connection = (HttpURLConnection) openConnection;
                    connection.setConnectTimeout(PathInterpolatorCompat.MAX_NUM_POINTS);
                    connection.setReadTimeout(PathInterpolatorCompat.MAX_NUM_POINTS);
                    connection.setRequestMethod("GET");
                    if (connection.getResponseCode() == 200) {
                        InputStream inputStream = connection.getInputStream();
                        Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream(...)");
                        Reader inputStreamReader = new InputStreamReader(inputStream, Charsets.UTF_8);
                        BufferedReader bufferedReader = inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192);
                        try {
                            BufferedReader it = bufferedReader;
                            String response = TextStreamsKt.readText(it);
                            CloseableKt.closeFinally(bufferedReader, null);
                            detected = this.this$0.parseWeatherResponse(response);
                            mutableStateFlow2 = this.this$0._currentWeather;
                            mutableStateFlow2.setValue(detected);
                            return detected;
                        } finally {
                        }
                    }
                } catch (Exception e) {
                }
                WeatherCondition fallback2 = WeatherCondition.NORMAL_DRY;
                mutableStateFlow = this.this$0._currentWeather;
                mutableStateFlow.setValue(fallback2);
                return fallback2;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
