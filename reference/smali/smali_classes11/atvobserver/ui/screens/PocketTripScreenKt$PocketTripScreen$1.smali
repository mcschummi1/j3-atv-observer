.class final Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PocketTripScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/runtime/DisposableEffectScope;",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPocketTripScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PocketTripScreen.kt\ncom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$1\n+ 2 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n*L\n1#1,135:1\n64#2,5:136\n*S KotlinDebug\n*F\n+ 1 PocketTripScreen.kt\ncom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$1\n*L\n49#1:136,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        "Landroidx/compose/runtime/DisposableEffectScope;",
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
.field final synthetic $context:Landroid/content/Context;

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
.method public static synthetic $r8$lambda$Ey4-lHcMv3LQJHZeRYk2EAM3J_w(Landroid/content/Context;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$1;->invoke$lambda$0(Landroid/content/Context;Landroidx/compose/runtime/MutableState;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/compose/runtime/MutableState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroid/speech/tts/TextToSpeech;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$1;->$tts$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Landroid/content/Context;Landroidx/compose/runtime/MutableState;I)V
    .locals 4
    .param p0, "$context"    # Landroid/content/Context;
    .param p1, "$tts$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p2, "status"    # I

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$tts$delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    if-nez p2, :cond_1

    .line 43
    invoke-static {p1}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt;->access$PocketTripScreen$lambda$4(Landroidx/compose/runtime/MutableState;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 44
    :goto_0
    sget-object v0, Lcom/cgs/atvobserver/audio/HeadsetAudioDetector;->INSTANCE:Lcom/cgs/atvobserver/audio/HeadsetAudioDetector;

    invoke-virtual {v0, p0}, Lcom/cgs/atvobserver/audio/HeadsetAudioDetector;->isHeadsetConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-static {p1}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt;->access$PocketTripScreen$lambda$4(Landroidx/compose/runtime/MutableState;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "Pocket Trip Mode active. My Lil Buds Pro connected."

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    .line 48
    :cond_1
    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 6
    .param p1, "$this$DisposableEffect"    # Landroidx/compose/runtime/DisposableEffectScope;

    const-string v0, "$this$DisposableEffect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$1;->$tts$delegate:Landroidx/compose/runtime/MutableState;

    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$1;->$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$1;->$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$1;->$tts$delegate:Landroidx/compose/runtime/MutableState;

    new-instance v5, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$1$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3, v4}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$1$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Landroidx/compose/runtime/MutableState;)V

    invoke-direct {v1, v2, v5}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    invoke-static {v0, v1}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt;->access$PocketTripScreen$lambda$5(Landroidx/compose/runtime/MutableState;Landroid/speech/tts/TextToSpeech;)V

    .line 49
    iget-object v0, p0, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$1;->$tts$delegate:Landroidx/compose/runtime/MutableState;

    move-object v1, p1

    .local v1, "this_$iv":Landroidx/compose/runtime/DisposableEffectScope;
    const/4 v2, 0x0

    .line 136
    .local v2, "$i$f$onDispose":I
    new-instance v3, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$1$invoke$$inlined$onDispose$1;

    invoke-direct {v3, v0}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$1$invoke$$inlined$onDispose$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v3, Landroidx/compose/runtime/DisposableEffectResult;

    .line 140
    nop

    .line 49
    .end local v1    # "this_$iv":Landroidx/compose/runtime/DisposableEffectScope;
    .end local v2    # "$i$f$onDispose":I
    return-object v3
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 40
    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-virtual {p0, v0}, Lcom/cgs/atvobserver/ui/screens/PocketTripScreenKt$PocketTripScreen$1;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object v0

    return-object v0
.end method
