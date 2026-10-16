.class Lcom/cgs/atvobserver/data/db/RideDao_Impl$14;
.super Ljava/lang/Object;
.source "RideDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/data/db/RideDao_Impl;->getRidesByVehicle(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/cgs/atvobserver/data/db/RideLogEntity;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cgs/atvobserver/data/db/RideDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/cgs/atvobserver/data/db/RideDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cgs/atvobserver/data/db/RideDao_Impl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$_statement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 417
    iput-object p1, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl$14;->this$0:Lcom/cgs/atvobserver/data/db/RideDao_Impl;

    iput-object p2, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl$14;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 417
    invoke-virtual {p0}, Lcom/cgs/atvobserver/data/db/RideDao_Impl$14;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 73
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cgs/atvobserver/data/db/RideLogEntity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 421
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/cgs/atvobserver/data/db/RideDao_Impl$14;->this$0:Lcom/cgs/atvobserver/data/db/RideDao_Impl;

    invoke-static {v0}, Lcom/cgs/atvobserver/data/db/RideDao_Impl;->-$$Nest$fget__db(Lcom/cgs/atvobserver/data/db/RideDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Lcom/cgs/atvobserver/data/db/RideDao_Impl$14;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 423
    .local v2, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 424
    .local v0, "_cursorIndexOfId":I
    const-string v3, "startTime"

    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 425
    .local v3, "_cursorIndexOfStartTime":I
    const-string v5, "midTime"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 426
    .local v5, "_cursorIndexOfMidTime":I
    const-string v6, "endTime"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 427
    .local v6, "_cursorIndexOfEndTime":I
    const-string v7, "durationSeconds"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 428
    .local v7, "_cursorIndexOfDurationSeconds":I
    const-string v8, "distanceKm"

    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 429
    .local v8, "_cursorIndexOfDistanceKm":I
    const-string v9, "maxSpeedKmh"

    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 430
    .local v9, "_cursorIndexOfMaxSpeedKmh":I
    const-string v10, "avgSpeedKmh"

    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 431
    .local v10, "_cursorIndexOfAvgSpeedKmh":I
    const-string v11, "estimatedFuelUsedL"

    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 432
    .local v11, "_cursorIndexOfEstimatedFuelUsedL":I
    const-string v12, "weatherCondition"

    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 433
    .local v12, "_cursorIndexOfWeatherCondition":I
    const-string v13, "mode"

    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 434
    .local v13, "_cursorIndexOfMode":I
    const-string v14, "vehicleType"

    invoke-static {v2, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 435
    .local v14, "_cursorIndexOfVehicleType":I
    const-string v15, "warningCount"

    invoke-static {v2, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 436
    .local v15, "_cursorIndexOfWarningCount":I
    const-string v4, "isFinished"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 437
    .local v4, "_cursorIndexOfIsFinished":I
    const-string v1, "startLat"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 438
    .local v1, "_cursorIndexOfStartLat":I
    move/from16 v16, v1

    .end local v1    # "_cursorIndexOfStartLat":I
    .local v16, "_cursorIndexOfStartLat":I
    const-string v1, "startLon"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 439
    .local v1, "_cursorIndexOfStartLon":I
    move/from16 v17, v1

    .end local v1    # "_cursorIndexOfStartLon":I
    .local v17, "_cursorIndexOfStartLon":I
    const-string v1, "midLat"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 440
    .local v1, "_cursorIndexOfMidLat":I
    move/from16 v18, v1

    .end local v1    # "_cursorIndexOfMidLat":I
    .local v18, "_cursorIndexOfMidLat":I
    const-string v1, "midLon"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 441
    .local v1, "_cursorIndexOfMidLon":I
    move/from16 v19, v1

    .end local v1    # "_cursorIndexOfMidLon":I
    .local v19, "_cursorIndexOfMidLon":I
    const-string v1, "endLat"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 442
    .local v1, "_cursorIndexOfEndLat":I
    move/from16 v20, v1

    .end local v1    # "_cursorIndexOfEndLat":I
    .local v20, "_cursorIndexOfEndLat":I
    const-string v1, "endLon"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 443
    .local v1, "_cursorIndexOfEndLon":I
    move/from16 v21, v1

    .end local v1    # "_cursorIndexOfEndLon":I
    .local v21, "_cursorIndexOfEndLon":I
    const-string v1, "peakGForce"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 444
    .local v1, "_cursorIndexOfPeakGForce":I
    move/from16 v22, v1

    .end local v1    # "_cursorIndexOfPeakGForce":I
    .local v22, "_cursorIndexOfPeakGForce":I
    const-string v1, "smoothnessScore"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 445
    .local v1, "_cursorIndexOfSmoothnessScore":I
    move/from16 v23, v1

    .end local v1    # "_cursorIndexOfSmoothnessScore":I
    .local v23, "_cursorIndexOfSmoothnessScore":I
    const-string v1, "launchAccelTimeSec"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 446
    .local v1, "_cursorIndexOfLaunchAccelTimeSec":I
    move/from16 v24, v1

    .end local v1    # "_cursorIndexOfLaunchAccelTimeSec":I
    .local v24, "_cursorIndexOfLaunchAccelTimeSec":I
    const-string v1, "terrainSummary"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 447
    .local v1, "_cursorIndexOfTerrainSummary":I
    move/from16 v25, v1

    .end local v1    # "_cursorIndexOfTerrainSummary":I
    .local v25, "_cursorIndexOfTerrainSummary":I
    const-string v1, "isCompressed"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 448
    .local v1, "_cursorIndexOfIsCompressed":I
    move/from16 v26, v1

    .end local v1    # "_cursorIndexOfIsCompressed":I
    .local v26, "_cursorIndexOfIsCompressed":I
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v27, v4

    .end local v4    # "_cursorIndexOfIsFinished":I
    .local v27, "_cursorIndexOfIsFinished":I
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 449
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/cgs/atvobserver/data/db/RideLogEntity;>;"
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 452
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 454
    .local v29, "_tmpId":J
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    .line 456
    .local v31, "_tmpStartTime":J
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    .line 458
    .local v33, "_tmpMidTime":J
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    .line 460
    .local v35, "_tmpEndTime":J
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    .line 462
    .local v37, "_tmpDurationSeconds":J
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v39

    .line 464
    .local v39, "_tmpDistanceKm":D
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v41

    .line 466
    .local v41, "_tmpMaxSpeedKmh":D
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v43

    .line 468
    .local v43, "_tmpAvgSpeedKmh":D
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v45

    .line 470
    .local v45, "_tmpEstimatedFuelUsedL":D
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v47

    .line 472
    .local v47, "_tmpWeatherCondition":Ljava/lang/String;
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v48

    .line 474
    .local v48, "_tmpMode":Ljava/lang/String;
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 476
    .local v49, "_tmpVehicleType":Ljava/lang/String;
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v50

    .line 479
    .local v50, "_tmpWarningCount":I
    move/from16 v4, v27

    .end local v27    # "_cursorIndexOfIsFinished":I
    .restart local v4    # "_cursorIndexOfIsFinished":I
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 480
    .local v27, "_tmp":I
    const/16 v28, 0x1

    if-eqz v27, :cond_0

    move/from16 v51, v28

    goto :goto_1

    :cond_0
    const/16 v51, 0x0

    .line 482
    .local v51, "_tmpIsFinished":Z
    :goto_1
    move/from16 v71, v0

    move/from16 v0, v16

    .end local v16    # "_cursorIndexOfStartLat":I
    .local v0, "_cursorIndexOfStartLat":I
    .local v71, "_cursorIndexOfId":I
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v52

    .line 484
    .local v52, "_tmpStartLat":D
    move/from16 v16, v0

    move/from16 v0, v17

    .end local v17    # "_cursorIndexOfStartLon":I
    .local v0, "_cursorIndexOfStartLon":I
    .restart local v16    # "_cursorIndexOfStartLat":I
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v54

    .line 486
    .local v54, "_tmpStartLon":D
    move/from16 v17, v0

    move/from16 v0, v18

    .end local v18    # "_cursorIndexOfMidLat":I
    .local v0, "_cursorIndexOfMidLat":I
    .restart local v17    # "_cursorIndexOfStartLon":I
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v56

    .line 488
    .local v56, "_tmpMidLat":D
    move/from16 v18, v0

    move/from16 v0, v19

    .end local v19    # "_cursorIndexOfMidLon":I
    .local v0, "_cursorIndexOfMidLon":I
    .restart local v18    # "_cursorIndexOfMidLat":I
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v58

    .line 490
    .local v58, "_tmpMidLon":D
    move/from16 v19, v0

    move/from16 v0, v20

    .end local v20    # "_cursorIndexOfEndLat":I
    .local v0, "_cursorIndexOfEndLat":I
    .restart local v19    # "_cursorIndexOfMidLon":I
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v60

    .line 492
    .local v60, "_tmpEndLat":D
    move/from16 v20, v0

    move/from16 v0, v21

    .end local v21    # "_cursorIndexOfEndLon":I
    .local v0, "_cursorIndexOfEndLon":I
    .restart local v20    # "_cursorIndexOfEndLat":I
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v62

    .line 494
    .local v62, "_tmpEndLon":D
    move/from16 v21, v0

    move/from16 v0, v22

    .end local v22    # "_cursorIndexOfPeakGForce":I
    .local v0, "_cursorIndexOfPeakGForce":I
    .restart local v21    # "_cursorIndexOfEndLon":I
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v64

    .line 496
    .local v64, "_tmpPeakGForce":D
    move/from16 v22, v0

    move/from16 v0, v23

    .end local v23    # "_cursorIndexOfSmoothnessScore":I
    .local v0, "_cursorIndexOfSmoothnessScore":I
    .restart local v22    # "_cursorIndexOfPeakGForce":I
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v66

    .line 498
    .local v66, "_tmpSmoothnessScore":I
    move/from16 v23, v0

    move/from16 v0, v24

    .end local v24    # "_cursorIndexOfLaunchAccelTimeSec":I
    .local v0, "_cursorIndexOfLaunchAccelTimeSec":I
    .restart local v23    # "_cursorIndexOfSmoothnessScore":I
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v67

    .line 500
    .local v67, "_tmpLaunchAccelTimeSec":D
    move/from16 v24, v0

    move/from16 v0, v25

    .end local v25    # "_cursorIndexOfTerrainSummary":I
    .local v0, "_cursorIndexOfTerrainSummary":I
    .restart local v24    # "_cursorIndexOfLaunchAccelTimeSec":I
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v69

    .line 503
    .local v69, "_tmpTerrainSummary":Ljava/lang/String;
    move/from16 v25, v0

    move/from16 v0, v26

    .end local v26    # "_cursorIndexOfIsCompressed":I
    .local v0, "_cursorIndexOfIsCompressed":I
    .restart local v25    # "_cursorIndexOfTerrainSummary":I
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 504
    .local v26, "_tmp_1":I
    if-eqz v26, :cond_1

    move/from16 v70, v28

    goto :goto_2

    :cond_1
    const/16 v70, 0x0

    .line 505
    .local v70, "_tmpIsCompressed":Z
    :goto_2
    new-instance v72, Lcom/cgs/atvobserver/data/db/RideLogEntity;

    move-object/from16 v28, v72

    invoke-direct/range {v28 .. v70}, Lcom/cgs/atvobserver/data/db/RideLogEntity;-><init>(JJJJJDDDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZDDDDDDDIDLjava/lang/String;Z)V

    move-object/from16 v28, v72

    .line 506
    .local v28, "_item":Lcom/cgs/atvobserver/data/db/RideLogEntity;
    move/from16 v72, v0

    move-object/from16 v0, v28

    .end local v28    # "_item":Lcom/cgs/atvobserver/data/db/RideLogEntity;
    .local v0, "_item":Lcom/cgs/atvobserver/data/db/RideLogEntity;
    .local v72, "_cursorIndexOfIsCompressed":I
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    move/from16 v27, v4

    move/from16 v0, v71

    move/from16 v26, v72

    .end local v0    # "_item":Lcom/cgs/atvobserver/data/db/RideLogEntity;
    .end local v26    # "_tmp_1":I
    .end local v27    # "_tmp":I
    .end local v29    # "_tmpId":J
    .end local v31    # "_tmpStartTime":J
    .end local v33    # "_tmpMidTime":J
    .end local v35    # "_tmpEndTime":J
    .end local v37    # "_tmpDurationSeconds":J
    .end local v39    # "_tmpDistanceKm":D
    .end local v41    # "_tmpMaxSpeedKmh":D
    .end local v43    # "_tmpAvgSpeedKmh":D
    .end local v45    # "_tmpEstimatedFuelUsedL":D
    .end local v47    # "_tmpWeatherCondition":Ljava/lang/String;
    .end local v48    # "_tmpMode":Ljava/lang/String;
    .end local v49    # "_tmpVehicleType":Ljava/lang/String;
    .end local v50    # "_tmpWarningCount":I
    .end local v51    # "_tmpIsFinished":Z
    .end local v52    # "_tmpStartLat":D
    .end local v54    # "_tmpStartLon":D
    .end local v56    # "_tmpMidLat":D
    .end local v58    # "_tmpMidLon":D
    .end local v60    # "_tmpEndLat":D
    .end local v62    # "_tmpEndLon":D
    .end local v64    # "_tmpPeakGForce":D
    .end local v66    # "_tmpSmoothnessScore":I
    .end local v67    # "_tmpLaunchAccelTimeSec":D
    .end local v69    # "_tmpTerrainSummary":Ljava/lang/String;
    .end local v70    # "_tmpIsCompressed":Z
    goto/16 :goto_0

    .line 508
    .end local v4    # "_cursorIndexOfIsFinished":I
    .end local v71    # "_cursorIndexOfId":I
    .end local v72    # "_cursorIndexOfIsCompressed":I
    .local v0, "_cursorIndexOfId":I
    .local v26, "_cursorIndexOfIsCompressed":I
    .local v27, "_cursorIndexOfIsFinished":I
    :cond_2
    nop

    .line 510
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 508
    return-object v1

    .line 510
    .end local v0    # "_cursorIndexOfId":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/cgs/atvobserver/data/db/RideLogEntity;>;"
    .end local v3    # "_cursorIndexOfStartTime":I
    .end local v5    # "_cursorIndexOfMidTime":I
    .end local v6    # "_cursorIndexOfEndTime":I
    .end local v7    # "_cursorIndexOfDurationSeconds":I
    .end local v8    # "_cursorIndexOfDistanceKm":I
    .end local v9    # "_cursorIndexOfMaxSpeedKmh":I
    .end local v10    # "_cursorIndexOfAvgSpeedKmh":I
    .end local v11    # "_cursorIndexOfEstimatedFuelUsedL":I
    .end local v12    # "_cursorIndexOfWeatherCondition":I
    .end local v13    # "_cursorIndexOfMode":I
    .end local v14    # "_cursorIndexOfVehicleType":I
    .end local v15    # "_cursorIndexOfWarningCount":I
    .end local v16    # "_cursorIndexOfStartLat":I
    .end local v17    # "_cursorIndexOfStartLon":I
    .end local v18    # "_cursorIndexOfMidLat":I
    .end local v19    # "_cursorIndexOfMidLon":I
    .end local v20    # "_cursorIndexOfEndLat":I
    .end local v21    # "_cursorIndexOfEndLon":I
    .end local v22    # "_cursorIndexOfPeakGForce":I
    .end local v23    # "_cursorIndexOfSmoothnessScore":I
    .end local v24    # "_cursorIndexOfLaunchAccelTimeSec":I
    .end local v25    # "_cursorIndexOfTerrainSummary":I
    .end local v26    # "_cursorIndexOfIsCompressed":I
    .end local v27    # "_cursorIndexOfIsFinished":I
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 511
    throw v0
.end method

.method protected finalize()V
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl$14;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 517
    return-void
.end method
