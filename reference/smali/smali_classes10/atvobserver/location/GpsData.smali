.class public final Lcom/cgs/atvobserver/location/GpsData;
.super Ljava/lang/Object;
.source "GpsTracker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0015\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001BK\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u000bH\u00c6\u0003JO\u0010\u001d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\u00c6\u0001J\u0013\u0010\u001e\u001a\u00020\u00072\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010 \u001a\u00020!H\u00d6\u0001J\t\u0010\"\u001a\u00020#H\u00d6\u0001R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0012R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0010R\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0010\u00a8\u0006$"
    }
    d2 = {
        "Lcom/cgs/atvobserver/location/GpsData;",
        "",
        "currentSpeedKmh",
        "",
        "maxSpeedKmh",
        "distanceKm",
        "isGpsAvailable",
        "",
        "latitude",
        "longitude",
        "accuracyMeters",
        "",
        "(DDDZDDF)V",
        "getAccuracyMeters",
        "()F",
        "getCurrentSpeedKmh",
        "()D",
        "getDistanceKm",
        "()Z",
        "getLatitude",
        "getLongitude",
        "getMaxSpeedKmh",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
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
.field private final accuracyMeters:F

.field private final currentSpeedKmh:D

.field private final distanceKm:D

.field private final isGpsAvailable:Z

.field private final latitude:D

.field private final longitude:D

.field private final maxSpeedKmh:D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 15

    const/16 v13, 0x7f

    const/4 v14, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/cgs/atvobserver/location/GpsData;-><init>(DDDZDDFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(DDDZDDF)V
    .locals 0
    .param p1, "currentSpeedKmh"    # D
    .param p3, "maxSpeedKmh"    # D
    .param p5, "distanceKm"    # D
    .param p7, "isGpsAvailable"    # Z
    .param p8, "latitude"    # D
    .param p10, "longitude"    # D
    .param p12, "accuracyMeters"    # F

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/cgs/atvobserver/location/GpsData;->currentSpeedKmh:D

    .line 16
    iput-wide p3, p0, Lcom/cgs/atvobserver/location/GpsData;->maxSpeedKmh:D

    .line 17
    iput-wide p5, p0, Lcom/cgs/atvobserver/location/GpsData;->distanceKm:D

    .line 18
    iput-boolean p7, p0, Lcom/cgs/atvobserver/location/GpsData;->isGpsAvailable:Z

    .line 19
    iput-wide p8, p0, Lcom/cgs/atvobserver/location/GpsData;->latitude:D

    .line 20
    iput-wide p10, p0, Lcom/cgs/atvobserver/location/GpsData;->longitude:D

    .line 21
    iput p12, p0, Lcom/cgs/atvobserver/location/GpsData;->accuracyMeters:F

    .line 14
    return-void
.end method

.method public synthetic constructor <init>(DDDZDDFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    .line 14
    and-int/lit8 v0, p13, 0x1

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 15
    move-wide v3, v1

    goto :goto_0

    .line 14
    :cond_0
    move-wide v3, p1

    :goto_0
    and-int/lit8 v0, p13, 0x2

    if-eqz v0, :cond_1

    .line 16
    move-wide v5, v1

    goto :goto_1

    .line 14
    :cond_1
    move-wide v5, p3

    :goto_1
    and-int/lit8 v0, p13, 0x4

    if-eqz v0, :cond_2

    .line 17
    move-wide v7, v1

    goto :goto_2

    .line 14
    :cond_2
    move-wide/from16 v7, p5

    :goto_2
    and-int/lit8 v0, p13, 0x8

    if-eqz v0, :cond_3

    .line 18
    const/4 v0, 0x0

    goto :goto_3

    .line 14
    :cond_3
    move/from16 v0, p7

    :goto_3
    and-int/lit8 v9, p13, 0x10

    if-eqz v9, :cond_4

    .line 19
    move-wide v9, v1

    goto :goto_4

    .line 14
    :cond_4
    move-wide/from16 v9, p8

    :goto_4
    and-int/lit8 v11, p13, 0x20

    if-eqz v11, :cond_5

    .line 20
    goto :goto_5

    .line 14
    :cond_5
    move-wide/from16 v1, p10

    :goto_5
    and-int/lit8 v11, p13, 0x40

    if-eqz v11, :cond_6

    .line 21
    const/4 v11, 0x0

    goto :goto_6

    .line 14
    :cond_6
    move/from16 v11, p12

    :goto_6
    move-object p1, p0

    move-wide p2, v3

    move-wide/from16 p4, v5

    move-wide/from16 p6, v7

    move/from16 p8, v0

    move-wide/from16 p9, v9

    move-wide/from16 p11, v1

    move/from16 p13, v11

    invoke-direct/range {p1 .. p13}, Lcom/cgs/atvobserver/location/GpsData;-><init>(DDDZDDF)V

    .line 22
    return-void
.end method

.method public static synthetic copy$default(Lcom/cgs/atvobserver/location/GpsData;DDDZDDFILjava/lang/Object;)Lcom/cgs/atvobserver/location/GpsData;
    .locals 13

    move-object v0, p0

    and-int/lit8 v1, p13, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/cgs/atvobserver/location/GpsData;->currentSpeedKmh:D

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p13, 0x2

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lcom/cgs/atvobserver/location/GpsData;->maxSpeedKmh:D

    goto :goto_1

    :cond_1
    move-wide/from16 v3, p3

    :goto_1
    and-int/lit8 v5, p13, 0x4

    if-eqz v5, :cond_2

    iget-wide v5, v0, Lcom/cgs/atvobserver/location/GpsData;->distanceKm:D

    goto :goto_2

    :cond_2
    move-wide/from16 v5, p5

    :goto_2
    and-int/lit8 v7, p13, 0x8

    if-eqz v7, :cond_3

    iget-boolean v7, v0, Lcom/cgs/atvobserver/location/GpsData;->isGpsAvailable:Z

    goto :goto_3

    :cond_3
    move/from16 v7, p7

    :goto_3
    and-int/lit8 v8, p13, 0x10

    if-eqz v8, :cond_4

    iget-wide v8, v0, Lcom/cgs/atvobserver/location/GpsData;->latitude:D

    goto :goto_4

    :cond_4
    move-wide/from16 v8, p8

    :goto_4
    and-int/lit8 v10, p13, 0x20

    if-eqz v10, :cond_5

    iget-wide v10, v0, Lcom/cgs/atvobserver/location/GpsData;->longitude:D

    goto :goto_5

    :cond_5
    move-wide/from16 v10, p10

    :goto_5
    and-int/lit8 v12, p13, 0x40

    if-eqz v12, :cond_6

    iget v12, v0, Lcom/cgs/atvobserver/location/GpsData;->accuracyMeters:F

    goto :goto_6

    :cond_6
    move/from16 v12, p12

    :goto_6
    move-wide p1, v1

    move-wide/from16 p3, v3

    move-wide/from16 p5, v5

    move/from16 p7, v7

    move-wide/from16 p8, v8

    move-wide/from16 p10, v10

    move/from16 p12, v12

    invoke-virtual/range {p0 .. p12}, Lcom/cgs/atvobserver/location/GpsData;->copy(DDDZDDF)Lcom/cgs/atvobserver/location/GpsData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/location/GpsData;->currentSpeedKmh:D

    return-wide v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/location/GpsData;->maxSpeedKmh:D

    return-wide v0
.end method

.method public final component3()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/location/GpsData;->distanceKm:D

    return-wide v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cgs/atvobserver/location/GpsData;->isGpsAvailable:Z

    return v0
.end method

.method public final component5()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/location/GpsData;->latitude:D

    return-wide v0
.end method

.method public final component6()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/location/GpsData;->longitude:D

    return-wide v0
.end method

.method public final component7()F
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/location/GpsData;->accuracyMeters:F

    return v0
.end method

.method public final copy(DDDZDDF)Lcom/cgs/atvobserver/location/GpsData;
    .locals 14

    new-instance v13, Lcom/cgs/atvobserver/location/GpsData;

    move-object v0, v13

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/cgs/atvobserver/location/GpsData;-><init>(DDDZDDF)V

    return-object v13
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cgs/atvobserver/location/GpsData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/cgs/atvobserver/location/GpsData;

    iget-wide v3, p0, Lcom/cgs/atvobserver/location/GpsData;->currentSpeedKmh:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/location/GpsData;->currentSpeedKmh:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/cgs/atvobserver/location/GpsData;->maxSpeedKmh:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/location/GpsData;->maxSpeedKmh:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/cgs/atvobserver/location/GpsData;->distanceKm:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/location/GpsData;->distanceKm:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_4
    iget-boolean v3, p0, Lcom/cgs/atvobserver/location/GpsData;->isGpsAvailable:Z

    iget-boolean v4, v1, Lcom/cgs/atvobserver/location/GpsData;->isGpsAvailable:Z

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/cgs/atvobserver/location/GpsData;->latitude:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/location/GpsData;->latitude:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/cgs/atvobserver/location/GpsData;->longitude:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/location/GpsData;->longitude:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_7

    return v2

    :cond_7
    iget v3, p0, Lcom/cgs/atvobserver/location/GpsData;->accuracyMeters:F

    iget v1, v1, Lcom/cgs/atvobserver/location/GpsData;->accuracyMeters:F

    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getAccuracyMeters()F
    .locals 1

    .line 21
    iget v0, p0, Lcom/cgs/atvobserver/location/GpsData;->accuracyMeters:F

    return v0
.end method

.method public final getCurrentSpeedKmh()D
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/cgs/atvobserver/location/GpsData;->currentSpeedKmh:D

    return-wide v0
.end method

.method public final getDistanceKm()D
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/cgs/atvobserver/location/GpsData;->distanceKm:D

    return-wide v0
.end method

.method public final getLatitude()D
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/cgs/atvobserver/location/GpsData;->latitude:D

    return-wide v0
.end method

.method public final getLongitude()D
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/cgs/atvobserver/location/GpsData;->longitude:D

    return-wide v0
.end method

.method public final getMaxSpeedKmh()D
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/cgs/atvobserver/location/GpsData;->maxSpeedKmh:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/cgs/atvobserver/location/GpsData;->currentSpeedKmh:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/location/GpsData;->maxSpeedKmh:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/location/GpsData;->distanceKm:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/cgs/atvobserver/location/GpsData;->isGpsAvailable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/location/GpsData;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/location/GpsData;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/location/GpsData;->accuracyMeters:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public final isGpsAvailable()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/cgs/atvobserver/location/GpsData;->isGpsAvailable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    iget-wide v0, p0, Lcom/cgs/atvobserver/location/GpsData;->currentSpeedKmh:D

    iget-wide v2, p0, Lcom/cgs/atvobserver/location/GpsData;->maxSpeedKmh:D

    iget-wide v4, p0, Lcom/cgs/atvobserver/location/GpsData;->distanceKm:D

    iget-boolean v6, p0, Lcom/cgs/atvobserver/location/GpsData;->isGpsAvailable:Z

    iget-wide v7, p0, Lcom/cgs/atvobserver/location/GpsData;->latitude:D

    iget-wide v9, p0, Lcom/cgs/atvobserver/location/GpsData;->longitude:D

    iget v11, p0, Lcom/cgs/atvobserver/location/GpsData;->accuracyMeters:F

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "GpsData(currentSpeedKmh="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxSpeedKmh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", distanceKm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isGpsAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accuracyMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
