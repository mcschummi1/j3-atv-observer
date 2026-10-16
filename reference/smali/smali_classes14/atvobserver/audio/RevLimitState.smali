.class public final enum Lcom/cgs/atvobserver/audio/RevLimitState;
.super Ljava/lang/Enum;
.source "SoftwareRevLimiterWarning.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cgs/atvobserver/audio/RevLimitState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/cgs/atvobserver/audio/RevLimitState;",
        "",
        "(Ljava/lang/String;I)V",
        "NORMAL",
        "WARNING",
        "CRITICAL_OVER_REV",
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

.field private static final synthetic $VALUES:[Lcom/cgs/atvobserver/audio/RevLimitState;

.field public static final enum CRITICAL_OVER_REV:Lcom/cgs/atvobserver/audio/RevLimitState;

.field public static final enum NORMAL:Lcom/cgs/atvobserver/audio/RevLimitState;

.field public static final enum WARNING:Lcom/cgs/atvobserver/audio/RevLimitState;


# direct methods
.method private static final synthetic $values()[Lcom/cgs/atvobserver/audio/RevLimitState;
    .locals 3

    sget-object v0, Lcom/cgs/atvobserver/audio/RevLimitState;->NORMAL:Lcom/cgs/atvobserver/audio/RevLimitState;

    sget-object v1, Lcom/cgs/atvobserver/audio/RevLimitState;->WARNING:Lcom/cgs/atvobserver/audio/RevLimitState;

    sget-object v2, Lcom/cgs/atvobserver/audio/RevLimitState;->CRITICAL_OVER_REV:Lcom/cgs/atvobserver/audio/RevLimitState;

    filled-new-array {v0, v1, v2}, [Lcom/cgs/atvobserver/audio/RevLimitState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 6
    new-instance v0, Lcom/cgs/atvobserver/audio/RevLimitState;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/audio/RevLimitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/audio/RevLimitState;->NORMAL:Lcom/cgs/atvobserver/audio/RevLimitState;

    .line 7
    new-instance v0, Lcom/cgs/atvobserver/audio/RevLimitState;

    const-string v1, "WARNING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/audio/RevLimitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/audio/RevLimitState;->WARNING:Lcom/cgs/atvobserver/audio/RevLimitState;

    .line 8
    new-instance v0, Lcom/cgs/atvobserver/audio/RevLimitState;

    const-string v1, "CRITICAL_OVER_REV"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/audio/RevLimitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/audio/RevLimitState;->CRITICAL_OVER_REV:Lcom/cgs/atvobserver/audio/RevLimitState;

    invoke-static {}, Lcom/cgs/atvobserver/audio/RevLimitState;->$values()[Lcom/cgs/atvobserver/audio/RevLimitState;

    move-result-object v0

    sput-object v0, Lcom/cgs/atvobserver/audio/RevLimitState;->$VALUES:[Lcom/cgs/atvobserver/audio/RevLimitState;

    sget-object v0, Lcom/cgs/atvobserver/audio/RevLimitState;->$VALUES:[Lcom/cgs/atvobserver/audio/RevLimitState;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/cgs/atvobserver/audio/RevLimitState;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/cgs/atvobserver/audio/RevLimitState;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/cgs/atvobserver/audio/RevLimitState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cgs/atvobserver/audio/RevLimitState;
    .locals 1

    const-class v0, Lcom/cgs/atvobserver/audio/RevLimitState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cgs/atvobserver/audio/RevLimitState;

    return-object v0
.end method

.method public static values()[Lcom/cgs/atvobserver/audio/RevLimitState;
    .locals 1

    sget-object v0, Lcom/cgs/atvobserver/audio/RevLimitState;->$VALUES:[Lcom/cgs/atvobserver/audio/RevLimitState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cgs/atvobserver/audio/RevLimitState;

    return-object v0
.end method
