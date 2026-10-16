.class Lcom/cgs/atvobserver/data/db/RideDao_Impl$16;
.super Ljava/lang/Object;
.source "RideDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/data/db/RideDao_Impl;->getOldUncompressedRides(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .line 634
    iput-object p1, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl$16;->this$0:Lcom/cgs/atvobserver/data/db/RideDao_Impl;

    iput-object p2, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl$16;->val$_statement:Landroidx/room/RoomSQLiteQuery;

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

    .line 634
    invoke-virtual {p0}, Lcom/cgs/atvobserver/data/db/RideDao_Impl$16;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 74
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

    .line 638
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/cgs/atvobserver/data/db/RideDao_Impl$16;->this$0:Lcom/cgs/atvobserver/data/db/RideDao_Impl;

    invoke-static {v0}, Lcom/cgs/atvobserver/data/db/RideDao_Impl;->-$$Nest$fget__db(Lcom/cgs/atvobserver/data/db/RideDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Lcom/cgs/atvobserver/data/db/RideDao_Impl$16;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 640
    .local v2, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 641
    .local v0, "_cursorIndexOfId":I
    const-string v3, "startTime"

    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 642
    .local v3, "_cursorIndexOfStartTime":I
    const-string v5, "midTime"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 643
    .local v5, "_cursorIndexOfMidTime":I
    const-string v6, "endTime"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 644
    .local v6, "_cursorIndexOfEndTime":I
    const-string v7, "durationSeconds"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 645
    .local v7, "_cursorIndexOfDurationSeconds":I
    const-string v8, "distanceKm"

    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 646
    .local v8, "_cursorIndexOfDistanceKm":I
    const-string v9, "maxSpeedKmh"

    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 647
    .local v9, "_cursorIndexOfMaxSpeedKmh":I
    const-string v10, "avgSpeedKmh"

    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 648
    .local v10, "_cursorIndexOfAvgSpeedKmh":I
    const-string v11, "estimatedFuelUsedL"

    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 649
    .local v11, "_cursorIndexOfEstimatedFuelUsedL":I
    const-string v12, "weatherCondition"

    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 650
    .local v12, "_cursorIndexOfWeatherCondition":I
    const-string v13, "mode"

    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 651
    .local v13, "_cursorIndexOfMode":I
    const-string v14, "vehicleType"

    invoke-static {v2, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 652
    .local v14, "_cursorIndexOfVehicleType":I
    const-string v15, "warningCount"

    invoke-static {v2, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 653
    .local v15, "_cursorIndexOfWarningCount":I
    const-string v4, "isFinished"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 654
    .local v4, "_cursorIndexOfIsFinished":I
    :try_start_1
    const-string v1, "startLat"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 655
    .local v1, "_cursorIndexOfStartLat":I
    move/from16 v17, v1

    .end local v1    # "_cursorIndexOfStartLat":I
    .local v17, "_cursorIndexOfStartLat":I
    const-string v1, "startLon"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 656
    .local v1, "_cursorIndexOfStartLon":I
    move/from16 v18, v1

    .end local v1    # "_cursorIndexOfStartLon":I
    .local v18, "_cursorIndexOfStartLon":I
    const-string v1, "midLat"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 657
    .local v1, "_cursorIndexOfMidLat":I
    move/from16 v19, v1

    .end local v1    # "_cursorIndexOfMidLat":I
    .local v19, "_cursorIndexOfMidLat":I
    const-string v1, "midLon"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 658
    .local v1, "_cursorIndexOfMidLon":I
    move/from16 v20, v1

    .end local v1    # "_cursorIndexOfMidLon":I
    .local v20, "_cursorIndexOfMidLon":I
    const-string v1, "endLat"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 659
    .local v1, "_cursorIndexOfEndLat":I
    move/from16 v21, v1

    .end local v1    # "_cursorIndexOfEndLat":I
    .local v21, "_cursorIndexOfEndLat":I
    const-string v1, "endLon"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 660
    .local v1, "_cursorIndexOfEndLon":I
    move/from16 v22, v1

    .end local v1    # "_cursorIndexOfEndLon":I
    .local v22, "_cursorIndexOfEndLon":I
    const-string v1, "peakGForce"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 661
    .local v1, "_cursorIndexOfPeakGForce":I
    move/from16 v23, v1

    .end local v1    # "_cursorIndexOfPeakGForce":I
    .local v23, "_cursorIndexOfPeakGForce":I
    const-string v1, "smoothnessScore"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 662
    .local v1, "_cursorIndexOfSmoothnessScore":I
    move/from16 v24, v1

    .end local v1    # "_cursorIndexOfSmoothnessScore":I
    .local v24, "_cursorIndexOfSmoothnessScore":I
    const-string v1, "launchAccelTimeSec"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 663
    .local v1, "_cursorIndexOfLaunchAccelTimeSec":I
    move/from16 v25, v1

    .end local v1    # "_cursorIndexOfLaunchAccelTimeSec":I
    .local v25, "_cursorIndexOfLaunchAccelTimeSec":I
    const-string v1, "terrainSummary"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 664
    .local v1, "_cursorIndexOfTerrainSummary":I
    move/from16 v26, v1

    .end local v1    # "_cursorIndexOfTerrainSummary":I
    .local v26, "_cursorIndexOfTerrainSummary":I
    const-string v1, "isCompressed"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 665
    .local v1, "_cursorIndexOfIsCompressed":I
    move/from16 v27, v1

    .end local v1    # "_cursorIndexOfIsCompressed":I
    .local v27, "_cursorIndexOfIsCompressed":I
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v28, v4

    .end local v4    # "_cursorIndexOfIsFinished":I
    .local v28, "_cursorIndexOfIsFinished":I
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 666
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/cgs/atvobserver/data/db/RideLogEntity;>;"
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 669
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 671
    .local v30, "_tmpId":J
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 673
    .local v32, "_tmpStartTime":J
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 675
    .local v34, "_tmpMidTime":J
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    .line 677
    .local v36, "_tmpEndTime":J
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 679
    .local v38, "_tmpDurationSeconds":J
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v40

    .line 681
    .local v40, "_tmpDistanceKm":D
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v42

    .line 683
    .local v42, "_tmpMaxSpeedKmh":D
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v44

    .line 685
    .local v44, "_tmpAvgSpeedKmh":D
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v46

    .line 687
    .local v46, "_tmpEstimatedFuelUsedL":D
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v48

    .line 689
    .local v48, "_tmpWeatherCondition":Ljava/lang/String;
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 691
    .local v49, "_tmpMode":Ljava/lang/String;
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v50

    .line 693
    .local v50, "_tmpVehicleType":Ljava/lang/String;
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v51

    .line 696
    .local v51, "_tmpWarningCount":I
    move/from16 v4, v28

    .end local v28    # "_cursorIndexOfIsFinished":I
    .restart local v4    # "_cursorIndexOfIsFinished":I
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 697
    .local v28, "_tmp":I
    const/16 v29, 0x1

    if-eqz v28, :cond_0

    move/from16 v52, v29

    goto :goto_1

    :cond_0
    const/16 v52, 0x0

    .line 699
    .local v52, "_tmpIsFinished":Z
    :goto_1
    move/from16 v72, v0

    move/from16 v0, v17

    .end local v17    # "_cursorIndexOfStartLat":I
    .local v0, "_cursorIndexOfStartLat":I
    .local v72, "_cursorIndexOfId":I
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v53

    .line 701
    .local v53, "_tmpStartLat":D
    move/from16 v17, v0

    move/from16 v0, v18

    .end local v18    # "_cursorIndexOfStartLon":I
    .local v0, "_cursorIndexOfStartLon":I
    .restart local v17    # "_cursorIndexOfStartLat":I
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v55

    .line 703
    .local v55, "_tmpStartLon":D
    move/from16 v18, v0

    move/from16 v0, v19

    .end local v19    # "_cursorIndexOfMidLat":I
    .local v0, "_cursorIndexOfMidLat":I
    .restart local v18    # "_cursorIndexOfStartLon":I
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v57

    .line 705
    .local v57, "_tmpMidLat":D
    move/from16 v19, v0

    move/from16 v0, v20

    .end local v20    # "_cursorIndexOfMidLon":I
    .local v0, "_cursorIndexOfMidLon":I
    .restart local v19    # "_cursorIndexOfMidLat":I
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v59

    .line 707
    .local v59, "_tmpMidLon":D
    move/from16 v20, v0

    move/from16 v0, v21

    .end local v21    # "_cursorIndexOfEndLat":I
    .local v0, "_cursorIndexOfEndLat":I
    .restart local v20    # "_cursorIndexOfMidLon":I
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v61

    .line 709
    .local v61, "_tmpEndLat":D
    move/from16 v21, v0

    move/from16 v0, v22

    .end local v22    # "_cursorIndexOfEndLon":I
    .local v0, "_cursorIndexOfEndLon":I
    .restart local v21    # "_cursorIndexOfEndLat":I
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v63

    .line 711
    .local v63, "_tmpEndLon":D
    move/from16 v22, v0

    move/from16 v0, v23

    .end local v23    # "_cursorIndexOfPeakGForce":I
    .local v0, "_cursorIndexOfPeakGForce":I
    .restart local v22    # "_cursorIndexOfEndLon":I
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v65

    .line 713
    .local v65, "_tmpPeakGForce":D
    move/from16 v23, v0

    move/from16 v0, v24

    .end local v24    # "_cursorIndexOfSmoothnessScore":I
    .local v0, "_cursorIndexOfSmoothnessScore":I
    .restart local v23    # "_cursorIndexOfPeakGForce":I
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v67

    .line 715
    .local v67, "_tmpSmoothnessScore":I
    move/from16 v24, v0

    move/from16 v0, v25

    .end local v25    # "_cursorIndexOfLaunchAccelTimeSec":I
    .local v0, "_cursorIndexOfLaunchAccelTimeSec":I
    .restart local v24    # "_cursorIndexOfSmoothnessScore":I
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v68

    .line 717
    .local v68, "_tmpLaunchAccelTimeSec":D
    move/from16 v25, v0

    move/from16 v0, v26

    .end local v26    # "_cursorIndexOfTerrainSummary":I
    .local v0, "_cursorIndexOfTerrainSummary":I
    .restart local v25    # "_cursorIndexOfLaunchAccelTimeSec":I
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v70

    .line 720
    .local v70, "_tmpTerrainSummary":Ljava/lang/String;
    move/from16 v26, v0

    move/from16 v0, v27

    .end local v27    # "_cursorIndexOfIsCompressed":I
    .local v0, "_cursorIndexOfIsCompressed":I
    .restart local v26    # "_cursorIndexOfTerrainSummary":I
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 721
    .local v27, "_tmp_1":I
    if-eqz v27, :cond_1

    move/from16 v71, v29

    goto :goto_2

    :cond_1
    const/16 v71, 0x0

    .line 722
    .local v71, "_tmpIsCompressed":Z
    :goto_2
    new-instance v73, Lcom/cgs/atvobserver/data/db/RideLogEntity;

    move-object/from16 v29, v73

    invoke-direct/range {v29 .. v71}, Lcom/cgs/atvobserver/data/db/RideLogEntity;-><init>(JJJJJDDDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZDDDDDDDIDLjava/lang/String;Z)V

    move-object/from16 v29, v73

    .line 723
    .local v29, "_item":Lcom/cgs/atvobserver/data/db/RideLogEntity;
    move/from16 v73, v0

    move-object/from16 v0, v29

    .end local v29    # "_item":Lcom/cgs/atvobserver/data/db/RideLogEntity;
    .local v0, "_item":Lcom/cgs/atvobserver/data/db/RideLogEntity;
    .local v73, "_cursorIndexOfIsCompressed":I
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 724
    move/from16 v28, v4

    move/from16 v0, v72

    move/from16 v27, v73

    .end local v0    # "_item":Lcom/cgs/atvobserver/data/db/RideLogEntity;
    .end local v27    # "_tmp_1":I
    .end local v28    # "_tmp":I
    .end local v30    # "_tmpId":J
    .end local v32    # "_tmpStartTime":J
    .end local v34    # "_tmpMidTime":J
    .end local v36    # "_tmpEndTime":J
    .end local v38    # "_tmpDurationSeconds":J
    .end local v40    # "_tmpDistanceKm":D
    .end local v42    # "_tmpMaxSpeedKmh":D
    .end local v44    # "_tmpAvgSpeedKmh":D
    .end local v46    # "_tmpEstimatedFuelUsedL":D
    .end local v48    # "_tmpWeatherCondition":Ljava/lang/String;
    .end local v49    # "_tmpMode":Ljava/lang/String;
    .end local v50    # "_tmpVehicleType":Ljava/lang/String;
    .end local v51    # "_tmpWarningCount":I
    .end local v52    # "_tmpIsFinished":Z
    .end local v53    # "_tmpStartLat":D
    .end local v55    # "_tmpStartLon":D
    .end local v57    # "_tmpMidLat":D
    .end local v59    # "_tmpMidLon":D
    .end local v61    # "_tmpEndLat":D
    .end local v63    # "_tmpEndLon":D
    .end local v65    # "_tmpPeakGForce":D
    .end local v67    # "_tmpSmoothnessScore":I
    .end local v68    # "_tmpLaunchAccelTimeSec":D
    .end local v70    # "_tmpTerrainSummary":Ljava/lang/String;
    .end local v71    # "_tmpIsCompressed":Z
    goto/16 :goto_0

    .line 725
    .end local v4    # "_cursorIndexOfIsFinished":I
    .end local v72    # "_cursorIndexOfId":I
    .end local v73    # "_cursorIndexOfIsCompressed":I
    .local v0, "_cursorIndexOfId":I
    .local v27, "_cursorIndexOfIsCompressed":I
    .local v28, "_cursorIndexOfIsFinished":I
    :cond_2
    move/from16 v72, v0

    .line 727
    .end local v0    # "_cursorIndexOfId":I
    .restart local v72    # "_cursorIndexOfId":I
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 728
    move/from16 v16, v3

    move-object/from16 v3, p0

    .end local v3    # "_cursorIndexOfStartTime":I
    .local v16, "_cursorIndexOfStartTime":I
    iget-object v0, v3, Lcom/cgs/atvobserver/data/db/RideDao_Impl$16;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 725
    return-object v1

    .line 727
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/cgs/atvobserver/data/db/RideLogEntity;>;"
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
    .end local v16    # "_cursorIndexOfStartTime":I
    .end local v17    # "_cursorIndexOfStartLat":I
    .end local v18    # "_cursorIndexOfStartLon":I
    .end local v19    # "_cursorIndexOfMidLat":I
    .end local v20    # "_cursorIndexOfMidLon":I
    .end local v21    # "_cursorIndexOfEndLat":I
    .end local v22    # "_cursorIndexOfEndLon":I
    .end local v23    # "_cursorIndexOfPeakGForce":I
    .end local v24    # "_cursorIndexOfSmoothnessScore":I
    .end local v25    # "_cursorIndexOfLaunchAccelTimeSec":I
    .end local v26    # "_cursorIndexOfTerrainSummary":I
    .end local v27    # "_cursorIndexOfIsCompressed":I
    .end local v28    # "_cursorIndexOfIsFinished":I
    .end local v72    # "_cursorIndexOfId":I
    :catchall_0
    move-exception v0

    move-object/from16 v3, p0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v3, v1

    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 728
    iget-object v1, v3, Lcom/cgs/atvobserver/data/db/RideDao_Impl$16;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 729
    throw v0
.end method
