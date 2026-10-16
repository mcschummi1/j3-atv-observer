.class final Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$5;
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
    c = "com.cgs.atvobserver.ui.screens.TripScreenKt$TripScreen$5"
    f = "TripScreen.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $gpsData:Lcom/cgs/atvobserver/location/GpsData;

.field final synthetic $isPitStopPaused$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $stationaryTimerSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

.field final synthetic $tts$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroid/speech/tts/TextToSpeech;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Lcom/cgs/atvobserver/location/GpsData;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableLongState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cgs/atvobserver/location/GpsData;",
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
            "Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$5;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$5;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    iput-object p2, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$5;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$5;->$isPitStopPaused$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$5;->$stationaryTimerSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    iput-object p5, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$5;->$tts$delegate:Landroidx/compose/runtime/MutableState;

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

    new-instance v7, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$5;

    iget-object v1, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$5;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    iget-object v2, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$5;->$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$5;->$isPitStopPaused$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$5;->$stationaryTimerSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    iget-object v5, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$5;->$tts$delegate:Landroidx/compose/runtime/MutableState;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$5;-><init>(Lcom/cgs/atvobserver/location/GpsData;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableLongState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/coroutines/Continuation;

    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$5;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$5;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$5;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 154
    iget v0, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$5;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .line 155
    .local v0, "this":Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$5;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$5;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/location/GpsData;->getCurrentSpeedKmh()D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    cmpg-double v1, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-gez v1, :cond_0

    iget-object v1, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$5;->$isPitStopPaused$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$28(Landroidx/compose/runtime/MutableState;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    iget-object v1, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$5;->$stationaryTimerSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    invoke-static {v1}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$31(Landroidx/compose/runtime/MutableLongState;)J

    move-result-wide v4

    iget-object v1, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$5;->$stationaryTimerSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-static {v1, v4, v5}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$32(Landroidx/compose/runtime/MutableLongState;J)V

    .line 157
    iget-object v1, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$5;->$stationaryTimerSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    invoke-static {v1}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$31(Landroidx/compose/runtime/MutableLongState;)J

    move-result-wide v4

    const-wide/16 v6, 0x1e

    cmp-long v1, v4, v6

    if-ltz v1, :cond_2

    .line 158
    iget-object v1, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$5;->$isPitStopPaused$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$29(Landroidx/compose/runtime/MutableState;Z)V

    .line 159
    sget-object v1, Lcom/cgs/atvobserver/audio/HeadsetAudioDetector;->INSTANCE:Lcom/cgs/atvobserver/audio/HeadsetAudioDetector;

    iget-object v4, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$5;->$context:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/cgs/atvobserver/audio/HeadsetAudioDetector;->isHeadsetConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    iget-object v1, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$5;->$tts$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$40(Landroidx/compose/runtime/MutableState;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v4, "Pit stop detected. Ride paused."

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4, v2, v3, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    goto :goto_0

    .line 163
    :cond_0
    iget-object v1, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$5;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/location/GpsData;->getCurrentSpeedKmh()D

    move-result-wide v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    cmpl-double v1, v4, v6

    const-wide/16 v4, 0x0

    if-ltz v1, :cond_1

    iget-object v1, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$5;->$isPitStopPaused$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$28(Landroidx/compose/runtime/MutableState;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$5;->$isPitStopPaused$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1, v2}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$29(Landroidx/compose/runtime/MutableState;Z)V

    .line 165
    iget-object v1, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$5;->$stationaryTimerSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    invoke-static {v1, v4, v5}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$32(Landroidx/compose/runtime/MutableLongState;J)V

    .line 166
    sget-object v1, Lcom/cgs/atvobserver/audio/HeadsetAudioDetector;->INSTANCE:Lcom/cgs/atvobserver/audio/HeadsetAudioDetector;

    iget-object v4, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$5;->$context:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/cgs/atvobserver/audio/HeadsetAudioDetector;->isHeadsetConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    iget-object v1, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$5;->$tts$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$40(Landroidx/compose/runtime/MutableState;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v4, "Resuming ride."

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4, v2, v3, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    goto :goto_0

    .line 169
    :cond_1
    iget-object v1, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$5;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/location/GpsData;->getCurrentSpeedKmh()D

    move-result-wide v1

    cmpl-double v1, v1, v6

    if-ltz v1, :cond_2

    .line 170
    iget-object v1, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$5;->$stationaryTimerSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    invoke-static {v1, v4, v5}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$32(Landroidx/compose/runtime/MutableLongState;J)V

    .line 172
    :cond_2
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
