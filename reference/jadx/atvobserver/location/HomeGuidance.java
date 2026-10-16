package com.cgs.atvobserver.location;

import androidx.camera.video.AudioStats;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: HomePointManager.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0007HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0019"}, d2 = {"Lcom/cgs/atvobserver/location/HomeGuidance;", "", "distanceKm", "", "bearingDegrees", "", "directionCardinal", "", "(DFLjava/lang/String;)V", "getBearingDegrees", "()F", "getDirectionCardinal", "()Ljava/lang/String;", "getDistanceKm", "()D", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes10.dex */
public final /* data */ class HomeGuidance {
    public static final int $stable = 0;
    private final float bearingDegrees;
    private final String directionCardinal;
    private final double distanceKm;

    public HomeGuidance() {
        this(AudioStats.AUDIO_AMPLITUDE_NONE, 0.0f, null, 7, null);
    }

    public static /* synthetic */ HomeGuidance copy$default(HomeGuidance homeGuidance, double d, float f, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            d = homeGuidance.distanceKm;
        }
        if ((i & 2) != 0) {
            f = homeGuidance.bearingDegrees;
        }
        if ((i & 4) != 0) {
            str = homeGuidance.directionCardinal;
        }
        return homeGuidance.copy(d, f, str);
    }

    /* renamed from: component1, reason: from getter */
    public final double getDistanceKm() {
        return this.distanceKm;
    }

    /* renamed from: component2, reason: from getter */
    public final float getBearingDegrees() {
        return this.bearingDegrees;
    }

    /* renamed from: component3, reason: from getter */
    public final String getDirectionCardinal() {
        return this.directionCardinal;
    }

    public final HomeGuidance copy(double distanceKm, float bearingDegrees, String directionCardinal) {
        Intrinsics.checkNotNullParameter(directionCardinal, "directionCardinal");
        return new HomeGuidance(distanceKm, bearingDegrees, directionCardinal);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HomeGuidance)) {
            return false;
        }
        HomeGuidance homeGuidance = (HomeGuidance) other;
        return Double.compare(this.distanceKm, homeGuidance.distanceKm) == 0 && Float.compare(this.bearingDegrees, homeGuidance.bearingDegrees) == 0 && Intrinsics.areEqual(this.directionCardinal, homeGuidance.directionCardinal);
    }

    public int hashCode() {
        return (((Double.hashCode(this.distanceKm) * 31) + Float.hashCode(this.bearingDegrees)) * 31) + this.directionCardinal.hashCode();
    }

    public String toString() {
        return "HomeGuidance(distanceKm=" + this.distanceKm + ", bearingDegrees=" + this.bearingDegrees + ", directionCardinal=" + this.directionCardinal + ")";
    }

    public HomeGuidance(double distanceKm, float bearingDegrees, String directionCardinal) {
        Intrinsics.checkNotNullParameter(directionCardinal, "directionCardinal");
        this.distanceKm = distanceKm;
        this.bearingDegrees = bearingDegrees;
        this.directionCardinal = directionCardinal;
    }

    public /* synthetic */ HomeGuidance(double d, float f, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? AudioStats.AUDIO_AMPLITUDE_NONE : d, (i & 2) != 0 ? 0.0f : f, (i & 4) != 0 ? "N" : str);
    }

    public final double getDistanceKm() {
        return this.distanceKm;
    }

    public final float getBearingDegrees() {
        return this.bearingDegrees;
    }

    public final String getDirectionCardinal() {
        return this.directionCardinal;
    }
}
