.class final Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TripScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->TripScreen(Lcom/cgs/atvobserver/data/model/VehicleType;DLcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/audio/AudioAnalysisResult;Lcom/cgs/atvobserver/ai/ObserverAiOutput;DLkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
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
    c = "com.cgs.atvobserver.ui.screens.TripScreenKt$TripScreen$4"
    f = "TripScreen.kt"
    i = {}
    l = {
        0x8f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $audioData:Lcom/cgs/atvobserver/audio/AudioAnalysisResult;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $isWarmupComplete$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $tts$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroid/speech/tts/TextToSpeech;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $warmupSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

.field label:I


# direct methods
.method constructor <init>(Lcom/cgs/atvobserver/audio/AudioAnalysisResult;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableLongState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cgs/atvobserver/audio/AudioAnalysisResult;",
            "Landroid/content/Context;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableLongState;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroid/speech/tts/TextToSpeech;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$4;->$audioData:Lcom/cgs/atvobserver/audio/AudioAnalysisResult;

    iput-object p2, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$4;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$4;->$isWarmupComplete$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$4;->$warmupSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    iput-object p5, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$4;->$tts$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance v7, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$4;

    iget-object v1, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$4;->$audioData:Lcom/cgs/atvobserver/audio/AudioAnalysisResult;

    iget-object v2, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$4;->$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$4;->$isWarmupComplete$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$4;->$warmupSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    iget-object v5, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$4;->$tts$delegate:Landroidx/compose/runtime/MutableState;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$4;-><init>(Lcom/cgs/atvobserver/audio/AudioAnalysisResult;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableLongState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/coroutines/Continuation;

    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$4;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$4;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 140
    iget v1, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$4;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v1, p0

    .local v1, "this":Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$4;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "this":Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$4;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 141
    .restart local v1    # "this":Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$4;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$4;->$audioData:Lcom/cgs/atvobserver/audio/AudioAnalysisResult;

    invoke-virtual {v2}, Lcom/cgs/atvobserver/audio/AudioAnalysisResult;->isEngineRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$4;->$isWarmupComplete$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v2}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$37(Landroidx/compose/runtime/MutableState;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 142
    :goto_0
    iget-object v2, v1, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$4;->$warmupSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    invoke-static {v2}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$34(Landroidx/compose/runtime/MutableLongState;)J

    move-result-wide v2

    const-wide/16 v4, 0xb4

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-gez v2, :cond_1

    .line 143
    move-object v2, v1

    check-cast v2, Lkotlin/coroutines/Continuation;

    iput v3, v1, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$4;->label:I

    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4, v2}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_0

    .line 140
    return-object v0

    .line 144
    :cond_0
    :goto_1
    iget-object v2, v1, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$4;->$warmupSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    invoke-static {v2}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$34(Landroidx/compose/runtime/MutableLongState;)J

    move-result-wide v2

    iget-object v4, v1, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$4;->$warmupSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    invoke-static {v4, v2, v3}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$35(Landroidx/compose/runtime/MutableLongState;J)V

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, v1, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$4;->$isWarmupComplete$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v0, v3}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$38(Landroidx/compose/runtime/MutableState;Z)V

    .line 147
    sget-object v0, Lcom/cgs/atvobserver/audio/HeadsetAudioDetector;->INSTANCE:Lcom/cgs/atvobserver/audio/HeadsetAudioDetector;

    iget-object v2, v1, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$4;->$context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/cgs/atvobserver/audio/HeadsetAudioDetector;->isHeadsetConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, v1, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$4;->$tts$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v0}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$40(Landroidx/compose/runtime/MutableState;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "Engine warm-up complete. Ready to ride!"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 151
    :cond_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
