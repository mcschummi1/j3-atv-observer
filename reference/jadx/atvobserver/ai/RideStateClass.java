package com.cgs.atvobserver.ai;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* compiled from: ObserverAiEngine.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u000f\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0010"}, d2 = {"Lcom/cgs/atvobserver/ai/RideStateClass;", "", "(Ljava/lang/String;I)V", "STOPPED", "IDLE", "STARTING", "LAUNCHING", "ACCELERATING", "CRUISING", "CLIMBING", "DESCENDING", "ENGINE_BRAKING", "MECHANICAL_BRAKING", "HEAVY_TRAFFIC", "OFF_ROAD", "UNKNOWN", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes14.dex */
public enum RideStateClass {
    STOPPED,
    IDLE,
    STARTING,
    LAUNCHING,
    ACCELERATING,
    CRUISING,
    CLIMBING,
    DESCENDING,
    ENGINE_BRAKING,
    MECHANICAL_BRAKING,
    HEAVY_TRAFFIC,
    OFF_ROAD,
    UNKNOWN;

    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries($VALUES);

    public static EnumEntries<RideStateClass> getEntries() {
        return $ENTRIES;
    }
}
