.class public final enum Lcom/cgs/atvobserver/ai/EngineLoadState;
.super Ljava/lang/Enum;
.source "ObserverAiEngine.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cgs/atvobserver/ai/EngineLoadState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/cgs/atvobserver/ai/EngineLoadState;",
        "",
        "(Ljava/lang/String;I)V",
        "IDLE",
        "VERY_LIGHT",
        "CRUISE",
        "MODERATE",
        "HEAVY",
        "EXTREME",
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

.field private static final synthetic $VALUES:[Lcom/cgs/atvobserver/ai/EngineLoadState;

.field public static final enum CRUISE:Lcom/cgs/atvobserver/ai/EngineLoadState;

.field public static final enum EXTREME:Lcom/cgs/atvobserver/ai/EngineLoadState;

.field public static final enum HEAVY:Lcom/cgs/atvobserver/ai/EngineLoadState;

.field public static final enum IDLE:Lcom/cgs/atvobserver/ai/EngineLoadState;

.field public static final enum MODERATE:Lcom/cgs/atvobserver/ai/EngineLoadState;

.field public static final enum VERY_LIGHT:Lcom/cgs/atvobserver/ai/EngineLoadState;


# direct methods
.method private static final synthetic $values()[Lcom/cgs/atvobserver/ai/EngineLoadState;
    .locals 6

    sget-object v0, Lcom/cgs/atvobserver/ai/EngineLoadState;->IDLE:Lcom/cgs/atvobserver/ai/EngineLoadState;

    sget-object v1, Lcom/cgs/atvobserver/ai/EngineLoadState;->VERY_LIGHT:Lcom/cgs/atvobserver/ai/EngineLoadState;

    sget-object v2, Lcom/cgs/atvobserver/ai/EngineLoadState;->CRUISE:Lcom/cgs/atvobserver/ai/EngineLoadState;

    sget-object v3, Lcom/cgs/atvobserver/ai/EngineLoadState;->MODERATE:Lcom/cgs/atvobserver/ai/EngineLoadState;

    sget-object v4, Lcom/cgs/atvobserver/ai/EngineLoadState;->HEAVY:Lcom/cgs/atvobserver/ai/EngineLoadState;

    sget-object v5, Lcom/cgs/atvobserver/ai/EngineLoadState;->EXTREME:Lcom/cgs/atvobserver/ai/EngineLoadState;

    filled-new-array/range {v0 .. v5}, [Lcom/cgs/atvobserver/ai/EngineLoadState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 51
    new-instance v0, Lcom/cgs/atvobserver/ai/EngineLoadState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/ai/EngineLoadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/ai/EngineLoadState;->IDLE:Lcom/cgs/atvobserver/ai/EngineLoadState;

    .line 52
    new-instance v0, Lcom/cgs/atvobserver/ai/EngineLoadState;

    const-string v1, "VERY_LIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/ai/EngineLoadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/ai/EngineLoadState;->VERY_LIGHT:Lcom/cgs/atvobserver/ai/EngineLoadState;

    .line 53
    new-instance v0, Lcom/cgs/atvobserver/ai/EngineLoadState;

    const-string v1, "CRUISE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/ai/EngineLoadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/ai/EngineLoadState;->CRUISE:Lcom/cgs/atvobserver/ai/EngineLoadState;

    .line 54
    new-instance v0, Lcom/cgs/atvobserver/ai/EngineLoadState;

    const-string v1, "MODERATE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/ai/EngineLoadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/ai/EngineLoadState;->MODERATE:Lcom/cgs/atvobserver/ai/EngineLoadState;

    .line 55
    new-instance v0, Lcom/cgs/atvobserver/ai/EngineLoadState;

    const-string v1, "HEAVY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/ai/EngineLoadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/ai/EngineLoadState;->HEAVY:Lcom/cgs/atvobserver/ai/EngineLoadState;

    .line 56
    new-instance v0, Lcom/cgs/atvobserver/ai/EngineLoadState;

    const-string v1, "EXTREME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/ai/EngineLoadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/ai/EngineLoadState;->EXTREME:Lcom/cgs/atvobserver/ai/EngineLoadState;

    invoke-static {}, Lcom/cgs/atvobserver/ai/EngineLoadState;->$values()[Lcom/cgs/atvobserver/ai/EngineLoadState;

    move-result-object v0

    sput-object v0, Lcom/cgs/atvobserver/ai/EngineLoadState;->$VALUES:[Lcom/cgs/atvobserver/ai/EngineLoadState;

    sget-object v0, Lcom/cgs/atvobserver/ai/EngineLoadState;->$VALUES:[Lcom/cgs/atvobserver/ai/EngineLoadState;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/cgs/atvobserver/ai/EngineLoadState;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/cgs/atvobserver/ai/EngineLoadState;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/cgs/atvobserver/ai/EngineLoadState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cgs/atvobserver/ai/EngineLoadState;
    .locals 1

    const-class v0, Lcom/cgs/atvobserver/ai/EngineLoadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cgs/atvobserver/ai/EngineLoadState;

    return-object v0
.end method

.method public static values()[Lcom/cgs/atvobserver/ai/EngineLoadState;
    .locals 1

    sget-object v0, Lcom/cgs/atvobserver/ai/EngineLoadState;->$VALUES:[Lcom/cgs/atvobserver/ai/EngineLoadState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cgs/atvobserver/ai/EngineLoadState;

    return-object v0
.end method
