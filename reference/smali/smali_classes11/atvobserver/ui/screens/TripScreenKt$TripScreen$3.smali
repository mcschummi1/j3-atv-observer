.class final Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$3;
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
    c = "com.cgs.atvobserver.ui.screens.TripScreenKt$TripScreen$3"
    f = "TripScreen.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $aiOutput:Lcom/cgs/atvobserver/ai/ObserverAiOutput;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $currentWarning$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/cgs/atvobserver/data/model/SystemWarning;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $estimatedFuelUsed:D

.field final synthetic $gpsData:Lcom/cgs/atvobserver/location/GpsData;

.field final synthetic $onPeriodicFlushToStorage:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Double;",
            "Ljava/lang/Long;",
            "Ljava/lang/Double;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $rideDurationSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

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
.method constructor <init>(Lcom/cgs/atvobserver/ai/ObserverAiOutput;Landroid/content/Context;Lkotlin/jvm/functions/Function3;Lcom/cgs/atvobserver/location/GpsData;DLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableLongState;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cgs/atvobserver/ai/ObserverAiOutput;",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Double;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Double;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/cgs/atvobserver/location/GpsData;",
            "D",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/cgs/atvobserver/data/model/SystemWarning;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroid/speech/tts/TextToSpeech;",
            ">;",
            "Landroidx/compose/runtime/MutableLongState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$3;->$aiOutput:Lcom/cgs/atvobserver/ai/ObserverAiOutput;

    iput-object p2, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$3;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$3;->$onPeriodicFlushToStorage:Lkotlin/jvm/functions/Function3;

    iput-object p4, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$3;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    iput-wide p5, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$3;->$estimatedFuelUsed:D

    iput-object p7, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$3;->$currentWarning$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p8, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$3;->$tts$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p9, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$3;->$rideDurationSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p10}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 12
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

    new-instance v11, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$3;

    iget-object v1, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$3;->$aiOutput:Lcom/cgs/atvobserver/ai/ObserverAiOutput;

    iget-object v2, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$3;->$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$3;->$onPeriodicFlushToStorage:Lkotlin/jvm/functions/Function3;

    iget-object v4, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$3;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    iget-wide v5, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$3;->$estimatedFuelUsed:D

    iget-object v7, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$3;->$currentWarning$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v8, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$3;->$tts$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v9, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$3;->$rideDurationSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    move-object v0, v11

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$3;-><init>(Lcom/cgs/atvobserver/ai/ObserverAiOutput;Landroid/content/Context;Lkotlin/jvm/functions/Function3;Lcom/cgs/atvobserver/location/GpsData;DLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableLongState;Lkotlin/coroutines/Continuation;)V

    check-cast v11, Lkotlin/coroutines/Continuation;

    return-object v11
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$3;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 125
    iget v0, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$3;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .line 126
    .local v0, "this":Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$3;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$3;->$aiOutput:Lcom/cgs/atvobserver/ai/ObserverAiOutput;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->isEmergencyCrashActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    iget-object v1, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$3;->$currentWarning$delegate:Landroidx/compose/runtime/MutableState;

    new-instance v10, Lcom/cgs/atvobserver/data/model/SystemWarning;

    .line 128
    nop

    .line 129
    nop

    .line 130
    sget-object v5, Lcom/cgs/atvobserver/data/model/WarningLevel;->PINK:Lcom/cgs/atvobserver/data/model/WarningLevel;

    .line 127
    const/16 v8, 0x8

    const/4 v9, 0x0

    const-string v3, "CRASH DETECTED"

    const-string v4, "TELEMETRY SAVED IMMEDIATELY"

    const-wide/16 v6, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/cgs/atvobserver/data/model/SystemWarning;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cgs/atvobserver/data/model/WarningLevel;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1, v10}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$23(Landroidx/compose/runtime/MutableState;Lcom/cgs/atvobserver/data/model/SystemWarning;)V

    .line 132
    sget-object v1, Lcom/cgs/atvobserver/audio/HeadsetAudioDetector;->INSTANCE:Lcom/cgs/atvobserver/audio/HeadsetAudioDetector;

    iget-object v2, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$3;->$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/cgs/atvobserver/audio/HeadsetAudioDetector;->isHeadsetConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$3;->$tts$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$40(Landroidx/compose/runtime/MutableState;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "Emergency crash detected! Telemetry saved."

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 135
    :cond_0
    iget-object v1, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$3;->$onPeriodicFlushToStorage:Lkotlin/jvm/functions/Function3;

    iget-object v2, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$3;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    invoke-virtual {v2}, Lcom/cgs/atvobserver/location/GpsData;->getDistanceKm()D

    move-result-wide v2

    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object v2

    iget-object v3, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$3;->$rideDurationSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    invoke-static {v3}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$16(Landroidx/compose/runtime/MutableLongState;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$3;->$estimatedFuelUsed:D

    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
