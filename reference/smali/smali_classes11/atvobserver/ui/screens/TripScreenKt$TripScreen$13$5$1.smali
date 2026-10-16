.class final Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$5$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TripScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $activeVehicle:Lcom/cgs/atvobserver/data/model/VehicleType;

.field final synthetic $aiOutput:Lcom/cgs/atvobserver/ai/ObserverAiOutput;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $displayFuelRemaining:D

.field final synthetic $tts$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroid/speech/tts/TextToSpeech;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/cgs/atvobserver/data/model/VehicleType;Lcom/cgs/atvobserver/ai/ObserverAiOutput;DLandroidx/compose/runtime/MutableState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cgs/atvobserver/data/model/VehicleType;",
            "Lcom/cgs/atvobserver/ai/ObserverAiOutput;",
            "D",
            "Landroidx/compose/runtime/MutableState<",
            "Landroid/speech/tts/TextToSpeech;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$5$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$5$1;->$activeVehicle:Lcom/cgs/atvobserver/data/model/VehicleType;

    iput-object p3, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$5$1;->$aiOutput:Lcom/cgs/atvobserver/ai/ObserverAiOutput;

    iput-wide p4, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$5$1;->$displayFuelRemaining:D

    iput-object p6, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$5$1;->$tts$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 375
    invoke-virtual {p0}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$5$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    .line 377
    sget-object v0, Lcom/cgs/atvobserver/audio/HeadsetAudioDetector;->INSTANCE:Lcom/cgs/atvobserver/audio/HeadsetAudioDetector;

    iget-object v1, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$5$1;->$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/cgs/atvobserver/audio/HeadsetAudioDetector;->isHeadsetConnected(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$5$1;->$activeVehicle:Lcom/cgs/atvobserver/data/model/VehicleType;

    invoke-virtual {v0}, Lcom/cgs/atvobserver/data/model/VehicleType;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$5$1;->$aiOutput:Lcom/cgs/atvobserver/ai/ObserverAiOutput;

    invoke-virtual {v3}, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->getFusedSpeedKmh()D

    move-result-wide v3

    double-to-int v3, v3

    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    iget-wide v5, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$5$1;->$displayFuelRemaining:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%.1f"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "format(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " status: Speed "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " km per hour. Fuel ~"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " litres."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "report":Ljava/lang/String;
    iget-object v3, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$5$1;->$tts$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v3}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$40(Landroidx/compose/runtime/MutableState;)Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v1, v2, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    goto :goto_0

    .line 381
    .end local v0    # "report":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$13$5$1;->$tts$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v0}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$40(Landroidx/compose/runtime/MutableState;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "Please connect My Lil Buds Pro to hear status."

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3, v1, v2, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    .line 383
    :cond_1
    :goto_0
    return-void
.end method
