.class final Lcom/cgs/atvobserver/audio/EngineAudioProcessor$startListening$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EngineAudioProcessor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->startListening(Lkotlinx/coroutines/CoroutineScope;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.cgs.atvobserver.audio.EngineAudioProcessor$startListening$1"
    f = "EngineAudioProcessor.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x59
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "pcmBuffer"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/cgs/atvobserver/audio/EngineAudioProcessor;


# direct methods
.method constructor <init>(Lcom/cgs/atvobserver/audio/EngineAudioProcessor;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cgs/atvobserver/audio/EngineAudioProcessor;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cgs/atvobserver/audio/EngineAudioProcessor$startListening$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor$startListening$1;->this$0:Lcom/cgs/atvobserver/audio/EngineAudioProcessor;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor$startListening$1;

    iget-object v1, p0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor$startListening$1;->this$0:Lcom/cgs/atvobserver/audio/EngineAudioProcessor;

    invoke-direct {v0, v1, p2}, Lcom/cgs/atvobserver/audio/EngineAudioProcessor$startListening$1;-><init>(Lcom/cgs/atvobserver/audio/EngineAudioProcessor;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor$startListening$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/audio/EngineAudioProcessor$startListening$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/audio/EngineAudioProcessor$startListening$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor$startListening$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/cgs/atvobserver/audio/EngineAudioProcessor$startListening$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 79
    iget v1, p0, Lcom/cgs/atvobserver/audio/EngineAudioProcessor$startListening$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v1, p0

    .local v1, "this":Lcom/cgs/atvobserver/audio/EngineAudioProcessor$startListening$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v2, v1, Lcom/cgs/atvobserver/audio/EngineAudioProcessor$startListening$1;->L$1:Ljava/lang/Object;

    check-cast v2, [S

    .local v2, "pcmBuffer":[S
    iget-object v3, v1, Lcom/cgs/atvobserver/audio/EngineAudioProcessor$startListening$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .local v3, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local v1    # "this":Lcom/cgs/atvobserver/audio/EngineAudioProcessor$startListening$1;
    .end local v2    # "pcmBuffer":[S
    .end local v3    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Lcom/cgs/atvobserver/audio/EngineAudioProcessor$startListening$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lcom/cgs/atvobserver/audio/EngineAudioProcessor$startListening$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 80
    .local v2, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    iget-object v3, v1, Lcom/cgs/atvobserver/audio/EngineAudioProcessor$startListening$1;->this$0:Lcom/cgs/atvobserver/audio/EngineAudioProcessor;

    invoke-static {v3}, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->access$getFrameSize$p(Lcom/cgs/atvobserver/audio/EngineAudioProcessor;)I

    move-result v3

    new-array v3, v3, [S

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    .line 81
    .local v2, "pcmBuffer":[S
    .restart local v3    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :goto_0
    invoke-static {v3}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v1, Lcom/cgs/atvobserver/audio/EngineAudioProcessor$startListening$1;->this$0:Lcom/cgs/atvobserver/audio/EngineAudioProcessor;

    invoke-static {v4}, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->access$isRecording$p(Lcom/cgs/atvobserver/audio/EngineAudioProcessor;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 82
    iget-object v4, v1, Lcom/cgs/atvobserver/audio/EngineAudioProcessor$startListening$1;->this$0:Lcom/cgs/atvobserver/audio/EngineAudioProcessor;

    invoke-static {v4}, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->access$getAudioRecord$p(Lcom/cgs/atvobserver/audio/EngineAudioProcessor;)Landroid/media/AudioRecord;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    array-length v6, v2

    invoke-virtual {v4, v2, v5, v6}, Landroid/media/AudioRecord;->read([SII)I

    move-result v5

    :cond_0
    move v4, v5

    .line 83
    .local v4, "readSamples":I
    iget-object v5, v1, Lcom/cgs/atvobserver/audio/EngineAudioProcessor$startListening$1;->this$0:Lcom/cgs/atvobserver/audio/EngineAudioProcessor;

    invoke-static {v5}, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->access$getFrameSize$p(Lcom/cgs/atvobserver/audio/EngineAudioProcessor;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-lt v4, v5, :cond_1

    .line 85
    iget-object v5, v1, Lcom/cgs/atvobserver/audio/EngineAudioProcessor$startListening$1;->this$0:Lcom/cgs/atvobserver/audio/EngineAudioProcessor;

    invoke-static {v5}, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->access$getButterworthFilter$p(Lcom/cgs/atvobserver/audio/EngineAudioProcessor;)Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Lcom/cgs/atvobserver/audio/ButterworthBandpassFilter;->filterBufferInPlace([SI)V

    .line 86
    iget-object v5, v1, Lcom/cgs/atvobserver/audio/EngineAudioProcessor$startListening$1;->this$0:Lcom/cgs/atvobserver/audio/EngineAudioProcessor;

    invoke-static {v5, v2, v4}, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->access$processAudioBuffer(Lcom/cgs/atvobserver/audio/EngineAudioProcessor;[SI)V

    .line 88
    .end local v4    # "readSamples":I
    :cond_1
    iget-object v4, v1, Lcom/cgs/atvobserver/audio/EngineAudioProcessor$startListening$1;->this$0:Lcom/cgs/atvobserver/audio/EngineAudioProcessor;

    invoke-static {v4}, Lcom/cgs/atvobserver/audio/EngineAudioProcessor;->access$isDiagnosticMode$p(Lcom/cgs/atvobserver/audio/EngineAudioProcessor;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x14

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0x28

    .line 89
    .local v4, "delayMs":J
    :goto_1
    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v3, v1, Lcom/cgs/atvobserver/audio/EngineAudioProcessor$startListening$1;->L$0:Ljava/lang/Object;

    iput-object v2, v1, Lcom/cgs/atvobserver/audio/EngineAudioProcessor$startListening$1;->L$1:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v1, Lcom/cgs/atvobserver/audio/EngineAudioProcessor$startListening$1;->label:I

    invoke-static {v4, v5, v6}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "delayMs":J
    if-ne v4, v0, :cond_3

    .line 79
    return-object v0

    .line 89
    :cond_3
    :goto_2
    goto :goto_0

    .line 91
    .end local v2    # "pcmBuffer":[S
    .end local v3    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :cond_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
