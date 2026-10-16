.class public final Lcom/cgs/atvobserver/domain/FuelEstimator;
.super Ljava/lang/Object;
.source "FuelEstimator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cgs/atvobserver/domain/FuelEstimator$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004Jn\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0004J\u000e\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000fJ(\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00042\u0008\u0008\u0002\u0010 \u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/cgs/atvobserver/domain/FuelEstimator;",
        "",
        "()V",
        "MAX_TANK_CAPACITY_LITRES",
        "",
        "calculatePercentage",
        "",
        "remainingLitres",
        "tankCapacityL",
        "estimateFuelConsumption",
        "distanceKm",
        "durationSeconds",
        "",
        "avgSpeedKmh",
        "vehicleType",
        "Lcom/cgs/atvobserver/data/model/VehicleType;",
        "weatherCondition",
        "Lcom/cgs/atvobserver/data/model/WeatherCondition;",
        "engineLoad",
        "Lcom/cgs/atvobserver/ai/EngineLoadState;",
        "roadSurface",
        "Lcom/cgs/atvobserver/ai/RoadSurfaceClass;",
        "temperatureCelsius",
        "climbGradePercent",
        "isTireDragDetected",
        "",
        "learnedCalibrationFactor",
        "getBaselineLitresPer100Km",
        "trainCalibrationModel",
        "predictedL",
        "actualMeasuredL",
        "currentFactor",
        "daysSinceCalibration",
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
.field public static final $stable:I = 0x0

.field public static final INSTANCE:Lcom/cgs/atvobserver/domain/FuelEstimator;

.field public static final MAX_TANK_CAPACITY_LITRES:D = 2.0


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cgs/atvobserver/domain/FuelEstimator;

    invoke-direct {v0}, Lcom/cgs/atvobserver/domain/FuelEstimator;-><init>()V

    sput-object v0, Lcom/cgs/atvobserver/domain/FuelEstimator;->INSTANCE:Lcom/cgs/atvobserver/domain/FuelEstimator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic calculatePercentage$default(Lcom/cgs/atvobserver/domain/FuelEstimator;DDILjava/lang/Object;)I
    .locals 0

    .line 116
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const-wide/high16 p3, 0x4000000000000000L    # 2.0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cgs/atvobserver/domain/FuelEstimator;->calculatePercentage(DD)I

    move-result p0

    return p0
.end method

.method public static synthetic estimateFuelConsumption$default(Lcom/cgs/atvobserver/domain/FuelEstimator;DJDLcom/cgs/atvobserver/data/model/VehicleType;Lcom/cgs/atvobserver/data/model/WeatherCondition;Lcom/cgs/atvobserver/ai/EngineLoadState;Lcom/cgs/atvobserver/ai/RoadSurfaceClass;DDZDILjava/lang/Object;)D
    .locals 20

    .line 33
    move/from16 v0, p18

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    .line 37
    sget-object v1, Lcom/cgs/atvobserver/data/model/VehicleType;->ATV:Lcom/cgs/atvobserver/data/model/VehicleType;

    move-object v9, v1

    goto :goto_0

    .line 33
    :cond_0
    move-object/from16 v9, p7

    :goto_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    .line 38
    sget-object v1, Lcom/cgs/atvobserver/data/model/WeatherCondition;->NORMAL_DRY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

    move-object v10, v1

    goto :goto_1

    .line 33
    :cond_1
    move-object/from16 v10, p8

    :goto_1
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    .line 39
    sget-object v1, Lcom/cgs/atvobserver/ai/EngineLoadState;->CRUISE:Lcom/cgs/atvobserver/ai/EngineLoadState;

    move-object v11, v1

    goto :goto_2

    .line 33
    :cond_2
    move-object/from16 v11, p9

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    .line 40
    sget-object v1, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->ASPHALT:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    move-object v12, v1

    goto :goto_3

    .line 33
    :cond_3
    move-object/from16 v12, p10

    :goto_3
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_4

    .line 41
    const-wide/high16 v1, 0x4056000000000000L    # 88.0

    move-wide v13, v1

    goto :goto_4

    .line 33
    :cond_4
    move-wide/from16 v13, p11

    :goto_4
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_5

    .line 42
    const-wide/16 v1, 0x0

    move-wide v15, v1

    goto :goto_5

    .line 33
    :cond_5
    move-wide/from16 v15, p13

    :goto_5
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_6

    .line 43
    const/4 v1, 0x0

    move/from16 v17, v1

    goto :goto_6

    .line 33
    :cond_6
    move/from16 v17, p15

    :goto_6
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_7

    .line 44
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v18, v0

    goto :goto_7

    .line 33
    :cond_7
    move-wide/from16 v18, p16

    :goto_7
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    invoke-virtual/range {v2 .. v19}, Lcom/cgs/atvobserver/domain/FuelEstimator;->estimateFuelConsumption(DJDLcom/cgs/atvobserver/data/model/VehicleType;Lcom/cgs/atvobserver/data/model/WeatherCondition;Lcom/cgs/atvobserver/ai/EngineLoadState;Lcom/cgs/atvobserver/ai/RoadSurfaceClass;DDZD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic trainCalibrationModel$default(Lcom/cgs/atvobserver/domain/FuelEstimator;DDDIILjava/lang/Object;)D
    .locals 9

    .line 101
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x1

    move v8, v0

    goto :goto_0

    .line 101
    :cond_0
    move/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v8}, Lcom/cgs/atvobserver/domain/FuelEstimator;->trainCalibrationModel(DDDI)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final calculatePercentage(DD)I
    .locals 10
    .param p1, "remainingLitres"    # D
    .param p3, "tankCapacityL"    # D

    .line 117
    div-double v0, p1, p3

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    .line 118
    .local v0, "pct":D
    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    move-wide v4, v0

    invoke-static/range {v4 .. v9}, Lkotlin/ranges/RangesKt;->coerceIn(DDD)D

    move-result-wide v2

    double-to-int v2, v2

    return v2
