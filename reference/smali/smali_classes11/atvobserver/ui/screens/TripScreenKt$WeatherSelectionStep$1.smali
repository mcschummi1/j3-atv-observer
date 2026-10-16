.class final Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TripScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->WeatherSelectionStep(Lcom/cgs/atvobserver/data/model/VehicleType;Landroid/content/Context;DDLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
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
    c = "com.cgs.atvobserver.ui.screens.TripScreenKt$WeatherSelectionStep$1"
    f = "TripScreen.kt"
    i = {}
    l = {
        0x2a3
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $detectedLabel$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $gpsLat:D

.field final synthetic $gpsLon:D

.field final synthetic $isCheckingWeather$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onWeatherSelected:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/cgs/atvobserver/data/model/WeatherCondition;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;DDLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/cgs/atvobserver/data/model/WeatherCondition;",
            "Lkotlin/Unit;",
            ">;DD",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1;->$onWeatherSelected:Lkotlin/jvm/functions/Function1;

    iput-wide p3, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1;->$gpsLat:D

    iput-wide p5, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1;->$gpsLon:D

    iput-object p7, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1;->$isCheckingWeather$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p8, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1;->$detectedLabel$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11
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

    new-instance v10, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1;

    iget-object v1, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1;->$onWeatherSelected:Lkotlin/jvm/functions/Function1;

    iget-wide v3, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1;->$gpsLat:D

    iget-wide v5, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1;->$gpsLon:D

    iget-object v7, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1;->$isCheckingWeather$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v8, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1;->$detectedLabel$delegate:Landroidx/compose/runtime/MutableState;

    move-object v0, v10

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;DDLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast v10, Lkotlin/coroutines/Continuation;

    return-object v10
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 673
    iget v1, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    move-object v0, p1

    goto :goto_0

    .end local v0    # "this":Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 674
    .local v1, "this":Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    new-instance v3, Lcom/cgs/atvobserver/weather/WeatherManager;

    iget-object v2, v1, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1;->$context:Landroid/content/Context;

    invoke-direct {v3, v2}, Lcom/cgs/atvobserver/weather/WeatherManager;-><init>(Landroid/content/Context;)V

    .line 675
    .local v3, "weatherManager":Lcom/cgs/atvobserver/weather/WeatherManager;
    new-instance v9, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1$result$1;

    iget-wide v4, v1, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1;->$gpsLat:D

    iget-wide v6, v1, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1;->$gpsLon:D

    const/4 v8, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1$result$1;-><init>(Lcom/cgs/atvobserver/weather/WeatherManager;DDLkotlin/coroutines/Continuation;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    move-object v2, v1

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v4, 0x1

    iput v4, v1, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1;->label:I

    const-wide/16 v4, 0x5dc

    invoke-static {v4, v5, v9, v2}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v3    # "weatherManager":Lcom/cgs/atvobserver/weather/WeatherManager;
    if-ne v2, v0, :cond_0

    .line 673
    return-object v0

    .line 675
    :cond_0
    move-object v0, p1

    move-object p1, v2

    .line 673
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_0
    check-cast p1, Lcom/cgs/atvobserver/data/model/WeatherCondition;

    .line 678
    .local p1, "result":Lcom/cgs/atvobserver/data/model/WeatherCondition;
    iget-object v2, v1, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1;->$isCheckingWeather$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$WeatherSelectionStep$lambda$75(Landroidx/compose/runtime/MutableState;Z)V

    .line 679
    if-eqz p1, :cond_1

    .line 680
    iget-object v2, v1, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1;->$onWeatherSelected:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 682
    .end local p1    # "result":Lcom/cgs/atvobserver/data/model/WeatherCondition;
    :cond_1
    iget-object p1, v1, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1;->$detectedLabel$delegate:Landroidx/compose/runtime/MutableState;

    const-string v2, "Offline fallback ready (Tap condition below)"

    invoke-static {p1, v2}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$WeatherSelectionStep$lambda$78(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    .line 684
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
