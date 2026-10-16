.class public final Lcom/cgs/atvobserver/sensor/LeanAngleData;
.super Ljava/lang/Object;
.source "LeanAngleTracker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B-\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0008J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0006H\u00c6\u0003J1\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00062\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/cgs/atvobserver/sensor/LeanAngleData;",
        "",
        "rollLeanAngleDeg",
        "",
        "pitchAngleDeg",
        "isWheelieDetected",
        "",
        "isSharpCornering",
        "(DDZZ)V",
        "()Z",
        "getPitchAngleDeg",
        "()D",
        "getRollLeanAngleDeg",
        "component1",
        "component2",
        "component3",
        "component4",
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
.field private final isSharpCornering:Z

.field private final isWheelieDetected:Z

.field private final pitchAngleDeg:D

.field private final rollLeanAngleDeg:D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const/16 v7, 0xf

    const/4 v8, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/cgs/atvobserver/sensor/LeanAngleData;-><init>(DDZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(DDZZ)V
    .locals 0
    .param p1, "rollLeanAngleDeg"    # D
    .param p3, "pitchAngleDeg"    # D
    .param p5, "isWheelieDetected"    # Z
    .param p6, "isSharpCornering"    # Z

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide p1, p0, Lcom/cgs/atvobserver/sensor/LeanAngleData;->rollLeanAngleDeg:D

    .line 8
    iput-wide p3, p0, Lcom/cgs/atvobserver/sensor/LeanAngleData;->pitchAngleDeg:D

    .line 9
    iput-boolean p5, p0, Lcom/cgs/atvobserver/sensor/LeanAngleData;->isWheelieDetected:Z

    .line 10
    iput-boolean p6, p0, Lcom/cgs/atvobserver/sensor/LeanAngleData;->isSharpCornering:Z

    .line 6
    return-void
.end method

.method public synthetic constructor <init>(DDZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    .line 6
    and-int/lit8 p8, p7, 0x1

    const-wide/16 v0, 0x0

    if-eqz p8, :cond_0

    .line 7
    move-wide v2, v0

    goto :goto_0

    .line 6
    :cond_0
    move-wide v2, p1

    :goto_0
    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    .line 8
    goto :goto_1

    .line 6
    :cond_1
    move-wide v0, p3

    :goto_1
    and-int/lit8 p1, p7, 0x4

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 9
    move p8, p2

    goto :goto_2

    .line 6
    :cond_2
    move p8, p5

    :goto_2
    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    .line 10
    move p7, p2

    goto :goto_3

    .line 6
    :cond_3
    move p7, p6

    :goto_3
    move-object p1, p0

    move-wide p2, v2

    move-wide p4, v0

    move p6, p8

    invoke-direct/range {p1 .. p7}, Lcom/cgs/atvobserver/sensor/LeanAngleData;-><init>(DDZZ)V

    .line 11
    return-void
.end method

.method public static synthetic copy$default(Lcom/cgs/atvobserver/sensor/LeanAngleData;DDZZILjava/lang/Object;)Lcom/cgs/atvobserver/sensor/LeanAngleData;
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-wide p1, p0, Lcom/cgs/atvobserver/sensor/LeanAngleData;->rollLeanAngleDeg:D

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    iget-wide p3, p0, Lcom/cgs/atvobserver/sensor/LeanAngleData;->pitchAngleDeg:D

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    iget-boolean p5, p0, Lcom/cgs/atvobserver/sensor/LeanAngleData;->isWheelieDetected:Z

    :cond_2
    move v5, p5

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    iget-boolean p6, p0, Lcom/cgs/atvobserver/sensor/LeanAngleData;->isSharpCornering:Z

    :cond_3
    move v6, p6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/cgs/atvobserver/sensor/LeanAngleData;->copy(DDZZ)Lcom/cgs/atvobserver/sensor/LeanAngleData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/sensor/LeanAngleData;->rollLeanAngleDeg:D

    return-wide v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/sensor/LeanAngleData;->pitchAngleDeg:D

    return-wide v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cgs/atvobserver/sensor/LeanAngleData;->isWheelieDetected:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cgs/atvobserver/sensor/LeanAngleData;->isSharpCornering:Z

    return v0
.end method

.method public final copy(DDZZ)Lcom/cgs/atvobserver/sensor/LeanAngleData;
    .locals 8

    new-instance v7, Lcom/cgs/atvobserver/sensor/LeanAngleData;

    move-object v0, v7

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/cgs/atvobserver/sensor/LeanAngleData;-><init>(DDZZ)V

    return-object v7
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cgs/atvobserver/sensor/LeanAngleData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/cgs/atvobserver/sensor/LeanAngleData;

    iget-wide v3, p0, Lcom/cgs/atvobserver/sensor/LeanAngleData;->rollLeanAngleDeg:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/sensor/LeanAngleData;->rollLeanAngleDeg:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/cgs/atvobserver/sensor/LeanAngleData;->pitchAngleDeg:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/sensor/LeanAngleData;->pitchAngleDeg:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    iget-boolean v3, p0, Lcom/cgs/atvobserver/sensor/LeanAngleData;->isWheelieDetected:Z

    iget-boolean v4, v1, Lcom/cgs/atvobserver/sensor/LeanAngleData;->isWheelieDetected:Z

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-boolean v3, p0, Lcom/cgs/atvobserver/sensor/LeanAngleData;->isSharpCornering:Z

    iget-boolean v1, v1, Lcom/cgs/atvobserver/sensor/LeanAngleData;->isSharpCornering:Z

    if-eq v3, v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getPitchAngleDeg()D
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/cgs/atvobserver/sensor/LeanAngleData;->pitchAngleDeg:D

    return-wide v0
.end method

.method public final getRollLeanAngleDeg()D
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/cgs/atvobserver/sensor/LeanAngleData;->rollLeanAngleDeg:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/cgs/atvobserver/sensor/LeanAngleData;->rollLeanAngleDeg:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/sensor/LeanAngleData;->pitchAngleDeg:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/cgs/atvobserver/sensor/LeanAngleData;->isWheelieDetected:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/cgs/atvobserver/sensor/LeanAngleData;->isSharpCornering:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public final isSharpCornering()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/cgs/atvobserver/sensor/LeanAngleData;->isSharpCornering:Z

    return v0
.end method

.method public final isWheelieDetected()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/cgs/atvobserver/sensor/LeanAngleData;->isWheelieDetected:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-wide v0, p0, Lcom/cgs/atvobserver/sensor/LeanAngleData;->rollLeanAngleDeg:D

    iget-wide v2, p0, Lcom/cgs/atvobserver/sensor/LeanAngleData;->pitchAngleDeg:D

    iget-boolean v4, p0, Lcom/cgs/atvobserver/sensor/LeanAngleData;->isWheelieDetected:Z

    iget-boolean v5, p0, Lcom/cgs/atvobserver/sensor/LeanAngleData;->isSharpCornering:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LeanAngleData(rollLeanAngleDeg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pitchAngleDeg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isWheelieDetected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSharpCornering="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
