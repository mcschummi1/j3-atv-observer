.class public final Lcom/cgs/atvobserver/audio/AudioAnalysisResult;
.super Ljava/lang/Object;
.source "EngineAudioProcessor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0017\u0008\u0087\u0008\u0018\u00002\u00020\u0001BK\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\nH\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u000cH\u00c6\u0003JO\u0010\u001e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cH\u00c6\u0001J\u0013\u0010\u001f\u001a\u00020\u00062\u0008\u0010 \u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010!\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\"\u001a\u00020\u000cH\u00d6\u0001R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0014R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0013R\u0011\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0014\u00a8\u0006#"
    }
    d2 = {
        "Lcom/cgs/atvobserver/audio/AudioAnalysisResult;",
        "",
        "estimatedRpm",
        "",
        "rpmVariation",
        "isIdleStable",
        "",
        "isEngineRunning",
        "soundChanged",
        "audioRmsDb",
        "",
        "confidence",
        "",
        "(IIZZZDLjava/lang/String;)V",
        "getAudioRmsDb",
        "()D",
        "getConfidence",
        "()Ljava/lang/String;",
        "getEstimatedRpm",
        "()I",
        "()Z",
        "getRpmVariation",
        "getSoundChanged",
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
.field private final audioRmsDb:D

.field private final confidence:Ljava/lang/String;

.field private final estimatedRpm:I

.field private final isEngineRunning:Z

.field private final isIdleStable:Z

.field private final rpmVariation:I

.field private final soundChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    const/16 v9, 0x7f

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;-><init>(IIZZZDLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIZZZDLjava/lang/String;)V
    .locals 1
    .param p1, "estimatedRpm"    # I
    .param p2, "rpmVariation"    # I
    .param p3, "isIdleStable"    # Z
    .param p4, "isEngineRunning"    # Z
    .param p5, "soundChanged"    # Z
    .param p6, "audioRmsDb"    # D
    .param p8, "confidence"    # Ljava/lang/String;

    const-string v0, "confidence"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->estimatedRpm:I

    .line 16
    iput p2, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->rpmVariation:I

    .line 17
    iput-boolean p3, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->isIdleStable:Z

    .line 18
    iput-boolean p4, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->isEngineRunning:Z

    .line 19
    iput-boolean p5, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->soundChanged:Z

    .line 20
    iput-wide p6, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->audioRmsDb:D

    .line 21
    iput-object p8, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->confidence:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public synthetic constructor <init>(IIZZZDLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 8

    .line 14
    and-int/lit8 v0, p9, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 15
    move v0, v1

    goto :goto_0

    .line 14
    :cond_0
    move v0, p1

    :goto_0
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_1

    .line 16
    move v2, v1

    goto :goto_1

    .line 14
    :cond_1
    move v2, p2

    :goto_1
    and-int/lit8 v3, p9, 0x4

    if-eqz v3, :cond_2

    .line 17
    const/4 v3, 0x1

    goto :goto_2

    .line 14
    :cond_2
    move v3, p3

    :goto_2
    and-int/lit8 v4, p9, 0x8

    if-eqz v4, :cond_3

    .line 18
    move v4, v1

    goto :goto_3

    .line 14
    :cond_3
    move v4, p4

    :goto_3
    and-int/lit8 v5, p9, 0x10

    if-eqz v5, :cond_4

    .line 19
    goto :goto_4

    .line 14
    :cond_4
    move v1, p5

    :goto_4
    and-int/lit8 v5, p9, 0x20

    if-eqz v5, :cond_5

    .line 20
    const-wide/16 v5, 0x0

    goto :goto_5

    .line 14
    :cond_5
    move-wide v5, p6

    :goto_5
    and-int/lit8 v7, p9, 0x40

    if-eqz v7, :cond_6

    .line 21
    const-string v7, "UNAVAILABLE"

    goto :goto_6

    .line 14
    :cond_6
    move-object/from16 v7, p8

    :goto_6
    move-object p1, p0

    move p2, v0

    move p3, v2

    move p4, v3

    move p5, v4

    move p6, v1

    move-wide p7, v5

    move-object/from16 p9, v7

    invoke-direct/range {p1 .. p9}, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;-><init>(IIZZZDLjava/lang/String;)V

    .line 22
    return-void
.end method

.method public static synthetic copy$default(Lcom/cgs/atvobserver/audio/AudioAnalysisResult;IIZZZDLjava/lang/String;ILjava/lang/Object;)Lcom/cgs/atvobserver/audio/AudioAnalysisResult;
    .locals 9

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->estimatedRpm:I

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->rpmVariation:I

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    and-int/lit8 v3, p9, 0x4

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->isIdleStable:Z

    goto :goto_2

    :cond_2
    move v3, p3

    :goto_2
    and-int/lit8 v4, p9, 0x8

    if-eqz v4, :cond_3

    iget-boolean v4, v0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->isEngineRunning:Z

    goto :goto_3

    :cond_3
    move v4, p4

    :goto_3
    and-int/lit8 v5, p9, 0x10

    if-eqz v5, :cond_4

    iget-boolean v5, v0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->soundChanged:Z

    goto :goto_4

    :cond_4
    move v5, p5

    :goto_4
    and-int/lit8 v6, p9, 0x20

    if-eqz v6, :cond_5

    iget-wide v6, v0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->audioRmsDb:D

    goto :goto_5

    :cond_5
    move-wide v6, p6

    :goto_5
    and-int/lit8 v8, p9, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->confidence:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p8

    :goto_6
    move p1, v1

    move p2, v2

    move p3, v3

    move p4, v4

    move p5, v5

    move-wide p6, v6

    move-object/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->copy(IIZZZDLjava/lang/String;)Lcom/cgs/atvobserver/audio/AudioAnalysisResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->estimatedRpm:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->rpmVariation:I

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->isIdleStable:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->isEngineRunning:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->soundChanged:Z

    return v0
.end method

.method public final component6()D
    .locals 2

    iget-wide v0, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->audioRmsDb:D

    return-wide v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->confidence:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(IIZZZDLjava/lang/String;)Lcom/cgs/atvobserver/audio/AudioAnalysisResult;
    .locals 11

    const-string v0, "confidence"

    move-object/from16 v10, p8

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;-><init>(IIZZZDLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;

    iget v3, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->estimatedRpm:I

    iget v4, v1, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->estimatedRpm:I

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->rpmVariation:I

    iget v4, v1, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->rpmVariation:I

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget-boolean v3, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->isIdleStable:Z

    iget-boolean v4, v1, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->isIdleStable:Z

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-boolean v3, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->isEngineRunning:Z

    iget-boolean v4, v1, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->isEngineRunning:Z

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    iget-boolean v3, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->soundChanged:Z

    iget-boolean v4, v1, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->soundChanged:Z

    if-eq v3, v4, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->audioRmsDb:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->audioRmsDb:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_7

    return v2

    :cond_7
    iget-object v3, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->confidence:Ljava/lang/String;

    iget-object v1, v1, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->confidence:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getAudioRmsDb()D
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->audioRmsDb:D

    return-wide v0
.end method

.method public final getConfidence()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->confidence:Ljava/lang/String;

    return-object v0
.end method

.method public final getEstimatedRpm()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->estimatedRpm:I

    return v0
.end method

.method public final getRpmVariation()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->rpmVariation:I

    return v0
.end method

.method public final getSoundChanged()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->soundChanged:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->estimatedRpm:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->rpmVariation:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->isIdleStable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->isEngineRunning:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->soundChanged:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->audioRmsDb:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->confidence:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public final isEngineRunning()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->isEngineRunning:Z

    return v0
.end method

.method public final isIdleStable()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->isIdleStable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget v0, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->estimatedRpm:I

    iget v1, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->rpmVariation:I

    iget-boolean v2, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->isIdleStable:Z

    iget-boolean v3, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->isEngineRunning:Z

    iget-boolean v4, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->soundChanged:Z

    iget-wide v5, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->audioRmsDb:D

    iget-object v7, p0, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->confidence:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AudioAnalysisResult(estimatedRpm="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", rpmVariation="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isIdleStable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isEngineRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", soundChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioRmsDb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", confidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
