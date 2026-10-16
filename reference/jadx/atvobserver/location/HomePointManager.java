package com.cgs.atvobserver.location;

import android.content.Context;
import android.content.SharedPreferences;
import android.location.Location;
import androidx.camera.video.AudioStats;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: HomePointManager.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011J\u0006\u0010\u0013\u001a\u00020\u0014J\b\u0010\u0015\u001a\u00020\u0007H\u0002J\u0016\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u0011R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/cgs/atvobserver/location/HomePointManager;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "_homePoint", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/cgs/atvobserver/location/HomePoint;", "homePoint", "Lkotlinx/coroutines/flow/StateFlow;", "getHomePoint", "()Lkotlinx/coroutines/flow/StateFlow;", "prefs", "Landroid/content/SharedPreferences;", "calculateGuidance", "Lcom/cgs/atvobserver/location/HomeGuidance;", "currentLat", "", "currentLon", "clearHomePoint", "", "loadHomePoint", "setHomePoint", "latitude", "longitude", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes10.dex */
public final class HomePointManager {
    public static final int $stable = 8;
    private final MutableStateFlow<HomePoint> _homePoint;
    private final StateFlow<HomePoint> homePoint;
    private final SharedPreferences prefs;

    public HomePointManager(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        SharedPreferences sharedPreferences = context.getSharedPreferences("cgs_home_point", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        this.prefs = sharedPreferences;
        this._homePoint = StateFlowKt.MutableStateFlow(loadHomePoint());
        this.homePoint = FlowKt.asStateFlow(this._homePoint);
    }

    public final StateFlow<HomePoint> getHomePoint() {
        return this.homePoint;
    }

    private final HomePoint loadHomePoint() {
        boolean isSet = this.prefs.getBoolean("is_set", false);
        double lat = this.prefs.getFloat("lat", 0.0f);
        double lon = this.prefs.getFloat("lon", 0.0f);
        long time = this.prefs.getLong("time", 0L);
        return new HomePoint(lat, lon, isSet, time);
    }

    public final void setHomePoint(double latitude, double longitude) {
        long now = System.currentTimeMillis();
        SharedPreferences.Editor $this$setHomePoint_u24lambda_u240 = this.prefs.edit();
        $this$setHomePoint_u24lambda_u240.putBoolean("is_set", true);
        $this$setHomePoint_u24lambda_u240.putFloat("lat", (float) latitude);
        $this$setHomePoint_u24lambda_u240.putFloat("lon", (float) longitude);
        $this$setHomePoint_u24lambda_u240.putLong("time", now);
        $this$setHomePoint_u24lambda_u240.apply();
        this._homePoint.setValue(new HomePoint(latitude, longitude, true, now));
    }

    public final void clearHomePoint() {
        this.prefs.edit().clear().apply();
        this._homePoint.setValue(new HomePoint(AudioStats.AUDIO_AMPLITUDE_NONE, AudioStats.AUDIO_AMPLITUDE_NONE, false, 0L, 15, null));
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0024, code lost:
    
        if ((r19 == androidx.camera.video.AudioStats.AUDIO_AMPLITUDE_NONE) != false) goto L74;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final HomeGuidance calculateGuidance(double currentLat, double currentLon) {
        String cardinal;
        HomePoint home = this._homePoint.getValue();
        if (home.isSet()) {
            if (currentLat == AudioStats.AUDIO_AMPLITUDE_NONE) {
            }
            float[] results = new float[2];
            Location.distanceBetween(currentLat, currentLon, home.getLatitude(), home.getLongitude(), results);
            float distanceMeters = results[0];
            float bearing = (results[1] + 360.0f) % 360.0f;
            if (22.5f <= bearing && bearing <= 67.5f) {
                cardinal = "NE";
            } else {
                if (67.5f <= bearing && bearing <= 112.5f) {
                    cardinal = ExifInterface.LONGITUDE_EAST;
                } else {
                    if (112.5f <= bearing && bearing <= 157.5f) {
                        cardinal = "SE";
                    } else {
                        if (157.5f <= bearing && bearing <= 202.5f) {
                            cardinal = ExifInterface.LATITUDE_SOUTH;
                        } else {
                            if (202.5f <= bearing && bearing <= 247.5f) {
                                cardinal = "SW";
                            } else {
                                if (247.5f <= bearing && bearing <= 292.5f) {
                                    cardinal = ExifInterface.LONGITUDE_WEST;
                                } else {
                                    cardinal = 247.5f <= bearing && bearing <= 337.5f ? "NW" : "N";
                                }
                            }
                        }
                    }
                }
            }
            return new HomeGuidance(distanceMeters / 1000.0d, bearing, cardinal);
        }
        return new HomeGuidance(AudioStats.AUDIO_AMPLITUDE_NONE, 0.0f, null, 7, null);
    }
}
