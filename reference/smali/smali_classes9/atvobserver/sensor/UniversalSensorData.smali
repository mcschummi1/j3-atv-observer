.class public final Lcom/cgs/atvobserver/sensor/UniversalSensorData;
.super Ljava/lang/Object;
.source "UniversalSensorManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008A\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00eb\u0001\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\n\u00a2\u0006\u0002\u0010\u001cJ\t\u00101\u001a\u00020\u0003H\u00c6\u0003J\t\u00102\u001a\u00020\u0003H\u00c6\u0003J\t\u00103\u001a\u00020\u0005H\u00c6\u0003J\t\u00104\u001a\u00020\u0005H\u00c6\u0003J\t\u00105\u001a\u00020\u0005H\u00c6\u0003J\t\u00106\u001a\u00020\nH\u00c6\u0003J\t\u00107\u001a\u00020\u0005H\u00c6\u0003J\t\u00108\u001a\u00020\nH\u00c6\u0003J\t\u00109\u001a\u00020\u0005H\u00c6\u0003J\t\u0010:\u001a\u00020\u0003H\u00c6\u0003J\t\u0010;\u001a\u00020\nH\u00c6\u0003J\t\u0010<\u001a\u00020\u0005H\u00c6\u0003J\t\u0010=\u001a\u00020\u0005H\u00c6\u0003J\t\u0010>\u001a\u00020\nH\u00c6\u0003J\t\u0010?\u001a\u00020\nH\u00c6\u0003J\t\u0010@\u001a\u00020\nH\u00c6\u0003J\t\u0010A\u001a\u00020\u0005H\u00c6\u0003J\t\u0010B\u001a\u00020\u0005H\u00c6\u0003J\t\u0010C\u001a\u00020\u0003H\u00c6\u0003J\t\u0010D\u001a\u00020\nH\u00c6\u0003J\t\u0010E\u001a\u00020\nH\u00c6\u0003J\t\u0010F\u001a\u00020\nH\u00c6\u0003J\t\u0010G\u001a\u00020\u0003H\u00c6\u0003J\u00ef\u0001\u0010H\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0012\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0014\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0017\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0019\u001a\u00020\n2\u0008\u0008\u0002\u0010\u001a\u001a\u00020\n2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\nH\u00c6\u0001J\u0013\u0010I\u001a\u00020\n2\u0008\u0010J\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010K\u001a\u00020LH\u00d6\u0001J\t\u0010M\u001a\u00020NH\u00d6\u0001R\u0011\u0010\u0018\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\u000f\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001eR\u0011\u0010\u0010\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001eR\u0011\u0010\u0011\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001eR\u0011\u0010\u0015\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u001eR\u0011\u0010\u0013\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u001eR\u0011\u0010\u000c\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010%R\u0011\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010%R\u0011\u0010\u001b\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010%R\u0011\u0010\u0017\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010%R\u0011\u0010\u0014\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010%R\u0011\u0010\u0012\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010%R\u0011\u0010\u001a\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010%R\u0011\u0010\u0019\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010%R\u0011\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\'R\u0011\u0010\u0016\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\'R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\u001eR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010\u001eR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010\u001eR\u0011\u0010\u000e\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u0010\'R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010\'\u00a8\u0006O"
    }
    d2 = {
        "Lcom/cgs/atvobserver/sensor/UniversalSensorData;",
        "",
        "gForceMagnitude",
        "",
        "rawX",
        "",
        "rawY",
        "rawZ",
        "vibrationIntensity",
        "hardBrakingDetected",
        "",
        "hardLaunchDetected",
        "crashOrFallDetected",
        "pitchAngleDeg",
        "rollLeanAngleDeg",
        "angularVelocityX",
        "angularVelocityY",
        "angularVelocityZ",
        "isGyroAvailable",
        "compassHeadingDeg",
        "isCompassAvailable",
        "barometricPressureHpa",
        "pressureAltitudeMeters",
        "isBarometerAvailable",
        "ambientLux",
        "isNightDetected",
        "isLightSensorAvailable",
        "isAccelerometerAvailable",
        "(DFFFDZZZDDFFFZFZFDZFZZZ)V",
        "getAmbientLux",
        "()F",
        "getAngularVelocityX",
        "getAngularVelocityY",
        "getAngularVelocityZ",
        "getBarometricPressureHpa",
        "getCompassHeadingDeg",
        "getCrashOrFallDetected",
        "()Z",
        "getGForceMagnitude",
        "()D",
        "getHardBrakingDetected",
        "getHardLaunchDetected",
        "getPitchAngleDeg",
        "getPressureAltitudeMeters",
        "getRawX",
        "getRawY",
        "getRawZ",
        "getRollLeanAngleDeg",
        "getVibrationIntensity",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component2",
        "component20",
        "component21",
        "component22",
        "component23",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
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


# instance fields
.field private final ambientLux:F

.field private final angularVelocityX:F

.field private final angularVelocityY:F

.field private final angularVelocityZ:F

.field private final barometricPressureHpa:F

.field private final compassHeadingDeg:F

.field private final crashOrFallDetected:Z

.field private final gForceMagnitude:D

.field private final hardBrakingDetected:Z

.field private final hardLaunchDetected:Z

.field private final isAccelerometerAvailable:Z

.field private final isBarometerAvailable:Z

.field private final isCompassAvailable:Z

.field private final isGyroAvailable:Z

.field private final isLightSensorAvailable:Z

.field private final isNightDetected:Z

.field private final pitchAngleDeg:D

.field private final pressureAltitudeMeters:D

.field private final rawX:F

.field private final rawY:F

.field private final rawZ:F

.field private final rollLeanAngleDeg:D

.field private final vibrationIntensity:D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 31

    move-object/from16 v0, p0

    const v29, 0x7fffff

    const/16 v30, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v0 .. v30}, Lcom/cgs/atvobserver/sensor/UniversalSensorData;-><init>(DFFFDZZZDDFFFZFZFDZFZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(DFFFDZZZDDFFFZFZFDZFZZZ)V
    .locals 16
    .param p1, "gForceMagnitude"    # D
    .param p3, "rawX"    # F
    .param p4, "rawY"    # F
    .param p5, "rawZ"    # F
    .param p6, "vibrationIntensity"    # D
    .param p8, "hardBrakingDetected"    # Z
    .param p9, "hardLaunchDetected"    # Z
    .param p10, "crashOrFallDetected"    # Z
    .param p11, "pitchAngleDeg"    # D
    .param p13, "rollLeanAngleDeg"    # D
    .param p15, "angularVelocityX"    # F
    .param p16, "angularVelocityY"    # F
    .param p17, "angularVelocityZ"    # F
    .param p18, "isGyroAvailable"    # Z
    .param p19, "compassHeadingDeg"    # F
    .param p20, "isCompassAvailable"    # Z
    .param p21, "barometricPressureHpa"    # F
    .param p22, "pressureAltitudeMeters"    # D
    .param p24, "isBarometerAvailable"    # Z
    .param p25, "ambientLux"    # F
    .param p26, "isNightDetected"    # Z
    .param p27, "isLightSensorAvailable"    # Z
    .param p28, "isAccelerometerAvailable"    # Z

    .line 15
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    move-wide/from16 v1, p1

    iput-wide v1, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->gForceMagnitude:D

    .line 18
    move/from16 v3, p3

    iput v3, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->rawX:F

    .line 19
    move/from16 v4, p4

    iput v4, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->rawY:F

    .line 20
    move/from16 v5, p5

    iput v5, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->rawZ:F

    .line 21
    move-wide/from16 v6, p6

    iput-wide v6, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->vibrationIntensity:D

    .line 22
    move/from16 v8, p8

    iput-boolean v8, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->hardBrakingDetected:Z

    .line 23
    move/from16 v9, p9

    iput-boolean v9, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->hardLaunchDetected:Z

    .line 24
    move/from16 v10, p10

    iput-boolean v10, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->crashOrFallDetected:Z

    .line 27
    move-wide/from16 v11, p11

    iput-wide v11, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->pitchAngleDeg:D

    .line 28
    move-wide/from16 v13, p13

    iput-wide v13, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->rollLeanAngleDeg:D

    .line 29
    move/from16 v15, p15

    iput v15, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->angularVelocityX:F

    .line 30
    move/from16 v1, p16

    iput v1, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->angularVelocityY:F

    .line 31
    move/from16 v2, p17

    iput v2, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->angularVelocityZ:F

    .line 32
    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isGyroAvailable:Z

    .line 35
    move/from16 v1, p19

    iput v1, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->compassHeadingDeg:F

    .line 36
    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isCompassAvailable:Z

    .line 39
    move/from16 v1, p21

    iput v1, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->barometricPressureHpa:F

    .line 40
    move-wide/from16 v1, p22

    iput-wide v1, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->pressureAltitudeMeters:D

    .line 41
    move/from16 v1, p24

    iput-boolean v1, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isBarometerAvailable:Z

    .line 44
    move/from16 v2, p25

    iput v2, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->ambientLux:F

    .line 45
    move/from16 v1, p26

    iput-boolean v1, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isNightDetected:Z

    .line 46
    move/from16 v1, p27

    iput-boolean v1, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isLightSensorAvailable:Z

    .line 48
    move/from16 v1, p28

    iput-boolean v1, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isAccelerometerAvailable:Z

    .line 15
    return-void
.end method

.method public synthetic constructor <init>(DFFFDZZZDDFFFZFZFDZFZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 28

    .line 15
    move/from16 v0, p29

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 17
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 15
    :cond_0
    move-wide/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    .line 18
    const/4 v3, 0x0

    goto :goto_1

    .line 15
    :cond_1
    move/from16 v3, p3

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    .line 19
    const/4 v5, 0x0

    goto :goto_2

    .line 15
    :cond_2
    move/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    .line 20
    const/4 v6, 0x0

    goto :goto_3

    .line 15
    :cond_3
    move/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    .line 21
    const-wide/16 v10, 0x0

    goto :goto_4

    .line 15
    :cond_4
    move-wide/from16 v10, p6

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    .line 22
    const/4 v7, 0x0

    goto :goto_5

    .line 15
    :cond_5
    move/from16 v7, p8

    :goto_5
    and-int/lit8 v13, v0, 0x40

    if-eqz v13, :cond_6

    .line 23
    const/4 v13, 0x0

    goto :goto_6

    .line 15
    :cond_6
    move/from16 v13, p9

    :goto_6
    and-int/lit16 v14, v0, 0x80

    if-eqz v14, :cond_7

    .line 24
    const/4 v14, 0x0

    goto :goto_7

    .line 15
    :cond_7
    move/from16 v14, p10

    :goto_7
    and-int/lit16 v15, v0, 0x100

    if-eqz v15, :cond_8

    .line 27
    const-wide/16 v15, 0x0

    goto :goto_8

    .line 15
    :cond_8
    move-wide/from16 v15, p11

    :goto_8
    and-int/lit16 v4, v0, 0x200

    if-eqz v4, :cond_9

    .line 28
    const-wide/16 v17, 0x0

    goto :goto_9

    .line 15
    :cond_9
    move-wide/from16 v17, p13

    :goto_9
    and-int/lit16 v4, v0, 0x400

    if-eqz v4, :cond_a

    .line 29
    const/4 v4, 0x0

    goto :goto_a

    .line 15
    :cond_a
    move/from16 v4, p15

    :goto_a
    and-int/lit16 v8, v0, 0x800

    if-eqz v8, :cond_b

    .line 30
    const/4 v8, 0x0

    goto :goto_b

    .line 15
    :cond_b
    move/from16 v8, p16

    :goto_b
    and-int/lit16 v9, v0, 0x1000

    if-eqz v9, :cond_c

    .line 31
    const/4 v9, 0x0

    goto :goto_c

    .line 15
    :cond_c
    move/from16 v9, p17

    :goto_c
    and-int/lit16 v12, v0, 0x2000

    if-eqz v12, :cond_d

    .line 32
    const/4 v12, 0x0

    goto :goto_d

    .line 15
    :cond_d
    move/from16 v12, p18

    :goto_d
    move/from16 p30, v12

    and-int/lit16 v12, v0, 0x4000

    if-eqz v12, :cond_e

    .line 35
    const/4 v12, 0x0

    goto :goto_e

    .line 15
    :cond_e
    move/from16 v12, p19

    :goto_e
    const v19, 0x8000

    and-int v19, v0, v19

    if-eqz v19, :cond_f

    .line 36
    const/16 v19, 0x0

    goto :goto_f

    .line 15
    :cond_f
    move/from16 v19, p20

    :goto_f
    const/high16 v20, 0x10000

    and-int v20, v0, v20

    if-eqz v20, :cond_10

    .line 39
    const v20, 0x447d5000    # 1013.25f

    goto :goto_10

    .line 15
    :cond_10
    move/from16 v20, p21

    :goto_10
    const/high16 v21, 0x20000

    and-int v21, v0, v21

    if-eqz v21, :cond_11

    .line 40
    const-wide/16 v21, 0x0

    goto :goto_11

    .line 15
    :cond_11
    move-wide/from16 v21, p22

    :goto_11
    const/high16 v23, 0x40000

    and-int v23, v0, v23

    if-eqz v23, :cond_12

    .line 41
    const/16 v23, 0x0

    goto :goto_12

    .line 15
    :cond_12
    move/from16 v23, p24

    :goto_12
    const/high16 v24, 0x80000

    and-int v24, v0, v24

    if-eqz v24, :cond_13

    .line 44
    const/high16 v24, 0x43fa0000    # 500.0f

    goto :goto_13

    .line 15
    :cond_13
    move/from16 v24, p25

    :goto_13
    const/high16 v25, 0x100000

    and-int v25, v0, v25

    if-eqz v25, :cond_14

    .line 45
    const/16 v25, 0x0

    goto :goto_14

    .line 15
    :cond_14
    move/from16 v25, p26

    :goto_14
    const/high16 v26, 0x200000

    and-int v26, v0, v26

    if-eqz v26, :cond_15

    .line 46
    const/16 v26, 0x0

    goto :goto_15

    .line 15
    :cond_15
    move/from16 v26, p27

    :goto_15
    const/high16 v27, 0x400000

    and-int v0, v0, v27

    if-eqz v0, :cond_16

    .line 48
    const/4 v0, 0x0

    goto :goto_16

    .line 15
    :cond_16
    move/from16 v0, p28

    :goto_16
    move-object/from16 p1, p0

    move-wide/from16 p2, v1

    move/from16 p4, v3

    move/from16 p5, v5

    move/from16 p6, v6

    move-wide/from16 p7, v10

    move/from16 p9, v7

    move/from16 p10, v13

    move/from16 p11, v14

    move-wide/from16 p12, v15

    move-wide/from16 p14, v17

    move/from16 p16, v4

    move/from16 p17, v8

    move/from16 p18, v9

    move/from16 p19, p30

    move/from16 p20, v12

    move/from16 p21, v19

    move/from16 p22, v20

    move-wide/from16 p23, v21

    move/from16 p25, v23

    move/from16 p26, v24

    move/from16 p27, v25

    move/from16 p28, v26

    move/from16 p29, v0

    invoke-direct/range {p1 .. p29}, Lcom/cgs/atvobserver/sensor/UniversalSensorData;-><init>(DFFFDZZZDDFFFZFZFDZFZZZ)V

    .line 49
    return-void
.end method

.method public static synthetic copy$default(Lcom/cgs/atvobserver/sensor/UniversalSensorData;DFFFDZZZDDFFFZFZFDZFZZZILjava/lang/Object;)Lcom/cgs/atvobserver/sensor/UniversalSensorData;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p29

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->gForceMagnitude:D

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget v4, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->rawX:F

    goto :goto_1

    :cond_1
    move/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget v5, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->rawY:F

    goto :goto_2

    :cond_2
    move/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget v6, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->rawZ:F

    goto :goto_3

    :cond_3
    move/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-wide v7, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->vibrationIntensity:D

    goto :goto_4

    :cond_4
    move-wide/from16 v7, p6

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    iget-boolean v9, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->hardBrakingDetected:Z

    goto :goto_5

    :cond_5
    move/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget-boolean v10, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->hardLaunchDetected:Z

    goto :goto_6

    :cond_6
    move/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    iget-boolean v11, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->crashOrFallDetected:Z

    goto :goto_7

    :cond_7
    move/from16 v11, p10

    :goto_7
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_8

    iget-wide v12, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->pitchAngleDeg:D

    goto :goto_8

    :cond_8
    move-wide/from16 v12, p11

    :goto_8
    and-int/lit16 v14, v1, 0x200

    if-eqz v14, :cond_9

    iget-wide v14, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->rollLeanAngleDeg:D

    goto :goto_9

    :cond_9
    move-wide/from16 v14, p13

    :goto_9
    move-wide/from16 p13, v14

    and-int/lit16 v14, v1, 0x400

    if-eqz v14, :cond_a

    iget v14, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->angularVelocityX:F

    goto :goto_a

    :cond_a
    move/from16 v14, p15

    :goto_a
    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_b

    iget v15, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->angularVelocityY:F

    goto :goto_b

    :cond_b
    move/from16 v15, p16

    :goto_b
    move/from16 p16, v15

    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget v15, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->angularVelocityZ:F

    goto :goto_c

    :cond_c
    move/from16 v15, p17

    :goto_c
    move/from16 p17, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-boolean v15, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isGyroAvailable:Z

    goto :goto_d

    :cond_d
    move/from16 v15, p18

    :goto_d
    move/from16 p18, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget v15, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->compassHeadingDeg:F

    goto :goto_e

    :cond_e
    move/from16 v15, p19

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move/from16 p19, v15

    if-eqz v16, :cond_f

    iget-boolean v15, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isCompassAvailable:Z

    goto :goto_f

    :cond_f
    move/from16 v15, p20

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move/from16 p20, v15

    if-eqz v16, :cond_10

    iget v15, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->barometricPressureHpa:F

    goto :goto_10

    :cond_10
    move/from16 v15, p21

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move/from16 p15, v14

    move/from16 p21, v15

    if-eqz v16, :cond_11

    iget-wide v14, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->pressureAltitudeMeters:D

    goto :goto_11

    :cond_11
    move-wide/from16 v14, p22

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-wide/from16 p22, v14

    if-eqz v16, :cond_12

    iget-boolean v14, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isBarometerAvailable:Z

    goto :goto_12

    :cond_12
    move/from16 v14, p24

    :goto_12
    const/high16 v15, 0x80000

    and-int/2addr v15, v1

    if-eqz v15, :cond_13

    iget v15, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->ambientLux:F

    goto :goto_13

    :cond_13
    move/from16 v15, p25

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move/from16 p25, v15

    if-eqz v16, :cond_14

    iget-boolean v15, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isNightDetected:Z

    goto :goto_14

    :cond_14
    move/from16 v15, p26

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move/from16 p26, v15

    if-eqz v16, :cond_15

    iget-boolean v15, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isLightSensorAvailable:Z

    goto :goto_15

    :cond_15
    move/from16 v15, p27

    :goto_15
    const/high16 v16, 0x400000

    and-int v1, v1, v16

    if-eqz v1, :cond_16

    iget-boolean v1, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isAccelerometerAvailable:Z

    goto :goto_16

    :cond_16
    move/from16 v1, p28

    :goto_16
    move-wide/from16 p1, v2

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move-wide/from16 p6, v7

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move-wide/from16 p11, v12

    move/from16 p24, v14

    move/from16 p27, v15

    move/from16 p28, v1

    invoke-virtual/range {p0 .. p28}, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->copy(DFFFDZZZDDFFFZFZFDZFZZZ)Lcom/cgs/atvobserver/sensor/UniversalSensorData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->gForceMagnitude:D

    return-wide v0
.end method

.method public final component10()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->rollLeanAngleDeg:D

    return-wide v0
.end method

.method public final component11()F
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->angularVelocityX:F

    return v0
.end method

.method public final component12()F
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->angularVelocityY:F

    return v0
.end method

.method public final component13()F
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->angularVelocityZ:F

    return v0
.end method

.method public final component14()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isGyroAvailable:Z

    return v0
.end method

.method public final component15()F
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->compassHeadingDeg:F

    return v0
.end method

.method public final component16()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isCompassAvailable:Z

    return v0
.end method

.method public final component17()F
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->barometricPressureHpa:F

    return v0
.end method

.method public final component18()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->pressureAltitudeMeters:D

    return-wide v0
.end method

.method public final component19()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isBarometerAvailable:Z

    return v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->rawX:F

    return v0
.end method

.method public final component20()F
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->ambientLux:F

    return v0
.end method

.method public final component21()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isNightDetected:Z

    return v0
.end method

.method public final component22()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isLightSensorAvailable:Z

    return v0
.end method

.method public final component23()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isAccelerometerAvailable:Z

    return v0
.end method

.method public final component3()F
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->rawY:F

    return v0
.end method

.method public final component4()F
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->rawZ:F

    return v0
.end method

.method public final component5()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->vibrationIntensity:D

    return-wide v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->hardBrakingDetected:Z

    return v0
.end method

.method public final component7()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->hardLaunchDetected:Z

    return v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->crashOrFallDetected:Z

    return v0
.end method

.method public final component9()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->pitchAngleDeg:D

    return-wide v0
.end method

.method public final copy(DFFFDZZZDDFFFZFZFDZFZZZ)Lcom/cgs/atvobserver/sensor/UniversalSensorData;
    .locals 30

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move-wide/from16 v22, p22

    move/from16 v24, p24

    move/from16 v25, p25

    move/from16 v26, p26

    move/from16 v27, p27

    move/from16 v28, p28

    new-instance v29, Lcom/cgs/atvobserver/sensor/UniversalSensorData;

    move-object/from16 v0, v29

    invoke-direct/range {v0 .. v28}, Lcom/cgs/atvobserver/sensor/UniversalSensorData;-><init>(DFFFDZZZDDFFFZFZFDZFZZZ)V

    return-object v29
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cgs/atvobserver/sensor/UniversalSensorData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/cgs/atvobserver/sensor/UniversalSensorData;

    iget-wide v3, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->gForceMagnitude:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->gForceMagnitude:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->rawX:F

    iget v4, v1, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->rawX:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->rawY:F

    iget v4, v1, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->rawY:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_4
    iget v3, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->rawZ:F

    iget v4, v1, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->rawZ:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->vibrationIntensity:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->vibrationIntensity:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_6

    return v2

    :cond_6
    iget-boolean v3, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->hardBrakingDetected:Z

    iget-boolean v4, v1, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->hardBrakingDetected:Z

    if-eq v3, v4, :cond_7

    return v2

    :cond_7
    iget-boolean v3, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->hardLaunchDetected:Z

    iget-boolean v4, v1, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->hardLaunchDetected:Z

    if-eq v3, v4, :cond_8

    return v2

    :cond_8
    iget-boolean v3, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->crashOrFallDetected:Z

    iget-boolean v4, v1, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->crashOrFallDetected:Z

    if-eq v3, v4, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->pitchAngleDeg:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->pitchAngleDeg:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_a

    return v2

    :cond_a
    iget-wide v3, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->rollLeanAngleDeg:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->rollLeanAngleDeg:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_b

    return v2

    :cond_b
    iget v3, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->angularVelocityX:F

    iget v4, v1, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->angularVelocityX:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_c

    return v2

    :cond_c
    iget v3, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->angularVelocityY:F

    iget v4, v1, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->angularVelocityY:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_d

    return v2

    :cond_d
    iget v3, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->angularVelocityZ:F

    iget v4, v1, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->angularVelocityZ:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_e

    return v2

    :cond_e
    iget-boolean v3, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isGyroAvailable:Z

    iget-boolean v4, v1, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isGyroAvailable:Z

    if-eq v3, v4, :cond_f

    return v2

    :cond_f
    iget v3, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->compassHeadingDeg:F

    iget v4, v1, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->compassHeadingDeg:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_10

    return v2

    :cond_10
    iget-boolean v3, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isCompassAvailable:Z

    iget-boolean v4, v1, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isCompassAvailable:Z

    if-eq v3, v4, :cond_11

    return v2

    :cond_11
    iget v3, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->barometricPressureHpa:F

    iget v4, v1, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->barometricPressureHpa:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_12

    return v2

    :cond_12
    iget-wide v3, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->pressureAltitudeMeters:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->pressureAltitudeMeters:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_13

    return v2

    :cond_13
    iget-boolean v3, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isBarometerAvailable:Z

    iget-boolean v4, v1, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isBarometerAvailable:Z

    if-eq v3, v4, :cond_14

    return v2

    :cond_14
    iget v3, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->ambientLux:F

    iget v4, v1, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->ambientLux:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_15

    return v2

    :cond_15
    iget-boolean v3, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isNightDetected:Z

    iget-boolean v4, v1, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isNightDetected:Z

    if-eq v3, v4, :cond_16

    return v2

    :cond_16
    iget-boolean v3, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isLightSensorAvailable:Z

    iget-boolean v4, v1, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isLightSensorAvailable:Z

    if-eq v3, v4, :cond_17

    return v2

    :cond_17
    iget-boolean v3, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isAccelerometerAvailable:Z

    iget-boolean v1, v1, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isAccelerometerAvailable:Z

    if-eq v3, v1, :cond_18

    return v2

    :cond_18
    return v0
.end method

.method public final getAmbientLux()F
    .locals 1

    .line 44
    iget v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->ambientLux:F

    return v0
.end method

.method public final getAngularVelocityX()F
    .locals 1

    .line 29
    iget v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->angularVelocityX:F

    return v0
.end method

.method public final getAngularVelocityY()F
    .locals 1

    .line 30
    iget v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->angularVelocityY:F

    return v0
.end method

.method public final getAngularVelocityZ()F
    .locals 1

    .line 31
    iget v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->angularVelocityZ:F

    return v0
.end method

.method public final getBarometricPressureHpa()F
    .locals 1

    .line 39
    iget v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->barometricPressureHpa:F

    return v0
.end method

.method public final getCompassHeadingDeg()F
    .locals 1

    .line 35
    iget v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->compassHeadingDeg:F

    return v0
.end method

.method public final getCrashOrFallDetected()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->crashOrFallDetected:Z

    return v0
.end method

.method public final getGForceMagnitude()D
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->gForceMagnitude:D

    return-wide v0
.end method

.method public final getHardBrakingDetected()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->hardBrakingDetected:Z

    return v0
.end method

.method public final getHardLaunchDetected()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->hardLaunchDetected:Z

    return v0
.end method

.method public final getPitchAngleDeg()D
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->pitchAngleDeg:D

    return-wide v0
.end method

.method public final getPressureAltitudeMeters()D
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->pressureAltitudeMeters:D

    return-wide v0
.end method

.method public final getRawX()F
    .locals 1

    .line 18
    iget v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->rawX:F

    return v0
.end method

.method public final getRawY()F
    .locals 1

    .line 19
    iget v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->rawY:F

    return v0
.end method

.method public final getRawZ()F
    .locals 1

    .line 20
    iget v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->rawZ:F

    return v0
.end method

.method public final getRollLeanAngleDeg()D
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->rollLeanAngleDeg:D

    return-wide v0
.end method

.method public final getVibrationIntensity()D
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->vibrationIntensity:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->gForceMagnitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->rawX:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->rawY:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->rawZ:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->vibrationIntensity:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->hardBrakingDetected:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->hardLaunchDetected:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->crashOrFallDetected:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->pitchAngleDeg:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->rollLeanAngleDeg:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->angularVelocityX:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->angularVelocityY:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->angularVelocityZ:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isGyroAvailable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->compassHeadingDeg:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isCompassAvailable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->barometricPressureHpa:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->pressureAltitudeMeters:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isBarometerAvailable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->ambientLux:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isNightDetected:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isLightSensorAvailable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isAccelerometerAvailable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public final isAccelerometerAvailable()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isAccelerometerAvailable:Z

    return v0
.end method

.method public final isBarometerAvailable()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isBarometerAvailable:Z

    return v0
.end method

.method public final isCompassAvailable()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isCompassAvailable:Z

    return v0
.end method

.method public final isGyroAvailable()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isGyroAvailable:Z

    return v0
.end method

.method public final isLightSensorAvailable()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isLightSensorAvailable:Z

    return v0
.end method

.method public final isNightDetected()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isNightDetected:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 30

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->gForceMagnitude:D

    iget v3, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->rawX:F

    iget v4, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->rawY:F

    iget v5, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->rawZ:F

    iget-wide v6, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->vibrationIntensity:D

    iget-boolean v8, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->hardBrakingDetected:Z

    iget-boolean v9, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->hardLaunchDetected:Z

    iget-boolean v10, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->crashOrFallDetected:Z

    iget-wide v11, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->pitchAngleDeg:D

    iget-wide v13, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->rollLeanAngleDeg:D

    iget v15, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->angularVelocityX:F

    move/from16 v16, v15

    iget v15, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->angularVelocityY:F

    move/from16 v17, v15

    iget v15, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->angularVelocityZ:F

    move/from16 v18, v15

    iget-boolean v15, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isGyroAvailable:Z

    move/from16 v19, v15

    iget v15, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->compassHeadingDeg:F

    move/from16 v20, v15

    iget-boolean v15, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isCompassAvailable:Z

    move/from16 v21, v15

    iget v15, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->barometricPressureHpa:F

    move-wide/from16 v22, v13

    iget-wide v13, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->pressureAltitudeMeters:D

    move-wide/from16 v24, v13

    iget-boolean v13, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isBarometerAvailable:Z

    iget v14, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->ambientLux:F

    move/from16 v26, v14

    iget-boolean v14, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isNightDetected:Z

    move/from16 v27, v14

    iget-boolean v14, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isLightSensorAvailable:Z

    move/from16 v28, v14

    iget-boolean v14, v0, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->isAccelerometerAvailable:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v29, v14

    const-string v14, "UniversalSensorData(gForceMagnitude="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rawX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rawY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rawZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vibrationIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hardBrakingDetected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hardLaunchDetected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", crashOrFallDetected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pitchAngleDeg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rollLeanAngleDeg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", angularVelocityX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", angularVelocityY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", angularVelocityZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isGyroAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", compassHeadingDeg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCompassAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", barometricPressureHpa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pressureAltitudeMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isBarometerAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ambientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isNightDetected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isLightSensorAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAccelerometerAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
