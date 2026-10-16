.class public final Lcom/cgs/atvobserver/sensor/LeanAngleTracker;
.super Ljava/lang/Object;
.source "LeanAngleTracker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J>\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/cgs/atvobserver/sensor/LeanAngleTracker;",
        "",
        "()V",
        "filteredPitch",
        "",
        "filteredRoll",
        "lastTimestampNs",
        "",
        "processSensorSample",
        "Lcom/cgs/atvobserver/sensor/LeanAngleData;",
        "accelX",
        "",
        "accelY",
        "accelZ",
        "gyroX",
        "gyroY",
        "gyroZ",
        "timestampNs",
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
.field private filteredPitch:D

.field private filteredRoll:D

.field private lastTimestampNs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lcom/cgs/atvobserver/sensor/LeanAngleTracker;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final processSensorSample(FFFFFFJ)Lcom/cgs/atvobserver/sensor/LeanAngleData;
    .locals 22
    .param p1, "accelX"    # F
    .param p2, "accelY"    # F
    .param p3, "accelZ"    # F
    .param p4, "gyroX"    # F
    .param p5, "gyroY"    # F
    .param p6, "gyroZ"    # F
    .param p7, "timestampNs"    # J

    .line 30
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p7

    iget-wide v5, v0, Lcom/cgs/atvobserver/sensor/LeanAngleTracker;->lastTimestampNs:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 31
    iput-wide v3, v0, Lcom/cgs/atvobserver/sensor/LeanAngleTracker;->lastTimestampNs:J

    .line 32
    new-instance v5, Lcom/cgs/atvobserver/sensor/LeanAngleData;

    const/16 v13, 0xf

    const/4 v14, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v14}, Lcom/cgs/atvobserver/sensor/LeanAngleData;-><init>(DDZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    .line 35
    :cond_0
    iget-wide v5, v0, Lcom/cgs/atvobserver/sensor/LeanAngleTracker;->lastTimestampNs:J

    sub-long v5, v3, v5

    long-to-double v5, v5

    const-wide v7, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v5, v7

    .line 36
    .local v5, "dtSec":D
    iput-wide v3, v0, Lcom/cgs/atvobserver/sensor/LeanAngleTracker;->lastTimestampNs:J

    .line 38
    float-to-double v7, v2

    mul-float v9, v1, v1

    mul-float v10, p3, p3

    add-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    .line 39
    .local v7, "accelRoll":D
    float-to-double v9, v1

    mul-float v11, v2, v2

    mul-float v12, p3, p3

    add-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v9

    .line 42
    .local v9, "accelPitch":D
    iget-wide v11, v0, Lcom/cgs/atvobserver/sensor/LeanAngleTracker;->filteredRoll:D

    move/from16 v13, p6

    float-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v14

    mul-double/2addr v14, v5

    add-double/2addr v11, v14

    const-wide v14, 0x3fef5c28f5c28f5cL    # 0.98

    mul-double/2addr v11, v14

    const-wide v16, 0x3f947ae147ae147bL    # 0.02

    mul-double v18, v7, v16

    add-double v11, v11, v18

    iput-wide v11, v0, Lcom/cgs/atvobserver/sensor/LeanAngleTracker;->filteredRoll:D

    .line 43
    iget-wide v11, v0, Lcom/cgs/atvobserver/sensor/LeanAngleTracker;->filteredPitch:D

    move/from16 v14, p4

    float-to-double v1, v14

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    mul-double/2addr v1, v5

    add-double/2addr v11, v1

    const-wide v1, 0x3fef5c28f5c28f5cL    # 0.98

    mul-double/2addr v11, v1

    mul-double v16, v16, v9

    add-double v11, v11, v16

    iput-wide v11, v0, Lcom/cgs/atvobserver/sensor/LeanAngleTracker;->filteredPitch:D

    .line 45
    iget-wide v1, v0, Lcom/cgs/atvobserver/sensor/LeanAngleTracker;->filteredPitch:D

    const-wide/high16 v11, 0x402e000000000000L    # 15.0

    cmpl-double v1, v1, v11

    const/4 v11, 0x0

    if-lez v1, :cond_1

    const/16 v20, 0x1

    goto :goto_0

    :cond_1
    move/from16 v20, v11

    .line 46
    .local v20, "isWheelie":Z
    :goto_0
    iget-wide v2, v0, Lcom/cgs/atvobserver/sensor/LeanAngleTracker;->filteredRoll:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v15, 0x4034000000000000L    # 20.0

    cmpl-double v2, v2, v15

    if-lez v2, :cond_2

    const/16 v21, 0x1

    goto :goto_1

    :cond_2
    move/from16 v21, v11

    .line 48
    .local v21, "isCornering":Z
    :goto_1
    new-instance v1, Lcom/cgs/atvobserver/sensor/LeanAngleData;

    .line 49
    iget-wide v2, v0, Lcom/cgs/atvobserver/sensor/LeanAngleTracker;->filteredRoll:D

    .line 50
    iget-wide v11, v0, Lcom/cgs/atvobserver/sensor/LeanAngleTracker;->filteredPitch:D

    .line 51
    nop

    .line 52
    nop

    .line 48
    move-object v15, v1

    move-wide/from16 v16, v2

    move-wide/from16 v18, v11

    invoke-direct/range {v15 .. v21}, Lcom/cgs/atvobserver/sensor/LeanAngleData;-><init>(DDZZ)V

    return-object v1
.end method
