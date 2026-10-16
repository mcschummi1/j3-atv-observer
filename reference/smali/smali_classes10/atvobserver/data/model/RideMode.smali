.class public final enum Lcom/cgs/atvobserver/data/model/RideMode;
.super Ljava/lang/Enum;
.source "Models.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cgs/atvobserver/data/model/RideMode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/cgs/atvobserver/data/model/RideMode;",
        "",
        "displayName",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getDisplayName",
        "()Ljava/lang/String;",
        "TRIP",
        "POCKET",
        "TEST_TRACK",
        "APP_DIAG",
        "ATV_DIAG",
        "CARB_TUNE",
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

.field private static final synthetic $VALUES:[Lcom/cgs/atvobserver/data/model/RideMode;

.field public static final enum APP_DIAG:Lcom/cgs/atvobserver/data/model/RideMode;

.field public static final enum ATV_DIAG:Lcom/cgs/atvobserver/data/model/RideMode;

.field public static final enum CARB_TUNE:Lcom/cgs/atvobserver/data/model/RideMode;

.field public static final enum POCKET:Lcom/cgs/atvobserver/data/model/RideMode;

.field public static final enum TEST_TRACK:Lcom/cgs/atvobserver/data/model/RideMode;

.field public static final enum TRIP:Lcom/cgs/atvobserver/data/model/RideMode;


# instance fields
.field private final displayName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/cgs/atvobserver/data/model/RideMode;
    .locals 6

    sget-object v0, Lcom/cgs/atvobserver/data/model/RideMode;->TRIP:Lcom/cgs/atvobserver/data/model/RideMode;

    sget-object v1, Lcom/cgs/atvobserver/data/model/RideMode;->POCKET:Lcom/cgs/atvobserver/data/model/RideMode;

    sget-object v2, Lcom/cgs/atvobserver/data/model/RideMode;->TEST_TRACK:Lcom/cgs/atvobserver/data/model/RideMode;

    sget-object v3, Lcom/cgs/atvobserver/data/model/RideMode;->APP_DIAG:Lcom/cgs/atvobserver/data/model/RideMode;

    sget-object v4, Lcom/cgs/atvobserver/data/model/RideMode;->ATV_DIAG:Lcom/cgs/atvobserver/data/model/RideMode;

    sget-object v5, Lcom/cgs/atvobserver/data/model/RideMode;->CARB_TUNE:Lcom/cgs/atvobserver/data/model/RideMode;

    filled-new-array/range {v0 .. v5}, [Lcom/cgs/atvobserver/data/model/RideMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 11
    new-instance v0, Lcom/cgs/atvobserver/data/model/RideMode;

    const-string v1, "TRIP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/cgs/atvobserver/data/model/RideMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cgs/atvobserver/data/model/RideMode;->TRIP:Lcom/cgs/atvobserver/data/model/RideMode;

    .line 12
    new-instance v0, Lcom/cgs/atvobserver/data/model/RideMode;

    const/4 v1, 0x1

    const-string v2, "POCKET MODE"

    const-string v3, "POCKET"

    invoke-direct {v0, v3, v1, v2}, Lcom/cgs/atvobserver/data/model/RideMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cgs/atvobserver/data/model/RideMode;->POCKET:Lcom/cgs/atvobserver/data/model/RideMode;

    .line 13
    new-instance v0, Lcom/cgs/atvobserver/data/model/RideMode;

    const/4 v1, 0x2

    const-string v2, "TEST TRACK"

    const-string v3, "TEST_TRACK"

    invoke-direct {v0, v3, v1, v2}, Lcom/cgs/atvobserver/data/model/RideMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cgs/atvobserver/data/model/RideMode;->TEST_TRACK:Lcom/cgs/atvobserver/data/model/RideMode;

    .line 14
    new-instance v0, Lcom/cgs/atvobserver/data/model/RideMode;

    const/4 v1, 0x3

    const-string v2, "APP DIAG"

    const-string v3, "APP_DIAG"

    invoke-direct {v0, v3, v1, v2}, Lcom/cgs/atvobserver/data/model/RideMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cgs/atvobserver/data/model/RideMode;->APP_DIAG:Lcom/cgs/atvobserver/data/model/RideMode;

    .line 15
    new-instance v0, Lcom/cgs/atvobserver/data/model/RideMode;

    const/4 v1, 0x4

    const-string v2, "ATV DIAG"

    const-string v3, "ATV_DIAG"

    invoke-direct {v0, v3, v1, v2}, Lcom/cgs/atvobserver/data/model/RideMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cgs/atvobserver/data/model/RideMode;->ATV_DIAG:Lcom/cgs/atvobserver/data/model/RideMode;

    .line 16
    new-instance v0, Lcom/cgs/atvobserver/data/model/RideMode;

    const/4 v1, 0x5

    const-string v2, "CARB TUNE"

    const-string v3, "CARB_TUNE"

    invoke-direct {v0, v3, v1, v2}, Lcom/cgs/atvobserver/data/model/RideMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cgs/atvobserver/data/model/RideMode;->CARB_TUNE:Lcom/cgs/atvobserver/data/model/RideMode;

    invoke-static {}, Lcom/cgs/atvobserver/data/model/RideMode;->$values()[Lcom/cgs/atvobserver/data/model/RideMode;

    move-result-object v0

    sput-object v0, Lcom/cgs/atvobserver/data/model/RideMode;->$VALUES:[Lcom/cgs/atvobserver/data/model/RideMode;

    sget-object v0, Lcom/cgs/atvobserver/data/model/RideMode;->$VALUES:[Lcom/cgs/atvobserver/data/model/RideMode;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/cgs/atvobserver/data/model/RideMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .param p3, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/cgs/atvobserver/data/model/RideMode;->displayName:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/cgs/atvobserver/data/model/RideMode;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/cgs/atvobserver/data/model/RideMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cgs/atvobserver/data/model/RideMode;
    .locals 1

    const-class v0, Lcom/cgs/atvobserver/data/model/RideMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cgs/atvobserver/data/model/RideMode;

    return-object v0
.end method

.method public static values()[Lcom/cgs/atvobserver/data/model/RideMode;
    .locals 1

    sget-object v0, Lcom/cgs/atvobserver/data/model/RideMode;->$VALUES:[Lcom/cgs/atvobserver/data/model/RideMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cgs/atvobserver/data/model/RideMode;

    return-object v0
.end method


# virtual methods
.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/cgs/atvobserver/data/model/RideMode;->displayName:Ljava/lang/String;

    return-object v0
.end method
