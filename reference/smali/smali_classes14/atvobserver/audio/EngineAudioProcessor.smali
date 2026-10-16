.class public final Lcom/cgs/atvobserver/audio/EngineAudioProcessor;
.super Ljava/lang/Object;
.source "EngineAudioProcessor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0017\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u000fH\u0002J\u000e\u0010!\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020\u0015J\u0010\u0010#\u001a\u00020\u001d2\u0006\u0010$\u001a\u00020%H\u0007J\u0006\u0010&\u001a\u00020\u001dR\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000fX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000fX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u000fX\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/cgs/atvobserver/audio/EngineAudioProcessor;",
        "",
        "()V",
        "_analysisState",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/cgs/atvobserver/audio/AudioAnalysisResult;",
        "analysisState",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getAnalysisState",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "audioRecord",
        "Landroid/media/AudioRecord;",
        "baselineRms",
        "",
        "bufferSize",
        "",
        "butterworthFilter",
        "Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;",
        "frameSize",
        "historyCapacity",
        "isDiagnosticMode",
        "",
        "isRecording",
        "processingJob",
        "Lkotlinx/coroutines/Job;",
        "rpmHistory",
        "Lkotlin/collections/ArrayDeque;",
        "sampleRate",
        "processAudioBuffer",
        "",
        "buffer",
        "",
        "size",
        "setDiagnosticMode",
        "enabled",
        "startListening",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
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
.field private final _analysisState:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/cgs/atvobserver/audio/AudioAnalysisResult;",
            ">;"
        }
    .end annotation
.end field

.field private final analysisState:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/cgs/atvobserver/audio/AudioAnalysisResult;",
            ">;"
        }
    .end annotation
.end field

.field private audioRecord:Landroid/media/AudioRecord;

.field private baselineRms:D

.field private final bufferSize:I

.field private final butterworthFilter:Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;

.field private final frameSize:I

.field private final historyCapacity:I

.field private volatile isDiagnosticMode:Z

.field private isRecording:Z

.field private processingJob:Lkotlinx/coroutines/Job;

.field private final rpmHistory:Lkotlin/collections/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/ArrayDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final sampleRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v11, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;

    const/16 v9, 0x7f

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;-><init>(IIZZZDLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v11}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->_analysisState:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 37
    iget-object v0, p0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->_analysisState:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v0, p0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->analysisState:Lkotlinx/coroutines/flow/StateFlow;

    .line 39
    const/16 v0, 0x5622

    iput v0, p0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->sampleRate:I

    .line 40
    const/16 v0, 0x1000

    iput v0, p0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->frameSize:I

    .line 45
    nop

    .line 42
    iget v0, p0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->sampleRate:I

    .line 43
    nop

    .line 44
    nop

    .line 41
    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    .line 45
    iget v1, p0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->frameSize:I

    mul-int/2addr v1, v2

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    iput v0, p0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->bufferSize:I

    .line 47
    new-instance v0, Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;

    .line 48
    nop

    .line 49
    nop

    .line 50
    iget v1, p0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->sampleRate:I

    int-to-double v6, v1

    .line 47
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide v4, 0x4085e00000000000L    # 700.0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;-><init>(DDD)V

    iput-object v0, p0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->butterworthFilter:Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;

    .line 53
    new-instance v0, Lkotlin/collections/ArrayDeque;

    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->rpmHistory:Lkotlin/collections/ArrayDeque;

    .line 54
    const/16 v0, 0xa

    iput v0, p0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->historyCapacity:I

    .line 30
    return-void
.end method

.method public static final synthetic access$getAudioRecord$p(Lcom/cgs/atvobserver/audio/EngineAudioProcessor;)Landroid/media/AudioRecord;
    .locals 1
    .param p0, "$this"    # Lcom/cgs/atvobserver/audio/EngineAudioProcessor;

    .line 30
    iget-object v0, p0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->audioRecord:Landroid/media/AudioRecord;

    return-object v0
.end method

