package com.cgs.atvobserver.audio;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SoftwareRevLimiterWarning.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B-\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J1\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\n¨\u0006\u001a"}, d2 = {"Lcom/cgs/atvobserver/audio/RevLimitStatus;", "", "state", "Lcom/cgs/atvobserver/audio/RevLimitState;", "currentRpm", "", "warningRpm", "criticalRpm", "(Lcom/cgs/atvobserver/audio/RevLimitState;III)V", "getCriticalRpm", "()I", "getCurrentRpm", "getState", "()Lcom/cgs/atvobserver/audio/RevLimitState;", "getWarningRpm", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes14.dex */
public final /* data */ class RevLimitStatus {
    public static final int $stable = 0;
    private final int criticalRpm;
    private final int currentRpm;
    private final RevLimitState state;
    private final int warningRpm;

    public RevLimitStatus() {
        this(null, 0, 0, 0, 15, null);
    }

    public static /* synthetic */ RevLimitStatus copy$default(RevLimitStatus revLimitStatus, RevLimitState revLimitState, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            revLimitState = revLimitStatus.state;
        }
        if ((i4 & 2) != 0) {
            i = revLimitStatus.currentRpm;
        }
        if ((i4 & 4) != 0) {
            i2 = revLimitStatus.warningRpm;
        }
        if ((i4 & 8) != 0) {
            i3 = revLimitStatus.criticalRpm;
        }
        return revLimitStatus.copy(revLimitState, i, i2, i3);
    }

    /* renamed from: component1, reason: from getter */
    public final RevLimitState getState() {
        return this.state;
    }

    /* renamed from: component2, reason: from getter */
    public final int getCurrentRpm() {
        return this.currentRpm;
    }

    /* renamed from: component3, reason: from getter */
    public final int getWarningRpm() {
        return this.warningRpm;
    }

    /* renamed from: component4, reason: from getter */
    public final int getCriticalRpm() {
        return this.criticalRpm;
    }

    public final RevLimitStatus copy(RevLimitState state, int currentRpm, int warningRpm, int criticalRpm) {
        Intrinsics.checkNotNullParameter(state, "state");
        return new RevLimitStatus(state, currentRpm, warningRpm, criticalRpm);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RevLimitStatus)) {
            return false;
        }
        RevLimitStatus revLimitStatus = (RevLimitStatus) other;
        return this.state == revLimitStatus.state && this.currentRpm == revLimitStatus.currentRpm && this.warningRpm == revLimitStatus.warningRpm && this.criticalRpm == revLimitStatus.criticalRpm;
    }

    public int hashCode() {
        return (((((this.state.hashCode() * 31) + Integer.hashCode(this.currentRpm)) * 31) + Integer.hashCode(this.warningRpm)) * 31) + Integer.hashCode(this.criticalRpm);
    }

    public String toString() {
        return "RevLimitStatus(state=" + this.state + ", currentRpm=" + this.currentRpm + ", warningRpm=" + this.warningRpm + ", criticalRpm=" + this.criticalRpm + ")";
    }

    public RevLimitStatus(RevLimitState state, int currentRpm, int warningRpm, int criticalRpm) {
        Intrinsics.checkNotNullParameter(state, "state");
        this.state = state;
        this.currentRpm = currentRpm;
        this.warningRpm = warningRpm;
        this.criticalRpm = criticalRpm;
    }

    public /* synthetic */ RevLimitStatus(RevLimitState revLimitState, int i, int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? RevLimitState.NORMAL : revLimitState, (i4 & 2) != 0 ? 0 : i, (i4 & 4) != 0 ? 7000 : i2, (i4 & 8) != 0 ? 8000 : i3);
    }

    public final RevLimitState getState() {
        return this.state;
    }

    public final int getCurrentRpm() {
        return this.currentRpm;
    }

    public final int getWarningRpm() {
        return this.warningRpm;
    }

    public final int getCriticalRpm() {
        return this.criticalRpm;
    }
}
