package com.cgs.atvobserver.sensor;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import androidx.camera.video.AudioStats;
import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: UniversalSensorManager.kt */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0014\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0013\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\t2\u0006\u0010!\u001a\u00020\fH\u0016J\u0012\u0010\"\u001a\u00020\u001f2\b\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u0006\u0010%\u001a\u00020\u001fJ\u0006\u0010&\u001a\u00020\u001fR\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00070\u0016¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcom/cgs/atvobserver/sensor/UniversalSensorManager;", "Landroid/hardware/SensorEventListener;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "_sensorData", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/cgs/atvobserver/sensor/UniversalSensorData;", "accelerometer", "Landroid/hardware/Sensor;", "barometer", "consecutiveHighGs", "", "geomagneticValues", "", "gravityValues", "gyroscope", "lastGForce", "", "lightSensor", "magnetometer", "sensorData", "Lkotlinx/coroutines/flow/StateFlow;", "getSensorData", "()Lkotlinx/coroutines/flow/StateFlow;", "sensorManager", "Landroid/hardware/SensorManager;", "vibrationBuffer", "", "vibrationIdx", "onAccuracyChanged", "", "sensor", "accuracy", "onSensorChanged", NotificationCompat.CATEGORY_EVENT, "Landroid/hardware/SensorEvent;", "startListeningAllSensors", "stopListening", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes9.dex */
public final class UniversalSensorManager implements SensorEventListener {
    public static final int $stable = 8;
    private final MutableStateFlow<UniversalSensorData> _sensorData;
    private final Sensor accelerometer;
    private final Sensor barometer;
    private int consecutiveHighGs;
    private float[] geomagneticValues;
    private float[] gravityValues;
    private final Sensor gyroscope;
    private double lastGForce;
    private final Sensor lightSensor;
    private final Sensor magnetometer;
    private final StateFlow<UniversalSensorData> sensorData;
    private final SensorManager sensorManager;
    private double[] vibrationBuffer;
    private int vibrationIdx;

    public UniversalSensorManager(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("sensor");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.hardware.SensorManager");
        this.sensorManager = (SensorManager) systemService;
        this.accelerometer = this.sensorManager.getDefaultSensor(1);
        this.gyroscope = this.sensorManager.getDefaultSensor(4);
        this.magnetometer = this.sensorManager.getDefaultSensor(2);
        this.barometer = this.sensorManager.getDefaultSensor(6);
        this.lightSensor = this.sensorManager.getDefaultSensor(5);
        this._sensorData = StateFlowKt.MutableStateFlow(new UniversalSensorData(AudioStats.AUDIO_AMPLITUDE_NONE, 0.0f, 0.0f, 0.0f, AudioStats.AUDIO_AMPLITUDE_NONE, false, false, false, AudioStats.AUDIO_AMPLITUDE_NONE, AudioStats.AUDIO_AMPLITUDE_NONE, 0.0f, 0.0f, 0.0f, false, 0.0f, false, 0.0f, AudioStats.AUDIO_AMPLITUDE_NONE, false, 0.0f, false, false, false, 8388607, null));
        this.sensorData = FlowKt.asStateFlow(this._sensorData);
        this.gravityValues = new float[3];
        this.geomagneticValues = new float[3];
        this.lastGForce = 1.0d;
        this.vibrationBuffer = new double[10];
    }

    public final StateFlow<UniversalSensorData> getSensorData() {
        return this.sensorData;
    }

