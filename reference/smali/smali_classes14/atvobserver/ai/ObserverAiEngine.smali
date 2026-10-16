.class public final Lcom/cgs/atvobserver/ai/ObserverAiEngine;
.super Ljava/lang/Object;
.source "ObserverAiEngine.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cgs/atvobserver/ai/ObserverAiEngine$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002JV\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f2\u0008\u0008\u0002\u0010 \u001a\u00020!J\u0008\u0010\"\u001a\u00020\u000fH\u0002R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/cgs/atvobserver/ai/ObserverAiEngine;",
        "",
        "()V",
        "_aiOutput",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/cgs/atvobserver/ai/ObserverAiOutput;",
        "aiOutput",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getAiOutput",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "lastValidSpeedKmh",
        "",
        "lastValidTimeMs",
        "",
        "processTelemetryFrame",
        "",
        "context",
        "Landroid/content/Context;",
        "gpsData",
        "Lcom/cgs/atvobserver/location/GpsData;",
        "audioData",
        "Lcom/cgs/atvobserver/audio/AudioAnalysisResult;",
        "motionData",
        "Lcom/cgs/atvobserver/sensor/MotionSensorData;",
        "weatherCondition",
        "Lcom/cgs/atvobserver/data/model/WeatherCondition;",
        "activeVehicle",
        "Lcom/cgs/atvobserver/data/model/VehicleType;",
        "isTestTrackMode",
        "",
        "ambientLux",
        "",
        "ramUsageMb",
        "",
        "triggerZRamDiskOffload",
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
.field private final _aiOutput:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/cgs/atvobserver/ai/ObserverAiOutput;",
            ">;"
        }
    .end annotation
.end field

.field private final aiOutput:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/cgs/atvobserver/ai/ObserverAiOutput;",
            ">;"
        }
    .end annotation
.end field

.field private lastValidSpeedKmh:D

.field private lastValidTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lcom/cgs/atvobserver/ai/ObserverAiEngine;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 36

    .line 102
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v35, Lcom/cgs/atvobserver/ai/ObserverAiOutput;

    move-object/from16 v1, v35

    const v33, 0x7ffffff

    const/16 v34, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-direct/range {v1 .. v34}, Lcom/cgs/atvobserver/ai/ObserverAiOutput;-><init>(Lcom/cgs/atvobserver/ai/AppOperatingMode;Lcom/cgs/atvobserver/ai/RideStateClass;Lcom/cgs/atvobserver/ai/RoadSurfaceClass;Lcom/cgs/atvobserver/ai/EngineLoadState;Lcom/cgs/atvobserver/ai/ClutchType;IIZZZZZDIIDIIDDIZZZZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static/range {v35 .. v35}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/cgs/atvobserver/ai/ObserverAiEngine;->_aiOutput:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 105
    iget-object v1, v0, Lcom/cgs/atvobserver/ai/ObserverAiEngine;->_aiOutput:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/cgs/atvobserver/ai/ObserverAiEngine;->aiOutput:Lkotlinx/coroutines/flow/StateFlow;

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/cgs/atvobserver/ai/ObserverAiEngine;->lastValidTimeMs:J

    .line 102
    return-void
.end method

.method public static synthetic processTelemetryFrame$default(Lcom/cgs/atvobserver/ai/ObserverAiEngine;Landroid/content/Context;Lcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/audio/AudioAnalysisResult;Lcom/cgs/atvobserver/sensor/MotionSensorData;Lcom/cgs/atvobserver/data/model/WeatherCondition;Lcom/cgs/atvobserver/data/model/VehicleType;ZFIILjava/lang/Object;)V
    .locals 12

    .line 110
    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    .line 116
    sget-object v1, Lcom/cgs/atvobserver/data/model/VehicleType;->ATV:Lcom/cgs/atvobserver/data/model/VehicleType;

    move-object v8, v1

    goto :goto_0

    .line 110
    :cond_0
    move-object/from16 v8, p6

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    .line 117
    const/4 v1, 0x0

    move v9, v1

    goto :goto_1

    .line 110
    :cond_1
    move/from16 v9, p7

    :goto_1
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_2

    .line 118
    const/high16 v1, 0x43fa0000    # 500.0f

    move v10, v1

    goto :goto_2

    .line 110
    :cond_2
    move/from16 v10, p8

    :goto_2
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_3

    .line 119
    const/16 v0, 0x140

    move v11, v0

    goto :goto_3

    .line 110
    :cond_3
    move/from16 v11, p9

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v11}, Lcom/cgs/atvobserver/ai/ObserverAiEngine;->processTelemetryFrame(Landroid/content/Context;Lcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/audio/AudioAnalysisResult;Lcom/cgs/atvobserver/sensor/MotionSensorData;Lcom/cgs/atvobserver/data/model/WeatherCondition;Lcom/cgs/atvobserver/data/model/VehicleType;ZFI)V

    return-void