.method public static final synthetic access$getButterworthFilter$p(Lcom/cgs/atvobserver/audio/EngineAudioProcessor;)Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;
    .locals 1
    .param p0, "$this"    # Lcom/cgs/atvobserver/audio/EngineAudioProcessor;

    .line 30
    iget-object v0, p0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->butterworthFilter:Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;

    return-object v0
.end method

.method public static final synthetic access$getFrameSize$p(Lcom/cgs/atvobserver/audio/EngineAudioProcessor;)I
    .locals 1
    .param p0, "$this"    # Lcom/cgs/atvobserver/audio/EngineAudioProcessor;

    .line 30
    iget v0, p0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->frameSize:I

    return v0
.end method

.method public static final synthetic access$isDiagnosticMode$p(Lcom/cgs/atvobserver/audio/EngineAudioProcessor;)Z
    .locals 1
    .param p0, "$this"    # Lcom/cgs/atvobserver/audio/EngineAudioProcessor;

    .line 30
    iget-boolean v0, p0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->isDiagnosticMode:Z

    return v0
.end method

.method public static final synthetic access$isRecording$p(Lcom/cgs/atvobserver/audio/EngineAudioProcessor;)Z
    .locals 1
    .param p0, "$this"    # Lcom/cgs/atvobserver/audio/EngineAudioProcessor;

    .line 30
    iget-boolean v0, p0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->isRecording:Z

    return v0
.end method

