.class final Lcom/cgs/atvobserver/weather/WeatherManager$autoDetectWeather$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WeatherManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/weather/WeatherManager;->autoDetectWeather(DDLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWeatherManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WeatherManager.kt\ncom/cgs/atvobserver/weather/WeatherManager$autoDetectWeather$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,84:1\n1#2:85\n*E\n"
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
    c = "com.cgs.atvobserver.weather.WeatherManager$autoDetectWeather$2"
    f = "WeatherManager.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $lat:D

.field final synthetic $lon:D

.field label:I

.field final synthetic this$0:Lcom/cgs/atvobserver/weather/WeatherManager;


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
            "Lcom/cgs/atvobserver/weather/WeatherManager$autoDetectWeather$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/weather/WeatherManager$autoDetectWeather$2;->this$0:Lcom/cgs/atvobserver/weather/WeatherManager;

    iput-wide p2, p0, Lcom/cgs/atvobserver/weather/WeatherManager$autoDetectWeather$2;->$lat:D

    iput-wide p4, p0, Lcom/cgs/atvobserver/weather/WeatherManager$autoDetectWeather$2;->$lon:D

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

    new-instance v7, Lcom/cgs/atvobserver/weather/WeatherManager$autoDetectWeather$2;

    iget-object v1, p0, Lcom/cgs/atvobserver/weather/WeatherManager$autoDetectWeather$2;->this$0:Lcom/cgs/atvobserver/weather/WeatherManager;

    iget-wide v2, p0, Lcom/cgs/atvobserver/weather/WeatherManager$autoDetectWeather$2;->$lat:D

    iget-wide v4, p0, Lcom/cgs/atvobserver/weather/WeatherManager$autoDetectWeather$2;->$lon:D

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/cgs/atvobserver/weather/WeatherManager$autoDetectWeather$2;-><init>(Lcom/cgs/atvobserver/weather/WeatherManager;DDLkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/coroutines/Continuation;

    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/weather/WeatherManager$autoDetectWeather$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/weather/WeatherManager$autoDetectWeather$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/cgs/atvobserver/weather/WeatherManager$autoDetectWeather$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/cgs/atvobserver/weather/WeatherManager$autoDetectWeather$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 40
    iget v0, p0, Lcom/cgs/atvobserver/weather/WeatherManager$autoDetectWeather$2;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .line 41
    .local v0, "this":Lcom/cgs/atvobserver/weather/WeatherManager$autoDetectWeather$2;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lcom/cgs/atvobserver/weather/WeatherManager$autoDetectWeather$2;->this$0:Lcom/cgs/atvobserver/weather/WeatherManager;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/weather/WeatherManager;->isInternetAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    sget-object v1, Lcom/cgs/atvobserver/data/model/WeatherCondition;->NORMAL_DRY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

    .line 43
    .local v1, "fallback":Lcom/cgs/atvobserver/data/model/WeatherCondition;
    iget-object v2, v0, Lcom/cgs/atvobserver/weather/WeatherManager$autoDetectWeather$2;->this$0:Lcom/cgs/atvobserver/weather/WeatherManager;

    invoke-static {v2}, Lcom/cgs/atvobserver/weather/WeatherManager;->access$get_currentWeather$p(Lcom/cgs/atvobserver/weather/WeatherManager;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-interface {v2, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 44
    return-object v1

    .line 48
    .end local v1    # "fallback":Lcom/cgs/atvobserver/data/model/WeatherCondition;
    :cond_0
    iget-wide v1, v0, Lcom/cgs/atvobserver/weather/WeatherManager$autoDetectWeather$2;->$lat:D

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v5

    :goto_0
    if-eqz v1, :cond_2

    const-wide v6, 0x404636a161e4f766L    # 44.4268

    goto :goto_1

    :cond_2
    iget-wide v6, v0, Lcom/cgs/atvobserver/weather/WeatherManager$autoDetectWeather$2;->$lat:D

    .line 49
    .local v6, "queryLat":D
    :goto_1
    iget-wide v8, v0, Lcom/cgs/atvobserver/weather/WeatherManager$autoDetectWeather$2;->$lon:D

    cmpg-double v1, v8, v3

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v5

    :goto_2
    if-eqz v2, :cond_4

    const-wide v1, 0x403a1a3d70a3d70aL    # 26.1025

    goto :goto_3

    :cond_4
    iget-wide v1, v0, Lcom/cgs/atvobserver/weather/WeatherManager$autoDetectWeather$2;->$lon:D

    .line 51
    .local v1, "queryLon":D
    :goto_3
    nop

    .line 52
    :try_start_0
    new-instance v3, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://api.open-meteo.com/v1/forecast?latitude="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&longitude="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&current_weather=true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 53
    .end local v6    # "queryLat":D
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .end local v1    # "url":Ljava/net/URL;
    const-string v1, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/net/HttpURLConnection;

    move-object v1, v2

    .line 54
    .local v1, "connection":Ljava/net/HttpURLConnection;
    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 55
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 56
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_6

    .line 59
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    const-string v1, "getInputStream(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v3, Ljava/io/Reader;

    instance-of v1, v3, Ljava/io/BufferedReader;

    if-eqz v1, :cond_5

    check-cast v3, Ljava/io/BufferedReader;

    goto :goto_4

    :cond_5
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v2, 0x2000

    invoke-direct {v1, v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v3, v1

    :goto_4
    check-cast v3, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v1, v3

    check-cast v1, Ljava/io/BufferedReader;

    .line 85
    .local v1, "it":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 59
    .local v2, "$i$a$-use-WeatherManager$autoDetectWeather$2$response$1":I
    move-object v4, v1

    check-cast v4, Ljava/io/Reader;

    invoke-static {v4}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "it":Ljava/io/BufferedReader;
    .end local v2    # "$i$a$-use-WeatherManager$autoDetectWeather$2$response$1":I
    const/4 v1, 0x0

    :try_start_2
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v1, v4

    .line 60
    .local v1, "response":Ljava/lang/String;
    iget-object v2, v0, Lcom/cgs/atvobserver/weather/WeatherManager$autoDetectWeather$2;->this$0:Lcom/cgs/atvobserver/weather/WeatherManager;

    invoke-static {v2, v1}, Lcom/cgs/atvobserver/weather/WeatherManager;->access$parseWeatherResponse(Lcom/cgs/atvobserver/weather/WeatherManager;Ljava/lang/String;)Lcom/cgs/atvobserver/data/model/WeatherCondition;

    move-result-object v2

    .line 61
    .local v2, "detected":Lcom/cgs/atvobserver/data/model/WeatherCondition;
    iget-object v3, v0, Lcom/cgs/atvobserver/weather/WeatherManager$autoDetectWeather$2;->this$0:Lcom/cgs/atvobserver/weather/WeatherManager;

    invoke-static {v3}, Lcom/cgs/atvobserver/weather/WeatherManager;->access$get_currentWeather$p(Lcom/cgs/atvobserver/weather/WeatherManager;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    invoke-interface {v3, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 62
    return-object v2

    .line 59
    .end local v1    # "response":Ljava/lang/String;
    .end local v2    # "detected":Lcom/cgs/atvobserver/data/model/WeatherCondition;
    :catchall_0
    move-exception v1

    .end local v0    # "this":Lcom/cgs/atvobserver/weather/WeatherManager$autoDetectWeather$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v0    # "this":Lcom/cgs/atvobserver/weather/WeatherManager$autoDetectWeather$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v0    # "this":Lcom/cgs/atvobserver/weather/WeatherManager$autoDetectWeather$2;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 64
    .restart local v0    # "this":Lcom/cgs/atvobserver/weather/WeatherManager$autoDetectWeather$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 66
    :cond_6
    sget-object v1, Lcom/cgs/atvobserver/data/model/WeatherCondition;->NORMAL_DRY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

    .line 67
    .local v1, "fallback":Lcom/cgs/atvobserver/data/model/WeatherCondition;
    iget-object v2, v0, Lcom/cgs/atvobserver/weather/WeatherManager$autoDetectWeather$2;->this$0:Lcom/cgs/atvobserver/weather/WeatherManager;

    invoke-static {v2}, Lcom/cgs/atvobserver/weather/WeatherManager;->access$get_currentWeather$p(Lcom/cgs/atvobserver/weather/WeatherManager;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-interface {v2, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 68
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
