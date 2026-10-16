.class final Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TripScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/runtime/DisposableEffectScope;",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTripScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TripScreen.kt\ncom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$2\n+ 2 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n*L\n1#1,887:1\n64#2,5:888\n*S KotlinDebug\n*F\n+ 1 TripScreen.kt\ncom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$2\n*L\n108#1:888,5\n*E\n"
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
.method public static synthetic $r8$lambda$TqObNsOu61nIUcapnEz-5AIfo8E(Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$2;->invoke$lambda$0(Landroidx/compose/runtime/MutableState;I)V

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

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$2;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$2;->$tts$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Landroidx/compose/runtime/MutableState;I)V
    .locals 2
    .param p0, "$tts$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p1, "status"    # I

    const-string v0, "$tts$delegate"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    if-nez p1, :cond_1

    .line 105
    invoke-static {p0}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$40(Landroidx/compose/runtime/MutableState;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 107
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 5
    .param p1, "$this$DisposableEffect"    # Landroidx/compose/runtime/DisposableEffectScope;

    const-string v0, "$this$DisposableEffect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$2;->$tts$delegate:Landroidx/compose/runtime/MutableState;

    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$2;->$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$2;->$tts$delegate:Landroidx/compose/runtime/MutableState;

    new-instance v4, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$2$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$2$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-direct {v1, v2, v4}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    invoke-static {v0, v1}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$41(Landroidx/compose/runtime/MutableState;Landroid/speech/tts/TextToSpeech;)V

    .line 108
    iget-object v0, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$2;->$tts$delegate:Landroidx/compose/runtime/MutableState;

    move-object v1, p1

    .local v1, "this_$iv":Landroidx/compose/runtime/DisposableEffectScope;
    const/4 v2, 0x0

    .line 888
    .local v2, "$i$f$onDispose":I
    new-instance v3, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$2$invoke$$inlined$onDispose$1;

    invoke-direct {v3, v0}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$2$invoke$$inlined$onDispose$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v3, Landroidx/compose/runtime/DisposableEffectResult;

    .line 892
    nop

    .line 108
    .end local v1    # "this_$iv":Landroidx/compose/runtime/DisposableEffectScope;
    .end local v2    # "$i$f$onDispose":I
    return-object v3
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 102
    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-virtual {p0, v0}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$2;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object v0

    return-object v0
.end method
