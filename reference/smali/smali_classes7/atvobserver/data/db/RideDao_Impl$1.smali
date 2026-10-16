.class Lcom/cgs/atvobserver/data/db/RideDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "RideDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/data/db/RideDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/cgs/atvobserver/data/db/RideLogEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cgs/atvobserver/data/db/RideDao_Impl;


# direct methods
.method constructor <init>(Lcom/cgs/atvobserver/data/db/RideDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cgs/atvobserver/data/db/RideDao_Impl;
    .param p2, "database"    # Landroidx/room/RoomDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "database"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl$1;->this$0:Lcom/cgs/atvobserver/data/db/RideDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/cgs/atvobserver/data/db/RideLogEntity;)V
    .locals 5
    .param p1, "statement"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "entity"    # Lcom/cgs/atvobserver/data/db/RideLogEntity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "statement",
            "entity"
        }
    .end annotation

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->getId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 62
    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->getStartTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 63
    const/4 v0, 0x3

    invoke-virtual {p2}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->getMidTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 64
    const/4 v0, 0x4

    invoke-virtual {p2}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->getEndTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 65
    const/4 v0, 0x5

    invoke-virtual {p2}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->getDurationSeconds()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 66
    const/4 v0, 0x6

    invoke-virtual {p2}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->getDistanceKm()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindDouble(ID)V

    .line 67
    const/4 v0, 0x7

    invoke-virtual {p2}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->getMaxSpeedKmh()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindDouble(ID)V

    .line 68
    const/16 v0, 0x8

    invoke-virtual {p2}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->getAvgSpeedKmh()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindDouble(ID)V

    .line 69
    const/16 v0, 0x9

    invoke-virtual {p2}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->getEstimatedFuelUsedL()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindDouble(ID)V

    .line 70
    const/16 v0, 0xa

    invoke-virtual {p2}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->getWeatherCondition()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 71
    const/16 v0, 0xb

    invoke-virtual {p2}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->getMode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 72
    const/16 v0, 0xc

    invoke-virtual {p2}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->getVehicleType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->getWarningCount()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xd

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 74
    invoke-virtual {p2}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->isFinished()Z

    move-result v0

    .line 75
    .local v0, "_tmp":I
    const/16 v1, 0xe

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 76
    const/16 v1, 0xf

    invoke-virtual {p2}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->getStartLat()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindDouble(ID)V

    .line 77
    const/16 v1, 0x10

    invoke-virtual {p2}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->getStartLon()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindDouble(ID)V

    .line 78
    const/16 v1, 0x11

    invoke-virtual {p2}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->getMidLat()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindDouble(ID)V

    .line 79
    const/16 v1, 0x12

    invoke-virtual {p2}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->getMidLon()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindDouble(ID)V

    .line 80
    const/16 v1, 0x13

    invoke-virtual {p2}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->getEndLat()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindDouble(ID)V

    .line 81
    const/16 v1, 0x14

    invoke-virtual {p2}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->getEndLon()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindDouble(ID)V

    .line 82
    const/16 v1, 0x15

    invoke-virtual {p2}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->getPeakGForce()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindDouble(ID)V

    .line 83
    invoke-virtual {p2}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->getSmoothnessScore()I

    move-result v1

    int-to-long v1, v1

    const/16 v3, 0x16

    invoke-interface {p1, v3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 84
    const/16 v1, 0x17

    invoke-virtual {p2}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->getLaunchAccelTimeSec()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindDouble(ID)V

    .line 85
    const/16 v1, 0x18

    invoke-virtual {p2}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->getTerrainSummary()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Lcom/cgs/atvobserver/data/db/RideLogEntity;->isCompressed()Z

    move-result v1

    .line 87
    .local v1, "_tmp_1":I
    const/16 v2, 0x19

    int-to-long v3, v1

    invoke-interface {p1, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 88
    return-void
.end method

.method protected bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "statement",
            "entity"
        }
    .end annotation

    .line 51
    check-cast p2, Lcom/cgs/atvobserver/data/db/RideLogEntity;

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/data/db/RideDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/cgs/atvobserver/data/db/RideLogEntity;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 55
    const-string v0, "INSERT OR ABORT INTO `ride_logs` (`id`,`startTime`,`midTime`,`endTime`,`durationSeconds`,`distanceKm`,`maxSpeedKmh`,`avgSpeedKmh`,`estimatedFuelUsedL`,`weatherCondition`,`mode`,`vehicleType`,`warningCount`,`isFinished`,`startLat`,`startLon`,`midLat`,`midLon`,`endLat`,`endLon`,`peakGForce`,`smoothnessScore`,`launchAccelTimeSec`,`terrainSummary`,`isCompressed`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
