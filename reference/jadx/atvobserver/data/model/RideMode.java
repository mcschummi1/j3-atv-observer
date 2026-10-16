package com.cgs.atvobserver.data.model;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* compiled from: Models.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/cgs/atvobserver/data/model/RideMode;", "", "displayName", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getDisplayName", "()Ljava/lang/String;", "TRIP", "POCKET", "TEST_TRACK", "APP_DIAG", "ATV_DIAG", "CARB_TUNE", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes10.dex */
public enum RideMode {
    TRIP("TRIP"),
    POCKET("POCKET MODE"),
    TEST_TRACK("TEST TRACK"),
    APP_DIAG("APP DIAG"),
    ATV_DIAG("ATV DIAG"),
    CARB_TUNE("CARB TUNE");

    private final String displayName;
    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries($VALUES);

    public static EnumEntries<RideMode> getEntries() {
        return $ENTRIES;
    }

    RideMode(String displayName) {
        this.displayName = displayName;
    }

    public final String getDisplayName() {
        return this.displayName;
    }
}
