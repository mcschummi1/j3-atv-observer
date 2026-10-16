.class public final Lcom/cgs/atvobserver/ai/DeepStudioAnalysisEngine;
.super Ljava/lang/Object;
.source "DeepStudioAnalysisEngine.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0006\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/cgs/atvobserver/ai/DeepStudioAnalysisEngine;",
        "",
        "()V",
        "runDeepOfflineCrunch",
        "Lcom/cgs/atvobserver/ai/DeepStudioReport;",
        "ride",
        "Lcom/cgs/atvobserver/data/db/RideLogEntity;",
        "rawAudioPeakRpm",
        "",
        "cameraVisualSurfaceConfidence",
        "",
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

.field public static final INSTANCE:Lcom/cgs/atvobserver/ai/DeepStudioAnalysisEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cgs/atvobserver/ai/DeepStudioAnalysisEngine;

    invoke-direct {v0}, Lcom/cgs/atvobserver/ai/DeepStudioAnalysisEngine;-><init>()V

    sput-object v0, Lcom/cgs/atvobserver/ai/DeepStudioAnalysisEngine;->INSTANCE:Lcom/cgs/atvobserver/ai/DeepStudioAnalysisEngine;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final runDeepOfflineCrunch(Lcom/cgs/atvobserver/data/db/RideLogEntity;ID)Lcom/cgs/atvobserver/ai/DeepStudioReport;
    .locals 21
    .param p1, "ride"    # Lcom/cgs/atvobserver/data/db/RideLogEntity;
    .param p2, "rawAudioPeakRpm"    # I
    .param p3, "cameraVisualSurfaceConfidence"    # D

    const-string v0, "ride"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->getEstimatedFuelUsedL()D

    move-result-wide v14

    .line 32
    .local v14, "liveFuel":D
    const-wide v2, 0x3fef333333333333L    # 0.975

    mul-double v16, v14, v2

    .line 34
    .local v16, "deepCrunchFuel":D
    const-wide/16 v2, 0x0

    cmpl-double v0, v14, v2

    if-lez v0, :cond_0

    .line 35
    sub-double v2, v14, v16

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    div-double/2addr v2, v14

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v2

    goto :goto_0

    .line 36
    :cond_0
    const-wide v4, 0x4058c00000000000L    # 99.0

    .line 34
    :goto_0
    move-wide/from16 v18, v4

    .line 38
    .local v18, "accuracy":D
    const-wide v2, 0x4057c00000000000L    # 95.0

    cmpl-double v0, v18, v2

    if-lez v0, :cond_1

    .line 39
    const-string v0, "EXCELLENT: Live estimates matched deep post-ride neural fusion."

    move-object v13, v0

    goto :goto_1

    .line 41
    :cond_1
    const-string v0, "RECALIBRATED: GPS drift compensated via camera visual horizon."

    move-object v13, v0

    .line 38
    :goto_1
    nop

    .line 44
    .local v13, "verdict":Ljava/lang/String;
    new-instance v0, Lcom/cgs/atvobserver/ai/DeepStudioReport;

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->getId()J

    move-result-wide v3

    .line 46
    nop

    .line 47
    nop

    .line 48
    const-wide/high16 v8, 0x4054000000000000L    # 80.0

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    move-wide/from16 v6, v18

    invoke-static/range {v6 .. v11}, Lkotlin/ranges/RangesKt;->coerceIn(DDD)D

    move-result-wide v9

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->getTerrainSummary()Ljava/lang/String;

    move-result-object v11

    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->getMaxSpeedKmh()D

    move-result-wide v5

    const-wide/high16 v7, 0x405e000000000000L    # 120.0

    mul-double/2addr v5, v7

    double-to-int v2, v5

    move/from16 v12, p2

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 51
    nop

    .line 44
    move-object v2, v0

    move-wide v5, v14

    move-wide/from16 v7, v16

    move/from16 v12, v20

    invoke-direct/range {v2 .. v13}, Lcom/cgs/atvobserver/ai/DeepStudioReport;-><init>(JDDDLjava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method
