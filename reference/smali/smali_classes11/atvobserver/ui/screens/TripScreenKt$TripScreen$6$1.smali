.class final Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;
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
    c = "com.cgs.atvobserver.ui.screens.TripScreenKt$TripScreen$6$1"
    f = "TripScreen.kt"
    i = {}
    l = {
        0xb2
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $activeVehicle:Lcom/cgs/atvobserver/data/model/VehicleType;

.field final synthetic $checklistStepDone$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $fuelStepDone$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $gpsData:Lcom/cgs/atvobserver/location/GpsData;

.field final synthetic $isPitStopPaused$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $lastFlushTimeSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

.field final synthetic $linearFlushIntervalSec:J

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

.field final synthetic $selectedWeather$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/cgs/atvobserver/data/model/WeatherCondition;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $weatherStepDone$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(JLcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/data/model/VehicleType;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableLongState;Landroidx/compose/runtime/MutableLongState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/cgs/atvobserver/location/GpsData;",
            "Lcom/cgs/atvobserver/data/model/VehicleType;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Double;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Double;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableLongState;",
            "Landroidx/compose/runtime/MutableLongState;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/cgs/atvobserver/data/model/WeatherCondition;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$linearFlushIntervalSec:J

    iput-object p3, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    iput-object p4, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$activeVehicle:Lcom/cgs/atvobserver/data/model/VehicleType;

    iput-object p5, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$onPeriodicFlushToStorage:Lkotlin/jvm/functions/Function3;

    iput-object p6, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$checklistStepDone$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$weatherStepDone$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p8, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$fuelStepDone$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p9, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$isPitStopPaused$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p10, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$rideDurationSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    iput-object p11, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$lastFlushTimeSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    iput-object p12, p0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$selectedWeather$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p13}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 16
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

    move-object/from16 v0, p0

    new-instance v15, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;

    iget-wide v2, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$linearFlushIntervalSec:J

    iget-object v4, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    iget-object v5, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$activeVehicle:Lcom/cgs/atvobserver/data/model/VehicleType;

    iget-object v6, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$onPeriodicFlushToStorage:Lkotlin/jvm/functions/Function3;

    iget-object v7, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$checklistStepDone$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v8, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$weatherStepDone$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v9, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$fuelStepDone$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v10, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$isPitStopPaused$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v11, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$rideDurationSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    iget-object v12, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$lastFlushTimeSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    iget-object v13, v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$selectedWeather$delegate:Landroidx/compose/runtime/MutableState;

    move-object v1, v15

    move-object/from16 v14, p2

    invoke-direct/range {v1 .. v14}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;-><init>(JLcom/cgs/atvobserver/location/GpsData;Lcom/cgs/atvobserver/data/model/VehicleType;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableLongState;Landroidx/compose/runtime/MutableLongState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast v15, Lkotlin/coroutines/Continuation;

    return-object v15
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 175
    move-object/from16 v1, p0

    iget v2, v1, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->label:I

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v2, p0

    .local v2, "this":Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;
    move-object/from16 v3, p1

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v2    # "this":Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;
    .end local v3    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;
    move-object/from16 v3, p1

    .line 176
    .restart local v3    # "$result":Ljava/lang/Object;
    iget-object v4, v2, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$checklistStepDone$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v4}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$1(Landroidx/compose/runtime/MutableState;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$weatherStepDone$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v4}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$4(Landroidx/compose/runtime/MutableState;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$fuelStepDone$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v4}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$10(Landroidx/compose/runtime/MutableState;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$isPitStopPaused$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v4}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$28(Landroidx/compose/runtime/MutableState;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 177
    :cond_0
    :goto_0
    nop

    .line 178
    move-object v4, v2

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x1

    iput v5, v2, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->label:I

    const-wide/16 v5, 0x3e8

    invoke-static {v5, v6, v4}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_1

    .line 175
    return-object v0

    .line 179
    :cond_1
    :goto_1
    iget-object v4, v2, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$rideDurationSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    invoke-static {v4}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$16(Landroidx/compose/runtime/MutableLongState;)J

    move-result-wide v4

    iget-object v6, v2, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$rideDurationSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    const-wide/16 v7, 0x1

    add-long/2addr v4, v7

    invoke-static {v6, v4, v5}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$17(Landroidx/compose/runtime/MutableLongState;J)V

    .line 181
    iget-object v4, v2, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$rideDurationSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    invoke-static {v4}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$16(Landroidx/compose/runtime/MutableLongState;)J

    move-result-wide v4

    iget-object v6, v2, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$lastFlushTimeSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    invoke-static {v6}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$19(Landroidx/compose/runtime/MutableLongState;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-wide v6, v2, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$linearFlushIntervalSec:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 182
    iget-object v4, v2, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$lastFlushTimeSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    iget-object v5, v2, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$rideDurationSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    invoke-static {v5}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$16(Landroidx/compose/runtime/MutableLongState;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$20(Landroidx/compose/runtime/MutableLongState;J)V

    .line 183
    sget-object v7, Lcom/cgs/atvobserver/domain/FuelEstimator;->INSTANCE:Lcom/cgs/atvobserver/domain/FuelEstimator;

    .line 184
    iget-object v4, v2, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    invoke-virtual {v4}, Lcom/cgs/atvobserver/location/GpsData;->getDistanceKm()D

    move-result-wide v8

    .line 185
    iget-object v4, v2, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$rideDurationSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    invoke-static {v4}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$16(Landroidx/compose/runtime/MutableLongState;)J

    move-result-wide v10

    .line 186
    iget-object v4, v2, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$rideDurationSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    invoke-static {v4}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$16(Landroidx/compose/runtime/MutableLongState;)J

    move-result-wide v4

    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-lez v4, :cond_2

    iget-object v4, v2, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    invoke-virtual {v4}, Lcom/cgs/atvobserver/location/GpsData;->getDistanceKm()D

    move-result-wide v4

    iget-object v6, v2, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$rideDurationSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    invoke-static {v6}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$16(Landroidx/compose/runtime/MutableLongState;)J

    move-result-wide v12

    long-to-double v12, v12

    const-wide v14, 0x40ac200000000000L    # 3600.0

    div-double/2addr v12, v14

    div-double/2addr v4, v12

    goto :goto_2

    :cond_2
    const-wide/16 v4, 0x0

    :goto_2
    move-wide v12, v4

    .line 187
    iget-object v14, v2, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$activeVehicle:Lcom/cgs/atvobserver/data/model/VehicleType;

    .line 188
    iget-object v4, v2, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$selectedWeather$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v4}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$7(Landroidx/compose/runtime/MutableState;)Lcom/cgs/atvobserver/data/model/WeatherCondition;

    move-result-object v15

    .line 183
    const/16 v25, 0x7e0

    const/16 v26, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    invoke-static/range {v7 .. v26}, Lcom/cgs/atvobserver/domain/FuelEstimator;->estimateFuelConsumption$default(Lcom/cgs/atvobserver/domain/FuelEstimator;DJDLcom/cgs/atvobserver/data/model/VehicleType;Lcom/cgs/atvobserver/data/model/WeatherCondition;Lcom/cgs/atvobserver/ai/EngineLoadState;Lcom/cgs/atvobserver/ai/RoadSurfaceClass;DDZDILjava/lang/Object;)D

    move-result-wide v4

    .line 190
    .local v4, "usedFuel":D
    iget-object v6, v2, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$onPeriodicFlushToStorage:Lkotlin/jvm/functions/Function3;

    iget-object v7, v2, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$gpsData:Lcom/cgs/atvobserver/location/GpsData;

    invoke-virtual {v7}, Lcom/cgs/atvobserver/location/GpsData;->getDistanceKm()D

    move-result-wide v7

    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object v7

    iget-object v8, v2, Lcom/cgs/atvobserver/ui/screens/TripScreenKt$TripScreen$6$1;->$rideDurationSeconds$delegate:Landroidx/compose/runtime/MutableLongState;

    invoke-static {v8}, Lcom/cgs/atvobserver/ui/screens/TripScreenKt;->access$TripScreen$lambda$16(Landroidx/compose/runtime/MutableLongState;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 194
    .end local v4    # "usedFuel":D
    :cond_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
