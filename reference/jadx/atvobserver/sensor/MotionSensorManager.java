package com.cgs.atvobserver.sensor;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import androidx.camera.video.AudioStats;
import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: MotionSensorManager.kt */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0013\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001a\u001a\u00020\u000bH\u0016J\u0012\u0010\u001b\u001a\u00020\u00182\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u000e\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020\u000bJ\u0006\u0010 \u001a\u00020\u0018J\u0006\u0010!\u001a\u00020\u0018R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/cgs/atvobserver/sensor/MotionSensorManager;", "Landroid/hardware/SensorEventListener;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "_motionData", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/cgs/atvobserver/sensor/MotionSensorData;", "accelerometer", "Landroid/hardware/Sensor;", "consecutiveHighGs", "", "lastGForce", "", "motionData", "Lkotlinx/coroutines/flow/StateFlow;", "getMotionData", "()Lkotlinx/coroutines/flow/StateFlow;", "sensorManager", "Landroid/hardware/SensorManager;", "vibrationBuffer", "", "vibrationIdx", "onAccuracyChanged", "", "sensor", "accuracy", "onSensorChanged", NotificationCompat.CATEGORY_EVENT, "Landroid/hardware/SensorEvent;", "setAdaptiveTargetFps", "fps", "startListening", "stopListening", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes9.dex */
public final class MotionSensorManager implements SensorEventListener {
    public static final int $stable = 8;
    private final MutableStateFlow<MotionSensorData> _motionData;
    private final Sensor accelerometer;
    private int consecutiveHighGs;
    private double lastGForce;
    private final StateFlow<MotionSensorData> motionData;
    private final SensorManager sensorManager;
    private double[] vibrationBuffer;
    private int vibrationIdx;

    public MotionSensorManager(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("sensor");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.hardware.SensorManager");
        this.sensorManager = (SensorManager) systemService;
        this.accelerometer = this.sensorManager.getDefaultSensor(1);
        this._motionData = StateFlowKt.MutableStateFlow(new MotionSensorData(AudioStats.AUDIO_AMPLITUDE_NONE, 0.0f, 0.0f, 0.0f, AudioStats.AUDIO_AMPLITUDE_NONE, false, false, false, false, 0, 1023, null));
        this.motionData = FlowKt.asStateFlow(this._motionData);
        this.lastGForce = 1.0d;
        this.vibrationBuffer = new double[10];
    }

    public final StateFlow<MotionSensorData> getMotionData() {
        return this.motionData;
    }

    public final void startListening() {
        Unit unit;
        MotionSensorData copy;
        MotionSensorData copy2;
        Sensor it = this.accelerometer;
        if (it != null) {
            try {
                this.sensorManager.registerListener(this, it, 0);
            } catch (SecurityException e) {
                this.sensorManager.registerListener(this, it, 1);
            }
            MutableStateFlow<MotionSensorData> mutableStateFlow = this._motionData;
            copy2 = r5.copy((r26 & 1) != 0 ? r5.gForceMagnitude : AudioStats.AUDIO_AMPLITUDE_NONE, (r26 & 2) != 0 ? r5.rawX : 0.0f, (r26 & 4) != 0 ? r5.rawY : 0.0f, (r26 & 8) != 0 ? r5.rawZ : 0.0f, (r26 & 16) != 0 ? r5.vibrationIntensity : AudioStats.AUDIO_AMPLITUDE_NONE, (r26 & 32) != 0 ? r5.hardBrakingDetected : false, (r26 & 64) != 0 ? r5.hardLaunchDetected : false, (r26 & 128) != 0 ? r5.crashOrFallDetected : false, (r26 & 256) != 0 ? r5.isSensorAvailable : true, (r26 & 512) != 0 ? this._motionData.getValue().activeSamplingFps : 0);
            mutableStateFlow.setValue(copy2);
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            MotionSensorManager $this$startListening_u24lambda_u241 = this;
            MutableStateFlow<MotionSensorData> mutableStateFlow2 = $this$startListening_u24lambda_u241._motionData;
            copy = r5.copy((r26 & 1) != 0 ? r5.gForceMagnitude : AudioStats.AUDIO_AMPLITUDE_NONE, (r26 & 2) != 0 ? r5.rawX : 0.0f, (r26 & 4) != 0 ? r5.rawY : 0.0f, (r26 & 8) != 0 ? r5.rawZ : 0.0f, (r26 & 16) != 0 ? r5.vibrationIntensity : AudioStats.AUDIO_AMPLITUDE_NONE, (r26 & 32) != 0 ? r5.hardBrakingDetected : false, (r26 & 64) != 0 ? r5.hardLaunchDetected : false, (r26 & 128) != 0 ? r5.crashOrFallDetected : false, (r26 & 256) != 0 ? r5.isSensorAvailable : false, (r26 & 512) != 0 ? $this$startListening_u24lambda_u241._motionData.getValue().activeSamplingFps : 0);
            mutableStateFlow2.setValue(copy);
        }
    }

    public final void stopListening() {
        this.sensorManager.unregisterListener(this);
    }

    public final void setAdaptiveTargetFps(int fps) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent event) {
        if (event == null || event.sensor.getType() != 1) {
            return;
        }
        float x = event.values[0];
        float y = event.values[1];
        float z = event.values[2];
        double norm = Math.sqrt((x * x) + (y * y) + (z * z));
        double gForce = norm / 9.80665d;
        boolean isRawImpact = gForce >= 3.0d || Math.abs(x) > 22.0f || Math.abs(y) > 22.0f;
        if (isRawImpact) {
            this.consecutiveHighGs++;
        } else {
            this.consecutiveHighGs = Math.max(0, this.consecutiveHighGs - 1);
        }
        boolean isConfirmedCrash = this.consecutiveHighGs >= 3;
        double deltaG = Math.abs(gForce - this.lastGForce);
        this.lastGForce = gForce;
        this.vibrationBuffer[this.vibrationIdx] = deltaG;
        this.vibrationIdx = (this.vibrationIdx + 1) % this.vibrationBuffer.length;
        double avgVibration = ArraysKt.average(this.vibrationBuffer);
        boolean isHardBraking = ((double) y) < -6.0d || (gForce > 1.8d && y < 0.0f);
        boolean isHardLaunch = ((double) y) > 6.0d || (gForce > 1.8d && y > 0.0f);
        this._motionData.setValue(new MotionSensorData(gForce, x, y, z, avgVibration, isHardBraking, isHardLaunch, isConfirmedCrash, true, 60));
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int accuracy) {
    }
}
