.class final Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1$result$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TripScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/cgs/atvobserver/data/model/WeatherCondition;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lcom/cgs/atvobserver/data/model/WeatherCondition;",
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
    c = "com.cgs.atvobserver.ui.screens.TripScreenKt$WeatherSelectionStep$1$result$1"
    f = "TripScreen.kt"
    i = {}
    l = {
        0x2a4
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $gpsLat:D

.field final synthetic $gpsLon:D

.field final synthetic $weatherManager:Lcom/cgs/atvobserver/weather/WeatherManager;

.field label:I


# direct methods
.method constructor <init>(Lcom/cgs/atvobserver/weather/WeatherManager;DDLkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cgs/atvobserver/weather/WeatherManager;",
            "DD",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1$result$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1$result$1;->$weatherManager:Lcom/cgs/atvobserver/weather/WeatherManager;

    iput-wide p2, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1$result$1;->$gpsLat:D

    iput-wide p4, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1$result$1;->$gpsLon:D

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

    new-instance v7, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1$result$1;

    iget-object v1, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1$result$1;->$weatherManager:Lcom/cgs/atvobserver/weather/WeatherManager;

    iget-wide v2, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1$result$1;->$gpsLat:D

    iget-wide v4, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1$result$1;->$gpsLon:D

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1$result$1;-><init>(Lcom/cgs/atvobserver/weather/WeatherManager;DDLkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/coroutines/Continuation;

    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1$result$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/cgs/atvobserver/data/model/WeatherCondition;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1$result$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1$result$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 675
    iget v1, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1$result$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1$result$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p1

    goto :goto_0

    .end local v0    # "this":Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1$result$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 676
    .local v1, "this":Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1$result$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1$result$1;->$weatherManager:Lcom/cgs/atvobserver/weather/WeatherManager;

    iget-wide v3, v1, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1$result$1;->$gpsLat:D

    iget-wide v5, v1, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1$result$1;->$gpsLon:D

    move-object v7, v1

    check-cast v7, Lkotlin/coroutines/Continuation;

    const/4 v8, 0x1

    iput v8, v1, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1$result$1;->label:I

    invoke-virtual/range {v2 .. v7}, Lcom/cgs/atvobserver/weather/WeatherManager;->autoDetectWeather(DDLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_0

    .line 675
    return-object v0

    .line 676
    :cond_0
    move-object v0, v1

    .end local v1    # "this":Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1$result$1;
    .restart local v0    # "this":Lcom/cgs/atvobserver/ui/screens/TripScreenKt$WeatherSelectionStep$1$result$1;
    :goto_0
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
