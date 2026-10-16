.class public final Lcom/cgs/atvobserver/domain/DaelimOdometerState;
.super Ljava/lang/Object;
.source "DaelimOdometerManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001BA\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\tH\u00c6\u0003JE\u0010\u001b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001J\t\u0010!\u001a\u00020\"H\u00d6\u0001R\u0011\u0010\u000b\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\rR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\r\u00a8\u0006#"
    }
    d2 = {
        "Lcom/cgs/atvobserver/domain/DaelimOdometerState;",
        "",
        "initialPhysicalOdometerKm",
        "",
        "totalGpsKmSinceSetup",
        "manualAdjustmentKm",
        "distanceCorrectionFactor",
        "lastPhysicalCheckKm",
        "lastCheckTimestamp",
        "",
        "(DDDDDJ)V",
        "currentAppOdometerKm",
        "getCurrentAppOdometerKm",
        "()D",
        "getDistanceCorrectionFactor",
        "getInitialPhysicalOdometerKm",
        "getLastCheckTimestamp",
        "()J",
        "getLastPhysicalCheckKm",
        "getManualAdjustmentKm",
        "getTotalGpsKmSinceSetup",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "",
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
.field private final distanceCorrectionFactor:D

.field private final initialPhysicalOdometerKm:D

.field private final lastCheckTimestamp:J

.field private final lastPhysicalCheckKm:D

.field private final manualAdjustmentKm:D

.field private final totalGpsKmSinceSetup:D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 15

    const/16 v13, 0x3f

    const/4 v14, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/cgs/atvobserver/domain/DaelimOdometerState;-><init>(DDDDDJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(DDDDDJ)V
    .locals 0
    .param p1, "initialPhysicalOdometerKm"    # D
    .param p3, "totalGpsKmSinceSetup"    # D
    .param p5, "manualAdjustmentKm"    # D
    .param p7, "distanceCorrectionFactor"    # D
    .param p9, "lastPhysicalCheckKm"    # D
    .param p11, "lastCheckTimestamp"    # J

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->initialPhysicalOdometerKm:D

    .line 11
    iput-wide p3, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->totalGpsKmSinceSetup:D

    .line 12
    iput-wide p5, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->manualAdjustmentKm:D

    .line 13
    iput-wide p7, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->distanceCorrectionFactor:D

    .line 14
    iput-wide p9, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->lastPhysicalCheckKm:D

    .line 15
    iput-wide p11, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->lastCheckTimestamp:J

    .line 9
    return-void
.end method

.method public synthetic constructor <init>(DDDDDJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    .line 9
    and-int/lit8 v0, p13, 0x1

    const-wide v1, 0x40d1fd0000000000L    # 18420.0

    if-eqz v0, :cond_0

    .line 10
    move-wide v3, v1

    goto :goto_0

    .line 9
    :cond_0
    move-wide v3, p1

    :goto_0
    and-int/lit8 v0, p13, 0x2

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_1

    .line 11
    move-wide v7, v5

    goto :goto_1

    .line 9
    :cond_1
    move-wide/from16 v7, p3

    :goto_1
    and-int/lit8 v0, p13, 0x4

    if-eqz v0, :cond_2

    .line 12
    goto :goto_2

    .line 9
    :cond_2
    move-wide/from16 v5, p5

    :goto_2
    and-int/lit8 v0, p13, 0x8

    if-eqz v0, :cond_3

    .line 13
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    goto :goto_3

    .line 9
    :cond_3
    move-wide/from16 v9, p7

    :goto_3
    and-int/lit8 v0, p13, 0x10

    if-eqz v0, :cond_4

    .line 14
    goto :goto_4

    .line 9
    :cond_4
    move-wide/from16 v1, p9

    :goto_4
    and-int/lit8 v0, p13, 0x20

    if-eqz v0, :cond_5

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    goto :goto_5

    .line 9
    :cond_5
    move-wide/from16 v11, p11

    :goto_5
    move-object p1, p0

    move-wide p2, v3

    move-wide/from16 p4, v7

    move-wide/from16 p6, v5

    move-wide/from16 p8, v9

    move-wide/from16 p10, v1

    move-wide/from16 p12, v11

    invoke-direct/range {p1 .. p13}, Lcom/cgs/atvobserver/domain/DaelimOdometerState;-><init>(DDDDDJ)V

    .line 19
    return-void
.end method

.method public static synthetic copy$default(Lcom/cgs/atvobserver/domain/DaelimOdometerState;DDDDDJILjava/lang/Object;)Lcom/cgs/atvobserver/domain/DaelimOdometerState;
    .locals 13

    move-object v0, p0

    and-int/lit8 v1, p13, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->initialPhysicalOdometerKm:D

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p13, 0x2

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->totalGpsKmSinceSetup:D

    goto :goto_1

    :cond_1
    move-wide/from16 v3, p3

    :goto_1
    and-int/lit8 v5, p13, 0x4

    if-eqz v5, :cond_2

    iget-wide v5, v0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->manualAdjustmentKm:D

    goto :goto_2

    :cond_2
    move-wide/from16 v5, p5

    :goto_2
    and-int/lit8 v7, p13, 0x8

    if-eqz v7, :cond_3

    iget-wide v7, v0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->distanceCorrectionFactor:D

    goto :goto_3

    :cond_3
    move-wide/from16 v7, p7

    :goto_3
    and-int/lit8 v9, p13, 0x10

    if-eqz v9, :cond_4

    iget-wide v9, v0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->lastPhysicalCheckKm:D

    goto :goto_4

    :cond_4
    move-wide/from16 v9, p9

    :goto_4
    and-int/lit8 v11, p13, 0x20

    if-eqz v11, :cond_5

    iget-wide v11, v0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->lastCheckTimestamp:J

    goto :goto_5

    :cond_5
    move-wide/from16 v11, p11

    :goto_5
    move-wide p1, v1

    move-wide/from16 p3, v3

    move-wide/from16 p5, v5

    move-wide/from16 p7, v7

    move-wide/from16 p9, v9

    move-wide/from16 p11, v11

    invoke-virtual/range {p0 .. p12}, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->copy(DDDDDJ)Lcom/cgs/atvobserver/domain/DaelimOdometerState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->initialPhysicalOdometerKm:D

    return-wide v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->totalGpsKmSinceSetup:D

    return-wide v0
.end method

.method public final component3()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->manualAdjustmentKm:D

    return-wide v0
.end method

.method public final component4()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->distanceCorrectionFactor:D

    return-wide v0
.end method

.method public final component5()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->lastPhysicalCheckKm:D

    return-wide v0
.end method

.method public final component6()J
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->lastCheckTimestamp:J

    return-wide v0
.end method

.method public final copy(DDDDDJ)Lcom/cgs/atvobserver/domain/DaelimOdometerState;
    .locals 14

    new-instance v13, Lcom/cgs/atvobserver/domain/DaelimOdometerState;

    move-object v0, v13

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Lcom/cgs/atvobserver/domain/DaelimOdometerState;-><init>(DDDDDJ)V

    return-object v13
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cgs/atvobserver/domain/DaelimOdometerState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/cgs/atvobserver/domain/DaelimOdometerState;

    iget-wide v3, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->initialPhysicalOdometerKm:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->initialPhysicalOdometerKm:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->totalGpsKmSinceSetup:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->totalGpsKmSinceSetup:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->manualAdjustmentKm:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->manualAdjustmentKm:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->distanceCorrectionFactor:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->distanceCorrectionFactor:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->lastPhysicalCheckKm:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->lastPhysicalCheckKm:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->lastCheckTimestamp:J

    iget-wide v5, v1, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->lastCheckTimestamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getCurrentAppOdometerKm()D
    .locals 6

    .line 18
    iget-wide v0, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->initialPhysicalOdometerKm:D

    iget-wide v2, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->totalGpsKmSinceSetup:D

    iget-wide v4, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->distanceCorrectionFactor:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->manualAdjustmentKm:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final getDistanceCorrectionFactor()D
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->distanceCorrectionFactor:D

    return-wide v0
.end method

.method public final getInitialPhysicalOdometerKm()D
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->initialPhysicalOdometerKm:D

    return-wide v0
.end method

.method public final getLastCheckTimestamp()J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->lastCheckTimestamp:J

    return-wide v0
.end method

.method public final getLastPhysicalCheckKm()D
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->lastPhysicalCheckKm:D

    return-wide v0
.end method

.method public final getManualAdjustmentKm()D
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->manualAdjustmentKm:D

    return-wide v0
.end method

.method public final getTotalGpsKmSinceSetup()D
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->totalGpsKmSinceSetup:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->initialPhysicalOdometerKm:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->totalGpsKmSinceSetup:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->manualAdjustmentKm:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->distanceCorrectionFactor:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->lastPhysicalCheckKm:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->lastCheckTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    iget-wide v0, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->initialPhysicalOdometerKm:D

    iget-wide v2, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->totalGpsKmSinceSetup:D

    iget-wide v4, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->manualAdjustmentKm:D

    iget-wide v6, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->distanceCorrectionFactor:D

    iget-wide v8, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->lastPhysicalCheckKm:D

    iget-wide v10, p0, Lcom/cgs/atvobserver/domain/DaelimOdometerState;->lastCheckTimestamp:J

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DaelimOdometerState(initialPhysicalOdometerKm="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalGpsKmSinceSetup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", manualAdjustmentKm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", distanceCorrectionFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastPhysicalCheckKm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastCheckTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
