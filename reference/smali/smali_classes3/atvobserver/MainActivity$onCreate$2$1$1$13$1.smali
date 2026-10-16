.class final Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13;->invoke(DJD)V
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
    c = "com.cgs.atvobserver.MainActivity$onCreate$2$1$1$13$1"
    f = "MainActivity.kt"
    i = {
        0x0
    }
    l = {
        0x101,
        0x103,
        0x110
    }
    m = "invokeSuspend"
    n = {
        "now"
    }
    s = {
        "J$0"
    }
.end annotation


# instance fields
.field final synthetic $configState$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lcom/cgs/atvobserver/data/config/AppConfig;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $distance:D

.field final synthetic $duration:J

.field final synthetic $effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

.field final synthetic $fuelUsed:D

.field J$0:J

.field label:I

.field final synthetic this$0:Lcom/cgs/atvobserver/MainActivity;


# direct methods
.method constructor <init>(Lcom/cgs/atvobserver/MainActivity;Lcom/cgs/atvobserver/location/GpsData;JDDLandroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cgs/atvobserver/MainActivity;",
            "Lcom/cgs/atvobserver/location/GpsData;",
            "JDD",
            "Landroidx/compose/runtime/State<",
            "Lcom/cgs/atvobserver/data/config/AppConfig;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->this$0:Lcom/cgs/atvobserver/MainActivity;

    iput-object p2, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->$effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

    iput-wide p3, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->$duration:J

    iput-wide p5, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->$distance:D

    iput-wide p7, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->$fuelUsed:D

    iput-object p9, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->$configState$delegate:Landroidx/compose/runtime/State;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p10}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 12
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

    new-instance v11, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;

    iget-object v1, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->this$0:Lcom/cgs/atvobserver/MainActivity;

    iget-object v2, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->$effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

    iget-wide v3, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->$duration:J

    iget-wide v5, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->$distance:D

    iget-wide v7, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->$fuelUsed:D

    iget-object v9, p0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->$configState$delegate:Landroidx/compose/runtime/State;

    move-object v0, v11

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;-><init>(Lcom/cgs/atvobserver/MainActivity;Lcom/cgs/atvobserver/location/GpsData;JDDLandroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    check-cast v11, Lkotlin/coroutines/Continuation;

    return-object v11
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 54

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 255
    move-object/from16 v1, p0

    iget v2, v1, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->label:I

    const/4 v3, 0x0

    const-string v4, "database"

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v0, p0

    .local v0, "this":Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;
    move-object/from16 v2, p1

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    .end local v0    # "this":Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;
    .end local v2    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object/from16 v0, p0

    .restart local v0    # "this":Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;
    move-object/from16 v2, p1

    .restart local v2    # "$result":Ljava/lang/Object;
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v0    # "this":Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;
    .end local v2    # "$result":Ljava/lang/Object;
    :pswitch_2
    move-object/from16 v2, p0

    .local v2, "this":Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;
    move-object/from16 v5, p1

    .local v5, "$result":Ljava/lang/Object;
    iget-wide v6, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->J$0:J

    .local v6, "now":J
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v5

    move-wide/from16 v16, v6

    goto :goto_0

    .end local v2    # "this":Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v6    # "now":J
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;
    move-object/from16 v5, p1

    .line 256
    .restart local v5    # "$result":Ljava/lang/Object;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 257
    .restart local v6    # "now":J
    iget-object v8, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->this$0:Lcom/cgs/atvobserver/MainActivity;

    invoke-static {v8}, Lcom/cgs/atvobserver/MainActivity;->access$getDatabase$p(Lcom/cgs/atvobserver/MainActivity;)Lcom/cgs/atvobserver/data/db/AppDatabase;

    move-result-object v8

    if-nez v8, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v3

    :cond_0
    invoke-virtual {v8}, Lcom/cgs/atvobserver/data/db/AppDatabase;->rideDao()Lcom/cgs/atvobserver/data/db/RideDao;

    move-result-object v8

    move-object v9, v2

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-wide v6, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->J$0:J

    const/4 v10, 0x1

    iput v10, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->label:I

    invoke-interface {v8, v9}, Lcom/cgs/atvobserver/data/db/RideDao;->getUnfinishedRide(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v0, :cond_1

    .line 255
    return-object v0

    .line 257
    :cond_1
    move-wide/from16 v16, v6

    .line 255
    .end local v6    # "now":J
    .local v16, "now":J
    :goto_0
    move-object v9, v8

    check-cast v9, Lcom/cgs/atvobserver/data/db/RideLogEntity;

    .line 258
    .local v9, "unfinished":Lcom/cgs/atvobserver/data/db/RideLogEntity;
    if-eqz v9, :cond_4

    .line 259
    iget-object v6, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->this$0:Lcom/cgs/atvobserver/MainActivity;

    invoke-static {v6}, Lcom/cgs/atvobserver/MainActivity;->access$getDatabase$p(Lcom/cgs/atvobserver/MainActivity;)Lcom/cgs/atvobserver/data/db/AppDatabase;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v3, v6

    :goto_1
    invoke-virtual {v3}, Lcom/cgs/atvobserver/data/db/AppDatabase;->rideDao()Lcom/cgs/atvobserver/data/db/RideDao;

    move-result-object v3

    .line 264
    iget-object v4, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->$effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

    invoke-virtual {v4}, Lcom/cgs/atvobserver/location/GpsData;->getMaxSpeedKmh()D

    move-result-wide v22

    .line 266
    iget-object v4, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->$effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

    invoke-virtual {v4}, Lcom/cgs/atvobserver/location/GpsData;->getLatitude()D

    move-result-wide v37

    .line 267
    iget-object v4, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->$effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

    invoke-virtual {v4}, Lcom/cgs/atvobserver/location/GpsData;->getLongitude()D

    move-result-wide v39

    .line 260
    nop

    .line 268
    .end local v9    # "unfinished":Lcom/cgs/atvobserver/data/db/RideLogEntity;
    nop

    .line 261
    nop

    .line 262
    .end local v16    # "now":J
    iget-wide v6, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->$duration:J

    move-wide/from16 v18, v6

    .line 263
    iget-wide v6, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->$distance:D

    move-wide/from16 v20, v6

    .line 264
    nop

    .line 260
    nop

    .line 265
    iget-wide v6, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->$fuelUsed:D

    move-wide/from16 v26, v6

    .line 260
    nop

    .line 266
    nop

    .line 267
    nop

    .line 260
    const v52, 0x1fcfe83

    const/16 v53, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v24, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const/16 v47, 0x0

    const-wide/16 v48, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    move-wide/from16 v14, v16

    invoke-static/range {v9 .. v53}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->copy$default(Lcom/cgs/atvobserver/data/db/RideLogEntity;JJJJJDDDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZDDDDDDDIDLjava/lang/String;ZILjava/lang/Object;)Lcom/cgs/atvobserver/data/db/RideLogEntity;

    move-result-object v4

    move-object v6, v2

    check-cast v6, Lkotlin/coroutines/Continuation;

    .line 259
    const/4 v7, 0x2

    iput v7, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->label:I

    invoke-interface {v3, v4, v6}, Lcom/cgs/atvobserver/data/db/RideDao;->updateRide(Lcom/cgs/atvobserver/data/db/RideLogEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    .line 255
    return-object v0

    .line 259
    :cond_3
    move-object v0, v2

    move-object v2, v5

    .end local v5    # "$result":Ljava/lang/Object;
    .restart local v0    # "this":Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;
    .local v2, "$result":Ljava/lang/Object;
    :goto_2
    goto/16 :goto_5

    .line 272
    .end local v0    # "this":Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;
    .local v2, "this":Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;
    .restart local v5    # "$result":Ljava/lang/Object;
    .restart local v16    # "now":J
    :cond_4
    iget-object v6, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->this$0:Lcom/cgs/atvobserver/MainActivity;

    invoke-static {v6}, Lcom/cgs/atvobserver/MainActivity;->access$getDatabase$p(Lcom/cgs/atvobserver/MainActivity;)Lcom/cgs/atvobserver/data/db/AppDatabase;

    move-result-object v6

    if-nez v6, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-object v3, v6

    :goto_3
    invoke-virtual {v3}, Lcom/cgs/atvobserver/data/db/AppDatabase;->rideDao()Lcom/cgs/atvobserver/data/db/RideDao;

    move-result-object v3

    .line 273
    new-instance v4, Lcom/cgs/atvobserver/data/db/RideLogEntity;

    move-object v9, v4

    .line 274
    iget-wide v6, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->$duration:J

    const/16 v8, 0x3e8

    int-to-long v10, v8

    mul-long/2addr v6, v10

    sub-long v12, v16, v6

    .line 273
    nop

    .line 275
    nop

    .line 276
    .end local v16    # "now":J
    iget-wide v6, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->$duration:J

    move-wide/from16 v18, v6

    .line 277
    iget-wide v6, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->$distance:D

    move-wide/from16 v20, v6

    .line 278
    iget-object v6, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->$effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

    invoke-virtual {v6}, Lcom/cgs/atvobserver/location/GpsData;->getMaxSpeedKmh()D

    move-result-wide v22

    .line 273
    nop

    .line 279
    iget-wide v6, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->$fuelUsed:D

    move-wide/from16 v26, v6

    .line 273
    nop

    .line 280
    nop

    .line 281
    iget-object v6, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->$configState$delegate:Landroidx/compose/runtime/State;

    invoke-static {v6}, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1;->access$invoke$lambda$0(Landroidx/compose/runtime/State;)Lcom/cgs/atvobserver/data/config/AppConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cgs/atvobserver/data/config/AppConfig;->getActiveVehicle()Lcom/cgs/atvobserver/data/model/VehicleType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cgs/atvobserver/data/model/VehicleType;->name()Ljava/lang/String;

    move-result-object v30

    .line 273
    nop

    .line 282
    nop

    .line 283
    iget-object v6, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->$effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

    invoke-virtual {v6}, Lcom/cgs/atvobserver/location/GpsData;->getLatitude()D

    move-result-wide v33

    .line 284
    iget-object v6, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->$effectiveGps:Lcom/cgs/atvobserver/location/GpsData;

    invoke-virtual {v6}, Lcom/cgs/atvobserver/location/GpsData;->getLongitude()D

    move-result-wide v35

    .line 273
    const v52, 0x1ff1285

    const/16 v53, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v24, 0x0

    const/16 v28, 0x0

    const-string v29, "TRIP"

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const/16 v47, 0x0

    const-wide/16 v48, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    invoke-direct/range {v9 .. v53}, Lcom/cgs/atvobserver/data/db/RideLogEntity;-><init>(JJJJJDDDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZDDDDDDDIDLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v6, v2

    check-cast v6, Lkotlin/coroutines/Continuation;

    .line 272
    const/4 v7, 0x3

    iput v7, v2, Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;->label:I

    invoke-interface {v3, v4, v6}, Lcom/cgs/atvobserver/data/db/RideDao;->insertRide(Lcom/cgs/atvobserver/data/db/RideLogEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_6

    .line 255
    return-object v0

    .line 272
    :cond_6
    move-object v0, v2

    move-object v2, v5

    .line 288
    .end local v5    # "$result":Ljava/lang/Object;
    .restart local v0    # "this":Lcom/cgs/atvobserver/MainActivity$onCreate$2$1$1$13$1;
    .local v2, "$result":Ljava/lang/Object;
    :goto_4
    nop

    :goto_5
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
