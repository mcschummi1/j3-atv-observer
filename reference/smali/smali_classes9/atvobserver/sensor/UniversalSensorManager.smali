.class public final Lcom/cgs/atvobserver/sensor/UniversalSensorManager;
.super Ljava/lang/Object;
.source "UniversalSensorManager.kt"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0013\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010\t2\u0006\u0010!\u001a\u00020\u000cH\u0016J\u0012\u0010\"\u001a\u00020\u001f2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u0006\u0010%\u001a\u00020\u001fJ\u0006\u0010&\u001a\u00020\u001fR\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/cgs/atvobserver/sensor/UniversalSensorManager;",
        "Landroid/hardware/SensorEventListener;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "_sensorData",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/cgs/atvobserver/sensor/UniversalSensorData;",
        "accelerometer",
        "Landroid/hardware/Sensor;",
        "barometer",
        "consecutiveHighGs",
        "",
        "geomagneticValues",
        "",
        "gravityValues",
        "gyroscope",
        "lastGForce",
        "",
        "lightSensor",
        "magnetometer",
        "sensorData",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getSensorData",
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
        "startListeningAllSensors",
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
.field private final _sensorData:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/cgs/atvobserver/sensor/UniversalSensorData;",
            ">;"
        }
    .end annotation
.end field

.field private final accelerometer:Landroid/hardware/Sensor;

.field private final barometer:Landroid/hardware/Sensor;

.field private consecutiveHighGs:I

