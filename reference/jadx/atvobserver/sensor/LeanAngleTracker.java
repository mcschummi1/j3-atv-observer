package com.cgs.atvobserver.sensor;

import androidx.camera.video.AudioStats;
import kotlin.Metadata;

/* compiled from: LeanAngleTracker.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J>\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/cgs/atvobserver/sensor/LeanAngleTracker;", "", "()V", "filteredPitch", "", "filteredRoll", "lastTimestampNs", "", "processSensorSample", "Lcom/cgs/atvobserver/sensor/LeanAngleData;", "accelX", "", "accelY", "accelZ", "gyroX", "gyroY", "gyroZ", "timestampNs", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes9.dex */
public final class LeanAngleTracker {
    public static final int $stable = 8;
    private double filteredPitch;
    private double filteredRoll;
    private long lastTimestampNs;

    public final LeanAngleData processSensorSample(float accelX, float accelY, float accelZ, float gyroX, float gyroY, float gyroZ, long timestampNs) {
        if (this.lastTimestampNs == 0) {
            this.lastTimestampNs = timestampNs;
            return new LeanAngleData(AudioStats.AUDIO_AMPLITUDE_NONE, AudioStats.AUDIO_AMPLITUDE_NONE, false, false, 15, null);
        }
        double dtSec = (timestampNs - this.lastTimestampNs) / 1.0E9d;
        this.lastTimestampNs = timestampNs;
        double accelRoll = Math.toDegrees(Math.atan2(accelY, Math.sqrt((accelX * accelX) + (accelZ * accelZ))));
        double accelPitch = Math.toDegrees(Math.atan2(accelX, Math.sqrt((accelY * accelY) + (accelZ * accelZ))));
        this.filteredRoll = ((this.filteredRoll + (Math.toDegrees(gyroZ) * dtSec)) * 0.98d) + (accelRoll * 0.02d);
        this.filteredPitch = ((this.filteredPitch + (Math.toDegrees(gyroX) * dtSec)) * 0.98d) + (0.02d * accelPitch);
        boolean isWheelie = this.filteredPitch > 15.0d;
        boolean isCornering = Math.abs(this.filteredRoll) > 20.0d;
        return new LeanAngleData(this.filteredRoll, this.filteredPitch, isWheelie, isCornering);
    }
}
