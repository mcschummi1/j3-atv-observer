.class public final Lcom/cgs/atvobserver/sensor/MotionSensorData;
.super Ljava/lang/Object;
.source "MotionSensorManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u001d\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bi\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010J\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u000fH\u00c6\u0003J\t\u0010 \u001a\u00020\u0005H\u00c6\u0003J\t\u0010!\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0005H\u00c6\u0003J\t\u0010#\u001a\u00020\u0003H\u00c6\u0003J\t\u0010$\u001a\u00020\nH\u00c6\u0003J\t\u0010%\u001a\u00020\nH\u00c6\u0003J\t\u0010&\u001a\u00020\nH\u00c6\u0003J\t\u0010\'\u001a\u00020\nH\u00c6\u0003Jm\u0010(\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000fH\u00c6\u0001J\u0013\u0010)\u001a\u00020\n2\u0008\u0010*\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010+\u001a\u00020\u000fH\u00d6\u0001J\t\u0010,\u001a\u00020-H\u00d6\u0001R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u000c\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0014R\u0011\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0014R\u0011\u0010\r\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001aR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001aR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0016\u00a8\u0006."
    }
    d2 = {
        "Lcom/cgs/atvobserver/sensor/MotionSensorData;",
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
        "isSensorAvailable",
        "activeSamplingFps",
        "",
        "(DFFFDZZZZI)V",
        "getActiveSamplingFps",
        "()I",
        "getCrashOrFallDetected",
        "()Z",
        "getGForceMagnitude",
        "()D",
        "getHardBrakingDetected",
        "getHardLaunchDetected",
        "getRawX",
        "()F",
        "getRawY",
        "getRawZ",
        "getVibrationIntensity",
        "component1",
        "component10",
        "component2",
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
.field private final activeSamplingFps:I

.field private final crashOrFallDetected:Z

.field private final gForceMagnitude:D

.field private final hardBrakingDetected:Z

.field private final hardLaunchDetected:Z

.field private final isSensorAvailable:Z

.field private final rawX:F

.field private final rawY:F

.field private final rawZ:F

.field private final vibrationIntensity:D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 15

    const/16 v13, 0x3ff

    const/4 v14, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/cgs/atvobserver/sensor/MotionSensorData;-><init>(DFFFDZZZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(DFFFDZZZZI)V
    .locals 0
    .param p1, "gForceMagnitude"    # D
    .param p3, "rawX"    # F
    .param p4, "rawY"    # F
    .param p5, "rawZ"    # F
    .param p6, "vibrationIntensity"    # D
    .param p8, "hardBrakingDetected"    # Z
    .param p9, "hardLaunchDetected"    # Z
    .param p10, "crashOrFallDetected"    # Z
    .param p11, "isSensorAvailable"    # Z
    .param p12, "activeSamplingFps"    # I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->gForceMagnitude:D

    .line 16
    iput p3, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->rawX:F

    .line 17
    iput p4, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->rawY:F

    .line 18
    iput p5, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->rawZ:F

    .line 19
    iput-wide p6, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->vibrationIntensity:D

    .line 20
    iput-boolean p8, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->hardBrakingDetected:Z

    .line 21
    iput-boolean p9, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->hardLaunchDetected:Z

    .line 22
    iput-boolean p10, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->crashOrFallDetected:Z

    .line 23
    iput-boolean p11, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->isSensorAvailable:Z

    .line 24
    iput p12, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->activeSamplingFps:I

    .line 14
    return-void
.end method

.method public synthetic constructor <init>(DFFFDZZZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    .line 14
    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 15
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 14
    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 16
    move v3, v4

    goto :goto_1

    .line 14
    :cond_1
    move/from16 v3, p3

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    .line 17
    move v5, v4

    goto :goto_2

    .line 14
    :cond_2
    move/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    .line 18
    goto :goto_3

    .line 14
    :cond_3
    move/from16 v4, p5

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    .line 19
    const-wide/16 v6, 0x0

    goto :goto_4

    .line 14
    :cond_4
    move-wide/from16 v6, p6

    :goto_4
    and-int/lit8 v8, v0, 0x20

    const/4 v9, 0x0

    if-eqz v8, :cond_5

    .line 20
    move v8, v9

    goto :goto_5

    .line 14
    :cond_5
    move/from16 v8, p8

    :goto_5
    and-int/lit8 v10, v0, 0x40

    if-eqz v10, :cond_6

    .line 21
    move v10, v9

    goto :goto_6

    .line 14
    :cond_6
    move/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_7

    .line 22
    move v11, v9

    goto :goto_7

    .line 14
    :cond_7
    move/from16 v11, p10

    :goto_7
    and-int/lit16 v12, v0, 0x100

    if-eqz v12, :cond_8

    .line 23
    goto :goto_8

    .line 14
    :cond_8
    move/from16 v9, p11

    :goto_8
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    .line 24
    const/16 v0, 0x3c

    goto :goto_9

    .line 14
    :cond_9
    move/from16 v0, p12

    :goto_9
    move-object p1, p0

    move-wide p2, v1

    move/from16 p4, v3

    move/from16 p5, v5

    move/from16 p6, v4

    move-wide/from16 p7, v6

    move/from16 p9, v8

    move/from16 p10, v10

    move/from16 p11, v11

    move/from16 p12, v9

    move/from16 p13, v0

    invoke-direct/range {p1 .. p13}, Lcom/cgs/atvobserver/sensor/MotionSensorData;-><init>(DFFFDZZZZI)V

    .line 25
    return-void
.end method

.method public static synthetic copy$default(Lcom/cgs/atvobserver/sensor/MotionSensorData;DFFFDZZZZIILjava/lang/Object;)Lcom/cgs/atvobserver/sensor/MotionSensorData;
    .locals 13

    move-object v0, p0

    move/from16 v1, p13

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->gForceMagnitude:D

    goto :goto_0

    :cond_0
    move-wide v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget v4, v0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->rawX:F

    goto :goto_1

    :cond_1
    move/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget v5, v0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->rawY:F

    goto :goto_2

    :cond_2
    move/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget v6, v0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->rawZ:F

    goto :goto_3

    :cond_3
    move/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-wide v7, v0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->vibrationIntensity:D

    goto :goto_4

    :cond_4
    move-wide/from16 v7, p6

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    iget-boolean v9, v0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->hardBrakingDetected:Z

    goto :goto_5

    :cond_5
    move/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget-boolean v10, v0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->hardLaunchDetected:Z

    goto :goto_6

    :cond_6
    move/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    iget-boolean v11, v0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->crashOrFallDetected:Z

    goto :goto_7

    :cond_7
    move/from16 v11, p10

    :goto_7
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_8

    iget-boolean v12, v0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->isSensorAvailable:Z

    goto :goto_8

    :cond_8
    move/from16 v12, p11

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget v1, v0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->activeSamplingFps:I

    goto :goto_9

    :cond_9
    move/from16 v1, p12

    :goto_9
    move-wide p1, v2

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move-wide/from16 p6, v7

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v1

    invoke-virtual/range {p0 .. p12}, Lcom/cgs/atvobserver/sensor/MotionSensorData;->copy(DFFFDZZZZI)Lcom/cgs/atvobserver/sensor/MotionSensorData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->gForceMagnitude:D

    return-wide v0
.end method

.method public final component10()I
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->activeSamplingFps:I

    return v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->rawX:F

    return v0
.end method

.method public final component3()F
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->rawY:F

    return v0
.end method

.method public final component4()F
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->rawZ:F

    return v0
.end method

.method public final component5()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->vibrationIntensity:D

    return-wide v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->hardBrakingDetected:Z

    return v0
.end method

.method public final component7()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->hardLaunchDetected:Z

    return v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->crashOrFallDetected:Z

    return v0
.end method

.method public final component9()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->isSensorAvailable:Z

    return v0
.end method

.method public final copy(DFFFDZZZZI)Lcom/cgs/atvobserver/sensor/MotionSensorData;
    .locals 14

    new-instance v13, Lcom/cgs/atvobserver/sensor/MotionSensorData;

    move-object v0, v13

    move-wide v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/cgs/atvobserver/sensor/MotionSensorData;-><init>(DFFFDZZZZI)V

    return-object v13
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cgs/atvobserver/sensor/MotionSensorData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/cgs/atvobserver/sensor/MotionSensorData;

    iget-wide v3, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->gForceMagnitude:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/sensor/MotionSensorData;->gForceMagnitude:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->rawX:F

    iget v4, v1, Lcom/cgs/atvobserver/sensor/MotionSensorData;->rawX:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->rawY:F

    iget v4, v1, Lcom/cgs/atvobserver/sensor/MotionSensorData;->rawY:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_4
    iget v3, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->rawZ:F

    iget v4, v1, Lcom/cgs/atvobserver/sensor/MotionSensorData;->rawZ:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->vibrationIntensity:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/sensor/MotionSensorData;->vibrationIntensity:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_6

    return v2

    :cond_6
    iget-boolean v3, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->hardBrakingDetected:Z

    iget-boolean v4, v1, Lcom/cgs/atvobserver/sensor/MotionSensorData;->hardBrakingDetected:Z

    if-eq v3, v4, :cond_7

    return v2

    :cond_7
    iget-boolean v3, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->hardLaunchDetected:Z

    iget-boolean v4, v1, Lcom/cgs/atvobserver/sensor/MotionSensorData;->hardLaunchDetected:Z

    if-eq v3, v4, :cond_8

    return v2

    :cond_8
    iget-boolean v3, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->crashOrFallDetected:Z

    iget-boolean v4, v1, Lcom/cgs/atvobserver/sensor/MotionSensorData;->crashOrFallDetected:Z

    if-eq v3, v4, :cond_9

    return v2

    :cond_9
    iget-boolean v3, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->isSensorAvailable:Z

    iget-boolean v4, v1, Lcom/cgs/atvobserver/sensor/MotionSensorData;->isSensorAvailable:Z

    if-eq v3, v4, :cond_a

    return v2

    :cond_a
    iget v3, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->activeSamplingFps:I

    iget v1, v1, Lcom/cgs/atvobserver/sensor/MotionSensorData;->activeSamplingFps:I

    if-eq v3, v1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getActiveSamplingFps()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->activeSamplingFps:I

    return v0
.end method

.method public final getCrashOrFallDetected()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->crashOrFallDetected:Z

    return v0
.end method

.method public final getGForceMagnitude()D
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->gForceMagnitude:D

    return-wide v0
.end method

.method public final getHardBrakingDetected()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->hardBrakingDetected:Z

    return v0
.end method

.method public final getHardLaunchDetected()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->hardLaunchDetected:Z

    return v0
.end method

.method public final getRawX()F
    .locals 1

    .line 16
    iget v0, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->rawX:F

    return v0
.end method

.method public final getRawY()F
    .locals 1

    .line 17
    iget v0, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->rawY:F

    return v0
.end method

.method public final getRawZ()F
    .locals 1

    .line 18
    iget v0, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->rawZ:F

    return v0
.end method

.method public final getVibrationIntensity()D
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->vibrationIntensity:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->gForceMagnitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->rawX:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->rawY:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->rawZ:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->vibrationIntensity:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->hardBrakingDetected:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->hardLaunchDetected:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->crashOrFallDetected:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->isSensorAvailable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->activeSamplingFps:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public final isSensorAvailable()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->isSensorAvailable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    iget-wide v0, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->gForceMagnitude:D

    iget v2, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->rawX:F

    iget v3, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->rawY:F

    iget v4, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->rawZ:F

    iget-wide v5, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->vibrationIntensity:D

    iget-boolean v7, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->hardBrakingDetected:Z

    iget-boolean v8, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->hardLaunchDetected:Z

    iget-boolean v9, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->crashOrFallDetected:Z

    iget-boolean v10, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->isSensorAvailable:Z

    iget v11, p0, Lcom/cgs/atvobserver/sensor/MotionSensorData;->activeSamplingFps:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MotionSensorData(gForceMagnitude="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rawX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rawY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rawZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vibrationIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hardBrakingDetected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hardLaunchDetected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", crashOrFallDetected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSensorAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activeSamplingFps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
