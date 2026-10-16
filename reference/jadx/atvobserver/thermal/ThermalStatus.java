package com.cgs.atvobserver.thermal;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ThermalGuardian.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/cgs/atvobserver/thermal/ThermalStatus;", "", "temperatureCelsius", "", "state", "Lcom/cgs/atvobserver/thermal/ThermalState;", "(FLcom/cgs/atvobserver/thermal/ThermalState;)V", "getState", "()Lcom/cgs/atvobserver/thermal/ThermalState;", "getTemperatureCelsius", "()F", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes6.dex */
public final /* data */ class ThermalStatus {
    public static final int $stable = 0;
    private final ThermalState state;
    private final float temperatureCelsius;

    /* JADX WARN: Multi-variable type inference failed */
    public ThermalStatus() {
        this(0.0f, null, 3, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ ThermalStatus copy$default(ThermalStatus thermalStatus, float f, ThermalState thermalState, int i, Object obj) {
        if ((i & 1) != 0) {
            f = thermalStatus.temperatureCelsius;
        }
        if ((i & 2) != 0) {
            thermalState = thermalStatus.state;
        }
        return thermalStatus.copy(f, thermalState);
    }

    /* renamed from: component1, reason: from getter */
    public final float getTemperatureCelsius() {
        return this.temperatureCelsius;
    }

    /* renamed from: component2, reason: from getter */
    public final ThermalState getState() {
        return this.state;
    }

    public final ThermalStatus copy(float temperatureCelsius, ThermalState state) {
        Intrinsics.checkNotNullParameter(state, "state");
        return new ThermalStatus(temperatureCelsius, state);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ThermalStatus)) {
            return false;
        }
        ThermalStatus thermalStatus = (ThermalStatus) other;
        return Float.compare(this.temperatureCelsius, thermalStatus.temperatureCelsius) == 0 && this.state == thermalStatus.state;
    }

    public int hashCode() {
        return (Float.hashCode(this.temperatureCelsius) * 31) + this.state.hashCode();
    }

    public String toString() {
        return "ThermalStatus(temperatureCelsius=" + this.temperatureCelsius + ", state=" + this.state + ")";
    }

    public ThermalStatus(float temperatureCelsius, ThermalState state) {
        Intrinsics.checkNotNullParameter(state, "state");
        this.temperatureCelsius = temperatureCelsius;
        this.state = state;
    }

    public /* synthetic */ ThermalStatus(float f, ThermalState thermalState, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 25.0f : f, (i & 2) != 0 ? ThermalState.NORMAL : thermalState);
    }

    public final float getTemperatureCelsius() {
        return this.temperatureCelsius;
    }

    public final ThermalState getState() {
        return this.state;
    }
}
