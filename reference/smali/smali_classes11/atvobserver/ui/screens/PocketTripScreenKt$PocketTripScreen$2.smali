.class final Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PocketTripScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt;->PocketTripScreen(Lcom/cgs/atvobserver/data/model/VehicleType;DLcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/audio/AudioAnalysisResult;Lcom/cgs/atvobserver/ai/ObserverAiOutput;DLkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
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
    c = "com.cgs.atvobserver.ui.screens.PocketTripScreenKt$PocketTripScreen$2"
    f = "PocketTripScreen.kt"
    i = {}
    l = {
        0x3a
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $aiOutput:Lcom/cgs/atvobserver/ai/ObserverAiOutput;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $gpsData:Lcom/cgs/atvobserver/location/GpsData;

.field final synthetic $rideSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

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
.method constructor <init>(Landroid/content/Context;Lcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/ai/ObserverAiOutput;Landroidx/compose/runtime/MutableLongState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cgs/atvobserver/location/GpsData;",
            "Lcom/cgs/atvobserver/ai/ObserverAiOutput;",
            "Landroidx/compose/runtime/MutableLongState;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroid/speech/tts/TextToSpeech;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$2;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$2;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    iput-object p3, p0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$2;->$aiOutput:Lcom/cgs/atvobserver/ai/ObserverAiOutput;

    iput-object p4, p0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$2;->$rideSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    iput-object p5, p0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$2;->$tts$delegate:Landroidx/compose/runtime/MutableState;

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

    new-instance v7, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$2;

    iget-object v1, p0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$2;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$2;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    iget-object v3, p0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$2;->$aiOutput:Lcom/cgs/atvobserver/ai/ObserverAiOutput;

    iget-object v4, p0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$2;->$rideSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    iget-object v5, p0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$2;->$tts$delegate:Landroidx/compose/runtime/MutableState;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$2;-><init>(Landroid/content/Context;Lcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/ai/ObserverAiOutput;Landroidx/compose/runtime/MutableLongState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/coroutines/Continuation;

    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 56
    iget v1, p0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$2;->label:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v1, p0

    .local v1, "this":Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$2;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "this":Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 57
    .restart local v1    # "this":Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_0
    :goto_0
    nop

    .line 58
    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, v1, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$2;->label:I

    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5, v3}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_1

    .line 56
    return-object v0

    .line 59
    :cond_1
    :goto_1
    iget-object v3, v1, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$2;->$rideSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    invoke-static {v3}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt;->access$PocketTripScreen$lambda$1(Landroidx/compose/runtime/MutableLongState;)J

    move-result-wide v3

    iget-object v5, v1, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$2;->$rideSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    const-wide/16 v6, 0x1

    add-long/2addr v3, v6

    invoke-static {v5, v3, v4}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt;->access$PocketTripScreen$lambda$2(Landroidx/compose/runtime/MutableLongState;J)V

    .line 60
    iget-object v3, v1, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$2;->$rideSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    invoke-static {v3}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt;->access$PocketTripScreen$lambda$1(Landroidx/compose/runtime/MutableLongState;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    iget-object v3, v1, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$2;->$rideSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    invoke-static {v3}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt;->access$PocketTripScreen$lambda$1(Landroidx/compose/runtime/MutableLongState;)J

    move-result-wide v3

    const-wide/16 v7, 0x3c

    rem-long/2addr v3, v7

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 61
    sget-object v3, Lcom/cgs/atvobserver/audio/HeadsetAudioDetector;->INSTANCE:Lcom/cgs/atvobserver/audio/HeadsetAudioDetector;

    iget-object v4, v1, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$2;->$context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/cgs/atvobserver/audio/HeadsetAudioDetector;->isHeadsetConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    iget-object v4, v1, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$2;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    invoke-virtual {v4}, Lcom/cgs/atvobserver/location/GpsData;->getDistanceKm()D

    move-result-wide v4

    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%.1f"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "format(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$2;->$aiOutput:Lcom/cgs/atvobserver/ai/ObserverAiOutput;

    invoke-virtual {v4}, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->getFusedSpeedKmh()D

    move-result-wide v4

    double-to-int v4, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pocket update: Distance "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " kilometers. Speed "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " kilometers per hour."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "report":Ljava/lang/String;
    iget-object v4, v1, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$2;->$tts$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v4}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt;->access$PocketTripScreen$lambda$4(Landroidx/compose/runtime/MutableState;)Landroid/speech/tts/TextToSpeech;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6, v6}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    goto/16 :goto_0

    .end local v3    # "report":Ljava/lang/String;
    :cond_2
    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
