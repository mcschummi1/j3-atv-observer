package com.cgs.atvobserver.location;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import androidx.camera.video.AudioStats;
import androidx.core.app.NotificationCompat;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.scheduling.WorkQueueKt;

/* compiled from: GpsTracker.kt */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\rH\u0016J\u0010\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J$\u0010\u001b\u001a\u00020\u00152\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0017J\u0006\u0010 \u001a\u00020\u0015J\b\u0010!\u001a\u00020\u0015H\u0007J\u0006\u0010\"\u001a\u00020\u0015R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcom/cgs/atvobserver/location/GpsTracker;", "Landroid/location/LocationListener;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "_gpsData", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/cgs/atvobserver/location/GpsData;", "gpsData", "Lkotlinx/coroutines/flow/StateFlow;", "getGpsData", "()Lkotlinx/coroutines/flow/StateFlow;", "lastLocation", "Landroid/location/Location;", "locationManager", "Landroid/location/LocationManager;", "maxSpeedMps", "", "totalDistanceMeters", "", "onLocationChanged", "", "location", "onProviderDisabled", "provider", "", "onProviderEnabled", "onStatusChanged", NotificationCompat.CATEGORY_STATUS, "", "extras", "Landroid/os/Bundle;", "resetTrip", "startTracking", "stopTracking", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes10.dex */
public final class GpsTracker implements LocationListener {
    public static final int $stable = 8;
    private final MutableStateFlow<GpsData> _gpsData;
    private final Context context;
    private final StateFlow<GpsData> gpsData;
    private Location lastLocation;
    private final LocationManager locationManager;
    private float maxSpeedMps;
    private double totalDistanceMeters;

    public GpsTracker(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        Object systemService = this.context.getSystemService("location");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.location.LocationManager");
        this.locationManager = (LocationManager) systemService;
        this._gpsData = StateFlowKt.MutableStateFlow(new GpsData(AudioStats.AUDIO_AMPLITUDE_NONE, AudioStats.AUDIO_AMPLITUDE_NONE, AudioStats.AUDIO_AMPLITUDE_NONE, false, AudioStats.AUDIO_AMPLITUDE_NONE, AudioStats.AUDIO_AMPLITUDE_NONE, 0.0f, WorkQueueKt.MASK, null));
        this.gpsData = FlowKt.asStateFlow(this._gpsData);
    }

    public final StateFlow<GpsData> getGpsData() {
        return this.gpsData;
    }

    public final void startTracking() {
        GpsData copy;
        GpsData copy2;
        GpsData copy3;
        try {
            boolean isGpsEnabled = this.locationManager.isProviderEnabled("gps");
            if (isGpsEnabled) {
                this.locationManager.requestLocationUpdates("gps", 1000L, 1.0f, this);
                MutableStateFlow<GpsData> mutableStateFlow = this._gpsData;
                copy3 = r4.copy((r26 & 1) != 0 ? r4.currentSpeedKmh : AudioStats.AUDIO_AMPLITUDE_NONE, (r26 & 2) != 0 ? r4.maxSpeedKmh : AudioStats.AUDIO_AMPLITUDE_NONE, (r26 & 4) != 0 ? r4.distanceKm : AudioStats.AUDIO_AMPLITUDE_NONE, (r26 & 8) != 0 ? r4.isGpsAvailable : true, (r26 & 16) != 0 ? r4.latitude : AudioStats.AUDIO_AMPLITUDE_NONE, (r26 & 32) != 0 ? r4.longitude : AudioStats.AUDIO_AMPLITUDE_NONE, (r26 & 64) != 0 ? this._gpsData.getValue().accuracyMeters : 0.0f);
                mutableStateFlow.setValue(copy3);
            } else {
                MutableStateFlow<GpsData> mutableStateFlow2 = this._gpsData;
                copy2 = r4.copy((r26 & 1) != 0 ? r4.currentSpeedKmh : AudioStats.AUDIO_AMPLITUDE_NONE, (r26 & 2) != 0 ? r4.maxSpeedKmh : AudioStats.AUDIO_AMPLITUDE_NONE, (r26 & 4) != 0 ? r4.distanceKm : AudioStats.AUDIO_AMPLITUDE_NONE, (r26 & 8) != 0 ? r4.isGpsAvailable : false, (r26 & 16) != 0 ? r4.latitude : AudioStats.AUDIO_AMPLITUDE_NONE, (r26 & 32) != 0 ? r4.longitude : AudioStats.AUDIO_AMPLITUDE_NONE, (r26 & 64) != 0 ? this._gpsData.getValue().accuracyMeters : 0.0f);
                mutableStateFlow2.setValue(copy2);
            }
        } catch (Exception e) {
            MutableStateFlow<GpsData> mutableStateFlow3 = this._gpsData;
            copy = r4.copy((r26 & 1) != 0 ? r4.currentSpeedKmh : AudioStats.AUDIO_AMPLITUDE_NONE, (r26 & 2) != 0 ? r4.maxSpeedKmh : AudioStats.AUDIO_AMPLITUDE_NONE, (r26 & 4) != 0 ? r4.distanceKm : AudioStats.AUDIO_AMPLITUDE_NONE, (r26 & 8) != 0 ? r4.isGpsAvailable : false, (r26 & 16) != 0 ? r4.latitude : AudioStats.AUDIO_AMPLITUDE_NONE, (r26 & 32) != 0 ? r4.longitude : AudioStats.AUDIO_AMPLITUDE_NONE, (r26 & 64) != 0 ? this._gpsData.getValue().accuracyMeters : 0.0f);
            mutableStateFlow3.setValue(copy);
        }
    }

