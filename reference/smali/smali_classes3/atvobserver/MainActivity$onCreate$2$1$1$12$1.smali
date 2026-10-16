.class final Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12;->invoke(DJDLcom/cgs/atvobserver/data/model/VehicleType;)V
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
    c = "com.cgs.atvobserver.MainActivity$onCreate$2$1$1$12$1"
    f = "MainActivity.kt"
    i = {}
    l = {
        0x12c
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $aiOutput$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lcom/cgs/atvobserver/ai/ObserverAiOutput;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $distance:D

.field final synthetic $duration:J

.field final synthetic $effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

.field final synthetic $fuelUsed:D

.field final synthetic $motionData:Lcom/cgs/atvobserver/sensor/MotionSensorData;

.field final synthetic $vehicleType:Lcom/cgs/atvobserver/data/model/VehicleType;

.field label:I

.field final synthetic this$0:Lcom/cgs/atvobserver/MainActivity;


# direct methods
.method constructor <init>(JLcom/cgs/atvobserver/data/model/VehicleType;Lcom/cgs/atvobserver/MainActivity;DLcom/cgs/atvobserver/location/GpsData;DLcom/cgs/atvobserver/sensor/MotionSensorData;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/cgs/atvobserver/data/model/VehicleType;",
            "Lcom/cgs/atvobserver/MainActivity;",
            "D",
            "Lcom/cgs/atvobserver/location/GpsData;",
            "D",
            "Lcom/cgs/atvobserver/sensor/MotionSensorData;",
            "Landroidx/compose/runtime/State<",
            "Lcom/cgs/atvobserver/ai/ObserverAiOutput;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->$duration:J

    iput-object p3, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->$vehicleType:Lcom/cgs/atvobserver/data/model/VehicleType;

    iput-object p4, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->this$0:Lcom/cgs/atvobserver/MainActivity;

    iput-wide p5, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->$distance:D

    iput-object p7, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->$effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

    iput-wide p8, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->$fuelUsed:D

    iput-object p10, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->$motionData:Lcom/cgs/atvobserver/sensor/MotionSensorData;

    iput-object p11, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->$aiOutput$delegate:Landroidx/compose/runtime/State;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p12}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 15
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

    move-object v0, p0

    new-instance v14, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;

    iget-wide v2, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->$duration:J

    iget-object v4, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->$vehicleType:Lcom/cgs/atvobserver/data/model/VehicleType;

    iget-object v5, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->this$0:Lcom/cgs/atvobserver/MainActivity;

    iget-wide v6, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->$distance:D

    iget-object v8, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->$effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

    iget-wide v9, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->$fuelUsed:D

    iget-object v11, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->$motionData:Lcom/cgs/atvobserver/sensor/MotionSensorData;

    iget-object v12, v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->$aiOutput$delegate:Landroidx/compose/runtime/State;

    move-object v1, v14

    move-object/from16 v13, p2

    invoke-direct/range {v1 .. v13}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;-><init>(JLcom/cgs/atvobserver/data/model/VehicleType;Lcom/cgs/atvobserver/MainActivity;DLcom/cgs/atvobserver/location/GpsData;DLcom/cgs/atvobserver/sensor/MotionSensorData;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    check-cast v14, Lkotlin/coroutines/Continuation;

    return-object v14
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 53

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 291
    move-object/from16 v1, p0

    iget v2, v1, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->label:I

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v0, p0

    .local v0, "this":Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;
    move-object/from16 v2, p1

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v0    # "this":Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;
    .end local v2    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .local v2, "this":Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;
    move-object/from16 v3, p1

    .line 292
    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 293
    .local v11, "now":J
    iget-wide v4, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->$duration:J

    const/16 v6, 0x3e8

    int-to-long v6, v6

    mul-long/2addr v4, v6

    sub-long v8, v11, v4

    .line 294
    .local v8, "startTime":J
    iget-wide v4, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->$duration:J

    mul-long/2addr v4, v6

    const/4 v6, 0x2

    int-to-long v6, v6

    div-long/2addr v4, v6

    add-long v13, v8, v4

    .line 296
    .local v13, "midTime":J
    iget-object v4, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->$vehicleType:Lcom/cgs/atvobserver/data/model/VehicleType;

    sget-object v5, Lcom/cgs/atvobserver/data/model/VehicleType;->DAELIM:Lcom/cgs/atvobserver/data/model/VehicleType;

    if-ne v4, v5, :cond_1

    .line 297
    iget-object v4, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->this$0:Lcom/cgs/atvobserver/MainActivity;

    invoke-static {v4}, Lcom/cgs/atvobserver/MainActivity;->access$getDaelimOdometerManager$p(Lcom/cgs/atvobserver/MainActivity;)Lcom/cgs/atvobserver/domain/DaelimOdometerManager;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "daelimOdometerManager"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_0
    iget-wide v6, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->$distance:D

    invoke-virtual {v4, v6, v7}, Lcom/cgs/atvobserver/domain/DaelimOdometerManager;->addGpsRideDistance(D)V

    .line 300
    :cond_1
    iget-object v4, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->this$0:Lcom/cgs/atvobserver/MainActivity;

    invoke-static {v4}, Lcom/cgs/atvobserver/MainActivity;->access$getDatabase$p(Lcom/cgs/atvobserver/MainActivity;)Lcom/cgs/atvobserver/data/db/AppDatabase;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v4, "database"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    move-object v6, v4

    :goto_0
    invoke-virtual {v6}, Lcom/cgs/atvobserver/data/db/AppDatabase;->rideDao()Lcom/cgs/atvobserver/data/db/RideDao;

    move-result-object v15

    .line 301
    new-instance v10, Lcom/cgs/atvobserver/data/db/RideLogEntity;

    .line 302
    nop

    .line 303
    .end local v8    # "startTime":J
    nop

    .line 304
    .end local v13    # "midTime":J
    nop

    .line 305
    .end local v11    # "now":J
    iget-wide v4, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->$duration:J

    .line 306
    iget-wide v6, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->$distance:D

    .line 307
    iget-object v1, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->$effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/location/GpsData;->getMaxSpeedKmh()D

    move-result-wide v17

    .line 308
    move-object/from16 p1, v3

    move-wide/from16 v19, v4

    .end local v3    # "$result":Ljava/lang/Object;
    .local p1, "$result":Ljava/lang/Object;
    iget-wide v3, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->$duration:J

    const-wide/16 v21, 0x0

    cmp-long v1, v3, v21

    if-lez v1, :cond_3

    iget-wide v3, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->$distance:D

    move-wide/from16 v21, v6

    iget-wide v5, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->$duration:J

    long-to-double v5, v5

    const-wide v23, 0x40ac200000000000L    # 3600.0

    div-double v5, v5, v23

    div-double/2addr v3, v5

    goto :goto_1

    :cond_3
    move-wide/from16 v21, v6

    const-wide/16 v3, 0x0

    :goto_1
    move-wide/from16 v28, v3

    .line 309
    iget-wide v3, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->$fuelUsed:D

    .line 301
    nop

    .line 310
    nop

    .line 311
    iget-object v1, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->$vehicleType:Lcom/cgs/atvobserver/data/model/VehicleType;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/data/model/VehicleType;->name()Ljava/lang/String;

    move-result-object v25

    .line 301
    nop

    .line 312
    nop

    .line 313
    iget-object v1, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->$effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/location/GpsData;->getLatitude()D

    move-result-wide v30

    .line 314
    iget-object v1, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->$effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/location/GpsData;->getLongitude()D

    move-result-wide v32

    .line 315
    iget-object v1, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->$effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/location/GpsData;->getLatitude()D

    move-result-wide v34

    .line 316
    iget-object v1, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->$effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/location/GpsData;->getLongitude()D

    move-result-wide v36

    .line 317
    iget-object v1, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->$effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/location/GpsData;->getLatitude()D

    move-result-wide v38

    .line 318
    iget-object v1, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->$effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/location/GpsData;->getLongitude()D

    move-result-wide v40

    .line 319
    iget-object v1, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->$motionData:Lcom/cgs/atvobserver/sensor/MotionSensorData;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/sensor/MotionSensorData;->getGForceMagnitude()D

    move-result-wide v5

    move-wide/from16 v49, v3

    const-wide v3, 0x3ff3333333333333L    # 1.2

    invoke-static {v5, v6, v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(DD)D

    move-result-wide v51

    .line 320
    iget-object v1, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->$motionData:Lcom/cgs/atvobserver/sensor/MotionSensorData;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/sensor/MotionSensorData;->getVibrationIntensity()D

    move-result-wide v3

    const-wide v5, 0x3fd999999999999aL    # 0.4

    cmpg-double v1, v3, v5

    if-gez v1, :cond_4

    const/16 v1, 0x60

    goto :goto_2

    :cond_4
    const/16 v1, 0x52

    :goto_2
    move/from16 v42, v1

    .line 301
    nop

    .line 321
    iget-object v1, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->$aiOutput$delegate:Landroidx/compose/runtime/State;

    invoke-static {v1}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->access$invoke$lambda$11(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/ai/ObserverAiOutput;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cgs/atvobserver/ai/ObserverAiOutput;->getRoadSurface()Lcom/cgs/atvobserver/ai/RoadSurfaceClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cgs/atvobserver/ai/RoadSurfaceClass;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Surface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    .line 301
    const v47, 0x1401201

    const/16 v48, 0x0

    const-wide/16 v5, 0x0

    const/16 v23, 0x0

    const-string v24, "TRIP"

    const/16 v26, 0x0

    const/16 v27, 0x1

    const-wide/16 v43, 0x0

    const/16 v46, 0x0

    move-object v4, v10

    move-wide v7, v8

    move-object v1, v10

    move-wide v9, v13

    move-wide/from16 v13, v19

    move-object v3, v15

    move-wide/from16 v15, v21

    move-wide/from16 v19, v28

    move-wide/from16 v21, v49

    move-wide/from16 v28, v30

    move-wide/from16 v30, v32

    move-wide/from16 v32, v34

    move-wide/from16 v34, v36

    move-wide/from16 v36, v38

    move-wide/from16 v38, v40

    move-wide/from16 v40, v51

    invoke-direct/range {v4 .. v48}, Lcom/cgs/atvobserver/data/db/RideLogEntity;-><init>(JJJJJDDDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZDDDDDDDIDLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v4, v2

    check-cast v4, Lkotlin/coroutines/Continuation;

    .line 300
    const/4 v5, 0x1

    iput v5, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;->label:I

    invoke-interface {v3, v1, v4}, Lcom/cgs/atvobserver/data/db/RideDao;->insertRide(Lcom/cgs/atvobserver/data/db/RideLogEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    .line 291
    return-object v0

    .line 300
    :cond_5
    move-object v0, v2

    move-object/from16 v2, p1

    .line 324
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v0    # "this":Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$12$1;
    .local v2, "$result":Ljava/lang/Object;
    :goto_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
