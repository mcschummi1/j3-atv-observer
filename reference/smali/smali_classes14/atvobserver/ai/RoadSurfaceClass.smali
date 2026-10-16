.class public final enum Lcom/cgs/atvobserver/ai/RoadSurfaceClass;
.super Ljava/lang/Enum;
.source "ObserverAiEngine.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cgs/atvobserver/ai/RoadSurfaceClass;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/cgs/atvobserver/ai/RoadSurfaceClass;",
        "",
        "(Ljava/lang/String;I)V",
        "ASPHALT",
        "BROKEN_ASPHALT",
        "GRAVEL",
        "DIRT",
        "GRASS",
        "MUD",
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

.field private static final synthetic $VALUES:[Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

.field public static final enum ASPHALT:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

.field public static final enum BROKEN_ASPHALT:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

.field public static final enum DIRT:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

.field public static final enum GRASS:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

.field public static final enum GRAVEL:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

.field public static final enum MUD:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

.field public static final enum OFF_ROAD:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

.field public static final enum UNKNOWN:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;


# direct methods
.method private static final synthetic $values()[Lcom/cgs/atvobserver/ai/RoadSurfaceClass;
    .locals 8

    sget-object v0, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->ASPHALT:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    sget-object v1, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->BROKEN_ASPHALT:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    sget-object v2, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->GRAVEL:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    sget-object v3, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->DIRT:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    sget-object v4, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->GRASS:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    sget-object v5, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->MUD:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    sget-object v6, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->OFF_ROAD:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    sget-object v7, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->UNKNOWN:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    filled-new-array/range {v0 .. v7}, [Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 24
    new-instance v0, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    const-string v1, "ASPHALT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->ASPHALT:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    .line 25
    new-instance v0, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    const-string v1, "BROKEN_ASPHALT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->BROKEN_ASPHALT:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    .line 26
    new-instance v0, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    const-string v1, "GRAVEL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->GRAVEL:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    .line 27
    new-instance v0, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    const-string v1, "DIRT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->DIRT:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    .line 28
    new-instance v0, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    const-string v1, "GRASS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->GRASS:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    .line 29
    new-instance v0, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    const-string v1, "MUD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->MUD:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    .line 30
    new-instance v0, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    const-string v1, "OFF_ROAD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->OFF_ROAD:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    .line 31
    new-instance v0, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->UNKNOWN:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    invoke-static {}, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->$values()[Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    move-result-object v0

    sput-object v0, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->$VALUES:[Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    sget-object v0, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->$VALUES:[Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/cgs/atvobserver/ai/RoadSurfaceClass;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cgs/atvobserver/ai/RoadSurfaceClass;
    .locals 1

    const-class v0, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    return-object v0
.end method

.method public static values()[Lcom/cgs/atvobserver/ai/RoadSurfaceClass;
    .locals 1

    sget-object v0, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->$VALUES:[Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    return-object v0
.end method
