.class public final enum Lcom/cgs/atvobserver/data/model/WarningLevel;
.super Ljava/lang/Enum;
.source "Models.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cgs/atvobserver/data/model/WarningLevel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/cgs/atvobserver/data/model/WarningLevel;",
        "",
        "(Ljava/lang/String;I)V",
        "GREEN",
        "YELLOW",
        "RED",
        "PINK",
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

.field private static final synthetic $VALUES:[Lcom/cgs/atvobserver/data/model/WarningLevel;

.field public static final enum GREEN:Lcom/cgs/atvobserver/data/model/WarningLevel;

.field public static final enum PINK:Lcom/cgs/atvobserver/data/model/WarningLevel;

.field public static final enum RED:Lcom/cgs/atvobserver/data/model/WarningLevel;

.field public static final enum YELLOW:Lcom/cgs/atvobserver/data/model/WarningLevel;


# direct methods
.method private static final synthetic $values()[Lcom/cgs/atvobserver/data/model/WarningLevel;
    .locals 4

    sget-object v0, Lcom/cgs/atvobserver/data/model/WarningLevel;->GREEN:Lcom/cgs/atvobserver/data/model/WarningLevel;

    sget-object v1, Lcom/cgs/atvobserver/data/model/WarningLevel;->YELLOW:Lcom/cgs/atvobserver/data/model/WarningLevel;

    sget-object v2, Lcom/cgs/atvobserver/data/model/WarningLevel;->RED:Lcom/cgs/atvobserver/data/model/WarningLevel;

    sget-object v3, Lcom/cgs/atvobserver/data/model/WarningLevel;->PINK:Lcom/cgs/atvobserver/data/model/WarningLevel;

    filled-new-array {v0, v1, v2, v3}, [Lcom/cgs/atvobserver/data/model/WarningLevel;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lcom/cgs/atvobserver/data/model/WarningLevel;

    const-string v1, "GREEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/data/model/WarningLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/data/model/WarningLevel;->GREEN:Lcom/cgs/atvobserver/data/model/WarningLevel;

    .line 21
    new-instance v0, Lcom/cgs/atvobserver/data/model/WarningLevel;

    const-string v1, "YELLOW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/data/model/WarningLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/data/model/WarningLevel;->YELLOW:Lcom/cgs/atvobserver/data/model/WarningLevel;

    .line 22
    new-instance v0, Lcom/cgs/atvobserver/data/model/WarningLevel;

    const-string v1, "RED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/data/model/WarningLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/data/model/WarningLevel;->RED:Lcom/cgs/atvobserver/data/model/WarningLevel;

    .line 23
    new-instance v0, Lcom/cgs/atvobserver/data/model/WarningLevel;

    const-string v1, "PINK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/data/model/WarningLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/data/model/WarningLevel;->PINK:Lcom/cgs/atvobserver/data/model/WarningLevel;

    invoke-static {}, Lcom/cgs/atvobserver/data/model/WarningLevel;->$values()[Lcom/cgs/atvobserver/data/model/WarningLevel;

    move-result-object v0

    sput-object v0, Lcom/cgs/atvobserver/data/model/WarningLevel;->$VALUES:[Lcom/cgs/atvobserver/data/model/WarningLevel;

    sget-object v0, Lcom/cgs/atvobserver/data/model/WarningLevel;->$VALUES:[Lcom/cgs/atvobserver/data/model/WarningLevel;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/cgs/atvobserver/data/model/WarningLevel;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/cgs/atvobserver/data/model/WarningLevel;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/cgs/atvobserver/data/model/WarningLevel;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cgs/atvobserver/data/model/WarningLevel;
    .locals 1

    const-class v0, Lcom/cgs/atvobserver/data/model/WarningLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cgs/atvobserver/data/model/WarningLevel;

    return-object v0
.end method

.method public static values()[Lcom/cgs/atvobserver/data/model/WarningLevel;
    .locals 1

    sget-object v0, Lcom/cgs/atvobserver/data/model/WarningLevel;->$VALUES:[Lcom/cgs/atvobserver/data/model/WarningLevel;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cgs/atvobserver/data/model/WarningLevel;

    return-object v0
.end method
