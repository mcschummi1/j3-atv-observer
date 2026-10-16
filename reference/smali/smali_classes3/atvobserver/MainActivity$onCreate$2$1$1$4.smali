.class final Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V
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
    c = "com.cgs.atvobserver.MainActivity$onCreate$2$1$1$4"
    f = "MainActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $appContext:Landroid/content/Context;

.field final synthetic $configState$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lcom/cgs/atvobserver/data/config/AppConfig;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $currentScreen$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $effectiveAudio:Lcom/cgs/atvobserver/audio/AudioAnalysisResult;

.field final synthetic $effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

.field final synthetic $motionData:Lcom/cgs/atvobserver/sensor/MotionSensorData;

.field final synthetic $universalData$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lcom/cgs/atvobserver/sensor/UniversalSensorData;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/cgs/atvobserver/MainActivity;


# direct methods
.method constructor <init>(Lcom/cgs/atvobserver/MainActivity;Landroid/content/Context;Lcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/audio/AudioAnalysisResult;Lcom/cgs/atvobserver/sensor/MotionSensorData;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cgs/atvobserver/MainActivity;",
            "Landroid/content/Context;",
            "Lcom/cgs/atvobserver/location/GpsData;",
            "Lcom/cgs/atvobserver/audio/AudioAnalysisResult;",
            "Lcom/cgs/atvobserver/sensor/MotionSensorData;",
            "Landroidx/compose/runtime/State<",
            "Lcom/cgs/atvobserver/data/config/AppConfig;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Lcom/cgs/atvobserver/sensor/UniversalSensorData;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$4;->this$0:Lcom/cgs/atvobserver/MainActivity;

    iput-object p2, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$4;->$appContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$4;->$effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

    iput-object p4, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$4;->$effectiveAudio:Lcom/cgs/atvobserver/audio/AudioAnalysisResult;

    iput-object p5, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$4;->$motionData:Lcom/cgs/atvobserver/sensor/MotionSensorData;

    iput-object p6, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$4;->$configState$delegate:Landroidx/compose/runtime/State;

    iput-object p7, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$4;->$currentScreen$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p8, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$4;->$universalData$delegate:Landroidx/compose/runtime/State;

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

    new-instance v10, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$4;

    iget-object v1, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$4;->this$0:Lcom/cgs/atvobserver/MainActivity;

    iget-object v2, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$4;->$appContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$4;->$effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

    iget-object v4, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$4;->$effectiveAudio:Lcom/cgs/atvobserver/audio/AudioAnalysisResult;

    iget-object v5, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$4;->$motionData:Lcom/cgs/atvobserver/sensor/MotionSensorData;

    iget-object v6, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$4;->$configState$delegate:Landroidx/compose/runtime/State;

    iget-object v7, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$4;->$currentScreen$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v8, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$4;->$universalData$delegate:Landroidx/compose/runtime/State;

    move-object v0, v10

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$4;-><init>(Lcom/cgs/atvobserver/MainActivity;Landroid/content/Context;Lcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/audio/AudioAnalysisResult;Lcom/cgs/atvobserver/sensor/MotionSensorData;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    check-cast v10, Lkotlin/coroutines/Continuation;

    return-object v10
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$4;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$4;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 194
    iget v0, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$4;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .line 195
    .local v0, "this":Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$4;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$4;->this$0:Lcom/cgs/atvobserver/MainActivity;

    invoke-static {v1}, Lcom/cgs/atvobserver/MainActivity;->access$getAiEngine$p(Lcom/cgs/atvobserver/MainActivity;)Lcom/cgs/atvobserver/ai/ObserverAiEngine;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "aiEngine"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    move-object v2, v1

    .line 196
    iget-object v3, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$4;->$appContext:Landroid/content/Context;

    const-string v1, "$appContext"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    iget-object v4, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$4;->$effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

    .line 198
    iget-object v5, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$4;->$effectiveAudio:Lcom/cgs/atvobserver/audio/AudioAnalysisResult;

    .line 199
    iget-object v6, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$4;->$motionData:Lcom/cgs/atvobserver/sensor/MotionSensorData;

    .line 200
    sget-object v7, Lcom/cgs/atvobserver/data/model/WeatherCondition;->NORMAL_DRY:Lcom/cgs/atvobserver/data/model/WeatherCondition;

    .line 201
    iget-object v1, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$4;->$configState$delegate:Landroidx/compose/runtime/State;

    invoke-static {v1}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->access$invoke$lambda$0(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/data/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cgs/atvobserver/data/config/AppConfig;->getActiveVehicle()Lcom/cgs/atvobserver/data/model/VehicleType;

    move-result-object v8

    .line 202
    iget-object v1, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$4;->$currentScreen$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->access$invoke$lambda$2(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v1

    const-string v9, "TEST_TRACK"

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    .line 203
    iget-object v1, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$4;->$universalData$delegate:Landroidx/compose/runtime/State;

    invoke-static {v1}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->access$invoke$lambda$9(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/sensor/UniversalSensorData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cgs/atvobserver/sensor/UniversalSensorData;->getAmbientLux()F

    move-result v10

    .line 195
    const/16 v12, 0x100

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-static/range {v2 .. v13}, Lcom/cgs/atvobserver/ai/ObserverAiEngine;->processTelemetryFrame$default(Lcom/cgs/atvobserver/ai/ObserverAiEngine;Landroid/content/Context;Lcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/audio/AudioAnalysisResult;Lcom/cgs/atvobserver/sensor/MotionSensorData;Lcom/cgs/atvobserver/data/model/WeatherCondition;Lcom/cgs/atvobserver/data/model/VehicleType;ZFIILjava/lang/Object;)V

    .line 205
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
