package com.cgs.atvobserver.ai;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* compiled from: ObserverAiEngine.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/cgs/atvobserver/ai/AppOperatingMode;", "", "(Ljava/lang/String;I)V", "BASIC_MODE", "STANDARD_MODE", "MAXIMUM_MODE", "SAFE_MODE", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes14.dex */
public enum AppOperatingMode {
    BASIC_MODE,
    STANDARD_MODE,
    MAXIMUM_MODE,
    SAFE_MODE;

    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries($VALUES);

    public static EnumEntries<AppOperatingMode> getEntries() {
        return $ENTRIES;
    }
}
