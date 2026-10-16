package com.cgs.atvobserver.audio;

import com.cgs.atvobserver.data.model.VehicleType;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SoftwareRevLimiterWarning.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, d2 = {"Lcom/cgs/atvobserver/audio/SoftwareRevLimiterWarning;", "", "()V", "checkRevLimit", "Lcom/cgs/atvobserver/audio/RevLimitStatus;", "currentRpm", "", "vehicleType", "Lcom/cgs/atvobserver/data/model/VehicleType;", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes14.dex */
public final class SoftwareRevLimiterWarning {
    public static final int $stable = 0;
    public static final SoftwareRevLimiterWarning INSTANCE = new SoftwareRevLimiterWarning();

    /* compiled from: SoftwareRevLimiterWarning.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[VehicleType.values().length];
            try {
                iArr[VehicleType.MOTOCROSS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[VehicleType.DAELIM.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[VehicleType.ATV.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[VehicleType.APP_TEST.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private SoftwareRevLimiterWarning() {
    }

    public final RevLimitStatus checkRevLimit(int currentRpm, VehicleType vehicleType) {
        Pair pair;
        RevLimitState state;
        Intrinsics.checkNotNullParameter(vehicleType, "vehicleType");
        switch (WhenMappings.$EnumSwitchMapping$0[vehicleType.ordinal()]) {
            case 1:
                pair = new Pair(12000, 14000);
                break;
            case 2:
                pair = new Pair(7500, 8500);
                break;
            case 3:
                pair = new Pair(7000, 8000);
                break;
            case 4:
                pair = new Pair(6500, 7500);
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        int warnRpm = ((Number) pair.component1()).intValue();
        int critRpm = ((Number) pair.component2()).intValue();
        if (currentRpm >= critRpm) {
            state = RevLimitState.CRITICAL_OVER_REV;
        } else {
            state = currentRpm >= warnRpm ? RevLimitState.WARNING : RevLimitState.NORMAL;
        }
        return new RevLimitStatus(state, currentRpm, warnRpm, critRpm);
    }
}