.field private geomagneticValues:[F

.field private gravityValues:[F

.field private final gyroscope:Landroid/hardware/Sensor;

.field private lastGForce:D

.field private final lightSensor:Landroid/hardware/Sensor;

.field private final magnetometer:Landroid/hardware/Sensor;

.field private final sensorData:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/cgs/atvobserver/sensor/UniversalSensorData;",
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

    sput v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 34
    .param p1, "context"    # Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.hardware.SensorManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    .line 60
    iget-object v2, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->accelerometer:Landroid/hardware/Sensor;

    .line 61
    iget-object v2, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->gyroscope:Landroid/hardware/Sensor;

    .line 62
    iget-object v2, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->magnetometer:Landroid/hardware/Sensor;

    .line 63
    iget-object v2, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->barometer:Landroid/hardware/Sensor;

    .line 64
    iget-object v2, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->lightSensor:Landroid/hardware/Sensor;

    .line 66
    new-instance v2, Lcom/cgs/atvobserver/sensor/UniversalSensorData;

    move-object v3, v2

    const v32, 0x7fffff

    const/16 v33, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-direct/range {v3 .. v33}, Lcom/cgs/atvobserver/sensor/UniversalSensorData;-><init>(DFFFDZZZDDFFFZFZFDZFZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->_sensorData:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 67
    iget-object v2, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->_sensorData:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->sensorData:Lkotlinx/coroutines/flow/StateFlow;

    .line 69
    const/4 v2, 0x3

    new-array v3, v2, [F

    iput-object v3, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->gravityValues:[F

    .line 70
    new-array v2, v2, [F

    iput-object v2, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->geomagneticValues:[F

    .line 71
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->lastGForce:D

    .line 72
    const/16 v2, 0xa

    new-array v2, v2, [D

    iput-object v2, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->vibrationBuffer:[D

    .line 56
    return-void
.end method


# virtual methods
.method public final getSensorData()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/cgs/atvobserver/sensor/UniversalSensorData;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->sensorData:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 214
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 50
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 126
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    return-void

    .line 128
    :cond_0
    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_9

    .line 195
    :pswitch_1
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    .local v2, "pressureHpa":F
    move/from16 v28, v2

    .line 196
    const v3, 0x447d5000    # 1013.25f

    invoke-static {v3, v2}, Landroid/hardware/SensorManager;->getAltitude(FF)F

    move-result v3

    float-to-double v3, v3

    .local v3, "altitudeMeters":D
    move-wide/from16 v29, v3

    .line 197
    iget-object v5, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->_sensorData:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v6, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->_sensorData:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/cgs/atvobserver/sensor/UniversalSensorData;

    .line 198
    nop

    .line 199
    nop

    .line 197
    const v36, 0x7cffff

    const/16 v37, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-static/range {v7 .. v37}, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->copy$default(Lcom/cgs/atvobserver/sensor/UniversalSensorData;DFFFDZZZDDFFFZFZFDZFZZZILjava/lang/Object;)Lcom/cgs/atvobserver/sensor/UniversalSensorData;

    move-result-object v6

    invoke-interface {v5, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .end local v2    # "pressureHpa":F
    .end local v3    # "altitudeMeters":D
    goto/16 :goto_9

    .line 204
    :pswitch_2
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    .line 205
    .local v2, "lux":F
    const/high16 v3, 0x41700000    # 15.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    move/from16 v33, v5

    goto :goto_0

    :cond_1
    move/from16 v33, v6

    .line 206
    .local v33, "isNight":Z
    :goto_0
    iget-object v3, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->_sensorData:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v4, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->_sensorData:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/cgs/atvobserver/sensor/UniversalSensorData;

    .line 207
    nop

    .line 208
    nop

    .line 206
    const v36, 0x67ffff

    const/16 v37, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move/from16 v32, v2

    invoke-static/range {v7 .. v37}, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->copy$default(Lcom/cgs/atvobserver/sensor/UniversalSensorData;DFFFDZZZDDFFFZFZFDZFZZZILjava/lang/Object;)Lcom/cgs/atvobserver/sensor/UniversalSensorData;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 175
    .end local v2    # "lux":F
    .end local v33    # "isNight":Z
    :pswitch_3
    iget-object v2, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->_sensorData:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->_sensorData:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/cgs/atvobserver/sensor/UniversalSensorData;

    .line 176
    iget-object v3, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v22, v3, v6

    .line 177
    iget-object v3, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v23, v3, v5

    .line 178
    iget-object v3, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v24, v3, v4

    .line 175
    const v36, 0x7fe3ff

    const/16 v37, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-static/range {v7 .. v37}, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->copy$default(Lcom/cgs/atvobserver/sensor/UniversalSensorData;DFFFDZZZDDFFFZFZFDZFZZZILjava/lang/Object;)Lcom/cgs/atvobserver/sensor/UniversalSensorData;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 183
    :pswitch_4
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    iput-object v2, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->geomagneticValues:[F

    .line 184
    const/16 v2, 0x9

    new-array v2, v2, [F

    .line 185
    .local v2, "rotationMatrix":[F
    new-array v3, v3, [F

    .line 187
    .local v3, "orientationAngles":[F
    iget-object v4, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->gravityValues:[F

    iget-object v5, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->geomagneticValues:[F

    const/4 v7, 0x0

    invoke-static {v2, v7, v4, v5}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 188
    invoke-static {v2, v3}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 189
    aget v4, v3, v6

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/high16 v5, 0x43b40000    # 360.0f

    add-float/2addr v4, v5

    rem-float/2addr v4, v5

    .local v4, "headingDeg":F
    move/from16 v25, v4

    .line 190
    iget-object v5, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->_sensorData:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v6, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->_sensorData:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cgs/atvobserver/sensor/UniversalSensorData;

    const v35, 0x7fbfff

    const/16 v36, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-static/range {v6 .. v36}, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->copy$default(Lcom/cgs/atvobserver/sensor/UniversalSensorData;DFFFDZZZDDFFFZFZFDZFZZZILjava/lang/Object;)Lcom/cgs/atvobserver/sensor/UniversalSensorData;

    move-result-object v6

    invoke-interface {v5, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .end local v2    # "rotationMatrix":[F
    .end local v3    # "orientationAngles":[F
    .end local v4    # "headingDeg":F
    goto/16 :goto_9

    .line 130
    :pswitch_5
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    iput-object v2, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->gravityValues:[F

    .line 131
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    .line 132
    .local v2, "x":F
    iget-object v7, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v13, v7, v5

    .line 133
    .local v13, "y":F
    iget-object v7, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v7, v4

    .line 135
    .local v4, "z":F
    mul-float v7, v2, v2

    mul-float v8, v13, v13

    add-float/2addr v7, v8

    mul-float v8, v4, v4

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v38

    .line 136
    .local v38, "norm":D
    const-wide v7, 0x40239d013a92a305L    # 9.80665

    div-double v11, v38, v7

    .line 138
    .local v11, "gForce":D
    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    cmpl-double v7, v11, v7

    if-gez v7, :cond_3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x41b00000    # 22.0f

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_3

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    goto :goto_1

    :cond_2
    move v7, v6

    goto :goto_2

    :cond_3
    :goto_1
    move v7, v5

    :goto_2
    move/from16 v40, v7

    .line 139
    .local v40, "isRawImpact":Z
    if-eqz v40, :cond_4

    .line 140
    iget v7, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->consecutiveHighGs:I

    add-int/2addr v7, v5

    iput v7, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->consecutiveHighGs:I

    goto :goto_3

    .line 142
    :cond_4
    iget v7, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->consecutiveHighGs:I

    sub-int/2addr v7, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->consecutiveHighGs:I

    .line 144
    :goto_3
    iget v7, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->consecutiveHighGs:I

    if-lt v7, v3, :cond_5

    move/from16 v17, v5

    goto :goto_4

    :cond_5
    move/from16 v17, v6

    .line 146
    .local v17, "isConfirmedCrash":Z
    :goto_4
    iget-wide v7, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->lastGForce:D

    sub-double v7, v11, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v41

    .line 147
    .local v41, "deltaG":D
    iput-wide v11, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->lastGForce:D

    .line 149
    iget-object v3, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->vibrationBuffer:[D

    iget v7, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->vibrationIdx:I

    aput-wide v41, v3, v7

    .line 150
    iget v3, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->vibrationIdx:I

    add-int/2addr v3, v5

    iget-object v7, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->vibrationBuffer:[D

    array-length v7, v7

    rem-int/2addr v3, v7

    iput v3, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->vibrationIdx:I

    .line 151
    iget-object v3, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->vibrationBuffer:[D

    invoke-static {v3}, Lkotlin/collections/ArraysKt;->average([D)D

    move-result-wide v43

    .line 153
    .local v43, "avgVibration":D
    float-to-double v7, v13

    const-wide/high16 v9, -0x3fe8000000000000L    # -6.0

    cmpg-double v3, v7, v9

    const/4 v7, 0x0

    const-wide v8, 0x3ffccccccccccccdL    # 1.8

    if-ltz v3, :cond_7

    cmpl-double v3, v11, v8

    if-lez v3, :cond_6

    cmpg-float v3, v13, v7

    if-gez v3, :cond_6

    goto :goto_5

    :cond_6
    move v15, v6

    goto :goto_6

    :cond_7
    :goto_5
    move v15, v5

    .line 154
    .local v15, "isHardBraking":Z
    :goto_6
    float-to-double v5, v13

    const-wide/high16 v18, 0x4018000000000000L    # 6.0

    cmpl-double v5, v5, v18

    if-gtz v5, :cond_9

    cmpl-double v5, v11, v8

    if-lez v5, :cond_8

    cmpl-float v5, v13, v7

    if-lez v5, :cond_8

    goto :goto_7

    :cond_8
    const/16 v16, 0x0

    goto :goto_8

    :cond_9
    :goto_7
    const/16 v16, 0x1

    .line 157
    .local v16, "isHardLaunch":Z
    :goto_8
    float-to-double v5, v2

    mul-float v3, v13, v13

    mul-float v7, v4, v4

    add-float/2addr v3, v7

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    .local v5, "pitch":D
    move-wide/from16 v18, v5

    .line 158
    float-to-double v7, v13

    mul-float v3, v2, v2

    mul-float v9, v4, v4

    add-float/2addr v3, v9

    float-to-double v9, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v45

    .local v45, "rollLean":D
    move-wide/from16 v20, v45

    .line 160
    iget-object v3, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->_sensorData:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v7, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->_sensorData:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cgs/atvobserver/sensor/UniversalSensorData;

    .line 161
    nop

    .line 162
    nop

    .line 163
    nop

    .line 164
    nop

    .line 165
    nop

    .line 166
    nop

    .line 167
    nop

    .line 168
    nop

    .line 169
    nop

    .line 170
    nop

    .line 160
    const v36, 0x7ffc00

    const/16 v37, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-wide v8, v11

    move v10, v2

    move-wide/from16 v47, v11

    .end local v11    # "gForce":D
    .local v47, "gForce":D
    move v11, v13

    move v12, v4

    move/from16 v49, v13

    .end local v13    # "y":F
    .local v49, "y":F
    move-wide/from16 v13, v43

    invoke-static/range {v7 .. v37}, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->copy$default(Lcom/cgs/atvobserver/sensor/UniversalSensorData;DFFFDZZZDDFFFZFZFDZFZZZILjava/lang/Object;)Lcom/cgs/atvobserver/sensor/UniversalSensorData;

    move-result-object v7

    invoke-interface {v3, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 212
    .end local v2    # "x":F
    .end local v4    # "z":F
    .end local v5    # "pitch":D
    .end local v15    # "isHardBraking":Z
    .end local v16    # "isHardLaunch":Z
    .end local v17    # "isConfirmedCrash":Z
    .end local v38    # "norm":D
    .end local v40    # "isRawImpact":Z
    .end local v41    # "deltaG":D
    .end local v43    # "avgVibration":D
    .end local v45    # "rollLean":D
    .end local v47    # "gForce":D
    .end local v49    # "y":F
    :cond_a
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final startListeningAllSensors()V
    .locals 41

    .line 77
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 78
    .local v2, "accelOk":Z
    const/4 v3, 0x0

    .line 79
    .local v3, "gyroOk":Z
    const/4 v4, 0x0

    .line 80
    .local v4, "magOk":Z
    const/4 v5, 0x0

    .line 81
    .local v5, "baroOk":Z
    const/4 v6, 0x0

    .line 83
    .local v6, "lightOk":Z
    iget-object v0, v1, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->accelerometer:Landroid/hardware/Sensor;

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    move-object v8, v0

    .local v8, "it":Landroid/hardware/Sensor;
    const/4 v9, 0x0

    .line 84
    .local v9, "$i$a$-let-UniversalSensorManager$startListeningAllSensors$1":I
    nop

    .line 85
    :try_start_0
    iget-object v0, v1, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    move-object v10, v1

    check-cast v10, Landroid/hardware/SensorEventListener;

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v8, v11}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "_":Ljava/lang/SecurityException;
    iget-object v10, v1, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    move-object v11, v1

    check-cast v11, Landroid/hardware/SensorEventListener;

    invoke-virtual {v10, v11, v8, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 89
    .end local v0    # "_":Ljava/lang/SecurityException;
    :goto_0
    const/4 v2, 0x1

    .line 90
    nop

    .line 83
    .end local v8    # "it":Landroid/hardware/Sensor;
    .end local v9    # "$i$a$-let-UniversalSensorManager$startListeningAllSensors$1":I
    nop

    .line 92
    :cond_0
    iget-object v0, v1, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->gyroscope:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .local v0, "it":Landroid/hardware/Sensor;
    const/4 v8, 0x0

    .line 93
    .local v8, "$i$a$-let-UniversalSensorManager$startListeningAllSensors$2":I
    iget-object v9, v1, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    move-object v10, v1

    check-cast v10, Landroid/hardware/SensorEventListener;

    invoke-virtual {v9, v10, v0, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 94
    const/4 v3, 0x1

    .line 95
    nop

    .line 92
    .end local v0    # "it":Landroid/hardware/Sensor;
    .end local v8    # "$i$a$-let-UniversalSensorManager$startListeningAllSensors$2":I
    nop

    .line 97
    :cond_1
    iget-object v0, v1, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->magnetometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    .restart local v0    # "it":Landroid/hardware/Sensor;
    const/4 v8, 0x0

    .line 98
    .local v8, "$i$a$-let-UniversalSensorManager$startListeningAllSensors$3":I
    iget-object v9, v1, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    move-object v10, v1

    check-cast v10, Landroid/hardware/SensorEventListener;

    invoke-virtual {v9, v10, v0, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 99
    const/4 v4, 0x1

    .line 100
    nop

    .line 97
    .end local v0    # "it":Landroid/hardware/Sensor;
    .end local v8    # "$i$a$-let-UniversalSensorManager$startListeningAllSensors$3":I
    nop

    .line 102
    :cond_2
    iget-object v0, v1, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->barometer:Landroid/hardware/Sensor;

    const/4 v7, 0x3

    if-eqz v0, :cond_3

    .restart local v0    # "it":Landroid/hardware/Sensor;
    const/4 v8, 0x0

    .line 103
    .local v8, "$i$a$-let-UniversalSensorManager$startListeningAllSensors$4":I
    iget-object v9, v1, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    move-object v10, v1

    check-cast v10, Landroid/hardware/SensorEventListener;

    invoke-virtual {v9, v10, v0, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 104
    const/4 v5, 0x1

    .line 105
    nop

    .line 102
    .end local v0    # "it":Landroid/hardware/Sensor;
    .end local v8    # "$i$a$-let-UniversalSensorManager$startListeningAllSensors$4":I
    nop

    .line 107
    :cond_3
    iget-object v0, v1, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->lightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_4

    .restart local v0    # "it":Landroid/hardware/Sensor;
    const/4 v8, 0x0

    .line 108
    .local v8, "$i$a$-let-UniversalSensorManager$startListeningAllSensors$5":I
    iget-object v9, v1, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    move-object v10, v1

    check-cast v10, Landroid/hardware/SensorEventListener;

    invoke-virtual {v9, v10, v0, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 109
    const/4 v6, 0x1

    .line 110
    nop

    .line 107
    .end local v0    # "it":Landroid/hardware/Sensor;
    .end local v8    # "$i$a$-let-UniversalSensorManager$startListeningAllSensors$5":I
    nop

    .line 112
    :cond_4
    iget-object v0, v1, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->_sensorData:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v7, v1, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->_sensorData:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lcom/cgs/atvobserver/sensor/UniversalSensorData;

    .line 114
    nop

    .line 112
    nop

    .line 115
    nop

    .line 112
    nop

    .line 116
    nop

    .line 112
    nop

    .line 117
    nop

    .line 113
    nop

    .line 112
    const v39, 0x1b5fff

    const/16 v40, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    const-wide/16 v32, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move/from16 v28, v3

    move/from16 v30, v4

    move/from16 v34, v5

    move/from16 v37, v6

    move/from16 v38, v2

    invoke-static/range {v10 .. v40}, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->copy$default(Lcom/cgs/atvobserver/sensor/UniversalSensorData;DFFFDZZZDDFFFZFZFDZFZZZILjava/lang/Object;)Lcom/cgs/atvobserver/sensor/UniversalSensorData;

    move-result-object v7

    invoke-interface {v0, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public final stopListening()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    move-object v1, p0

    check-cast v1, Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 123
    return-void
.end method
