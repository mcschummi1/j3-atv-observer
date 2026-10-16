package com.cgs.atvobserver.weather;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import androidx.camera.video.AudioStats;
import com.cgs.atvobserver.data.model.WeatherCondition;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: WeatherManager.kt */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0011\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u001e\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0086@¢\u0006\u0002\u0010\u0010J\u0006\u0010\u0011\u001a\u00020\u0012J\u0010\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0007R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0019"}, d2 = {"Lcom/cgs/atvobserver/weather/WeatherManager;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "_currentWeather", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/cgs/atvobserver/data/model/WeatherCondition;", "currentWeather", "Lkotlinx/coroutines/flow/StateFlow;", "getCurrentWeather", "()Lkotlinx/coroutines/flow/StateFlow;", "autoDetectWeather", "lat", "", "lon", "(DDLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "isInternetAvailable", "", "parseWeatherResponse", "jsonResponse", "", "setCondition", "", "condition", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes10.dex */
public final class WeatherManager {
    public static final int $stable = 8;
    private final MutableStateFlow<WeatherCondition> _currentWeather;
    private final Context context;
    private final StateFlow<WeatherCondition> currentWeather;

    /* JADX WARN: Multi-variable type inference failed */
    public WeatherManager() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public WeatherManager(Context context) {
        this.context = context;
        this._currentWeather = StateFlowKt.MutableStateFlow(WeatherCondition.NORMAL_DRY);
        this.currentWeather = this._currentWeather;
    }

    public /* synthetic */ WeatherManager(Context context, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : context);
    }

    public final StateFlow<WeatherCondition> getCurrentWeather() {
        return this.currentWeather;
    }

    public final void setCondition(WeatherCondition condition) {
        Intrinsics.checkNotNullParameter(condition, "condition");
        this._currentWeather.setValue(condition);
    }

    public final boolean isInternetAvailable() {
        NetworkCapabilities capabilities;
        if (this.context == null) {
            return true;
        }
        Object systemService = this.context.getSystemService("connectivity");
        ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
        if (connectivityManager == null) {
            return true;
        }
        Network network = connectivityManager.getActiveNetwork();
        if (network == null || (capabilities = connectivityManager.getNetworkCapabilities(network)) == null) {
            return false;
        }
        return capabilities.hasCapability(12);
    }

    public final Object autoDetectWeather(double lat, double lon, Continuation<? super WeatherCondition> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new WeatherManager$autoDetectWeather$2(this, lat, lon, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final WeatherCondition parseWeatherResponse(String jsonResponse) {
        int idx;
        boolean contains$default = StringsKt.contains$default((CharSequence) jsonResponse, (CharSequence) "windspeed", false, 2, (Object) null);
        double windSpeed = AudioStats.AUDIO_AMPLITUDE_NONE;
        if (contains$default && (idx = StringsKt.indexOf$default((CharSequence) jsonResponse, "\"windspeed\":", 0, false, 6, (Object) null)) != -1) {
            String sub = jsonResponse.substring(idx + 12);
            Intrinsics.checkNotNullExpressionValue(sub, "substring(...)");
            String $this$takeWhile$iv = sub;
            int index$iv = 0;
            int length = $this$takeWhile$iv.length();
            while (true) {
                if (index$iv >= length) {
                    break;
                }
                char it = $this$takeWhile$iv.charAt(index$iv);
                if (((Character.isDigit(it) || it == '.') ? (char) 1 : (char) 0) != 0) {
                    index$iv++;
                } else {
                    String substring = $this$takeWhile$iv.substring(0, index$iv);
                    Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                    $this$takeWhile$iv = substring;
                    break;
                }
            }
            Double doubleOrNull = StringsKt.toDoubleOrNull($this$takeWhile$iv);
            if (doubleOrNull != null) {
                windSpeed = doubleOrNull.doubleValue();
            }
        }
        boolean isWindy = windSpeed > 18.0d;
        return isWindy ? WeatherCondition.NORMAL_WINDY : WeatherCondition.NORMAL_DRY;
    }
}
