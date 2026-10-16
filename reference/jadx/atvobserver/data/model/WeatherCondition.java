package com.cgs.atvobserver.data.model;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* compiled from: Models.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014¨\u0006\u0015"}, d2 = {"Lcom/cgs/atvobserver/data/model/WeatherCondition;", "", "label", "", "isWindy", "", "(Ljava/lang/String;ILjava/lang/String;Z)V", "()Z", "getLabel", "()Ljava/lang/String;", "NORMAL_DRY", "NORMAL_WINDY", "COLD_DRY", "COLD_WINDY", "HOT_DRY", "HOT_WINDY", "EXTREME_COLD_DRY", "EXTREME_COLD_WINDY", "EXTREME_HOT_DRY", "EXTREME_HOT_WINDY", "STORM", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes10.dex */
public enum WeatherCondition {
    NORMAL_DRY("Normal Dry", false),
    NORMAL_WINDY("Normal Windy", true),
    COLD_DRY("Cold Dry", false),
    COLD_WINDY("Cold Windy", true),
    HOT_DRY("Hot Dry", false),
    HOT_WINDY("Hot Windy", true),
    EXTREME_COLD_DRY("Extreme Cold Dry", false),
    EXTREME_COLD_WINDY("Extreme Cold Windy", true),
    EXTREME_HOT_DRY("Extreme Hot Dry", false),
    EXTREME_HOT_WINDY("Extreme Hot Windy", true),
    STORM("Storm", true);

    private final boolean isWindy;
    private final String label;
    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries($VALUES);

    public static EnumEntries<WeatherCondition> getEntries() {
        return $ENTRIES;
    }

    WeatherCondition(String label, boolean isWindy) {
        this.label = label;
        this.isWindy = isWindy;
    }

    public final String getLabel() {
        return this.label;
    }

    /* renamed from: isWindy, reason: from getter */
    public final boolean getIsWindy() {
        return this.isWindy;
    }
}
