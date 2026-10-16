.class public final Lcom/cgs/atvobserver/ai/DeepStudioReport;
.super Ljava/lang/Object;
.source "DeepStudioAnalysisEngine.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0016\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0002\u0010\rJ\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\tH\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u000bH\u00c6\u0003J\t\u0010\u001f\u001a\u00020\tH\u00c6\u0003JO\u0010 \u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\tH\u00c6\u0001J\u0013\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010$\u001a\u00020\u000bH\u00d6\u0001J\t\u0010%\u001a\u00020\tH\u00d6\u0001R\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000fR\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0011\u00a8\u0006&"
    }
    d2 = {
        "Lcom/cgs/atvobserver/ai/DeepStudioReport;",
        "",
        "rideId",
        "",
        "liveEstimatedFuelL",
        "",
        "deepCrunchFusedFuelL",
        "accuracyScorePct",
        "terrainBreakdownDeep",
        "",
        "peakRpmObserved",
        "",
        "analysisVerdict",
        "(JDDDLjava/lang/String;ILjava/lang/String;)V",
        "getAccuracyScorePct",
        "()D",
        "getAnalysisVerdict",
        "()Ljava/lang/String;",
        "getDeepCrunchFusedFuelL",
        "getLiveEstimatedFuelL",
        "getPeakRpmObserved",
        "()I",
        "getRideId",
        "()J",
        "getTerrainBreakdownDeep",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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
.field private final accuracyScorePct:D

.field private final analysisVerdict:Ljava/lang/String;

.field private final deepCrunchFusedFuelL:D

.field private final liveEstimatedFuelL:D

.field private final peakRpmObserved:I

.field private final rideId:J

.field private final terrainBreakdownDeep:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(JDDDLjava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "rideId"    # J
    .param p3, "liveEstimatedFuelL"    # D
    .param p5, "deepCrunchFusedFuelL"    # D
    .param p7, "accuracyScorePct"    # D
    .param p9, "terrainBreakdownDeep"    # Ljava/lang/String;
    .param p10, "peakRpmObserved"    # I
    .param p11, "analysisVerdict"    # Ljava/lang/String;

    const-string v0, "terrainBreakdownDeep"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analysisVerdict"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide p1, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->rideId:J

    .line 8
    iput-wide p3, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->liveEstimatedFuelL:D

    .line 9
    iput-wide p5, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->deepCrunchFusedFuelL:D

    .line 10
    iput-wide p7, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->accuracyScorePct:D

    .line 11
    iput-object p9, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->terrainBreakdownDeep:Ljava/lang/String;

    .line 12
    iput p10, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->peakRpmObserved:I

    .line 13
    iput-object p11, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->analysisVerdict:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public static synthetic copy$default(Lcom/cgs/atvobserver/ai/DeepStudioReport;JDDDLjava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Lcom/cgs/atvobserver/ai/DeepStudioReport;
    .locals 12

    move-object v0, p0

    and-int/lit8 v1, p12, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->rideId:J

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p12, 0x2

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->liveEstimatedFuelL:D

    goto :goto_1

    :cond_1
    move-wide v3, p3

    :goto_1
    and-int/lit8 v5, p12, 0x4

    if-eqz v5, :cond_2

    iget-wide v5, v0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->deepCrunchFusedFuelL:D

    goto :goto_2

    :cond_2
    move-wide/from16 v5, p5

    :goto_2
    and-int/lit8 v7, p12, 0x8

    if-eqz v7, :cond_3

    iget-wide v7, v0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->accuracyScorePct:D

    goto :goto_3

    :cond_3
    move-wide/from16 v7, p7

    :goto_3
    and-int/lit8 v9, p12, 0x10

    if-eqz v9, :cond_4

    iget-object v9, v0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->terrainBreakdownDeep:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v9, p9

    :goto_4
    and-int/lit8 v10, p12, 0x20

    if-eqz v10, :cond_5

    iget v10, v0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->peakRpmObserved:I

    goto :goto_5

    :cond_5
    move/from16 v10, p10

    :goto_5
    and-int/lit8 v11, p12, 0x40

    if-eqz v11, :cond_6

    iget-object v11, v0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->analysisVerdict:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v11, p11

    :goto_6
    move-wide p1, v1

    move-wide p3, v3

    move-wide/from16 p5, v5

    move-wide/from16 p7, v7

    move-object/from16 p9, v9

    move/from16 p10, v10

    move-object/from16 p11, v11

    invoke-virtual/range {p0 .. p11}, Lcom/cgs/atvobserver/ai/DeepStudioReport;->copy(JDDDLjava/lang/String;ILjava/lang/String;)Lcom/cgs/atvobserver/ai/DeepStudioReport;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->rideId:J

    return-wide v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->liveEstimatedFuelL:D

    return-wide v0
.end method

.method public final component3()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->deepCrunchFusedFuelL:D

    return-wide v0
.end method

.method public final component4()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->accuracyScorePct:D

    return-wide v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->terrainBreakdownDeep:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->peakRpmObserved:I

    return v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->analysisVerdict:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JDDDLjava/lang/String;ILjava/lang/String;)Lcom/cgs/atvobserver/ai/DeepStudioReport;
    .locals 15

    const-string v0, "terrainBreakdownDeep"

    move-object/from16 v13, p9

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analysisVerdict"

    move-object/from16 v14, p11

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cgs/atvobserver/ai/DeepStudioReport;

    move-object v1, v0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lcom/cgs/atvobserver/ai/DeepStudioReport;-><init>(JDDDLjava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cgs/atvobserver/ai/DeepStudioReport;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/cgs/atvobserver/ai/DeepStudioReport;

    iget-wide v3, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->rideId:J

    iget-wide v5, v1, Lcom/cgs/atvobserver/ai/DeepStudioReport;->rideId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->liveEstimatedFuelL:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/ai/DeepStudioReport;->liveEstimatedFuelL:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->deepCrunchFusedFuelL:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/ai/DeepStudioReport;->deepCrunchFusedFuelL:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->accuracyScorePct:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/ai/DeepStudioReport;->accuracyScorePct:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->terrainBreakdownDeep:Ljava/lang/String;

    iget-object v4, v1, Lcom/cgs/atvobserver/ai/DeepStudioReport;->terrainBreakdownDeep:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget v3, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->peakRpmObserved:I

    iget v4, v1, Lcom/cgs/atvobserver/ai/DeepStudioReport;->peakRpmObserved:I

    if-eq v3, v4, :cond_7

    return v2

    :cond_7
    iget-object v3, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->analysisVerdict:Ljava/lang/String;

    iget-object v1, v1, Lcom/cgs/atvobserver/ai/DeepStudioReport;->analysisVerdict:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getAccuracyScorePct()D
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->accuracyScorePct:D

    return-wide v0
.end method

.method public final getAnalysisVerdict()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->analysisVerdict:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeepCrunchFusedFuelL()D
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->deepCrunchFusedFuelL:D

    return-wide v0
.end method

.method public final getLiveEstimatedFuelL()D
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->liveEstimatedFuelL:D

    return-wide v0
.end method

.method public final getPeakRpmObserved()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->peakRpmObserved:I

    return v0
.end method

.method public final getRideId()J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->rideId:J

    return-wide v0
.end method

.method public final getTerrainBreakdownDeep()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->terrainBreakdownDeep:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->rideId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->liveEstimatedFuelL:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->deepCrunchFusedFuelL:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->accuracyScorePct:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->terrainBreakdownDeep:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->peakRpmObserved:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->analysisVerdict:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    iget-wide v0, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->rideId:J

    iget-wide v2, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->liveEstimatedFuelL:D

    iget-wide v4, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->deepCrunchFusedFuelL:D

    iget-wide v6, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->accuracyScorePct:D

    iget-object v8, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->terrainBreakdownDeep:Ljava/lang/String;

    iget v9, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->peakRpmObserved:I

    iget-object v10, p0, Lcom/cgs/atvobserver/ai/DeepStudioReport;->analysisVerdict:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DeepStudioReport(rideId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", liveEstimatedFuelL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deepCrunchFusedFuelL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accuracyScorePct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", terrainBreakdownDeep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", peakRpmObserved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", analysisVerdict="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
