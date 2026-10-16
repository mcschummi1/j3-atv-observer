.class public final enum Lcom/cgs/atvobserver/data/model/WeatherCondition;
.super Ljava/lang/Enum;
.source "Models.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cgs/atvobserver/data/model/WeatherCondition;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0010\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/cgs/atvobserver/data/model/WeatherCondition;",
        "",
        "label",
        "",
        "isWindy",
        "",
        "(Ljava/lang/String;ILjava/lang/String;Z)V",
        "()Z",
        "getLabel",
        "()Ljava/lang/String;",
        "NORMAL_DRY",
        "NORMAL_WINDY",
        "COLD_DRY",
        "COLD_WINDY",
        "HOT_DRY",
        "HOT_WINDY",
        "EXTREME_COLD_DRY",
        "EXTREME_COLD_WINDY",
        "EXTREME_HOT_DRY",
        "EXTREME_HOT_WINDY",
        "STORM",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/cgs/atvobserver/data/model/WeatherCondition;

.field public static final enum COLD_DRY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

.field public static final enum COLD_WINDY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

.field public static final enum EXTREME_COLD_DRY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

.field public static final enum EXTREME_COLD_WINDY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

.field public static final enum EXTREME_HOT_DRY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

.field public static final enum EXTREME_HOT_WINDY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

.field public static final enum HOT_DRY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

.field public static final enum HOT_WINDY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

.field public static final enum NORMAL_DRY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

.field public static final enum NORMAL_WINDY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

.field public static final enum STORM:Lcom/cgs/atvobserver/data/model/WeatherCondition;


# instance fields
.field private final isWindy:Z