    public final void startListeningAllSensors() {
        UniversalSensorData copy;
        boolean accelOk = false;
        boolean gyroOk = false;
        boolean magOk = false;
        boolean baroOk = false;
        boolean lightOk = false;
        Sensor it = this.accelerometer;
        if (it != null) {
            try {
                this.sensorManager.registerListener(this, it, 0);
            } catch (SecurityException e) {
                this.sensorManager.registerListener(this, it, 1);
            }
            accelOk = true;
        }
        Sensor it2 = this.gyroscope;
        if (it2 != null) {
            this.sensorManager.registerListener(this, it2, 1);
            gyroOk = true;
        }
        Sensor it3 = this.magnetometer;
        if (it3 != null) {
            this.sensorManager.registerListener(this, it3, 1);
            magOk = true;
        }
        Sensor it4 = this.barometer;
        if (it4 != null) {
            this.sensorManager.registerListener(this, it4, 3);
            baroOk = true;
        }
        Sensor it5 = this.lightSensor;
        if (it5 != null) {
            this.sensorManager.registerListener(this, it5, 3);
            lightOk = true;
        }
        MutableStateFlow<UniversalSensorData> mutableStateFlow = this._sensorData;
        copy = r10.copy((r46 & 1) != 0 ? r10.gForceMagnitude : AudioStats.AUDIO_AMPLITUDE_NONE, (r46 & 2) != 0 ? r10.rawX : 0.0f, (r46 & 4) != 0 ? r10.rawY : 0.0f, (r46 & 8) != 0 ? r10.rawZ : 0.0f, (r46 & 16) != 0 ? r10.vibrationIntensity : AudioStats.AUDIO_AMPLITUDE_NONE, (r46 & 32) != 0 ? r10.hardBrakingDetected : false, (r46 & 64) != 0 ? r10.hardLaunchDetected : false, (r46 & 128) != 0 ? r10.crashOrFallDetected : false, (r46 & 256) != 0 ? r10.pitchAngleDeg : AudioStats.AUDIO_AMPLITUDE_NONE, (r46 & 512) != 0 ? r10.rollLeanAngleDeg : AudioStats.AUDIO_AMPLITUDE_NONE, (r46 & 1024) != 0 ? r10.angularVelocityX : 0.0f, (r46 & 2048) != 0 ? r10.angularVelocityY : 0.0f, (r46 & 4096) != 0 ? r10.angularVelocityZ : 0.0f, (r46 & 8192) != 0 ? r10.isGyroAvailable : gyroOk, (r46 & 16384) != 0 ? r10.compassHeadingDeg : 0.0f, (r46 & 32768) != 0 ? r10.isCompassAvailable : magOk, (r46 & 65536) != 0 ? r10.barometricPressureHpa : 0.0f, (r46 & 131072) != 0 ? r10.pressureAltitudeMeters : AudioStats.AUDIO_AMPLITUDE_NONE, (r46 & 262144) != 0 ? r10.isBarometerAvailable : baroOk, (524288 & r46) != 0 ? r10.ambientLux : 0.0f, (r46 & 1048576) != 0 ? r10.isNightDetected : false, (r46 & 2097152) != 0 ? r10.isLightSensorAvailable : lightOk, (r46 & 4194304) != 0 ? this._sensorData.getValue().isAccelerometerAvailable : accelOk);
        mutableStateFlow.setValue(copy);
    }

