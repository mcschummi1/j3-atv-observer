.class public final Lcom/cgs/atvobserver/sensor/MotionSensorManager;
.super Ljava/lang/Object;
.source "MotionSensorManager.kt"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0013\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001a\u001a\u00020\u000bH\u0016J\u0012\u0010\u001b\u001a\u00020\u00182\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u000e\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020\u000bJ\u0006\u0010 \u001a\u00020\u0018J\u0006\u0010!\u001a\u00020\u0018R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/cgs/atvobserver/sensor/MotionSensorManager;",
        "Landroid/hardware/SensorEventListener;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "_motionData",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/cgs/atvobserver/sensor/MotionSensorData;",
        "accelerometer",
        "Landroid/hardware/Sensor;",
        "consecutiveHighGs",
        "",
        "lastGForce",
        "",
        "motionData",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getMotionData",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "sensorManager",
        "Landroid/hardware/SensorManager;",
        "vibrationBuffer",
        "",
        "vibrationIdx",
        "onAccuracyChanged",
        "",
        "sensor",
        "accuracy",
        "onSensorChanged",
        "event",
        "Landroid/hardware/SensorEvent;",
        "setAdaptiveTargetFps",
        "fps",
        "startListening",
        "stopListening",
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
.field private final _motionData:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/cgs/atvobserver/sensor/MotionSensorData;",
            ">;"
        }
    .end annotation
.end field

.field private final accelerometer:Landroid/hardware/Sensor;

.field private consecutiveHighGs:I

.field private lastGForce:D

.field private final motionData:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/cgs/atvobserver/sensor/MotionSensorData;",
            ">;"
        }
    .end annotation
