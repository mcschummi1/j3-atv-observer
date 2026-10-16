.class public final Lcom/cgs/atvobserver/ai/SoftwareLoadSource;
.super Ljava/lang/Object;
.source "SoftwareLoadSource.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cgs/atvobserver/ai/SoftwareLoadSource$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JJ\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00042\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/cgs/atvobserver/ai/SoftwareLoadSource;",
        "",
        "()V",
        "calculatePreciseLoad",
        "Lkotlin/Pair;",
        "",
        "Lcom/cgs/atvobserver/ai/EngineLoadState;",
        "fusedRpm",
        "",
        "fusedSpeedKmh",
        "estimatedGear",
        "roadSurface",
        "Lcom/cgs/atvobserver/ai/RoadSurfaceClass;",
        "motionData",
        "Lcom/cgs/atvobserver/sensor/MotionSensorData;",
        "audioRmsDb",
        "vehicleType",
        "Lcom/cgs/atvobserver/data/model/VehicleType;",
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

.field public static final INSTANCE:Lcom/cgs/atvobserver/ai/SoftwareLoadSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cgs/atvobserver/ai/SoftwareLoadSource;

    invoke-direct {v0}, Lcom/cgs/atvobserver/ai/SoftwareLoadSource;-><init>()V

    sput-object v0, Lcom/cgs/atvobserver/ai/SoftwareLoadSource;->INSTANCE:Lcom/cgs/atvobserver/ai/SoftwareLoadSource;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final calculatePreciseLoad(IDILcom/cgs/atvobserver/ai/RoadSurfaceClass;Lcom/cgs/atvobserver/sensor/MotionSensorData;DLcom/cgs/atvobserver/data/model/VehicleType;)Lkotlin/Pair;
    .locals 33
    .param p1, "fusedRpm"    # I
    .param p2, "fusedSpeedKmh"    # D
    .param p4, "estimatedGear"    # I
    .param p5, "roadSurface"    # Lcom/cgs/atvobserver/ai/RoadSurfaceClass;
    .param p6, "motionData"    # Lcom/cgs/atvobserver/sensor/MotionSensorData;
    .param p7, "audioRmsDb"    # D
    .param p9, "vehicleType"    # Lcom/cgs/atvobserver/data/model/VehicleType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IDI",
            "Lcom/cgs/atvobserver/ai/RoadSurfaceClass;",
            "Lcom/cgs/atvobserver/sensor/MotionSensorData;",
            "D",
            "Lcom/cgs/atvobserver/data/model/VehicleType;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Double;",
            "Lcom/cgs/atvobserver/ai/EngineLoadState;",
            ">;"
        }
    .end annotation

    move/from16 v0, p1

    const-string v1, "roadSurface"

    move-object/from16 v2, p5

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "motionData"

    move-object/from16 v3, p6

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "vehicleType"

    move-object/from16 v4, p9

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    const/16 v1, 0x28a

    const-wide/16 v5, 0x0

    if-ge v0, v1, :cond_0

    .line 29
    new-instance v1, Lkotlin/Pair;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    sget-object v6, Lcom/cgs/atvobserver/ai/EngineLoadState;->IDLE:Lcom/cgs/atvobserver/ai/EngineLoadState;

    invoke-direct {v1, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 33
    :cond_0
    packed-switch p4, :pswitch_data_0

    .line 37
    const-wide v7, 0x3f947ae147ae147bL    # 0.02

    goto :goto_0

    .line 36
    :pswitch_0
    const-wide v7, 0x3f8eb851eb851eb8L    # 0.015

    goto :goto_0

    .line 35
    :pswitch_1
    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    goto :goto_0

    .line 34
    :pswitch_2
    const-wide v7, 0x3f747ae147ae147bL    # 0.005

    .line 33
    :goto_0
    nop

    .line 39
    .local v7, "expectedRatio":D
    if-lez v0, :cond_1

    int-to-double v5, v0

    div-double v5, p2, v5

    .line 40
    .local v5, "actualRatio":D
    :cond_1
    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    cmpl-double v1, p2, v9

    if-lez v1, :cond_2

    cmpg-double v1, v5, v7

    if-gez v1, :cond_2

    .line 41
    sub-double v11, v7, v5

    div-double v13, v11, v7

    const-wide/16 v15, 0x0

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v13 .. v18}, Lkotlin/ranges/RangesKt;->coerceIn(DDD)D

    move-result-wide v11

    goto :goto_1

    .line 42
    :cond_2
    const-wide v11, 0x3fc999999999999aL    # 0.2

    .line 40
    :goto_1
    nop

    .line 45
    .local v11, "gearLoadFactor":D
    sget-object v1, Lcom/cgs/atvobserver/ai/SoftwareLoadSource$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {p5 .. p5}, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->ordinal()I

    move-result v13

    aget v1, v1, v13

    const-wide v13, 0x3fd6666666666666L    # 0.35

    const-wide v15, 0x3fe999999999999aL    # 0.8

    packed-switch v1, :pswitch_data_1

    .line 52
    const-wide v17, 0x3fb999999999999aL    # 0.1

    goto :goto_2

    .line 51
    :pswitch_3
    const-wide v17, 0x3fc999999999999aL    # 0.2

    goto :goto_2

    .line 50
    :pswitch_4
    move-wide/from16 v17, v13

    goto :goto_2

    .line 49
    :pswitch_5
    const-wide v17, 0x3fdccccccccccccdL    # 0.45

    goto :goto_2

    .line 48
    :pswitch_6
    const-wide v17, 0x3fe4cccccccccccdL    # 0.65

    goto :goto_2

    .line 47
    :pswitch_7
    move-wide/from16 v17, v15

    goto :goto_2

    .line 46
    :pswitch_8
    const-wide v17, 0x3fee666666666666L    # 0.95

    .line 45
    :goto_2
    nop

    .line 56
    .local v17, "surfaceDragFactor":D
    invoke-virtual/range {p6 .. p6}, Lcom/cgs/atvobserver/sensor/MotionSensorData;->getRawY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v19, 0x41200000    # 10.0f

    div-float v1, v1, v19

    float-to-double v9, v1

    const-wide/16 v21, 0x0

    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v19, v9

    invoke-static/range {v19 .. v24}, Lkotlin/ranges/RangesKt;->coerceIn(DDD)D

    move-result-wide v9

    .line 59
    .local v9, "accelDemandFactor":D
    const-wide v19, 0x4050400000000000L    # 65.0

    sub-double v19, p7, v19

    const-wide/high16 v21, 0x403e000000000000L    # 30.0

    div-double v27, v19, v21

    const-wide/16 v29, 0x0

    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v27 .. v32}, Lkotlin/ranges/RangesKt;->coerceIn(DDD)D

    move-result-wide v19

    .line 62
    .local v19, "acousticStrainFactor":D
    mul-double/2addr v13, v11

    .line 63
    const-wide/high16 v21, 0x3fd0000000000000L    # 0.25

    mul-double v21, v21, v17

    .line 62
    add-double v13, v13, v21

    .line 64
    const-wide v21, 0x3fc999999999999aL    # 0.2

    mul-double v23, v9, v21

    .line 62
    add-double v13, v13, v23

    .line 65
    mul-double v23, v19, v21

    .line 62
    add-double v13, v13, v23

    .line 67
    .local v13, "fusedLoadScore":D
    nop

    .line 68
    const/16 v1, 0xdac

    if-le v0, v1, :cond_3

    const-wide/high16 v21, 0x4014000000000000L    # 5.0

    cmpg-double v1, p2, v21

    if-gez v1, :cond_3

    sget-object v1, Lcom/cgs/atvobserver/ai/EngineLoadState;->EXTREME:Lcom/cgs/atvobserver/ai/EngineLoadState;

    goto :goto_3

    .line 69
    :cond_3
    cmpl-double v1, v13, v15

    if-ltz v1, :cond_4

    sget-object v1, Lcom/cgs/atvobserver/ai/EngineLoadState;->EXTREME:Lcom/cgs/atvobserver/ai/EngineLoadState;

    goto :goto_3

    .line 70
    :cond_4
    const-wide v15, 0x3fe3333333333333L    # 0.6

    cmpl-double v1, v13, v15

    if-ltz v1, :cond_5

    sget-object v1, Lcom/cgs/atvobserver/ai/EngineLoadState;->HEAVY:Lcom/cgs/atvobserver/ai/EngineLoadState;

    goto :goto_3

    .line 71
    :cond_5
    const-wide v15, 0x3fd999999999999aL    # 0.4

    cmpl-double v1, v13, v15

    if-ltz v1, :cond_6

    sget-object v1, Lcom/cgs/atvobserver/ai/EngineLoadState;->MODERATE:Lcom/cgs/atvobserver/ai/EngineLoadState;

    goto :goto_3

    .line 72
    :cond_6
    const-wide v15, 0x3fc999999999999aL    # 0.2

    cmpl-double v1, v13, v15

    if-ltz v1, :cond_7

    sget-object v1, Lcom/cgs/atvobserver/ai/EngineLoadState;->CRUISE:Lcom/cgs/atvobserver/ai/EngineLoadState;

    goto :goto_3

    .line 73
    :cond_7
    sget-object v1, Lcom/cgs/atvobserver/ai/EngineLoadState;->VERY_LIGHT:Lcom/cgs/atvobserver/ai/EngineLoadState;

    .line 67
    :goto_3
    nop

    .line 76
    .local v1, "loadState":Lcom/cgs/atvobserver/ai/EngineLoadState;
    new-instance v15, Lkotlin/Pair;

    const-wide/16 v27, 0x0

    const-wide/high16 v29, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v25, v13

    invoke-static/range {v25 .. v30}, Lkotlin/ranges/RangesKt;->coerceIn(DDD)D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v15, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v15

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