.end method

.method private final triggerZRamDiskOffload()V
    .locals 1

    .line 282
    nop

    .line 283
    :try_start_0
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    :goto_0
    return-void
.end method


# virtual methods
.method public final getAiOutput()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/cgs/atvobserver/ai/ObserverAiOutput;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/cgs/atvobserver/ai/ObserverAiEngine;->aiOutput:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final processTelemetryFrame(Landroid/content/Context;Lcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/audio/AudioAnalysisResult;Lcom/cgs/atvobserver/sensor/MotionSensorData;Lcom/cgs/atvobserver/data/model/WeatherCondition;Lcom/cgs/atvobserver/data/model/VehicleType;ZFI)V
    .locals 71
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gpsData"    # Lcom/cgs/atvobserver/location/GpsData;
    .param p3, "audioData"    # Lcom/cgs/atvobserver/audio/AudioAnalysisResult;
    .param p4, "motionData"    # Lcom/cgs/atvobserver/sensor/MotionSensorData;
    .param p5, "weatherCondition"    # Lcom/cgs/atvobserver/data/model/WeatherCondition;
    .param p6, "activeVehicle"    # Lcom/cgs/atvobserver/data/model/VehicleType;
    .param p7, "isTestTrackMode"    # Z
    .param p8, "ambientLux"    # F
    .param p9, "ramUsageMb"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v14, p9

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "gpsData"

    move-object/from16 v10, p2

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "audioData"

    move-object/from16 v8, p3

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "motionData"

    move-object/from16 v7, p4

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "weatherCondition"

    move-object/from16 v6, p5

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "activeVehicle"

    move-object/from16 v5, p6

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    sget-object v2, Lcom/cgs/atvobserver/domain/DeviceProfiler;->INSTANCE:Lcom/cgs/atvobserver/domain/DeviceProfiler;

    invoke-virtual {v2, v1}, Lcom/cgs/atvobserver/domain/DeviceProfiler;->getDeviceProfile(Landroid/content/Context;)Lcom/cgs/atvobserver/domain/DeviceProfileConfig;

    move-result-object v44

    .line 122
    .local v44, "deviceProfile":Lcom/cgs/atvobserver/domain/DeviceProfileConfig;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 123
    .local v11, "now":J
    iget-wide v2, v0, Lcom/cgs/atvobserver/ai/ObserverAiEngine;->lastValidTimeMs:J

    sub-long v2, v11, v2

    long-to-double v2, v2

    const-wide v15, 0x408f400000000000L    # 1000.0

    div-double v45, v2, v15

    .line 125
    .local v45, "dtSec":D
    invoke-virtual/range {p5 .. p5}, Lcom/cgs/atvobserver/data/model/WeatherCondition;->isWindy()Z

    move-result v2

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    if-eqz v2, :cond_0

    const-wide v2, 0x3fee666666666666L    # 0.95

    goto :goto_0

    :cond_0
    move-wide/from16 v2, v17

    :goto_0
    move-wide/from16 v47, v2

    .line 128
    .local v47, "weatherFactor":D
    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v2, p8, v2

    if-gez v2, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    .line 130
    .local v13, "isPocketed":Z
    :goto_1
    const/4 v2, 0x0

    .line 131
    .local v2, "zRamActive":Z
    nop

    .line 132
    invoke-virtual/range {v44 .. v44}, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->getMaxAllowedRamMb()I

    move-result v3

    if-le v14, v3, :cond_2

    .line 133
    const/4 v2, 0x1

    .line 134
    invoke-direct/range {p0 .. p0}, Lcom/cgs/atvobserver/ai/ObserverAiEngine;->triggerZRamDiskOffload()V

    .line 135
    sget-object v3, Lcom/cgs/atvobserver/ai/AppOperatingMode;->SAFE_MODE:Lcom/cgs/atvobserver/ai/AppOperatingMode;

    move/from16 v49, v2

    goto :goto_2

    .line 137
    :cond_2
    invoke-virtual/range {v44 .. v44}, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->getMaxAllowedRamMb()I

    move-result v3

    add-int/lit16 v3, v3, -0x96

    if-le v14, v3, :cond_3

    sget-object v3, Lcom/cgs/atvobserver/ai/AppOperatingMode;->BASIC_MODE:Lcom/cgs/atvobserver/ai/AppOperatingMode;

    move/from16 v49, v2

    goto :goto_2

    .line 138
    :cond_3
    sget-object v3, Lcom/cgs/atvobserver/ai/AppOperatingMode;->MAXIMUM_MODE:Lcom/cgs/atvobserver/ai/AppOperatingMode;

    move/from16 v49, v2

    .line 131
    .end local v2    # "zRamActive":Z
    .local v49, "zRamActive":Z
    :goto_2
    nop

    .line 141
    .local v3, "activeMode":Lcom/cgs/atvobserver/ai/AppOperatingMode;
    invoke-virtual/range {p3 .. p3}, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->getEstimatedRpm()I

    move-result v2

    .line 142
    .local v2, "fusedRpm":I
    invoke-virtual/range {p3 .. p3}, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->getConfidence()Ljava/lang/String;

    move-result-object v9

    const-string v4, "VALID"

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x5c

    goto :goto_3

    :cond_4
    const/16 v4, 0x2d

    .line 143
    .local v4, "rpmConfPct":I
    :goto_3
    const/4 v9, 0x0

    .line 145
    .local v9, "speechDetected":Z
    invoke-virtual/range {p3 .. p3}, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->isEngineRunning()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->getRpmVariation()I

    move-result v15

    const/16 v1, 0xc8

    if-le v15, v1, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/cgs/atvobserver/location/GpsData;->getCurrentSpeedKmh()D

    move-result-wide v15

    const-wide/high16 v23, 0x4014000000000000L    # 5.0

    cmpg-double v1, v15, v23

    if-gez v1, :cond_5

    .line 146
    const/4 v9, 0x1

    .line 147
    const/16 v4, 0x23

    .line 148
    const/16 v2, 0x564

    move v1, v2

    move/from16 v50, v4

    move/from16 v51, v9

    goto :goto_4

    .line 151
    :cond_5
    move v1, v2

    move/from16 v50, v4

    move/from16 v51, v9

    .end local v2    # "fusedRpm":I
    .end local v4    # "rpmConfPct":I
    .end local v9    # "speechDetected":Z
    .local v1, "fusedRpm":I
    .local v50, "rpmConfPct":I
    .local v51, "speechDetected":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/cgs/atvobserver/location/GpsData;->getCurrentSpeedKmh()D

    move-result-wide v15

    .line 152
    .local v15, "fusedSpeed":D
    invoke-virtual/range {p2 .. p2}, Lcom/cgs/atvobserver/location/GpsData;->isGpsAvailable()Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x5f

    goto :goto_5

    :cond_6
    const/16 v2, 0x1e

    .line 153
    .local v2, "speedConfPct":I
    :goto_5
    const/4 v4, 0x0

    .line 155
    .local v4, "isRepaired":Z
    invoke-virtual/range {p2 .. p2}, Lcom/cgs/atvobserver/location/GpsData;->isGpsAvailable()Z

    move-result v9

    move/from16 v23, v2

    .end local v2    # "speedConfPct":I
    .local v23, "speedConfPct":I
    const-wide/16 v24, 0x0

    if-eqz v9, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/cgs/atvobserver/location/GpsData;->getAccuracyMeters()F

    move-result v9

    const/high16 v27, 0x41f00000    # 30.0f

    cmpl-float v9, v9, v27

    if-lez v9, :cond_7

    move-object/from16 v52, v3

    goto :goto_6

    .line 162
    :cond_7
    move-object/from16 v52, v3

    .end local v3    # "activeMode":Lcom/cgs/atvobserver/ai/AppOperatingMode;
    .local v52, "activeMode":Lcom/cgs/atvobserver/ai/AppOperatingMode;
    invoke-virtual/range {p2 .. p2}, Lcom/cgs/atvobserver/location/GpsData;->getCurrentSpeedKmh()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/cgs/atvobserver/ai/ObserverAiEngine;->lastValidSpeedKmh:D

    .line 163
    iput-wide v11, v0, Lcom/cgs/atvobserver/ai/ObserverAiEngine;->lastValidTimeMs:J

    move/from16 v21, v4

    goto :goto_8

    .line 155
    .end local v52    # "activeMode":Lcom/cgs/atvobserver/ai/AppOperatingMode;
    .restart local v3    # "activeMode":Lcom/cgs/atvobserver/ai/AppOperatingMode;
    :cond_8
    move-object/from16 v52, v3

    .line 156
    .end local v3    # "activeMode":Lcom/cgs/atvobserver/ai/AppOperatingMode;
    .restart local v52    # "activeMode":Lcom/cgs/atvobserver/ai/AppOperatingMode;
    :goto_6
    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v2, v2, v45

    if-gtz v2, :cond_9

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpg-double v2, v45, v2

    if-gtz v2, :cond_9

    const/4 v2, 0x1

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    :goto_7
    if-eqz v2, :cond_a

    iget-wide v2, v0, Lcom/cgs/atvobserver/ai/ObserverAiEngine;->lastValidSpeedKmh:D

    cmpl-double v2, v2, v24

    if-lez v2, :cond_a

    .line 157
    iget-wide v2, v0, Lcom/cgs/atvobserver/ai/ObserverAiEngine;->lastValidSpeedKmh:D

    const-wide v21, 0x3fee666666666666L    # 0.95

    mul-double v15, v2, v21

    .line 158
    move/from16 v21, v4

    const/16 v2, 0xa

    .end local v4    # "isRepaired":Z
    .local v21, "isRepaired":Z
    int-to-double v3, v2

    mul-double v3, v3, v45

    double-to-int v2, v3

    rsub-int/lit8 v2, v2, 0x50

    const/16 v3, 0xf

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 159
    .end local v23    # "speedConfPct":I
    .restart local v2    # "speedConfPct":I
    const/4 v4, 0x1

    move/from16 v53, v2

    move/from16 v54, v4

    move-wide/from16 v55, v15

    .end local v21    # "isRepaired":Z
    .restart local v4    # "isRepaired":Z
    goto :goto_9

    .line 156
    .end local v2    # "speedConfPct":I
    .restart local v23    # "speedConfPct":I
    :cond_a
    move/from16 v21, v4

    .line 166
    :goto_8
    move-wide/from16 v55, v15

    move/from16 v54, v21

    move/from16 v53, v23

    .end local v4    # "isRepaired":Z
    .end local v15    # "fusedSpeed":D
    .end local v23    # "speedConfPct":I
    .local v53, "speedConfPct":I
    .local v54, "isRepaired":Z
    .local v55, "fusedSpeed":D
    :goto_9
    sget-object v2, Lcom/cgs/atvobserver/ai/ObserverAiEngine$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {p6 .. p6}, Lcom/cgs/atvobserver/data/model/VehicleType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x4

    const/4 v15, 0x3

    packed-switch v2, :pswitch_data_0

    .line 170
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v2, Lkotlin/Pair;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v9, Lcom/cgs/atvobserver/ai/ClutchType;->CENTRIFUGAL:Lcom/cgs/atvobserver/ai/ClutchType;

    invoke-direct {v2, v4, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    .line 169
    :pswitch_1
    new-instance v2, Lkotlin/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v9, Lcom/cgs/atvobserver/ai/ClutchType;->CENTRIFUGAL:Lcom/cgs/atvobserver/ai/ClutchType;

    invoke-direct {v2, v4, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    .line 168
    :pswitch_2
    new-instance v2, Lkotlin/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v9, Lcom/cgs/atvobserver/ai/ClutchType;->MANUAL:Lcom/cgs/atvobserver/ai/ClutchType;

    invoke-direct {v2, v4, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    .line 167
    :pswitch_3
    new-instance v2, Lkotlin/Pair;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v9, Lcom/cgs/atvobserver/ai/ClutchType;->CENTRIFUGAL:Lcom/cgs/atvobserver/ai/ClutchType;

    invoke-direct {v2, v4, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    :goto_a
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v9

    .local v9, "maxGears":I
    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cgs/atvobserver/ai/ClutchType;

    .line 174
    .local v2, "clutchType":Lcom/cgs/atvobserver/ai/ClutchType;
    sget-object v4, Lcom/cgs/atvobserver/ai/ClutchType;->CENTRIFUGAL:Lcom/cgs/atvobserver/ai/ClutchType;

    const-wide/high16 v21, 0x402e000000000000L    # 15.0

    if-ne v2, v4, :cond_c

    .line 175
    const-wide/high16 v27, 0x4010000000000000L    # 4.0

    cmpg-double v4, v27, v55

    if-gtz v4, :cond_b

    cmpg-double v4, v55, v21

    if-gtz v4, :cond_b

    const/4 v4, 0x1

    goto :goto_b

    :cond_b
    const/4 v4, 0x0

    :goto_b
    if-eqz v4, :cond_c

    .line 176
    const/16 v4, 0xc80

    if-le v1, v4, :cond_c

    const/4 v4, 0x1

    goto :goto_c

    :cond_c
    const/4 v4, 0x0

    .line 174
    :goto_c
    move/from16 v57, v4

    .line 179
    .local v57, "isCentrifugalSlipping":Z
    const/16 v4, 0xe10

    if-le v1, v4, :cond_d

    const-wide/high16 v27, 0x4018000000000000L    # 6.0

    cmpg-double v4, v55, v27

    if-gez v4, :cond_d

    invoke-virtual/range {p4 .. p4}, Lcom/cgs/atvobserver/sensor/MotionSensorData;->getVibrationIntensity()D

    move-result-wide v27

    const-wide/high16 v29, 0x3fe0000000000000L    # 0.5

    cmpl-double v4, v27, v29

    if-lez v4, :cond_d

    const/4 v4, 0x1

    goto :goto_d

    :cond_d
    const/4 v4, 0x0

    :goto_d
    move-wide/from16 v58, v11

    .end local v11    # "now":J
    .local v58, "now":J
    move v11, v4

    .line 182
    .local v11, "isWheelSpin":Z
    invoke-virtual/range {p4 .. p4}, Lcom/cgs/atvobserver/sensor/MotionSensorData;->getVibrationIntensity()D

    move-result-wide v27

    const-wide v29, 0x3fd3333333333333L    # 0.3

    cmpg-double v4, v29, v27

    if-gtz v4, :cond_e

    const-wide v29, 0x3fe3333333333333L    # 0.6

    cmpg-double v4, v27, v29

    if-gtz v4, :cond_e

    const/4 v4, 0x1

    goto :goto_e

    :cond_e
    const/4 v4, 0x0

    :goto_e
    if-eqz v4, :cond_f

    const-wide/high16 v27, 0x4034000000000000L    # 20.0

    cmpl-double v4, v55, v27

    if-lez v4, :cond_f

    const/16 v4, 0x1194

    if-le v1, v4, :cond_f

    const/4 v12, 0x1

    goto :goto_f

    :cond_f
    const/4 v12, 0x0

    .line 185
    .local v12, "isTireDrag":Z
    :goto_f
    const/16 v4, 0x1f4

    if-le v1, v4, :cond_10

    int-to-double v4, v1

    div-double v24, v55, v4

    :cond_10
    move-wide/from16 v60, v24

    .line 186
    .local v60, "speedRpmRatio":D
    nop

    .line 187
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    cmpg-double v24, v55, v4

    const/16 v25, 0x2

    if-gez v24, :cond_11

    const/4 v3, 0x1

    goto :goto_11

    .line 188
    :cond_11
    sget-object v15, Lcom/cgs/atvobserver/ai/ClutchType;->MANUAL:Lcom/cgs/atvobserver/ai/ClutchType;

    if-ne v2, v15, :cond_13

    const-wide/high16 v27, 0x4020000000000000L    # 8.0

    cmpg-double v15, v27, v55

    if-gtz v15, :cond_12

    const-wide/high16 v27, 0x402c000000000000L    # 14.0

    cmpg-double v15, v55, v27

    if-gtz v15, :cond_12

    const/4 v15, 0x1

    goto :goto_10

    :cond_12
    const/4 v15, 0x0

    :goto_10
    if-eqz v15, :cond_13

    const/16 v15, 0x9c4

    if-ge v1, v15, :cond_13

    goto :goto_11

    .line 189
    :cond_13
    if-eqz v57, :cond_14

    move/from16 v3, v25

    goto :goto_11

    .line 190
    :cond_14
    const-wide v27, 0x3f789374bc6a7efaL    # 0.006

    cmpg-double v15, v60, v27

    if-gez v15, :cond_15

    const/4 v3, 0x1

    goto :goto_11

    .line 191
    :cond_15
    const-wide v27, 0x3f86872b020c49baL    # 0.011

    cmpg-double v15, v60, v27

    if-gez v15, :cond_16

    move/from16 v3, v25

    goto :goto_11

    .line 192
    :cond_16
    const-wide v27, 0x3f90624dd2f1a9fcL    # 0.016

    cmpg-double v15, v60, v27

    if-gez v15, :cond_17

    const/4 v3, 0x3

    goto :goto_11

    .line 193
    :cond_17
    if-lt v9, v3, :cond_18

    goto :goto_11

    :cond_18
    const/4 v3, 0x3

    .line 194
    :goto_11
    const/4 v15, 0x1

    invoke-static {v3, v15, v9}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v38

    .line 186
    nop

    .line 197
    .local v38, "estimatedGear":I
    nop

    .line 198
    invoke-virtual/range {p4 .. p4}, Lcom/cgs/atvobserver/sensor/MotionSensorData;->getVibrationIntensity()D

    move-result-wide v27

    const-wide v29, 0x3fe999999999999aL    # 0.8

    cmpl-double v3, v27, v29

    if-lez v3, :cond_19

    sget-object v3, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->OFF_ROAD:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    goto :goto_12

    .line 199
    :cond_19
    invoke-virtual/range {p4 .. p4}, Lcom/cgs/atvobserver/sensor/MotionSensorData;->getVibrationIntensity()D

    move-result-wide v27

    const-wide v29, 0x3fd999999999999aL    # 0.4

    cmpl-double v3, v27, v29

    if-lez v3, :cond_1a

    sget-object v3, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->GRAVEL:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    goto :goto_12

    .line 200
    :cond_1a
    sget-object v3, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->ASPHALT:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    .line 197
    :goto_12
    nop

    .line 203
    .local v3, "rawSurface":Lcom/cgs/atvobserver/ai/RoadSurfaceClass;
    const/16 v20, 0x0

    .line 204
    .local v20, "terrainCalibrated":Z
    if-eqz p7, :cond_1b

    .line 205
    sget-object v15, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->DIRT:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    if-eq v3, v15, :cond_1b

    .line 206
    const/16 v20, 0x1

    .line 207
    sget-object v3, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->DIRT:Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    move-object/from16 v62, v3

    move/from16 v63, v20

    goto :goto_13

    .line 212
    :cond_1b
    move-object/from16 v62, v3

    move/from16 v63, v20

    .end local v3    # "rawSurface":Lcom/cgs/atvobserver/ai/RoadSurfaceClass;
    .end local v20    # "terrainCalibrated":Z
    .local v62, "rawSurface":Lcom/cgs/atvobserver/ai/RoadSurfaceClass;
    .local v63, "terrainCalibrated":Z
    :goto_13
    sget-object v34, Lcom/cgs/atvobserver/ai/SoftwareLoadSource;->INSTANCE:Lcom/cgs/atvobserver/ai/SoftwareLoadSource;

    .line 213
    nop

    .line 214
    nop

    .line 215
    nop

    .line 216
    nop

    .line 217
    nop

    .line 218
    invoke-virtual/range {p3 .. p3}, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->getAudioRmsDb()D

    move-result-wide v41

    .line 219
    nop

    .line 212
    move/from16 v35, v1

    move-wide/from16 v36, v55

    move-object/from16 v39, v62

    move-object/from16 v40, p4

    move-object/from16 v43, p6

    invoke-virtual/range {v34 .. v43}, Lcom/cgs/atvobserver/ai/SoftwareLoadSource;->calculatePreciseLoad(IDILcom/cgs/atvobserver/ai/RoadSurfaceClass;Lcom/cgs/atvobserver/sensor/MotionSensorData;DLcom/cgs/atvobserver/data/model/VehicleType;)Lkotlin/Pair;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v34, v3

    check-cast v34, Lcom/cgs/atvobserver/ai/EngineLoadState;

    .line 223
    .local v34, "calculatedLoadState":Lcom/cgs/atvobserver/ai/EngineLoadState;
    nop

    .line 224
    invoke-virtual/range {p4 .. p4}, Lcom/cgs/atvobserver/sensor/MotionSensorData;->getCrashOrFallDetected()Z

    move-result v3

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    if-eqz v3, :cond_1c

    sget-object v3, Lcom/cgs/atvobserver/ai/RideStateClass;->STOPPED:Lcom/cgs/atvobserver/ai/RideStateClass;

    move-object v4, v3

    goto/16 :goto_17

    .line 225
    :cond_1c
    cmpg-double v3, v55, v28

    if-gez v3, :cond_1d

    const/16 v3, 0x1f4

    if-ge v1, v3, :cond_1d

    sget-object v3, Lcom/cgs/atvobserver/ai/RideStateClass;->STOPPED:Lcom/cgs/atvobserver/ai/RideStateClass;

    move-object v4, v3

    goto/16 :goto_17

    .line 226
    :cond_1d
    cmpg-double v3, v55, v4

    if-gez v3, :cond_1f

    const/16 v3, 0x320

    if-gt v3, v1, :cond_1e

    const/16 v3, 0x709

    if-ge v1, v3, :cond_1e

    const/4 v3, 0x1

    goto :goto_14

    :cond_1e
    const/4 v3, 0x0

    :goto_14
    if-eqz v3, :cond_1f

    sget-object v3, Lcom/cgs/atvobserver/ai/RideStateClass;->IDLE:Lcom/cgs/atvobserver/ai/RideStateClass;

    move-object v4, v3

    goto :goto_17

    .line 227
    :cond_1f
    invoke-virtual/range {p4 .. p4}, Lcom/cgs/atvobserver/sensor/MotionSensorData;->getHardLaunchDetected()Z

    move-result v3

    if-nez v3, :cond_26

    cmpg-double v3, v4, v55

    if-gtz v3, :cond_20

    cmpg-double v3, v55, v21

    if-gtz v3, :cond_20

    const/4 v4, 0x1

    goto :goto_15

    :cond_20
    const/4 v4, 0x0

    :goto_15
    if-eqz v4, :cond_21

    const/16 v3, 0x898

    if-le v1, v3, :cond_21

    goto :goto_16

    .line 228
    :cond_21
    invoke-virtual/range {p4 .. p4}, Lcom/cgs/atvobserver/sensor/MotionSensorData;->getHardBrakingDetected()Z

    move-result v3

    if-eqz v3, :cond_22

    const/16 v3, 0xaf0

    if-le v1, v3, :cond_22

    sget-object v3, Lcom/cgs/atvobserver/ai/RideStateClass;->ENGINE_BRAKING:Lcom/cgs/atvobserver/ai/RideStateClass;

    move-object v4, v3

    goto :goto_17

    .line 229
    :cond_22
    invoke-virtual/range {p4 .. p4}, Lcom/cgs/atvobserver/sensor/MotionSensorData;->getHardBrakingDetected()Z

    move-result v3

    if-eqz v3, :cond_23

    sget-object v3, Lcom/cgs/atvobserver/ai/RideStateClass;->MECHANICAL_BRAKING:Lcom/cgs/atvobserver/ai/RideStateClass;

    move-object v4, v3

    goto :goto_17

    .line 230
    :cond_23
    cmpl-double v3, v55, v21

    if-lez v3, :cond_24

    const/16 v3, 0xdac

    if-le v1, v3, :cond_24

    sget-object v3, Lcom/cgs/atvobserver/ai/RideStateClass;->ACCELERATING:Lcom/cgs/atvobserver/ai/RideStateClass;

    move-object v4, v3

    goto :goto_17

    .line 231
    :cond_24
    cmpl-double v3, v55, v21

    if-lez v3, :cond_25

    add-int/lit16 v3, v1, -0xbb8

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x258

    if-ge v3, v4, :cond_25

    sget-object v3, Lcom/cgs/atvobserver/ai/RideStateClass;->CRUISING:Lcom/cgs/atvobserver/ai/RideStateClass;

    move-object v4, v3

    goto :goto_17

    .line 232
    :cond_25
    sget-object v3, Lcom/cgs/atvobserver/ai/RideStateClass;->CRUISING:Lcom/cgs/atvobserver/ai/RideStateClass;

    move-object v4, v3

    goto :goto_17

    .line 227
    :cond_26
    :goto_16
    sget-object v3, Lcom/cgs/atvobserver/ai/RideStateClass;->LAUNCHING:Lcom/cgs/atvobserver/ai/RideStateClass;

    move-object v4, v3

    .line 223
    :goto_17
    nop

    .line 235
    .local v4, "rideState":Lcom/cgs/atvobserver/ai/RideStateClass;
    const-wide/high16 v30, 0x404e000000000000L    # 60.0

    div-double v64, v55, v30

    const-wide/16 v66, 0x0

    const-wide/high16 v68, 0x3ff0000000000000L    # 1.0

    move v3, v9

    .end local v9    # "maxGears":I
    .local v3, "maxGears":I
    invoke-static/range {v64 .. v69}, Lkotlin/ranges/RangesKt;->coerceIn(DDD)D

    move-result-wide v9

    .line 236
    .local v9, "speedFactor":D
    invoke-virtual/range {p4 .. p4}, Lcom/cgs/atvobserver/sensor/MotionSensorData;->getGForceMagnitude()D

    move-result-wide v30

    sub-double v30, v30, v17

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    const-wide/high16 v30, 0x3ff8000000000000L    # 1.5

    div-double v64, v17, v30

    move v5, v3

    move-object/from16 v35, v4

    .end local v3    # "maxGears":I
    .end local v4    # "rideState":Lcom/cgs/atvobserver/ai/RideStateClass;
    .local v5, "maxGears":I
    .local v35, "rideState":Lcom/cgs/atvobserver/ai/RideStateClass;
    invoke-static/range {v64 .. v69}, Lkotlin/ranges/RangesKt;->coerceIn(DDD)D

    move-result-wide v3

    .line 237
    .local v3, "gForceFactor":D
    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v36

    .line 238
    .local v36, "combinedIntensity":D
    const-wide v17, 0x4046800000000000L    # 45.0

    mul-double v17, v17, v36

    move-object v15, v2

    move-wide/from16 v39, v3

    .end local v2    # "clutchType":Lcom/cgs/atvobserver/ai/ClutchType;
    .end local v3    # "gForceFactor":D
    .local v15, "clutchType":Lcom/cgs/atvobserver/ai/ClutchType;
    .local v39, "gForceFactor":D
    add-double v2, v17, v21

    double-to-int v2, v2

    const/16 v3, 0x3c

    const/16 v4, 0xf

    invoke-static {v2, v4, v3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v41

    .line 240
    .local v41, "linearFps":I
    invoke-virtual/range {v44 .. v44}, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->getTier()Lcom/cgs/atvobserver/domain/DevicePerformanceTier;

    move-result-object v2

    sget-object v3, Lcom/cgs/atvobserver/ai/ObserverAiEngine$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v2}, Lcom/cgs/atvobserver/domain/DevicePerformanceTier;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_1

    .line 245
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_4
    const/4 v2, 0x0

    goto :goto_18

    .line 244
    :pswitch_5
    const/4 v2, 0x3

    goto :goto_18

    .line 243
    :pswitch_6
    const/4 v2, 0x6

    goto :goto_18

    .line 242
    :pswitch_7
    const/16 v2, 0x8

    goto :goto_18

    .line 241
    :pswitch_8
    const/16 v2, 0xa

    .line 240
    :goto_18
    move v3, v2

    .line 248
    .local v3, "tierBonus":I
    add-int v2, v50, v53

    div-int/lit8 v2, v2, 0x2

    move/from16 v17, v5

    .end local v5    # "maxGears":I
    .local v17, "maxGears":I
    int-to-double v4, v2

    mul-double v4, v4, v47

    int-to-double v6, v3

    add-double/2addr v4, v6

    double-to-int v2, v4

    const/16 v4, 0x64

    const/16 v5, 0xa

    invoke-static {v2, v5, v4}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v42

    .local v42, "overallConfidence":I
    move/from16 v22, v42

    .line 250
    iget-object v4, v0, Lcom/cgs/atvobserver/ai/ObserverAiEngine;->_aiOutput:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v7, Lcom/cgs/atvobserver/ai/ObserverAiOutput;

    move-object/from16 v43, v15

    .end local v15    # "clutchType":Lcom/cgs/atvobserver/ai/ClutchType;
    .local v43, "clutchType":Lcom/cgs/atvobserver/ai/ClutchType;
    move-object v2, v7

    .line 251
    nop

    .line 252
    nop

    .line 253
    nop

    .line 254
    nop

    .line 255
    nop

    .line 256
    nop

    .line 257
    nop

    .line 258
    nop

    .line 259
    nop

    .line 260
    nop

    .line 261
    nop

    .line 262
    nop

    .line 263
    invoke-virtual/range {p4 .. p4}, Lcom/cgs/atvobserver/sensor/MotionSensorData;->getRawX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    mul-double v64, v5, v28

    const-wide/16 v66, 0x0

    const-wide/high16 v68, 0x403e000000000000L    # 30.0

    invoke-static/range {v64 .. v69}, Lkotlin/ranges/RangesKt;->coerceIn(DDD)D

    move-result-wide v15

    .line 264
    nop

    .line 265
    nop

    .line 266
    nop

    .line 267
    nop

    .line 268
    nop

    .line 269
    invoke-virtual/range {p4 .. p4}, Lcom/cgs/atvobserver/sensor/MotionSensorData;->getGForceMagnitude()D

    move-result-wide v23

    .line 270
    invoke-virtual/range {p4 .. p4}, Lcom/cgs/atvobserver/sensor/MotionSensorData;->getVibrationIntensity()D

    move-result-wide v25

    .line 271
    nop

    .line 272
    nop

    .line 273
    nop

    .line 274
    nop

    .line 275
    invoke-virtual/range {p4 .. p4}, Lcom/cgs/atvobserver/sensor/MotionSensorData;->getCrashOrFallDetected()Z

    move-result v31

    .line 276
    nop

    .line 277
    invoke-virtual/range {v44 .. v44}, Lcom/cgs/atvobserver/domain/DeviceProfileConfig;->getProfileName()Ljava/lang/String;

    move-result-object v33

    .line 250
    const/16 v5, 0x55

    move-wide/from16 v65, v9

    move/from16 v64, v17

    .end local v9    # "speedFactor":D
    .end local v17    # "maxGears":I
    .local v64, "maxGears":I
    .local v65, "speedFactor":D
    move v9, v5

    move-object/from16 v5, v62

    move-object/from16 v6, v34

    move-object v10, v7

    move-object/from16 v7, v43

    move/from16 v8, v38

    move-object/from16 v70, v10

    move/from16 v10, v57

    move/from16 v14, v63

    move/from16 v17, v1

    move/from16 v18, v50

    move-wide/from16 v19, v55

    move/from16 v21, v53

    move/from16 v27, v41

    move/from16 v28, v51

    move/from16 v29, v54

    move/from16 v30, v49

    move/from16 v32, p9

    move-object v0, v4

    move-object/from16 v4, v35

    move/from16 v35, v3

    move-object/from16 v3, v52

    .end local v52    # "activeMode":Lcom/cgs/atvobserver/ai/AppOperatingMode;
    .local v3, "activeMode":Lcom/cgs/atvobserver/ai/AppOperatingMode;
    .restart local v4    # "rideState":Lcom/cgs/atvobserver/ai/RideStateClass;
    .local v35, "tierBonus":I
    invoke-direct/range {v2 .. v33}, Lcom/cgs/atvobserver/ai/ObserverAiOutput;-><init>(Lcom/cgs/atvobserver/ai/AppOperatingMode;Lcom/cgs/atvobserver/ai/RideStateClass;Lcom/cgs/atvobserver/ai/RoadSurfaceClass;Lcom/cgs/atvobserver/ai/EngineLoadState;Lcom/cgs/atvobserver/ai/ClutchType;IIZZZZZDIIDIIDDIZZZZILjava/lang/String;)V

    move-object/from16 v2, v70

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 279
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
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
    .end packed-switch
.end method