.method public static final synthetic access$processAudioBuffer(Lcom/cgs/atvobserver/audio/EngineAudioProcessor;[SI)V
    .locals 0
    .param p0, "$this"    # Lcom/cgs/atvobserver/audio/EngineAudioProcessor;
    .param p1, "buffer"    # [S
    .param p2, "size"    # I

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->processAudioBuffer([SI)V

    return-void
.end method

.method private final processAudioBuffer([SI)V
    .locals 39
    .param p1, "buffer"    # [S
    .param p2, "size"    # I

    .line 112
    move-object/from16 v0, p0

    move/from16 v1, p2

    const-wide/16 v2, 0x0

    .line 113
    .local v2, "sumSquares":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const-wide/high16 v5, 0x40e0000000000000L    # 32768.0

    if-ge v4, v1, :cond_0

    .line 114
    aget-short v7, p1, v4

    int-to-double v7, v7

    div-double/2addr v7, v5

    .line 115
    .local v7, "sample":D
    mul-double v5, v7, v7

    add-double/2addr v2, v5

    .line 113
    .end local v7    # "sample":D
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 117
    .end local v4    # "i":I
    :cond_0
    int-to-double v7, v1

    div-double v7, v2, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    .line 118
    .local v7, "rms":D
    const-wide v9, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v4, v7, v9

    if-lez v4, :cond_1

    const/16 v4, 0x14

    int-to-double v13, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->log10(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    const-wide v15, 0x4056800000000000L    # 90.0

    add-double/2addr v13, v15

    goto :goto_1

    :cond_1
    const-wide/16 v13, 0x0

    .line 120
    .local v13, "rmsDb":D
    :goto_1
    const-wide v15, 0x4050400000000000L    # 65.0

    cmpl-double v4, v13, v15

    const/16 v16, 0x1

    if-lez v4, :cond_2

    move/from16 v4, v16

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 122
    .local v4, "isRunning":Z
    :goto_2
    if-nez v4, :cond_3

    .line 123
    iget-object v5, v0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->rpmHistory:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v5}, Lkotlin/collections/ArrayDeque;->clear()V

    .line 124
    iget-object v5, v0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->_analysisState:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v6, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;

    .line 125
    nop

    .line 126
    nop

    .line 127
    nop

    .line 128
    nop

    .line 129
    nop

    .line 130
    nop

    .line 131
    nop

    .line 124
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v23, "UNAVAILABLE"

    move-object v15, v6

    move-wide/from16 v21, v13

    invoke-direct/range {v15 .. v23}, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;-><init>(IIZZZDLjava/lang/String;)V

    invoke-interface {v5, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 133
    return-void

    .line 138
    :cond_3
    iget v15, v0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->sampleRate:I

    int-to-double v11, v15

    const-wide v20, 0x4064d55555555555L    # 166.66666666666666

    div-double v11, v11, v20

    double-to-int v11, v11

    const/16 v12, 0xa

    invoke-static {v11, v12}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v11

    .line 139
    .local v11, "minLag":I
    iget v12, v0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->sampleRate:I

    int-to-double v9, v12

    const-wide v22, 0x400aaaaaaaaaaaabL    # 3.3333333333333335

    div-double v9, v9, v22

    double-to-int v9, v9

    div-int/lit8 v10, v1, 0x2

    invoke-static {v9, v10}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v9

    .line 141
    .local v9, "maxLag":I
    const/4 v10, -0x1

    .line 142
    .local v10, "bestLag":I
    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    .line 144
    .local v22, "maxAutocorr":D
    move v12, v11

    .local v12, "lag":I
    if-gt v12, v9, :cond_6

    .line 145
    :goto_3
    const-wide/16 v24, 0x0

    .line 146
    .local v24, "sum":D
    const/4 v15, 0x0

    .local v15, "i":I
    sub-int v5, v1, v12

    :goto_4
    if-ge v15, v5, :cond_4

    .line 147
    aget-short v6, p1, v15

    move-wide/from16 v28, v2

    .end local v2    # "sumSquares":D
    .local v28, "sumSquares":D
    int-to-double v2, v6

    const-wide/high16 v26, 0x40e0000000000000L    # 32768.0

    div-double v2, v2, v26

    add-int v6, v15, v12

    aget-short v6, p1, v6

    move/from16 v30, v5

    int-to-double v5, v6

    div-double v5, v5, v26

    mul-double/2addr v2, v5

    add-double v24, v24, v2

    .line 146
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v2, v28

    move/from16 v5, v30

    goto :goto_4

    .end local v28    # "sumSquares":D
    .restart local v2    # "sumSquares":D
    :cond_4
    move-wide/from16 v28, v2

    .line 149
    .end local v2    # "sumSquares":D
    .end local v15    # "i":I
    .restart local v28    # "sumSquares":D
    cmpl-double v2, v24, v22

    if-lez v2, :cond_5

    .line 150
    move-wide/from16 v2, v24

    .line 151
    .end local v22    # "maxAutocorr":D
    .local v2, "maxAutocorr":D
    move v5, v12

    move-wide/from16 v22, v2

    move v10, v5

    .line 144
    .end local v2    # "maxAutocorr":D
    .end local v24    # "sum":D
    .restart local v22    # "maxAutocorr":D
    :cond_5
    if-eq v12, v9, :cond_7

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v2, v28

    const-wide/high16 v5, 0x40e0000000000000L    # 32768.0

    goto :goto_3

    .end local v28    # "sumSquares":D
    .local v2, "sumSquares":D
    :cond_6
    move-wide/from16 v28, v2

    .end local v2    # "sumSquares":D
    .restart local v28    # "sumSquares":D
    :cond_7
    move-wide/from16 v2, v22

    .line 155
    .end local v12    # "lag":I
    .end local v22    # "maxAutocorr":D
    .local v2, "maxAutocorr":D
    const/4 v5, 0x0

    .line 156
    .local v5, "rawRpm":I
    if-lez v10, :cond_c

    const-wide v22, 0x3fc3333333333333L    # 0.15

    cmpl-double v12, v2, v22

    if-lez v12, :cond_c

    .line 157
    move-wide/from16 v24, v7

    .end local v7    # "rms":D
    .local v24, "rms":D
    int-to-double v6, v10

    .line 158
    .local v6, "exactLag":D
    if-le v10, v11, :cond_a

    if-ge v10, v9, :cond_a

    .line 159
    const-wide/16 v22, 0x0

    .line 160
    .local v22, "alpha":D
    move-wide/from16 v30, v2

    .line 161
    .local v30, "beta":D
    const-wide/16 v32, 0x0

    .line 163
    .local v32, "gamma":D
    const/4 v12, 0x0

    .local v12, "i":I
    add-int/lit8 v15, v10, -0x1

    sub-int v15, v1, v15

    :goto_5
    if-ge v12, v15, :cond_8

    .line 164
    aget-short v8, p1, v12

    move-wide/from16 v34, v2

    .end local v2    # "maxAutocorr":D
    .local v34, "maxAutocorr":D
    int-to-double v2, v8

    const-wide/high16 v26, 0x40e0000000000000L    # 32768.0

    div-double v2, v2, v26

    add-int v8, v12, v10

    add-int/lit8 v8, v8, -0x1

    aget-short v8, p1, v8

    move/from16 v36, v5

    move-wide/from16 v37, v6

    .end local v5    # "rawRpm":I
    .end local v6    # "exactLag":D
    .local v36, "rawRpm":I
    .local v37, "exactLag":D
    int-to-double v5, v8

    div-double v5, v5, v26

    mul-double/2addr v2, v5

    add-double v22, v22, v2

    .line 163
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v2, v34

    move/from16 v5, v36

    move-wide/from16 v6, v37

    goto :goto_5

    .end local v34    # "maxAutocorr":D
    .end local v36    # "rawRpm":I
    .end local v37    # "exactLag":D
    .restart local v2    # "maxAutocorr":D
    .restart local v5    # "rawRpm":I
    .restart local v6    # "exactLag":D
    :cond_8
    move-wide/from16 v34, v2

    move/from16 v36, v5

    move-wide/from16 v37, v6

    .line 166
    .end local v2    # "maxAutocorr":D
    .end local v5    # "rawRpm":I
    .end local v6    # "exactLag":D
    .end local v12    # "i":I
    .restart local v34    # "maxAutocorr":D
    .restart local v36    # "rawRpm":I
    .restart local v37    # "exactLag":D
    const/4 v2, 0x0

    .local v2, "i":I
    add-int/lit8 v3, v10, 0x1

    sub-int v3, v1, v3

    :goto_6
    if-ge v2, v3, :cond_9

    .line 167
    aget-short v5, p1, v2

    int-to-double v5, v5

    const-wide/high16 v7, 0x40e0000000000000L    # 32768.0

    div-double/2addr v5, v7

    add-int v12, v2, v10

    add-int/lit8 v12, v12, 0x1

    aget-short v12, p1, v12

    move/from16 v26, v11

    .end local v11    # "minLag":I
    .local v26, "minLag":I
    int-to-double v11, v12

    div-double/2addr v11, v7

    mul-double/2addr v5, v11

    add-double v32, v32, v5

    .line 166
    add-int/lit8 v2, v2, 0x1

    move/from16 v11, v26

    goto :goto_6

    .end local v26    # "minLag":I
    .restart local v11    # "minLag":I
    :cond_9
    move/from16 v26, v11

    .line 170
    .end local v2    # "i":I
    .end local v11    # "minLag":I
    .restart local v26    # "minLag":I
    const/4 v2, 0x2

    int-to-double v5, v2

    mul-double v2, v5, v30

    sub-double v2, v22, v2

    add-double v2, v2, v32

    .line 171
    .local v2, "denominator":D
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide v20, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v7, v11, v20

    if-lez v7, :cond_b

    .line 172
    sub-double v11, v22, v32

    mul-double/2addr v5, v2

    div-double/2addr v11, v5

    .line 173
    .local v11, "delta":D
    int-to-double v5, v10

    add-double v6, v5, v11

    .end local v37    # "exactLag":D
    .restart local v6    # "exactLag":D
    goto :goto_7

    .line 158
    .end local v22    # "alpha":D
    .end local v26    # "minLag":I
    .end local v30    # "beta":D
    .end local v32    # "gamma":D
    .end local v34    # "maxAutocorr":D
    .end local v36    # "rawRpm":I
    .local v2, "maxAutocorr":D
    .restart local v5    # "rawRpm":I
    .local v11, "minLag":I
    :cond_a
    move-wide/from16 v34, v2

    move/from16 v36, v5

    move-wide/from16 v37, v6

    move/from16 v26, v11

    .line 178
    .end local v2    # "maxAutocorr":D
    .end local v5    # "rawRpm":I
    .end local v6    # "exactLag":D
    .end local v11    # "minLag":I
    .restart local v26    # "minLag":I
    .restart local v34    # "maxAutocorr":D
    .restart local v36    # "rawRpm":I
    .restart local v37    # "exactLag":D
    :cond_b
    move-wide/from16 v6, v37

    .end local v37    # "exactLag":D
    .restart local v6    # "exactLag":D
    :goto_7
    iget v2, v0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->sampleRate:I

    int-to-double v2, v2

    div-double/2addr v2, v6

    .line 179
    .local v2, "crankFreqHz":D
    const-wide/high16 v11, 0x405e000000000000L    # 120.0

    mul-double/2addr v11, v2

    double-to-int v5, v11

    const/16 v11, 0x32

    const/16 v12, 0x4e20

    invoke-static {v5, v11, v12}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v2

    .end local v6    # "exactLag":D
    .end local v36    # "rawRpm":I
    .local v2, "rawRpm":I
    goto :goto_8

    .line 156
    .end local v24    # "rms":D
    .end local v26    # "minLag":I
    .end local v34    # "maxAutocorr":D
    .local v2, "maxAutocorr":D
    .restart local v5    # "rawRpm":I
    .restart local v7    # "rms":D
    .restart local v11    # "minLag":I
    :cond_c
    move-wide/from16 v34, v2

    move/from16 v36, v5

    move-wide/from16 v24, v7

    move/from16 v26, v11

    .line 181
    .end local v2    # "maxAutocorr":D
    .end local v5    # "rawRpm":I
    .end local v7    # "rms":D
    .end local v11    # "minLag":I
    .restart local v24    # "rms":D
    .restart local v26    # "minLag":I
    .restart local v34    # "maxAutocorr":D
    .restart local v36    # "rawRpm":I
    const/4 v2, 0x0

    .line 184
    .end local v36    # "rawRpm":I
    .local v2, "rawRpm":I
    :goto_8
    if-lez v2, :cond_e

    .line 185
    iget-object v3, v0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->rpmHistory:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v3

    iget v5, v0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->historyCapacity:I

    if-lt v3, v5, :cond_d

    .line 186
    iget-object v3, v0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->rpmHistory:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 188
    :cond_d
    iget-object v3, v0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->rpmHistory:Lkotlin/collections/ArrayDeque;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 191
    :cond_e
    iget-object v3, v0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->rpmHistory:Lkotlin/collections/ArrayDeque;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_f

    iget-object v3, v0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->rpmHistory:Lkotlin/collections/ArrayDeque;

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->averageOfInt(Ljava/lang/Iterable;)D

    move-result-wide v5

    double-to-int v3, v5

    goto :goto_9

    :cond_f
    const/4 v3, 0x0

    .line 192
    .local v3, "smoothedRpm":I
    :goto_9
    iget-object v5, v0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->rpmHistory:Lkotlin/collections/ArrayDeque;

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->minOrNull(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_a

    :cond_10
    move v5, v3

    .line 193
    .local v5, "minHistoricalRpm":I
    :goto_a
    iget-object v6, v0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->rpmHistory:Lkotlin/collections/ArrayDeque;

    check-cast v6, Ljava/lang/Iterable;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->maxOrNull(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_11

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_b

    :cond_11
    move v6, v3

    .line 194
    .local v6, "maxHistoricalRpm":I
    :goto_b
    sub-int v7, v6, v5

    const/4 v8, 0x2

    div-int/2addr v7, v8

    .line 196
    .local v7, "variation":I
    iget-wide v11, v0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->baselineRms:D

    const-wide/16 v18, 0x0

    cmpg-double v8, v11, v18

    if-nez v8, :cond_12

    move/from16 v8, v16

    goto :goto_c

    :cond_12
    const/4 v8, 0x0

    :goto_c
    if-eqz v8, :cond_13

    if-eqz v4, :cond_13

    .line 197
    iput-wide v13, v0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->baselineRms:D

    .line 199
    :cond_13
    iget-wide v11, v0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->baselineRms:D

    sub-double v11, v13, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide/high16 v18, 0x4032000000000000L    # 18.0

    cmpl-double v8, v11, v18

    if-lez v8, :cond_14

    move/from16 v20, v16

    goto :goto_d

    :cond_14
    const/16 v20, 0x0

    .line 201
    .local v20, "soundChanged":Z
    :goto_d
    iget-object v8, v0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->_analysisState:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v11, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;

    .line 202
    nop

    .line 203
    nop

    .line 204
    const/16 v12, 0x50

    if-gt v7, v12, :cond_15

    move/from16 v18, v16

    goto :goto_e

    :cond_15
    const/16 v18, 0x0

    .line 205
    :goto_e
    if-lez v3, :cond_16

    move/from16 v19, v16

    goto :goto_f

    :cond_16
    const/16 v19, 0x0

    .line 206
    :goto_f
    nop

    .line 207
    nop

    .line 208
    const/16 v12, 0x78

    if-ge v7, v12, :cond_17

    const-string v12, "VALID"

    goto :goto_10

    :cond_17
    const-string v12, "LOW CONFIDENCE"

    :goto_10
    move-object/from16 v23, v12

    .line 201
    move-object v15, v11

    move/from16 v16, v3

    move/from16 v17, v7

    move-wide/from16 v21, v13

    invoke-direct/range {v15 .. v23}, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;-><init>(IIZZZDLjava/lang/String;)V

    invoke-interface {v8, v11}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 210
    return-void
.end method


# virtual methods
.method public final getAnalysisState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/cgs/atvobserver/audio/AudioAnalysisResult;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->analysisState:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final setDiagnosticMode(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 61
    iput-boolean p1, p0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->isDiagnosticMode:Z

    .line 62
    return-void
.end method

.method public final startListening(Lkotlinx/coroutines/CoroutineScope;)V
    .locals 14
    .param p1, "scope"    # Lkotlinx/coroutines/CoroutineScope;

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-boolean v0, p0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->isRecording:Z

    if-eqz v0, :cond_0

    return-void

    .line 67
    :cond_0
    nop

    .line 68
    :try_start_0
    new-instance v0, Landroid/media/AudioRecord;

    .line 69
    nop

    .line 70
    iget v3, p0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->sampleRate:I

    .line 71
    nop

    .line 72
    nop

    .line 73
    iget v6, p0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->bufferSize:I

    .line 68
    const/4 v2, 0x1

    const/16 v4, 0x10

    const/4 v5, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->audioRecord:Landroid/media/AudioRecord;

    .line 76
    iget-object v0, p0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 77
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->isRecording:Z

    .line 79
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor$startListening$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cgs/atvobserver/audio/EngineAudioProcessor$startListening$1;-><init>(Lcom/cgs/atvobserver/audio/EngineAudioProcessor;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->processingJob:Lkotlinx/coroutines/Job;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->isRecording:Z

    .line 94
    iget-object v1, p0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->_analysisState:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v13, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;

    .line 95
    nop

    .line 94
    nop

    .line 96
    nop

    .line 94
    const/16 v11, 0x37

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-string v10, "UNAVAILABLE"

    move-object v2, v13

    invoke-direct/range {v2 .. v12}, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;-><init>(IIZZZDLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v13}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public final stopListening()V
    .locals 3

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->isRecording:Z

    .line 103
    iget-object v0, p0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->processingJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 104
    :cond_0
    nop

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->audioRecord:Landroid/media/AudioRecord;

    .line 109
    return-void
.end method