    public final void stopListening() {
        this.sensorManager.unregisterListener(this);
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent event) {
        UniversalSensorData copy;
        UniversalSensorData copy2;
        UniversalSensorData copy3;
        UniversalSensorData copy4;
        UniversalSensorData copy5;
        if (event == null) {
        }
        switch (event.sensor.getType()) {
            case 1:
                this.gravityValues = (float[]) event.values.clone();
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
                double pitch = Math.toDegrees(Math.atan2(x, Math.sqrt((y * y) + (z * z))));
                double rollLean = Math.toDegrees(Math.atan2(y, Math.sqrt((x * x) + (z * z))));
                MutableStateFlow<UniversalSensorData> mutableStateFlow = this._sensorData;
                copy = r7.copy((r46 & 1) != 0 ? r7.gForceMagnitude : gForce, (r46 & 2) != 0 ? r7.rawX : x, (r46 & 4) != 0 ? r7.rawY : y, (r46 & 8) != 0 ? r7.rawZ : z, (r46 & 16) != 0 ? r7.vibrationIntensity : avgVibration, (r46 & 32) != 0 ? r7.hardBrakingDetected : isHardBraking, (r46 & 64) != 0 ? r7.hardLaunchDetected : isHardLaunch, (r46 & 128) != 0 ? r7.crashOrFallDetected : isConfirmedCrash, (r46 & 256) != 0 ? r7.pitchAngleDeg : pitch, (r46 & 512) != 0 ? r7.rollLeanAngleDeg : rollLean, (r46 & 1024) != 0 ? r7.angularVelocityX : 0.0f, (r46 & 2048) != 0 ? r7.angularVelocityY : 0.0f, (r46 & 4096) != 0 ? r7.angularVelocityZ : 0.0f, (r46 & 8192) != 0 ? r7.isGyroAvailable : false, (r46 & 16384) != 0 ? r7.compassHeadingDeg : 0.0f, (r46 & 32768) != 0 ? r7.isCompassAvailable : false, (r46 & 65536) != 0 ? r7.barometricPressureHpa : 0.0f, (r46 & 131072) != 0 ? r7.pressureAltitudeMeters : AudioStats.AUDIO_AMPLITUDE_NONE, (r46 & 262144) != 0 ? r7.isBarometerAvailable : false, (524288 & r46) != 0 ? r7.ambientLux : 0.0f, (r46 & 1048576) != 0 ? r7.isNightDetected : false, (r46 & 2097152) != 0 ? r7.isLightSensorAvailable : false, (r46 & 4194304) != 0 ? this._sensorData.getValue().isAccelerometerAvailable : false);
                mutableStateFlow.setValue(copy);
                break;
            case 2:
                this.geomagneticValues = (float[]) event.values.clone();
                float[] rotationMatrix = new float[9];
                float[] orientationAngles = new float[3];
                if (SensorManager.getRotationMatrix(rotationMatrix, null, this.gravityValues, this.geomagneticValues)) {
                    SensorManager.getOrientation(rotationMatrix, orientationAngles);
                    float headingDeg = (((float) Math.toDegrees(orientationAngles[0])) + 360.0f) % 360.0f;
                    MutableStateFlow<UniversalSensorData> mutableStateFlow2 = this._sensorData;
                    copy2 = r6.copy((r46 & 1) != 0 ? r6.gForceMagnitude : AudioStats.AUDIO_AMPLITUDE_NONE, (r46 & 2) != 0 ? r6.rawX : 0.0f, (r46 & 4) != 0 ? r6.rawY : 0.0f, (r46 & 8) != 0 ? r6.rawZ : 0.0f, (r46 & 16) != 0 ? r6.vibrationIntensity : AudioStats.AUDIO_AMPLITUDE_NONE, (r46 & 32) != 0 ? r6.hardBrakingDetected : false, (r46 & 64) != 0 ? r6.hardLaunchDetected : false, (r46 & 128) != 0 ? r6.crashOrFallDetected : false, (r46 & 256) != 0 ? r6.pitchAngleDeg : AudioStats.AUDIO_AMPLITUDE_NONE, (r46 & 512) != 0 ? r6.rollLeanAngleDeg : AudioStats.AUDIO_AMPLITUDE_NONE, (r46 & 1024) != 0 ? r6.angularVelocityX : 0.0f, (r46 & 2048) != 0 ? r6.angularVelocityY : 0.0f, (r46 & 4096) != 0 ? r6.angularVelocityZ : 0.0f, (r46 & 8192) != 0 ? r6.isGyroAvailable : false, (r46 & 16384) != 0 ? r6.compassHeadingDeg : headingDeg, (r46 & 32768) != 0 ? r6.isCompassAvailable : false, (r46 & 65536) != 0 ? r6.barometricPressureHpa : 0.0f, (r46 & 131072) != 0 ? r6.pressureAltitudeMeters : AudioStats.AUDIO_AMPLITUDE_NONE, (r46 & 262144) != 0 ? r6.isBarometerAvailable : false, (524288 & r46) != 0 ? r6.ambientLux : 0.0f, (r46 & 1048576) != 0 ? r6.isNightDetected : false, (r46 & 2097152) != 0 ? r6.isLightSensorAvailable : false, (r46 & 4194304) != 0 ? this._sensorData.getValue().isAccelerometerAvailable : false);
                    mutableStateFlow2.setValue(copy2);
                    break;
                }
                break;
            case 4:
                MutableStateFlow<UniversalSensorData> mutableStateFlow3 = this._sensorData;
                copy3 = r7.copy((r46 & 1) != 0 ? r7.gForceMagnitude : AudioStats.AUDIO_AMPLITUDE_NONE, (r46 & 2) != 0 ? r7.rawX : 0.0f, (r46 & 4) != 0 ? r7.rawY : 0.0f, (r46 & 8) != 0 ? r7.rawZ : 0.0f, (r46 & 16) != 0 ? r7.vibrationIntensity : AudioStats.AUDIO_AMPLITUDE_NONE, (r46 & 32) != 0 ? r7.hardBrakingDetected : false, (r46 & 64) != 0 ? r7.hardLaunchDetected : false, (r46 & 128) != 0 ? r7.crashOrFallDetected : false, (r46 & 256) != 0 ? r7.pitchAngleDeg : AudioStats.AUDIO_AMPLITUDE_NONE, (r46 & 512) != 0 ? r7.rollLeanAngleDeg : AudioStats.AUDIO_AMPLITUDE_NONE, (r46 & 1024) != 0 ? r7.angularVelocityX : event.values[0], (r46 & 2048) != 0 ? r7.angularVelocityY : event.values[1], (r46 & 4096) != 0 ? r7.angularVelocityZ : event.values[2], (r46 & 8192) != 0 ? r7.isGyroAvailable : false, (r46 & 16384) != 0 ? r7.compassHeadingDeg : 0.0f, (r46 & 32768) != 0 ? r7.isCompassAvailable : false, (r46 & 65536) != 0 ? r7.barometricPressureHpa : 0.0f, (r46 & 131072) != 0 ? r7.pressureAltitudeMeters : AudioStats.AUDIO_AMPLITUDE_NONE, (r46 & 262144) != 0 ? r7.isBarometerAvailable : false, (524288 & r46) != 0 ? r7.ambientLux : 0.0f, (r46 & 1048576) != 0 ? r7.isNightDetected : false, (r46 & 2097152) != 0 ? r7.isLightSensorAvailable : false, (r46 & 4194304) != 0 ? this._sensorData.getValue().isAccelerometerAvailable : false);
                mutableStateFlow3.setValue(copy3);
                break;
            case 5:
                float lux = event.values[0];
                boolean isNight = lux < 15.0f;
                MutableStateFlow<UniversalSensorData> mutableStateFlow4 = this._sensorData;
                copy4 = r7.copy((r46 & 1) != 0 ? r7.gForceMagnitude : AudioStats.AUDIO_AMPLITUDE_NONE, (r46 & 2) != 0 ? r7.rawX : 0.0f, (r46 & 4) != 0 ? r7.rawY : 0.0f, (r46 & 8) != 0 ? r7.rawZ : 0.0f, (r46 & 16) != 0 ? r7.vibrationIntensity : AudioStats.AUDIO_AMPLITUDE_NONE, (r46 & 32) != 0 ? r7.hardBrakingDetected : false, (r46 & 64) != 0 ? r7.hardLaunchDetected : false, (r46 & 128) != 0 ? r7.crashOrFallDetected : false, (r46 & 256) != 0 ? r7.pitchAngleDeg : AudioStats.AUDIO_AMPLITUDE_NONE, (r46 & 512) != 0 ? r7.rollLeanAngleDeg : AudioStats.AUDIO_AMPLITUDE_NONE, (r46 & 1024) != 0 ? r7.angularVelocityX : 0.0f, (r46 & 2048) != 0 ? r7.angularVelocityY : 0.0f, (r46 & 4096) != 0 ? r7.angularVelocityZ : 0.0f, (r46 & 8192) != 0 ? r7.isGyroAvailable : false, (r46 & 16384) != 0 ? r7.compassHeadingDeg : 0.0f, (r46 & 32768) != 0 ? r7.isCompassAvailable : false, (r46 & 65536) != 0 ? r7.barometricPressureHpa : 0.0f, (r46 & 131072) != 0 ? r7.pressureAltitudeMeters : AudioStats.AUDIO_AMPLITUDE_NONE, (r46 & 262144) != 0 ? r7.isBarometerAvailable : false, (524288 & r46) != 0 ? r7.ambientLux : lux, (r46 & 1048576) != 0 ? r7.isNightDetected : isNight, (r46 & 2097152) != 0 ? r7.isLightSensorAvailable : false, (r46 & 4194304) != 0 ? this._sensorData.getValue().isAccelerometerAvailable : false);
                mutableStateFlow4.setValue(copy4);
                break;
            case 6:
                float pressureHpa = event.values[0];
                double altitudeMeters = SensorManager.getAltitude(1013.25f, pressureHpa);
                MutableStateFlow<UniversalSensorData> mutableStateFlow5 = this._sensorData;
                copy5 = r7.copy((r46 & 1) != 0 ? r7.gForceMagnitude : AudioStats.AUDIO_AMPLITUDE_NONE, (r46 & 2) != 0 ? r7.rawX : 0.0f, (r46 & 4) != 0 ? r7.rawY : 0.0f, (r46 & 8) != 0 ? r7.rawZ : 0.0f, (r46 & 16) != 0 ? r7.vibrationIntensity : AudioStats.AUDIO_AMPLITUDE_NONE, (r46 & 32) != 0 ? r7.hardBrakingDetected : false, (r46 & 64) != 0 ? r7.hardLaunchDetected : false, (r46 & 128) != 0 ? r7.crashOrFallDetected : false, (r46 & 256) != 0 ? r7.pitchAngleDeg : AudioStats.AUDIO_AMPLITUDE_NONE, (r46 & 512) != 0 ? r7.rollLeanAngleDeg : AudioStats.AUDIO_AMPLITUDE_NONE, (r46 & 1024) != 0 ? r7.angularVelocityX : 0.0f, (r46 & 2048) != 0 ? r7.angularVelocityY : 0.0f, (r46 & 4096) != 0 ? r7.angularVelocityZ : 0.0f, (r46 & 8192) != 0 ? r7.isGyroAvailable : false, (r46 & 16384) != 0 ? r7.compassHeadingDeg : 0.0f, (r46 & 32768) != 0 ? r7.isCompassAvailable : false, (r46 & 65536) != 0 ? r7.barometricPressureHpa : pressureHpa, (r46 & 131072) != 0 ? r7.pressureAltitudeMeters : altitudeMeters, (r46 & 262144) != 0 ? r7.isBarometerAvailable : false, (524288 & r46) != 0 ? r7.ambientLux : 0.0f, (r46 & 1048576) != 0 ? r7.isNightDetected : false, (r46 & 2097152) != 0 ? r7.isLightSensorAvailable : false, (r46 & 4194304) != 0 ? this._sensorData.getValue().isAccelerometerAvailable : false);
                mutableStateFlow5.setValue(copy5);
                break;
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int accuracy) {
    }
}