.end field

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private vibrationBuffer:[D

.field private vibrationIdx:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lcom/cgs/atvobserver/sensor/MotionSensorManager;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.hardware.SensorManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, v0, Lcom/cgs/atvobserver/sensor/MotionSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    .line 34
    iget-object v2, v0, Lcom/cgs/atvobserver/sensor/MotionSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, v0, Lcom/cgs/atvobserver/sensor/MotionSensorManager;->accelerometer:Landroid/hardware/Sensor;

    .line 36
    new-instance v2, Lcom/cgs/atvobserver/sensor/MotionSensorData;

    const/16 v16, 0x3ff

    const/16 v17, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v17}, Lcom/cgs/atvobserver/sensor/MotionSensorData;-><init>(DFFFDZZZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/cgs/atvobserver/sensor/MotionSensorManager;->_motionData:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 37
    iget-object v2, v0, Lcom/cgs/atvobserver/sensor/MotionSensorManager;->_motionData:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/cgs/atvobserver/sensor/MotionSensorManager;->motionData:Lkotlinx/coroutines/flow/StateFlow;

    .line 39
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v0, Lcom/cgs/atvobserver/sensor/MotionSensorManager;->lastGForce:D

    .line 40
    const/16 v2, 0xa

    new-array v2, v2, [D

    iput-object v2, v0, Lcom/cgs/atvobserver/sensor/MotionSensorManager;->vibrationBuffer:[D

    .line 31
    return-void
.end method


# virtual methods
.method public final getMotionData()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/cgs/atvobserver/sensor/MotionSensorData;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/cgs/atvobserver/sensor/MotionSensorManager;->motionData:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 115
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 29
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 74
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_9

    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto/16 :goto_8

    .line 76
    :cond_0
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v2, v2, v4

    .line 77
    .local v2, "x":F
    iget-object v5, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v11, v5, v3

    .line 78
    .local v11, "y":F
    iget-object v5, v1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x2

    aget v18, v5, v6

    .line 80
    .local v18, "z":F
    mul-float v5, v2, v2

    mul-float v6, v11, v11

    add-float/2addr v5, v6

    mul-float v6, v18, v18

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v19

    .line 81
    .local v19, "norm":D
    const-wide v5, 0x40239d013a92a305L    # 9.80665

    div-double v9, v19, v5

    .line 83
    .local v9, "gForce":D
    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    cmpl-double v5, v9, v5

    if-gez v5, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x41b00000    # 22.0f

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_2

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    goto :goto_0

    :cond_1
    move v5, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v3

    :goto_1
    move/from16 v21, v5

    .line 84
    .local v21, "isRawImpact":Z
    if-eqz v21, :cond_3

    .line 85
    iget v5, v0, Lcom/cgs/atvobserver/sensor/MotionSensorManager;->consecutiveHighGs:I

    add-int/2addr v5, v3

    iput v5, v0, Lcom/cgs/atvobserver/sensor/MotionSensorManager;->consecutiveHighGs:I

    goto :goto_2

    .line 87
    :cond_3
    iget v5, v0, Lcom/cgs/atvobserver/sensor/MotionSensorManager;->consecutiveHighGs:I

    sub-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Lcom/cgs/atvobserver/sensor/MotionSensorManager;->consecutiveHighGs:I

    .line 89
    :goto_2
    iget v5, v0, Lcom/cgs/atvobserver/sensor/MotionSensorManager;->consecutiveHighGs:I

    const/4 v6, 0x3

    if-lt v5, v6, :cond_4

    move v15, v3

    goto :goto_3

    :cond_4
    move v15, v4

    .line 91
    .local v15, "isConfirmedCrash":Z
    :goto_3
    iget-wide v5, v0, Lcom/cgs/atvobserver/sensor/MotionSensorManager;->lastGForce:D

    sub-double v5, v9, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    .line 92
    .local v22, "deltaG":D
    iput-wide v9, v0, Lcom/cgs/atvobserver/sensor/MotionSensorManager;->lastGForce:D

    .line 94
    iget-object v5, v0, Lcom/cgs/atvobserver/sensor/MotionSensorManager;->vibrationBuffer:[D

    iget v6, v0, Lcom/cgs/atvobserver/sensor/MotionSensorManager;->vibrationIdx:I

    aput-wide v22, v5, v6

    .line 95
    iget v5, v0, Lcom/cgs/atvobserver/sensor/MotionSensorManager;->vibrationIdx:I

    add-int/2addr v5, v3

    iget-object v6, v0, Lcom/cgs/atvobserver/sensor/MotionSensorManager;->vibrationBuffer:[D

    array-length v6, v6

    rem-int/2addr v5, v6

    iput v5, v0, Lcom/cgs/atvobserver/sensor/MotionSensorManager;->vibrationIdx:I

    .line 96
    iget-object v5, v0, Lcom/cgs/atvobserver/sensor/MotionSensorManager;->vibrationBuffer:[D

    invoke-static {v5}, Lkotlin/collections/ArraysKt;->average([D)D

    move-result-wide v24

    .line 98
    .local v24, "avgVibration":D
    float-to-double v5, v11

    const-wide/high16 v7, -0x3fe8000000000000L    # -6.0

    cmpg-double v5, v5, v7

    const/4 v6, 0x0

    const-wide v7, 0x3ffccccccccccccdL    # 1.8

    if-ltz v5, :cond_6

    cmpl-double v5, v9, v7

    if-lez v5, :cond_5

    cmpg-float v5, v11, v6

    if-gez v5, :cond_5

    goto :goto_4

    :cond_5
    move v13, v4

    goto :goto_5

    :cond_6
    :goto_4
    move v13, v3

    .line 99
    .local v13, "isHardBraking":Z
    :goto_5
    float-to-double v3, v11

    const-wide/high16 v16, 0x4018000000000000L    # 6.0

    cmpl-double v3, v3, v16

    if-gtz v3, :cond_8

    cmpl-double v3, v9, v7

    if-lez v3, :cond_7

    cmpl-float v3, v11, v6

    if-lez v3, :cond_7

    goto :goto_6

    :cond_7
    const/4 v14, 0x0

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v14, 0x1

    .line 101
    .local v14, "isHardLaunch":Z
    :goto_7
    iget-object v3, v0, Lcom/cgs/atvobserver/sensor/MotionSensorManager;->_motionData:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v4, Lcom/cgs/atvobserver/sensor/MotionSensorData;

    .line 102
    nop

    .line 103
    nop

    .line 104
    nop

    .line 105
    nop

    .line 106
    nop

    .line 107
    nop

    .line 108
    nop

    .line 109
    nop

    .line 110
    nop

    .line 111
    nop

    .line 101
    const/16 v16, 0x1

    const/16 v17, 0x3c

    move-object v5, v4

    move-wide v6, v9

    move v8, v2

    move-wide/from16 v26, v9

    .end local v9    # "gForce":D
    .local v26, "gForce":D
    move v9, v11

    move/from16 v10, v18

    move/from16 v28, v11

    .end local v11    # "y":F
    .local v28, "y":F
    move-wide/from16 v11, v24

    invoke-direct/range {v5 .. v17}, Lcom/cgs/atvobserver/sensor/MotionSensorData;-><init>(DFFFDZZZZI)V

    invoke-interface {v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 113
    return-void

    .line 74
    .end local v2    # "x":F
    .end local v13    # "isHardBraking":Z
    .end local v14    # "isHardLaunch":Z
    .end local v15    # "isConfirmedCrash":Z
    .end local v18    # "z":F
    .end local v19    # "norm":D
    .end local v21    # "isRawImpact":Z
    .end local v22    # "deltaG":D
    .end local v24    # "avgVibration":D
    .end local v26    # "gForce":D
    .end local v28    # "y":F
    :cond_9
    :goto_8
    return-void
.end method

.method public final setAdaptiveTargetFps(I)V
    .locals 0
    .param p1, "fps"    # I

    .line 71
    return-void
.end method

.method public final startListening()V
    .locals 20

    .line 45
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/cgs/atvobserver/sensor/MotionSensorManager;->accelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    move-object v2, v0

    .local v2, "it":Landroid/hardware/Sensor;
    const/4 v3, 0x0

    .line 46
    .local v3, "$i$a$-let-MotionSensorManager$startListening$1":I
    nop

    .line 47
    :try_start_0
    iget-object v0, v1, Lcom/cgs/atvobserver/sensor/MotionSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    .line 48
    move-object v4, v1

    check-cast v4, Landroid/hardware/SensorEventListener;

    .line 49
    nop

    .line 50
    nop

    .line 47
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v2, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "_":Ljava/lang/SecurityException;
    iget-object v4, v1, Lcom/cgs/atvobserver/sensor/MotionSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    .line 54
    move-object v5, v1

    check-cast v5, Landroid/hardware/SensorEventListener;

    .line 55
    nop

    .line 56
    nop

    .line 53
    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 59
    .end local v0    # "_":Ljava/lang/SecurityException;
    :goto_0
    iget-object v0, v1, Lcom/cgs/atvobserver/sensor/MotionSensorManager;->_motionData:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v4, v1, Lcom/cgs/atvobserver/sensor/MotionSensorManager;->_motionData:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/cgs/atvobserver/sensor/MotionSensorData;

    const/16 v18, 0x2ff

    const/16 v19, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v5 .. v19}, Lcom/cgs/atvobserver/sensor/MotionSensorData;->copy$default(Lcom/cgs/atvobserver/sensor/MotionSensorData;DFFFDZZZZIILjava/lang/Object;)Lcom/cgs/atvobserver/sensor/MotionSensorData;

    move-result-object v4

    invoke-interface {v0, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 60
    nop

    .line 45
    .end local v2    # "it":Landroid/hardware/Sensor;
    .end local v3    # "$i$a$-let-MotionSensorManager$startListening$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_1

    .line 60
    move-object v0, v1

    check-cast v0, Lcom/cgs/atvobserver/sensor/MotionSensorManager;

    .local v0, "$this$startListening_u24lambda_u241":Lcom/cgs/atvobserver/sensor/MotionSensorManager;
    const/4 v2, 0x0

    .line 61
    .local v2, "$i$a$-run-MotionSensorManager$startListening$2":I
    iget-object v3, v0, Lcom/cgs/atvobserver/sensor/MotionSensorManager;->_motionData:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v4, v0, Lcom/cgs/atvobserver/sensor/MotionSensorManager;->_motionData:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/cgs/atvobserver/sensor/MotionSensorData;

    const/16 v18, 0x2ff

    const/16 v19, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v5 .. v19}, Lcom/cgs/atvobserver/sensor/MotionSensorData;->copy$default(Lcom/cgs/atvobserver/sensor/MotionSensorData;DFFFDZZZZIILjava/lang/Object;)Lcom/cgs/atvobserver/sensor/MotionSensorData;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 62
    nop

    .line 60
    .end local v0    # "$this$startListening_u24lambda_u241":Lcom/cgs/atvobserver/sensor/MotionSensorManager;
    .end local v2    # "$i$a$-run-MotionSensorManager$startListening$2":I
    nop

    .line 63
    :cond_1
    return-void
.end method

.method public final stopListening()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/cgs/atvobserver/sensor/MotionSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    move-object v1, p0

    check-cast v1, Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 67
    return-void
.end method