.field private final label:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/cgs/atvobserver/data/model/WeatherCondition;
    .locals 11

    sget-object v0, Lcom/cgs/atvobserver/data/model/WeatherCondition;->NORMAL_DRY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

    sget-object v1, Lcom/cgs/atvobserver/data/model/WeatherCondition;->NORMAL_WINDY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

    sget-object v2, Lcom/cgs/atvobserver/data/model/WeatherCondition;->COLD_DRY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

    sget-object v3, Lcom/cgs/atvobserver/data/model/WeatherCondition;->COLD_WINDY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

    sget-object v4, Lcom/cgs/atvobserver/data/model/WeatherCondition;->HOT_DRY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

    sget-object v5, Lcom/cgs/atvobserver/data/model/WeatherCondition;->HOT_WINDY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

    sget-object v6, Lcom/cgs/atvobserver/data/model/WeatherCondition;->EXTREME_COLD_DRY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

    sget-object v7, Lcom/cgs/atvobserver/data/model/WeatherCondition;->EXTREME_COLD_WINDY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

    sget-object v8, Lcom/cgs/atvobserver/data/model/WeatherCondition;->EXTREME_HOT_DRY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

    sget-object v9, Lcom/cgs/atvobserver/data/model/WeatherCondition;->EXTREME_HOT_WINDY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

    sget-object v10, Lcom/cgs/atvobserver/data/model/WeatherCondition;->STORM:Lcom/cgs/atvobserver/data/model/WeatherCondition;

    filled-new-array/range {v0 .. v10}, [Lcom/cgs/atvobserver/data/model/WeatherCondition;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 27
    new-instance v0, Lcom/cgs/atvobserver/data/model/WeatherCondition;

    const-string v1, "Normal Dry"

    const-string v2, "NORMAL_DRY"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Lcom/cgs/atvobserver/data/model/WeatherCondition;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/cgs/atvobserver/data/model/WeatherCondition;->NORMAL_DRY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

    .line 28
    new-instance v0, Lcom/cgs/atvobserver/data/model/WeatherCondition;

    const-string v1, "Normal Windy"

    const-string v2, "NORMAL_WINDY"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1, v4}, Lcom/cgs/atvobserver/data/model/WeatherCondition;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/cgs/atvobserver/data/model/WeatherCondition;->NORMAL_WINDY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

    .line 29
    new-instance v0, Lcom/cgs/atvobserver/data/model/WeatherCondition;

    const/4 v1, 0x2

    const-string v2, "Cold Dry"

    const-string v5, "COLD_DRY"

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/cgs/atvobserver/data/model/WeatherCondition;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/cgs/atvobserver/data/model/WeatherCondition;->COLD_DRY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

    .line 30
    new-instance v0, Lcom/cgs/atvobserver/data/model/WeatherCondition;

    const/4 v1, 0x3

    const-string v2, "Cold Windy"

    const-string v5, "COLD_WINDY"

    invoke-direct {v0, v5, v1, v2, v4}, Lcom/cgs/atvobserver/data/model/WeatherCondition;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/cgs/atvobserver/data/model/WeatherCondition;->COLD_WINDY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

    .line 31
    new-instance v0, Lcom/cgs/atvobserver/data/model/WeatherCondition;

    const/4 v1, 0x4

    const-string v2, "Hot Dry"

    const-string v5, "HOT_DRY"

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/cgs/atvobserver/data/model/WeatherCondition;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/cgs/atvobserver/data/model/WeatherCondition;->HOT_DRY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

    .line 32
    new-instance v0, Lcom/cgs/atvobserver/data/model/WeatherCondition;

    const/4 v1, 0x5

    const-string v2, "Hot Windy"

    const-string v5, "HOT_WINDY"

    invoke-direct {v0, v5, v1, v2, v4}, Lcom/cgs/atvobserver/data/model/WeatherCondition;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/cgs/atvobserver/data/model/WeatherCondition;->HOT_WINDY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

    .line 33
    new-instance v0, Lcom/cgs/atvobserver/data/model/WeatherCondition;

    const/4 v1, 0x6

    const-string v2, "Extreme Cold Dry"

    const-string v5, "EXTREME_COLD_DRY"

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/cgs/atvobserver/data/model/WeatherCondition;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/cgs/atvobserver/data/model/WeatherCondition;->EXTREME_COLD_DRY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

    .line 34
    new-instance v0, Lcom/cgs/atvobserver/data/model/WeatherCondition;

    const/4 v1, 0x7

    const-string v2, "Extreme Cold Windy"

    const-string v5, "EXTREME_COLD_WINDY"

    invoke-direct {v0, v5, v1, v2, v4}, Lcom/cgs/atvobserver/data/model/WeatherCondition;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/cgs/atvobserver/data/model/WeatherCondition;->EXTREME_COLD_WINDY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

    .line 35
    new-instance v0, Lcom/cgs/atvobserver/data/model/WeatherCondition;

    const/16 v1, 0x8

    const-string v2, "Extreme Hot Dry"

    const-string v5, "EXTREME_HOT_DRY"

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/cgs/atvobserver/data/model/WeatherCondition;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/cgs/atvobserver/data/model/WeatherCondition;->EXTREME_HOT_DRY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

    .line 36
    new-instance v0, Lcom/cgs/atvobserver/data/model/WeatherCondition;

    const/16 v1, 0x9

    const-string v2, "Extreme Hot Windy"

    const-string v3, "EXTREME_HOT_WINDY"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/cgs/atvobserver/data/model/WeatherCondition;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/cgs/atvobserver/data/model/WeatherCondition;->EXTREME_HOT_WINDY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

    .line 37
    new-instance v0, Lcom/cgs/atvobserver/data/model/WeatherCondition;

    const/16 v1, 0xa

    const-string v2, "Storm"

    const-string v3, "STORM"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/cgs/atvobserver/data/model/WeatherCondition;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/cgs/atvobserver/data/model/WeatherCondition;->STORM:Lcom/cgs/atvobserver/data/model/WeatherCondition;

    invoke-static {}, Lcom/cgs/atvobserver/data/model/WeatherCondition;->$values()[Lcom/cgs/atvobserver/data/model/WeatherCondition;

    move-result-object v0

    sput-object v0, Lcom/cgs/atvobserver/data/model/WeatherCondition;->$VALUES:[Lcom/cgs/atvobserver/data/model/WeatherCondition;

    sget-object v0, Lcom/cgs/atvobserver/data/model/WeatherCondition;->$VALUES:[Lcom/cgs/atvobserver/data/model/WeatherCondition;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/cgs/atvobserver/data/model/WeatherCondition;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "isWindy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/cgs/atvobserver/data/model/WeatherCondition;->label:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/cgs/atvobserver/data/model/WeatherCondition;->isWindy:Z

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/cgs/atvobserver/data/model/WeatherCondition;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/cgs/atvobserver/data/model/WeatherCondition;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cgs/atvobserver/data/model/WeatherCondition;
    .locals 1

    const-class v0, Lcom/cgs/atvobserver/data/model/WeatherCondition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cgs/atvobserver/data/model/WeatherCondition;

    return-object v0
.end method

.method public static values()[Lcom/cgs/atvobserver/data/model/WeatherCondition;
    .locals 1

    sget-object v0, Lcom/cgs/atvobserver/data/model/WeatherCondition;->$VALUES:[Lcom/cgs/atvobserver/data/model/WeatherCondition;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cgs/atvobserver/data/model/WeatherCondition;

    return-object v0
.end method


# virtual methods
.method public final getLabel()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/cgs/atvobserver/data/model/WeatherCondition;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final isWindy()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/cgs/atvobserver/data/model/WeatherCondition;->isWindy:Z

    return v0
.end method
