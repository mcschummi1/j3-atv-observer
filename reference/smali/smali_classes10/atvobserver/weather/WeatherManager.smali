.class public final Lcom/cgs/atvobserver/weather/WeatherManager;
.super Ljava/lang/Object;
.source "WeatherManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWeatherManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WeatherManager.kt\ncom/cgs/atvobserver/weather/WeatherManager\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,84:1\n643#2,5:85\n*S KotlinDebug\n*F\n+ 1 WeatherManager.kt\ncom/cgs/atvobserver/weather/WeatherManager\n*L\n76#1:85,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u001e\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u0010\u0010J\u0006\u0010\u0011\u001a\u00020\u0012J\u0010\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0007R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/cgs/atvobserver/weather/WeatherManager;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "_currentWeather",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/cgs/atvobserver/data/model/WeatherCondition;",
        "currentWeather",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getCurrentWeather",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "autoDetectWeather",
        "lat",
        "",
        "lon",
        "(DDLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "isInternetAvailable",
        "",
        "parseWeatherResponse",
        "jsonResponse",
        "",
        "setCondition",
        "",
        "condition",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final _currentWeather:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/cgs/atvobserver/data/model/WeatherCondition;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final currentWeather:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/cgs/atvobserver/data/model/WeatherCondition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lcom/cgs/atvobserver/weather/WeatherManager;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/cgs/atvobserver/weather/WeatherManager;-><init>(Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cgs/atvobserver/weather/WeatherManager;->context:Landroid/content/Context;

    .line 21
    sget-object v0, Lcom/cgs/atvobserver/data/model/WeatherCondition;->NORMAL_DRY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/cgs/atvobserver/weather/WeatherManager;->_currentWeather:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 22
    iget-object v0, p0, Lcom/cgs/atvobserver/weather/WeatherManager;->_currentWeather:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v0, p0, Lcom/cgs/atvobserver/weather/WeatherManager;->currentWeather:Lkotlinx/coroutines/flow/StateFlow;

    .line 19
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 19
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/cgs/atvobserver/weather/WeatherManager;-><init>(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method public static final synthetic access$get_currentWeather$p(Lcom/cgs/atvobserver/weather/WeatherManager;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lcom/cgs/atvobserver/weather/WeatherManager;

    .line 19
    iget-object v0, p0, Lcom/cgs/atvobserver/weather/WeatherManager;->_currentWeather:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$parseWeatherResponse(Lcom/cgs/atvobserver/weather/WeatherManager;Ljava/lang/String;)Lcom/cgs/atvobserver/data/model/WeatherCondition;
    .locals 1
    .param p0, "$this"    # Lcom/cgs/atvobserver/weather/WeatherManager;
    .param p1, "jsonResponse"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0, p1}, Lcom/cgs/atvobserver/weather/WeatherManager;->parseWeatherResponse(Ljava/lang/String;)Lcom/cgs/atvobserver/data/model/WeatherCondition;

    move-result-object v0

    return-object v0
.end method

.method private final parseWeatherResponse(Ljava/lang/String;)Lcom/cgs/atvobserver/data/model/WeatherCondition;
    .locals 14
    .param p1, "jsonResponse"    # Ljava/lang/String;

    .line 72
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "windspeed"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_6

    .line 73
    move-object v5, p1

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v9, 0x6

    const/4 v10, 0x0

    const-string v6, "\"windspeed\":"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    .line 74
    .local v0, "idx":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_5

    .line 75
    add-int/lit8 v5, v0, 0xc

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "substring(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .local v5, "sub":Ljava/lang/String;
    move-object v7, v5

    .local v7, "$this$takeWhile$iv":Ljava/lang/String;
    const/4 v8, 0x0

    .line 85
    .local v8, "$i$f$takeWhile":I
    const/4 v9, 0x0

    .local v9, "index$iv":I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    :goto_0
    if-ge v9, v10, :cond_3

    .line 86
    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .local v11, "it":C
    const/4 v12, 0x0

    .line 76
    .local v12, "$i$a$-takeWhile-WeatherManager$parseWeatherResponse$windSpeed$1":I
    invoke-static {v11}, Ljava/lang/Character;->isDigit(C)Z

    move-result v13

    if-nez v13, :cond_1

    const/16 v13, 0x2e

    if-ne v11, v13, :cond_0

    goto :goto_1

    :cond_0
    move v11, v4

    goto :goto_2

    :cond_1
    :goto_1
    move v11, v1

    .line 86
    .end local v11    # "it":C
    .end local v12    # "$i$a$-takeWhile-WeatherManager$parseWeatherResponse$windSpeed$1":I
    :goto_2
    if-nez v11, :cond_2

    .line 87
    invoke-virtual {v7, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v10

    goto :goto_3

    .line 85
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 89
    .end local v9    # "index$iv":I
    :cond_3
    nop

    .line 76
    .end local v7    # "$this$takeWhile$iv":Ljava/lang/String;
    .end local v8    # "$i$f$takeWhile":I
    :goto_3
    invoke-static {v7}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_4

    .end local v5    # "sub":Ljava/lang/String;
    :cond_4
    goto :goto_4

    .line 77
    :cond_5
    nop

    .end local v0    # "idx":I
    goto :goto_4

    .line 78
    :cond_6
    nop

    .line 72
    :goto_4
    nop

    .line 80
    .local v2, "windSpeed":D
    const-wide/high16 v5, 0x4032000000000000L    # 18.0

    cmpl-double v0, v2, v5

    if-lez v0, :cond_7

    move v4, v1

    :cond_7
    move v0, v4

    .line 81
    .local v0, "isWindy":Z
    if-eqz v0, :cond_8

    sget-object v1, Lcom/cgs/atvobserver/data/model/WeatherCondition;->NORMAL_WINDY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

    goto :goto_5

    :cond_8
    sget-object v1, Lcom/cgs/atvobserver/data/model/WeatherCondition;->NORMAL_DRY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

    :goto_5
    return-object v1
.end method


# virtual methods
.method public final autoDetectWeather(DDLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p1, "lat"    # D
    .param p3, "lon"    # D
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cgs/atvobserver/data/model/WeatherCondition;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 40
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v8, Lcom/cgs/atvobserver/weather/WeatherManager$autoDetectWeather$2;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/cgs/atvobserver/weather/WeatherManager$autoDetectWeather$2;-><init>(Lcom/cgs/atvobserver/weather/WeatherManager;DDLkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v8, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    return-object v0
.end method

.method public final getCurrentWeather()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/cgs/atvobserver/data/model/WeatherCondition;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/cgs/atvobserver/weather/WeatherManager;->currentWeather:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final isInternetAvailable()Z
    .locals 4

    .line 29
    iget-object v0, p0, Lcom/cgs/atvobserver/weather/WeatherManager;->context:Landroid/content/Context;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/cgs/atvobserver/weather/WeatherManager;->context:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/net/ConnectivityManager;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return v1

    .line 31
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    return v2

    .line 32
    .local v1, "network":Landroid/net/Network;
    :cond_3
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    move-object v2, v3

    .line 33
    .local v2, "capabilities":Landroid/net/NetworkCapabilities;
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    return v3
.end method

.method public final setCondition(Lcom/cgs/atvobserver/data/model/WeatherCondition;)V
    .locals 1
    .param p1, "condition"    # Lcom/cgs/atvobserver/data/model/WeatherCondition;

    const-string v0, "condition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/cgs/atvobserver/weather/WeatherManager;->_currentWeather:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 26
    return-void
.end method
