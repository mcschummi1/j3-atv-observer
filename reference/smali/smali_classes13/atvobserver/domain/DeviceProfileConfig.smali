.class public final Lcom/cgs/atvobserver/domain/DeviceProfileConfig;
.super Ljava/lang/Object;
.source "DeviceProfiler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u001b\u0008\u0087\u0008\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\n\u00a2\u0006\u0002\u0010\rJ\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\nH\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\nH\u00c6\u0003JO\u0010 \u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000c\u001a\u00020\nH\u00c6\u0001J\u0013\u0010!\u001a\u00020\n2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010#\u001a\u00020\u0005H\u00d6\u0001J\t\u0010$\u001a\u00020\u0008H\u00d6\u0001R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u000c\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0013R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0011R\u0011\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006%"
    }
    d2 = {
        "Lcom/cgs/atvobserver/domain/DeviceProfileConfig;",
        "",
        "tier",
        "Lcom/cgs/atvobserver/domain/DevicePerformanceTier;",
        "maxAllowedRamMb",
        "",
        "cameraAnalysisIntervalSec",
        "aiModelPrecision",
        "",
        "enableHeavySensorFusion",
        "",
        "profileName",
        "hasRootAccess",
        "(Lcom/cgs/atvobserver/domain/DevicePerformanceTier;IILjava/lang/String;ZLjava/lang/String;Z)V",
        "getAiModelPrecision",
        "()Ljava/lang/String;",
        "getCameraAnalysisIntervalSec",
        "()I",
        "getEnableHeavySensorFusion",
        "()Z",
        "getHasRootAccess",
        "getMaxAllowedRamMb",
        "getProfileName",
        "getTier",
        "()Lcom/cgs/atvobserver/domain/DevicePerformanceTier;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
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
.field public static final $stable:I


# instance fields
.field private final aiModelPrecision:Ljava/lang/String;

.field private final cameraAnalysisIntervalSec:I

.field private final enableHeavySensorFusion:Z

.field private final hasRootAccess:Z

.field private final maxAllowedRamMb:I

.field private final profileName:Ljava/lang/String;

.field private final tier:Lcom/cgs/atvobserver/domain/DevicePerformanceTier;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/cgs/atvobserver/domain/DevicePerformanceTier;IILjava/lang/String;ZLjava/lang/String;Z)V
    .locals 1
    .param p1, "tier"    # Lcom/cgs/atvobserver/domain/DevicePerformanceTier;
    .param p2, "maxAllowedRamMb"    # I
    .param p3, "cameraAnalysisIntervalSec"    # I
    .param p4, "aiModelPrecision"    # Ljava/lang/String;
    .param p5, "enableHeavySensorFusion"    # Z
    .param p6, "profileName"    # Ljava/lang/String;
    .param p7, "hasRootAccess"    # Z

    const-string v0, "tier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aiModelPrecision"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileName"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->tier:Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    .line 16
    iput p2, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->maxAllowedRamMb:I

    .line 17
    iput p3, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->cameraAnalysisIntervalSec:I

    .line 18
    iput-object p4, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->aiModelPrecision:Ljava/lang/String;

    .line 19
    iput-boolean p5, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->enableHeavySensorFusion:Z

    .line 20
    iput-object p6, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->profileName:Ljava/lang/String;

    .line 21
    iput-boolean p7, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->hasRootAccess:Z

    .line 14
    return-void
.end method

