.class public final enum Lcom/cgs/atvobserver/domain/DevicePerformanceTier;
.super Ljava/lang/Enum;
.source "DeviceProfiler.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cgs/atvobserver/domain/DevicePerformanceTier;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/cgs/atvobserver/domain/DevicePerformanceTier;",
        "",
        "(Ljava/lang/String;I)V",
        "OPTIMIZED_LITE_J3",
        "MID_TIER_A71_ROOTED",
        "HIGH_PERFORMANCE_RAZR",
        "FLAGSHIP_S22_EXYNOS",
        "UNIVERSAL_AUTO_TIER",
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

.field private static final synthetic $VALUES:[Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

.field public static final enum FLAGSHIP_S22_EXYNOS:Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

.field public static final enum HIGH_PERFORMANCE_RAZR:Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

.field public static final enum MID_TIER_A71_ROOTED:Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

.field public static final enum OPTIMIZED_LITE_J3:Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

.field public static final enum UNIVERSAL_AUTO_TIER:Lcom/cgs/atvobserver/domain/DevicePerformanceTier;


# direct methods
.method private static final synthetic $values()[Lcom/cgs/atvobserver/domain/DevicePerformanceTier;
    .locals 5

    sget-object v0, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;->OPTIMIZED_LITE_J3:Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    sget-object v1, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;->MID_TIER_A71_ROOTED:Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    sget-object v2, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;->HIGH_PERFORMANCE_RAZR:Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    sget-object v3, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;->FLAGSHIP_S22_EXYNOS:Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    sget-object v4, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;->UNIVERSAL_AUTO_TIER:Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    const-string v1, "OPTIMIZED_LITE_J3"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;->OPTIMIZED_LITE_J3:Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    .line 8
    new-instance v0, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    const-string v1, "MID_TIER_A71_ROOTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;->MID_TIER_A71_ROOTED:Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    .line 9
    new-instance v0, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    const-string v1, "HIGH_PERFORMANCE_RAZR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;->HIGH_PERFORMANCE_RAZR:Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    .line 10
    new-instance v0, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    const-string v1, "FLAGSHIP_S22_EXYNOS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;->FLAGSHIP_S22_EXYNOS:Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    .line 11
    new-instance v0, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    const-string v1, "UNIVERSAL_AUTO_TIER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;->UNIVERSAL_AUTO_TIER:Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    invoke-static {}, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;->$values()[Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    move-result-object v0

    sput-object v0, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;->$VALUES:[Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    sget-object v0, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;->$VALUES:[Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/cgs/atvobserver/domain/DevicePerformanceTier;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cgs/atvobserver/domain/DevicePerformanceTier;
    .locals 1

    const-class v0, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    return-object v0
.end method

.method public static values()[Lcom/cgs/atvobserver/domain/DevicePerformanceTier;
    .locals 1

    sget-object v0, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;->$VALUES:[Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    return-object v0
.end method