    public final void stopTracking() {
        try {
            this.locationManager.removeUpdates(this);
        } catch (Exception e) {
        }
    }

    public final void resetTrip() {
        this.lastLocation = null;
        this.totalDistanceMeters = AudioStats.AUDIO_AMPLITUDE_NONE;
        this.maxSpeedMps = 0.0f;
        this._gpsData.setValue(new GpsData(AudioStats.AUDIO_AMPLITUDE_NONE, AudioStats.AUDIO_AMPLITUDE_NONE, AudioStats.AUDIO_AMPLITUDE_NONE, this._gpsData.getValue().isGpsAvailable(), AudioStats.AUDIO_AMPLITUDE_NONE, AudioStats.AUDIO_AMPLITUDE_NONE, 0.0f, 119, null));
    }

    @Override // android.location.LocationListener
    public void onLocationChanged(Location location) {
        Intrinsics.checkNotNullParameter(location, "location");
        float rawSpeedMps = location.getSpeed();
        double rawSpeedKmh = rawSpeedMps * 3.6d;
        if (rawSpeedKmh > 85.0d) {
            return;
        }
        if (rawSpeedMps > this.maxSpeedMps) {
            this.maxSpeedMps = rawSpeedMps;
        }
        Location prev = this.lastLocation;
        if (prev != null) {
            float dist = prev.distanceTo(location);
            if (dist > 1.0d && location.getAccuracy() < 25.0f) {
                this.totalDistanceMeters += dist;
            }
        }
        this.lastLocation = location;
        this._gpsData.setValue(new GpsData(rawSpeedKmh, this.maxSpeedMps * 3.6d, this.totalDistanceMeters / 1000.0d, true, location.getLatitude(), location.getLongitude(), location.getAccuracy()));
    }

    @Override // android.location.LocationListener
    public void onProviderEnabled(String provider) {
        GpsData copy;
        Intrinsics.checkNotNullParameter(provider, "provider");
        MutableStateFlow<GpsData> mutableStateFlow = this._gpsData;
        copy = r4.copy((r26 & 1) != 0 ? r4.currentSpeedKmh : AudioStats.AUDIO_AMPLITUDE_NONE, (r26 & 2) != 0 ? r4.maxSpeedKmh : AudioStats.AUDIO_AMPLITUDE_NONE, (r26 & 4) != 0 ? r4.distanceKm : AudioStats.AUDIO_AMPLITUDE_NONE, (r26 & 8) != 0 ? r4.isGpsAvailable : true, (r26 & 16) != 0 ? r4.latitude : AudioStats.AUDIO_AMPLITUDE_NONE, (r26 & 32) != 0 ? r4.longitude : AudioStats.AUDIO_AMPLITUDE_NONE, (r26 & 64) != 0 ? this._gpsData.getValue().accuracyMeters : 0.0f);
        mutableStateFlow.setValue(copy);
    }

    @Override // android.location.LocationListener
    public void onProviderDisabled(String provider) {
        GpsData copy;
        Intrinsics.checkNotNullParameter(provider, "provider");
        MutableStateFlow<GpsData> mutableStateFlow = this._gpsData;
        copy = r4.copy((r26 & 1) != 0 ? r4.currentSpeedKmh : AudioStats.AUDIO_AMPLITUDE_NONE, (r26 & 2) != 0 ? r4.maxSpeedKmh : AudioStats.AUDIO_AMPLITUDE_NONE, (r26 & 4) != 0 ? r4.distanceKm : AudioStats.AUDIO_AMPLITUDE_NONE, (r26 & 8) != 0 ? r4.isGpsAvailable : false, (r26 & 16) != 0 ? r4.latitude : AudioStats.AUDIO_AMPLITUDE_NONE, (r26 & 32) != 0 ? r4.longitude : AudioStats.AUDIO_AMPLITUDE_NONE, (r26 & 64) != 0 ? this._gpsData.getValue().accuracyMeters : 0.0f);
        mutableStateFlow.setValue(copy);
    }

    @Override // android.location.LocationListener
    @Deprecated(message = "Deprecated in API 29")
    public void onStatusChanged(String provider, int status, Bundle extras) {
    }
}