.end method

.method public final estimateFuelConsumption(DJDLcom/cgs/atvobserver/data/model/VehicleType;Lcom/cgs/atvobserver/data/model/WeatherCondition;Lcom/cgs/atvobserver/ai/EngineLoadState;Lcom/cgs/atvobserver/ai/RoadSurfaceClass;DDZD)D
    .locals 30
    .param p1, "distanceKm"    # D
    .param p3, "durationSeconds"    # J
    .param p5, "avgSpeedKmh"    # D
    .param p7, "vehicleType"    # Lcom/cgs/atvobserver/data/model/VehicleType;
    .param p8, "weatherCondition"    # Lcom/cgs/atvobserver/data/model/WeatherCondition;
    .param p9, "engineLoad"    # Lcom/cgs/atvobserver/ai/EngineLoadState;
    .param p10, "roadSurface"    # Lcom/cgs/atvobserver/ai/RoadSurfaceClass;
    .param p11, "temperatureCelsius"    # D
    .param p13, "climbGradePercent"    # D
    .param p15, "isTireDragDetected"    # Z
    .param p16, "learnedCalibrationFactor"    # D

    move-wide/from16 v0, p3

    move-object/from16 v2, p7

    const-string v3, "vehicleType"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "weatherCondition"

    move-object/from16 v4, p8

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "engineLoad"

    move-object/from16 v5, p9

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "roadSurface"

    move-object/from16 v6, p10

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    const-wide/16 v7, 0x0

    cmpg-double v3, p1, v7

    if-gtz v3, :cond_0

    const-wide/16 v9, 0x0

    cmp-long v3, v0, v9

    if-gtz v3, :cond_0

    return-wide v7

    .line 48
    :cond_0
    move-object/from16 v3, p0

    invoke-virtual {v3, v2}, Lcom/cgs/atvobserver/domain/FuelEstimator;->getBaselineLitresPer100Km(Lcom/cgs/atvobserver/data/model/VehicleType;)D

    move-result-wide v9

    mul-double v9, v9, p16

    .line 51
    .local v9, "baseRatePer100Km":D
    sget-object v11, Lcom/cgs/atvobserver/domain/FuelEstimator$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual/range {p10 .. p10}, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->ordinal()I

    move-result v12

    aget v11, v11, v12

    const-wide v12, 0x3ff147ae147ae148L    # 1.08

    const-wide/high16 v14, 0x3ff4000000000000L    # 1.25

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    packed-switch v11, :pswitch_data_0

    .line 58
    move-wide/from16 v18, v16

    goto :goto_0

    .line 57
    :pswitch_0
    const-wide v18, 0x3ff0a3d70a3d70a4L    # 1.04

    goto :goto_0

    .line 56
    :pswitch_1
    move-wide/from16 v18, v12

    goto :goto_0

    .line 55
    :pswitch_2
    const-wide v18, 0x3ff1eb851eb851ecL    # 1.12

    goto :goto_0

    .line 54
    :pswitch_3
    const-wide v18, 0x3ff2e147ae147ae1L    # 1.18

    goto :goto_0

    .line 53
    :pswitch_4
    move-wide/from16 v18, v14

    goto :goto_0

    .line 52
    :pswitch_5
    const-wide v18, 0x3ff599999999999aL    # 1.35

    .line 51
    :goto_0
    nop

    .line 62
    .local v18, "surfaceMultiplier":D
    sget-object v11, Lcom/cgs/atvobserver/domain/FuelEstimator$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual/range {p9 .. p9}, Lcom/cgs/atvobserver/ai/EngineLoadState;->ordinal()I

    move-result v20

    aget v11, v11, v20

    packed-switch v11, :pswitch_data_1

    .line 68
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_6
    move-wide v14, v7

    goto :goto_1

    .line 67
    :pswitch_7
    const-wide v14, 0x3fec28f5c28f5c29L    # 0.88

    goto :goto_1

    .line 66
    :pswitch_8
    move-wide/from16 v14, v16

    goto :goto_1

    .line 65
    :pswitch_9
    const-wide v14, 0x3ff199999999999aL    # 1.1

    goto :goto_1

    .line 64
    :pswitch_a
    goto :goto_1

    .line 63
    :pswitch_b
    const-wide v14, 0x3ff7333333333333L    # 1.45

    .line 62
    :goto_1
    nop

    .line 72
    .local v14, "loadMultiplier":D
    cmpl-double v11, p13, v16

    if-lez v11, :cond_1

    .line 73
    const-wide v20, 0x3f947ae147ae147bL    # 0.02

    mul-double v20, v20, p13

    add-double v20, v20, v16

    goto :goto_2

    .line 74
    :cond_1
    move-wide/from16 v20, v16

    .line 72
    :goto_2
    nop

    .line 77
    .local v20, "gradeMultiplier":D
    if-eqz p15, :cond_2

    goto :goto_3

    :cond_2
    move-wide/from16 v12, v16

    :goto_3
    move-wide v11, v12

    .line 80
    .local v11, "dragMultiplier":D
    invoke-virtual/range {p8 .. p8}, Lcom/cgs/atvobserver/data/model/WeatherCondition;->isWindy()Z

    move-result v13

    if-eqz v13, :cond_3

    const-wide v22, 0x3ff2666666666666L    # 1.15

    goto :goto_4

    :cond_3
    move-wide/from16 v22, v16

    .line 83
    .local v22, "windMultiplier":D
    :goto_4
    cmpl-double v13, p11, v7

    if-lez v13, :cond_4

    const-wide/high16 v24, 0x404e000000000000L    # 60.0

    cmpg-double v13, p11, v24

    if-gez v13, :cond_4

    const-wide v16, 0x3ff3333333333333L    # 1.2

    .line 86
    .local v16, "thermalMultiplier":D
    :cond_4
    mul-double v24, v9, v18

    mul-double v24, v24, v14

    mul-double v24, v24, v20

    mul-double v24, v24, v11

    mul-double v24, v24, v22

    mul-double v24, v24, v16

    .line 89
    .local v24, "fusedRatePer100Km":D
    const-wide/high16 v26, 0x4059000000000000L    # 100.0

    div-double v26, p1, v26

    mul-double v26, v26, v24

    .line 92
    .local v26, "distanceFuelL":D
    long-to-double v7, v0

    const-wide v28, 0x40ac200000000000L    # 3600.0

    div-double v7, v7, v28

    .line 93
    .local v7, "hours":D
    const-wide/high16 v28, 0x4008000000000000L    # 3.0

    cmpg-double v13, p5, v28

    if-gez v13, :cond_5

    const-wide v28, 0x3fcc28f5c28f5c29L    # 0.22

    mul-double v28, v28, v7

    goto :goto_5

    :cond_5
    const-wide/16 v28, 0x0

    .line 95
    .local v28, "idleFuelL":D
    :goto_5
    add-double v0, v26, v28

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public final getBaselineLitresPer100Km(Lcom/cgs/atvobserver/data/model/VehicleType;)D
    .locals 2
    .param p1, "vehicleType"    # Lcom/cgs/atvobserver/data/model/VehicleType;

    const-string v0, "vehicleType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/cgs/atvobserver/domain/FuelEstimator$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/cgs/atvobserver/data/model/VehicleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 26
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    goto :goto_0

    .line 25
    :pswitch_1
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    goto :goto_0

    .line 24
    :pswitch_2
    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    goto :goto_0

    .line 23
    :pswitch_3
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    .line 22
    :goto_0
    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final trainCalibrationModel(DDDI)D
    .locals 15
    .param p1, "predictedL"    # D
    .param p3, "actualMeasuredL"    # D
    .param p5, "currentFactor"    # D
    .param p7, "daysSinceCalibration"    # I

    .line 107
    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-lez v2, :cond_1

    cmpg-double v0, p3, v0

    if-gtz v0, :cond_0

    move/from16 v4, p7

    goto :goto_0

    .line 109
    :cond_0
    div-double v0, p3, p1

    .line 111
    .local v0, "rawRatio":D
    const-wide v2, -0x406b851eb851eb85L    # -0.02

    move/from16 v4, p7

    int-to-double v5, v4

    mul-double/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    const-wide v9, 0x3fb999999999999aL    # 0.1

    const-wide v11, 0x3feccccccccccccdL    # 0.9

    invoke-static/range {v7 .. v12}, Lkotlin/ranges/RangesKt;->coerceIn(DDD)D

    move-result-wide v2

    .line 112
    .local v2, "decayWeight":D
    mul-double v5, p5, v2

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v7, v2

    mul-double/2addr v7, v0

    add-double/2addr v5, v7

    .line 113
    .local v5, "smoothFactor":D
    const-wide v11, 0x3fe3333333333333L    # 0.6

    const-wide v13, 0x3ff999999999999aL    # 1.6

    move-wide v9, v5

    invoke-static/range {v9 .. v14}, Lkotlin/ranges/RangesKt;->coerceIn(DDD)D

    move-result-wide v7

    return-wide v7

    .line 107
    .end local v0    # "rawRatio":D
    .end local v2    # "decayWeight":D
    .end local v5    # "smoothFactor":D
    :cond_1
    move/from16 v4, p7

    :goto_0
    return-wide p5
.end method
