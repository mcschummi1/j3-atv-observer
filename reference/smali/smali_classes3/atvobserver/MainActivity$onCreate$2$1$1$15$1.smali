.class final Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15;->invoke(DJDLcom/cgs/atvobserver/data/model/VehicleType;)V
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
    c = "com.cgs.atvobserver.MainActivity$onCreate$2$1$1$15$1"
    f = "MainActivity.kt"
    i = {}
    l = {
        0x158
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $distance:D

.field final synthetic $duration:J

.field final synthetic $effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

.field final synthetic $fuelUsed:D

.field final synthetic $motionData:Lcom/cgs/atvobserver/sensor/MotionSensorData;

.field final synthetic $vehicleType:Lcom/cgs/atvobserver/data/model/VehicleType;

.field label:I

.field final synthetic this$0:Lcom/cgs/atvobserver/MainActivity;


# direct methods
.method constructor <init>(JLcom/cgs/atvobserver/MainActivity;DLcom/cgs/atvobserver/location/GpsData;DLcom/cgs/atvobserver/data/model/VehicleType;Lcom/cgs/atvobserver/sensor/MotionSensorData;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/cgs/atvobserver/MainActivity;",
            "D",
            "Lcom/cgs/atvobserver/location/GpsData;",
            "D",
            "Lcom/cgs/atvobserver/data/model/VehicleType;",
            "Lcom/cgs/atvobserver/sensor/MotionSensorData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->$duration:J

    iput-object p3, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->this$0:Lcom/cgs/atvobserver/MainActivity;

    iput-wide p4, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->$distance:D

    iput-object p6, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->$effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

    iput-wide p7, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->$fuelUsed:D

    iput-object p9, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->$vehicleType:Lcom/cgs/atvobserver/data/model/VehicleType;

    iput-object p10, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->$motionData:Lcom/cgs/atvobserver/sensor/MotionSensorData;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p11}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 13
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

    new-instance v12, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;

    iget-wide v1, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->$duration:J

    iget-object v3, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->this$0:Lcom/cgs/atvobserver/MainActivity;

    iget-wide v4, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->$distance:D

    iget-object v6, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->$effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

    iget-wide v7, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->$fuelUsed:D

    iget-object v9, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->$vehicleType:Lcom/cgs/atvobserver/data/model/VehicleType;

    iget-object v10, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->$motionData:Lcom/cgs/atvobserver/sensor/MotionSensorData;

    move-object v0, v12

    move-object v11, p2

    invoke-direct/range {v0 .. v11}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;-><init>(JLcom/cgs/atvobserver/MainActivity;DLcom/cgs/atvobserver/location/GpsData;DLcom/cgs/atvobserver/data/model/VehicleType;Lcom/cgs/atvobserver/sensor/MotionSensorData;Lkotlin/coroutines/Continuation;)V

    check-cast v12, Lkotlin/coroutines/Continuation;

    return-object v12
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 53

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 339
    move-object/from16 v1, p0

    iget v2, v1, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->label:I

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v0, p0

    .local v0, "this":Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;
    move-object/from16 v2, p1

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    .end local v0    # "this":Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;
    .end local v2    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .local v2, "this":Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;
    move-object/from16 v3, p1

    .line 340
    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 341
    .local v11, "now":J
    iget-wide v4, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->$duration:J

    const/16 v6, 0x3e8

    int-to-long v6, v6

    mul-long/2addr v4, v6

    sub-long v8, v11, v4

    .line 342
    .local v8, "startTime":J
    iget-wide v4, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->$duration:J

    mul-long/2addr v4, v6

    const/4 v6, 0x2

    int-to-long v6, v6

    div-long/2addr v4, v6

    add-long v13, v8, v4

    .line 344
    .local v13, "midTime":J
    iget-object v4, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->this$0:Lcom/cgs/atvobserver/MainActivity;

    invoke-static {v4}, Lcom/cgs/atvobserver/MainActivity;->access$getDatabase$p(Lcom/cgs/atvobserver/MainActivity;)Lcom/cgs/atvobserver/data/db/AppDatabase;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "database"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_0
    invoke-virtual {v4}, Lcom/cgs/atvobserver/data/db/AppDatabase;->rideDao()Lcom/cgs/atvobserver/data/db/RideDao;

    move-result-object v15

    .line 345
    new-instance v10, Lcom/cgs/atvobserver/data/db/RideLogEntity;

    .line 346
    nop

    .line 347
    .end local v8    # "startTime":J
    nop

    .line 348
    .end local v13    # "midTime":J
    nop

    .line 349
    .end local v11    # "now":J
    iget-wide v4, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->$duration:J

    .line 350
    iget-wide v6, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->$distance:D

    .line 351
    iget-object v1, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->$effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/location/GpsData;->getMaxSpeedKmh()D

    move-result-wide v17

    .line 352
    move-object/from16 p1, v3

    move-wide/from16 v19, v4

    .end local v3    # "$result":Ljava/lang/Object;
    .local p1, "$result":Ljava/lang/Object;
    iget-wide v3, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->$duration:J

    const-wide/16 v21, 0x0

    cmp-long v1, v3, v21

    if-lez v1, :cond_1

    iget-wide v3, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->$distance:D

    move-wide/from16 v23, v6

    iget-wide v5, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->$duration:J

    long-to-double v5, v5

    const-wide v21, 0x40ac200000000000L    # 3600.0

    div-double v5, v5, v21

    div-double/2addr v3, v5

    goto :goto_0

    :cond_1
    move-wide/from16 v23, v6

    const-wide/16 v3, 0x0

    :goto_0
    move-wide/from16 v49, v3

    .line 353
    iget-wide v3, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->$fuelUsed:D

    move-wide/from16 v21, v3

    .line 345
    nop

    .line 354
    nop

    .line 355
    iget-object v1, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->$vehicleType:Lcom/cgs/atvobserver/data/model/VehicleType;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/data/model/VehicleType;->name()Ljava/lang/String;

    move-result-object v25

    .line 345
    nop

    .line 356
    nop

    .line 357
    iget-object v1, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->$effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/location/GpsData;->getLatitude()D

    move-result-wide v28

    .line 358
    iget-object v1, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->$effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/location/GpsData;->getLongitude()D

    move-result-wide v30

    .line 359
    iget-object v1, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->$effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/location/GpsData;->getLatitude()D

    move-result-wide v32

    .line 360
    iget-object v1, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->$effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/location/GpsData;->getLongitude()D

    move-result-wide v34

    .line 361
    iget-object v1, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->$effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/location/GpsData;->getLatitude()D

    move-result-wide v36

    .line 362
    iget-object v1, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->$effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/location/GpsData;->getLongitude()D

    move-result-wide v38

    .line 363
    iget-object v1, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->$motionData:Lcom/cgs/atvobserver/sensor/MotionSensorData;

    invoke-virtual {v1}, Lcom/cgs/atvobserver/sensor/MotionSensorData;->getGForceMagnitude()D

    move-result-wide v3

    const-wide v5, 0x3ff3333333333333L    # 1.2

    invoke-static {v3, v4, v5, v6}, Lkotlin/ranges/RangesKt;->coerceAtLeast(DD)D

    move-result-wide v40

    .line 364
    nop

    .line 345
    nop

    .line 365
    nop

    .line 345
    const v47, 0x1401201

    const/16 v48, 0x0

    const-wide/16 v5, 0x0

    move-wide/from16 v51, v23

    const/16 v23, 0x0

    const-string v24, "POCKET"

    const/16 v26, 0x0

    const/16 v27, 0x1

    const/16 v42, 0x5f

    const-wide/16 v43, 0x0

    const-string v45, "Pocket Mode Background Log"

    const/16 v46, 0x0

    move-object v4, v10

    move-wide v7, v8

    move-object v1, v10

    move-wide v9, v13

    move-wide/from16 v13, v19

    move-object v3, v15

    move-wide/from16 v15, v51

    move-wide/from16 v19, v49

    invoke-direct/range {v4 .. v48}, Lcom/cgs/atvobserver/data/db/RideLogEntity;-><init>(JJJJJDDDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZDDDDDDDIDLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v4, v2

    check-cast v4, Lkotlin/coroutines/Continuation;

    .line 344
    const/4 v5, 0x1

    iput v5, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;->label:I

    invoke-interface {v3, v1, v4}, Lcom/cgs/atvobserver/data/db/RideDao;->insertRide(Lcom/cgs/atvobserver/data/db/RideLogEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    .line 339
    return-object v0

    .line 344
    :cond_2
    move-object v0, v2

    move-object/from16 v2, p1

    .line 368
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v0    # "this":Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$15$1;
    .local v2, "$result":Ljava/lang/Object;
    :goto_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