.method public synthetic constructor <init>(Lcom/cgs/atvobserver/domain/DevicePerformanceTier;IILjava/lang/String;ZLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    .line 14
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    .line 21
    const/4 v0, 0x0

    move v8, v0

    goto :goto_0

    .line 14
    :cond_0
    move/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;-><init>(Lcom/cgs/atvobserver/domain/DevicePerformanceTier;IILjava/lang/String;ZLjava/lang/String;Z)V

    .line 22
    return-void
.end method

.method public static synthetic copy$default(Lcom/cgs/atvobserver/domain/DeviceProfileConfig;Lcom/cgs/atvobserver/domain/DevicePerformanceTier;IILjava/lang/String;ZLjava/lang/String;ZILjava/lang/Object;)Lcom/cgs/atvobserver/domain/DeviceProfileConfig;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->tier:Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget p2, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->maxAllowedRamMb:I

    :cond_1
    move p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->cameraAnalysisIntervalSec:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->aiModelPrecision:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->enableHeavySensorFusion:Z

    :cond_4
    move v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->profileName:Ljava/lang/String;

    :cond_5
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-boolean p7, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->hasRootAccess:Z

    :cond_6
    move v4, p7

    move-object p2, p0

    move-object p3, p1

    move p4, p9

    move p5, v0

    move-object p6, v1

    move p7, v2

    move-object p8, v3

    move p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->copy(Lcom/cgs/atvobserver/domain/DevicePerformanceTier;IILjava/lang/String;ZLjava/lang/String;Z)Lcom/cgs/atvobserver/domain/DeviceProfileConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/cgs/atvobserver/domain/DevicePerformanceTier;
    .locals 1

    iget-object v0, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->tier:Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->maxAllowedRamMb:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->cameraAnalysisIntervalSec:I

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->aiModelPrecision:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->enableHeavySensorFusion:Z

    return v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->profileName:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->hasRootAccess:Z

    return v0
.end method

.method public final copy(Lcom/cgs/atvobserver/domain/DevicePerformanceTier;IILjava/lang/String;ZLjava/lang/String;Z)Lcom/cgs/atvobserver/domain/DeviceProfileConfig;
    .locals 12

    const-string v0, "tier"

    move-object v9, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aiModelPrecision"

    move-object/from16 v10, p4

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileName"

    move-object/from16 v11, p6

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;-><init>(Lcom/cgs/atvobserver/domain/DevicePerformanceTier;IILjava/lang/String;ZLjava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;

    iget-object v3, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->tier:Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    iget-object v4, v1, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->tier:Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->maxAllowedRamMb:I

    iget v4, v1, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->maxAllowedRamMb:I

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->cameraAnalysisIntervalSec:I

    iget v4, v1, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->cameraAnalysisIntervalSec:I

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->aiModelPrecision:Ljava/lang/String;

    iget-object v4, v1, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->aiModelPrecision:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-boolean v3, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->enableHeavySensorFusion:Z

    iget-boolean v4, v1, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->enableHeavySensorFusion:Z

    if-eq v3, v4, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->profileName:Ljava/lang/String;

    iget-object v4, v1, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->profileName:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    iget-boolean v3, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->hasRootAccess:Z

    iget-boolean v1, v1, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->hasRootAccess:Z

    if-eq v3, v1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getAiModelPrecision()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->aiModelPrecision:Ljava/lang/String;

    return-object v0
.end method

.method public final getCameraAnalysisIntervalSec()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->cameraAnalysisIntervalSec:I

    return v0
.end method

.method public final getEnableHeavySensorFusion()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->enableHeavySensorFusion:Z

    return v0
.end method

.method public final getHasRootAccess()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->hasRootAccess:Z

    return v0
.end method

.method public final getMaxAllowedRamMb()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->maxAllowedRamMb:I

    return v0
.end method

.method public final getProfileName()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->profileName:Ljava/lang/String;

    return-object v0
.end method

.method public final getTier()Lcom/cgs/atvobserver/domain/DevicePerformanceTier;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->tier:Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->tier:Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    invoke-virtual {v0}, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->maxAllowedRamMb:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->cameraAnalysisIntervalSec:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->aiModelPrecision:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->enableHeavySensorFusion:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->profileName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->hasRootAccess:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->tier:Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    iget v1, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->maxAllowedRamMb:I

    iget v2, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->cameraAnalysisIntervalSec:I

    iget-object v3, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->aiModelPrecision:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->enableHeavySensorFusion:Z

    iget-object v5, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->profileName:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->hasRootAccess:Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DeviceProfileConfig(tier="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", maxAllowedRamMb="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cameraAnalysisIntervalSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", aiModelPrecision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enableHeavySensorFusion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", profileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasRootAccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
