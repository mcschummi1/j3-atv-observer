.class public final enum Lcom/cgs/atvobserver/ai/RideStateClass;
.super Ljava/lang/Enum;
.source "ObserverAiEngine.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cgs/atvobserver/ai/RideStateClass;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000f\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/cgs/atvobserver/ai/RideStateClass;",
        "",
        "(Ljava/lang/String;I)V",
        "STOPPED",
        "IDLE",
        "STARTING",
        "LAUNCHING",
        "ACCELERATING",
        "CRUISING",
        "CLIMBING",
        "DESCENDING",
        "ENGINE_BRAKING",
        "MECHANICAL_BRAKING",
        "HEAVY_TRAFFIC",
        "OFF_ROAD",
        "UNKNOWN",
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

.field private static final synthetic $VALUES:[Lcom/cgs/atvobserver/ai/RideStateClass;

.field public static final enum ACCELERATING:Lcom/cgs/atvobserver/ai/RideStateClass;

.field public static final enum CLIMBING:Lcom/cgs/atvobserver/ai/RideStateClass;

.field public static final enum CRUISING:Lcom/cgs/atvobserver/ai/RideStateClass;

.field public static final enum DESCENDING:Lcom/cgs/atvobserver/ai/RideStateClass;

.field public static final enum ENGINE_BRAKING:Lcom/cgs/atvobserver/ai/RideStateClass;

.field public static final enum HEAVY_TRAFFIC:Lcom/cgs/atvobserver/ai/RideStateClass;

.field public static final enum IDLE:Lcom/cgs/atvobserver/ai/RideStateClass;

.field public static final enum LAUNCHING:Lcom/cgs/atvobserver/ai/RideStateClass;

.field public static final enum MECHANICAL_BRAKING:Lcom/cgs/atvobserver/ai/RideStateClass;

.field public static final enum OFF_ROAD:Lcom/cgs/atvobserver/ai/RideStateClass;

.field public static final enum STARTING:Lcom/cgs/atvobserver/ai/RideStateClass;

.field public static final enum STOPPED:Lcom/cgs/atvobserver/ai/RideStateClass;

.field public static final enum UNKNOWN:Lcom/cgs/atvobserver/ai/RideStateClass;


# direct methods
.method private static final synthetic $values()[Lcom/cgs/atvobserver/ai/RideStateClass;
    .locals 13

    sget-object v0, Lcom/cgs/atvobserver/ai/RideStateClass;->STOPPED:Lcom/cgs/atvobserver/ai/RideStateClass;

    sget-object v1, Lcom/cgs/atvobserver/ai/RideStateClass;->IDLE:Lcom/cgs/atvobserver/ai/RideStateClass;

    sget-object v2, Lcom/cgs/atvobserver/ai/RideStateClass;->STARTING:Lcom/cgs/atvobserver/ai/RideStateClass;

    sget-object v3, Lcom/cgs/atvobserver/ai/RideStateClass;->LAUNCHING:Lcom/cgs/atvobserver/ai/RideStateClass;

    sget-object v4, Lcom/cgs/atvobserver/ai/RideStateClass;->ACCELERATING:Lcom/cgs/atvobserver/ai/RideStateClass;

    sget-object v5, Lcom/cgs/atvobserver/ai/RideStateClass;->CRUISING:Lcom/cgs/atvobserver/ai/RideStateClass;

    sget-object v6, Lcom/cgs/atvobserver/ai/RideStateClass;->CLIMBING:Lcom/cgs/atvobserver/ai/RideStateClass;

    sget-object v7, Lcom/cgs/atvobserver/ai/RideStateClass;->DESCENDING:Lcom/cgs/atvobserver/ai/RideStateClass;

    sget-object v8, Lcom/cgs/atvobserver/ai/RideStateClass;->ENGINE_BRAKING:Lcom/cgs/atvobserver/ai/RideStateClass;

    sget-object v9, Lcom/cgs/atvobserver/ai/RideStateClass;->MECHANICAL_BRAKING:Lcom/cgs/atvobserver/ai/RideStateClass;

    sget-object v10, Lcom/cgs/atvobserver/ai/RideStateClass;->HEAVY_TRAFFIC:Lcom/cgs/atvobserver/ai/RideStateClass;

    sget-object v11, Lcom/cgs/atvobserver/ai/RideStateClass;->OFF_ROAD:Lcom/cgs/atvobserver/ai/RideStateClass;

    sget-object v12, Lcom/cgs/atvobserver/ai/RideStateClass;->UNKNOWN:Lcom/cgs/atvobserver/ai/RideStateClass;

    filled-new-array/range {v0 .. v12}, [Lcom/cgs/atvobserver/ai/RideStateClass;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Lcom/cgs/atvobserver/ai/RideStateClass;

    const-string v1, "STOPPED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/ai/RideStateClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/ai/RideStateClass;->STOPPED:Lcom/cgs/atvobserver/ai/RideStateClass;

    .line 36
    new-instance v0, Lcom/cgs/atvobserver/ai/RideStateClass;

    const-string v1, "IDLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/ai/RideStateClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/ai/RideStateClass;->IDLE:Lcom/cgs/atvobserver/ai/RideStateClass;

    .line 37
    new-instance v0, Lcom/cgs/atvobserver/ai/RideStateClass;

    const-string v1, "STARTING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/ai/RideStateClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/ai/RideStateClass;->STARTING:Lcom/cgs/atvobserver/ai/RideStateClass;

    .line 38
    new-instance v0, Lcom/cgs/atvobserver/ai/RideStateClass;

    const-string v1, "LAUNCHING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/ai/RideStateClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/ai/RideStateClass;->LAUNCHING:Lcom/cgs/atvobserver/ai/RideStateClass;

    .line 39
    new-instance v0, Lcom/cgs/atvobserver/ai/RideStateClass;

    const-string v1, "ACCELERATING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/ai/RideStateClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/ai/RideStateClass;->ACCELERATING:Lcom/cgs/atvobserver/ai/RideStateClass;

    .line 40
    new-instance v0, Lcom/cgs/atvobserver/ai/RideStateClass;

    const-string v1, "CRUISING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/ai/RideStateClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/ai/RideStateClass;->CRUISING:Lcom/cgs/atvobserver/ai/RideStateClass;

    .line 41
    new-instance v0, Lcom/cgs/atvobserver/ai/RideStateClass;

    const-string v1, "CLIMBING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/ai/RideStateClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/ai/RideStateClass;->CLIMBING:Lcom/cgs/atvobserver/ai/RideStateClass;

    .line 42
    new-instance v0, Lcom/cgs/atvobserver/ai/RideStateClass;

    const-string v1, "DESCENDING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/ai/RideStateClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/ai/RideStateClass;->DESCENDING:Lcom/cgs/atvobserver/ai/RideStateClass;

    .line 43
    new-instance v0, Lcom/cgs/atvobserver/ai/RideStateClass;

    const-string v1, "ENGINE_BRAKING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/ai/RideStateClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/ai/RideStateClass;->ENGINE_BRAKING:Lcom/cgs/atvobserver/ai/RideStateClass;

    .line 44
    new-instance v0, Lcom/cgs/atvobserver/ai/RideStateClass;

    const-string v1, "MECHANICAL_BRAKING"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/ai/RideStateClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/ai/RideStateClass;->MECHANICAL_BRAKING:Lcom/cgs/atvobserver/ai/RideStateClass;

    .line 45
    new-instance v0, Lcom/cgs/atvobserver/ai/RideStateClass;

    const-string v1, "HEAVY_TRAFFIC"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/ai/RideStateClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/ai/RideStateClass;->HEAVY_TRAFFIC:Lcom/cgs/atvobserver/ai/RideStateClass;

    .line 46
    new-instance v0, Lcom/cgs/atvobserver/ai/RideStateClass;

    const-string v1, "OFF_ROAD"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/ai/RideStateClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/ai/RideStateClass;->OFF_ROAD:Lcom/cgs/atvobserver/ai/RideStateClass;

    .line 47
    new-instance v0, Lcom/cgs/atvobserver/ai/RideStateClass;

    const-string v1, "UNKNOWN"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/ai/RideStateClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/ai/RideStateClass;->UNKNOWN:Lcom/cgs/atvobserver/ai/RideStateClass;

    invoke-static {}, Lcom/cgs/atvobserver/ai/RideStateClass;->$values()[Lcom/cgs/atvobserver/ai/RideStateClass;

    move-result-object v0

    sput-object v0, Lcom/cgs/atvobserver/ai/RideStateClass;->$VALUES:[Lcom/cgs/atvobserver/ai/RideStateClass;

    sget-object v0, Lcom/cgs/atvobserver/ai/RideStateClass;->$VALUES:[Lcom/cgs/atvobserver/ai/RideStateClass;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/cgs/atvobserver/ai/RideStateClass;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/cgs/atvobserver/ai/RideStateClass;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/cgs/atvobserver/ai/RideStateClass;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cgs/atvobserver/ai/RideStateClass;
    .locals 1

    const-class v0, Lcom/cgs/atvobserver/ai/RideStateClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cgs/atvobserver/ai/RideStateClass;

    return-object v0
.end method

.method public static values()[Lcom/cgs/atvobserver/ai/RideStateClass;
    .locals 1

    sget-object v0, Lcom/cgs/atvobserver/ai/RideStateClass;->$VALUES:[Lcom/cgs/atvobserver/ai/RideStateClass;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cgs/atvobserver/ai/RideStateClass;

    return-object v0
.end method
