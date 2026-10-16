.class public final enum Lcom/cgs/atvobserver/data/model/VehicleType;
.super Ljava/lang/Enum;
.source "Models.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cgs/atvobserver/data/model/VehicleType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/cgs/atvobserver/data/model/VehicleType;",
        "",
        "displayName",
        "",
        "shortName",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V",
        "getDisplayName",
        "()Ljava/lang/String;",
        "getShortName",
        "ATV",
        "MOTOCROSS",
        "DAELIM",
        "APP_TEST",
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

.field private static final synthetic $VALUES:[Lcom/cgs/atvobserver/data/model/VehicleType;

.field public static final enum APP_TEST:Lcom/cgs/atvobserver/data/model/VehicleType;

.field public static final enum ATV:Lcom/cgs/atvobserver/data/model/VehicleType;

.field public static final enum DAELIM:Lcom/cgs/atvobserver/data/model/VehicleType;

.field public static final enum MOTOCROSS:Lcom/cgs/atvobserver/data/model/VehicleType;


# instance fields
.field private final displayName:Ljava/lang/String;

.field private final shortName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/cgs/atvobserver/data/model/VehicleType;
    .locals 4

    sget-object v0, Lcom/cgs/atvobserver/data/model/VehicleType;->ATV:Lcom/cgs/atvobserver/data/model/VehicleType;

    sget-object v1, Lcom/cgs/atvobserver/data/model/VehicleType;->MOTOCROSS:Lcom/cgs/atvobserver/data/model/VehicleType;

    sget-object v2, Lcom/cgs/atvobserver/data/model/VehicleType;->DAELIM:Lcom/cgs/atvobserver/data/model/VehicleType;

    sget-object v3, Lcom/cgs/atvobserver/data/model/VehicleType;->APP_TEST:Lcom/cgs/atvobserver/data/model/VehicleType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/cgs/atvobserver/data/model/VehicleType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/cgs/atvobserver/data/model/VehicleType;

    const/4 v1, 0x0

    const-string v2, "Chinese ATV 110cc"

    const-string v3, "ATV"

    invoke-direct {v0, v3, v1, v2, v3}, Lcom/cgs/atvobserver/data/model/VehicleType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cgs/atvobserver/data/model/VehicleType;->ATV:Lcom/cgs/atvobserver/data/model/VehicleType;

    .line 5
    new-instance v0, Lcom/cgs/atvobserver/data/model/VehicleType;

    const/4 v1, 0x1

    const-string v2, "Motocross 125cc"

    const-string v3, "MOTOCROSS"

    invoke-direct {v0, v3, v1, v2, v3}, Lcom/cgs/atvobserver/data/model/VehicleType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cgs/atvobserver/data/model/VehicleType;->MOTOCROSS:Lcom/cgs/atvobserver/data/model/VehicleType;

    .line 6
    new-instance v0, Lcom/cgs/atvobserver/data/model/VehicleType;

    const/4 v1, 0x2

    const-string v2, "Daelim City Ace 110"

    const-string v3, "DAELIM"

    invoke-direct {v0, v3, v1, v2, v3}, Lcom/cgs/atvobserver/data/model/VehicleType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cgs/atvobserver/data/model/VehicleType;->DAELIM:Lcom/cgs/atvobserver/data/model/VehicleType;

    .line 7
    new-instance v0, Lcom/cgs/atvobserver/data/model/VehicleType;

    const-string v1, "App Simulation & Test"

    const-string v2, "TEST"

    const-string v3, "APP_TEST"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/cgs/atvobserver/data/model/VehicleType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cgs/atvobserver/data/model/VehicleType;->APP_TEST:Lcom/cgs/atvobserver/data/model/VehicleType;

    invoke-static {}, Lcom/cgs/atvobserver/data/model/VehicleType;->$values()[Lcom/cgs/atvobserver/data/model/VehicleType;

    move-result-object v0

    sput-object v0, Lcom/cgs/atvobserver/data/model/VehicleType;->$VALUES:[Lcom/cgs/atvobserver/data/model/VehicleType;

    sget-object v0, Lcom/cgs/atvobserver/data/model/VehicleType;->$VALUES:[Lcom/cgs/atvobserver/data/model/VehicleType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/cgs/atvobserver/data/model/VehicleType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .param p3, "displayName"    # Ljava/lang/String;
    .param p4, "shortName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/cgs/atvobserver/data/model/VehicleType;->displayName:Ljava/lang/String;

    iput-object p4, p0, Lcom/cgs/atvobserver/data/model/VehicleType;->shortName:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/cgs/atvobserver/data/model/VehicleType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/cgs/atvobserver/data/model/VehicleType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cgs/atvobserver/data/model/VehicleType;
    .locals 1

    const-class v0, Lcom/cgs/atvobserver/data/model/VehicleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cgs/atvobserver/data/model/VehicleType;

    return-object v0
.end method

.method public static values()[Lcom/cgs/atvobserver/data/model/VehicleType;
    .locals 1

    sget-object v0, Lcom/cgs/atvobserver/data/model/VehicleType;->$VALUES:[Lcom/cgs/atvobserver/data/model/VehicleType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cgs/atvobserver/data/model/VehicleType;

    return-object v0
.end method


# virtual methods
.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/cgs/atvobserver/data/model/VehicleType;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getShortName()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/cgs/atvobserver/data/model/VehicleType;->shortName:Ljava/lang/String;

    return-object v0
.end method
