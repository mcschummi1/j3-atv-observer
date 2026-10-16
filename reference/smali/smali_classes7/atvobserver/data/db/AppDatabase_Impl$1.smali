.class Lcom/cgs/atvobserver/data/db/AppDatabase_Impl$1;
.super Landroidx/room/RoomOpenHelper$Delegate;
.source "AppDatabase_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;->createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;


# direct methods
.method constructor <init>(Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "version"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/cgs/atvobserver/data/db/AppDatabase_Impl$1;->this$0:Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;

    invoke-direct {p0, p2}, Landroidx/room/RoomOpenHelper$Delegate;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "db"
        }
    .end annotation

    .line 37
    const-string v0, "CREATE TABLE IF NOT EXISTS `ride_logs` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `startTime` INTEGER NOT NULL, `midTime` INTEGER NOT NULL, `endTime` INTEGER NOT NULL, `durationSeconds` INTEGER NOT NULL, `distanceKm` REAL NOT NULL, `maxSpeedKmh` REAL NOT NULL, `avgSpeedKmh` REAL NOT NULL, `estimatedFuelUsedL` REAL NOT NULL, `weatherCondition` TEXT NOT NULL, `mode` TEXT NOT NULL, `vehicleType` TEXT NOT NULL, `warningCount` INTEGER NOT NULL, `isFinished` INTEGER NOT NULL, `startLat` REAL NOT NULL, `startLon` REAL NOT NULL, `midLat` REAL NOT NULL, `midLon` REAL NOT NULL, `endLat` REAL NOT NULL, `endLon` REAL NOT NULL, `peakGForce` REAL NOT NULL, `smoothnessScore` INTEGER NOT NULL, `launchAccelTimeSec` REAL NOT NULL, `terrainSummary` TEXT NOT NULL, `isCompressed` INTEGER NOT NULL)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 38
    const-string v0, "CREATE TABLE IF NOT EXISTS `fuel_records` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `timestamp` INTEGER NOT NULL, `fuelLitres` REAL NOT NULL, `entryType` TEXT NOT NULL, `vehicleType` TEXT NOT NULL)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 39
    const-string v0, "CREATE TABLE IF NOT EXISTS `calibration_records` (`key` TEXT NOT NULL, `value` TEXT NOT NULL, `confidence` TEXT NOT NULL, `lastUpdated` INTEGER NOT NULL, PRIMARY KEY(`key`))"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 41
    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'c0123e4383c0dbb3474efce306556582\')"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public dropAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "db"
        }
    .end annotation

    .line 46
    const-string v0, "DROP TABLE IF EXISTS `ride_logs`"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 47
    const-string v0, "DROP TABLE IF EXISTS `fuel_records`"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 48
    const-string v0, "DROP TABLE IF EXISTS `calibration_records`"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/AppDatabase_Impl$1;->this$0:Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;

    invoke-static {v0}, Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;->access$000(Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    .line 50
    .local v0, "_callbacks":Ljava/util/List;, "Ljava/util/List<+Landroidx/room/RoomDatabase$Callback;>;"
    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    .line 52
    .local v2, "_callback":Landroidx/room/RoomDatabase$Callback;
    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onDestructiveMigration(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 53
    .end local v2    # "_callback":Landroidx/room/RoomDatabase$Callback;
    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "db"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/AppDatabase_Impl$1;->this$0:Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;

    invoke-static {v0}, Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;->access$100(Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    .line 60
    .local v0, "_callbacks":Ljava/util/List;, "Ljava/util/List<+Landroidx/room/RoomDatabase$Callback;>;"
    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    .line 62
    .local v2, "_callback":Landroidx/room/RoomDatabase$Callback;
    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 63
    .end local v2    # "_callback":Landroidx/room/RoomDatabase$Callback;
    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method public onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "db"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/AppDatabase_Impl$1;->this$0:Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;

    invoke-static {v0, p1}, Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;->access$202(Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 70
    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/AppDatabase_Impl$1;->this$0:Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;

    invoke-static {v0, p1}, Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;->access$300(Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 71
    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/AppDatabase_Impl$1;->this$0:Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;

    invoke-static {v0}, Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;->access$400(Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    .line 72
    .local v0, "_callbacks":Ljava/util/List;, "Ljava/util/List<+Landroidx/room/RoomDatabase$Callback;>;"
    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    .line 74
    .local v2, "_callback":Landroidx/room/RoomDatabase$Callback;
    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 75
    .end local v2    # "_callback":Landroidx/room/RoomDatabase$Callback;
    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method

.method public onPostMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "db"
        }
    .end annotation

    .line 86
    return-void
.end method

.method public onPreMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "db"
        }
    .end annotation

    .line 81
    invoke-static {p1}, Landroidx/room/util/DBUtil;->dropFtsSyncTriggers(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 82
    return-void
.end method

.method public onValidateSchema(Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/room/RoomOpenHelper$ValidationResult;
    .locals 26
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "db"
        }
    .end annotation

    .line 92
    move-object/from16 v0, p1

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 93
    .local v1, "_columnsRideLogs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    new-instance v9, Landroidx/room/util/TableInfo$Column;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v3, "id"

    const-string v4, "INTEGER"

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "id"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const/4 v15, 0x0

    const/16 v16, 0x1

    const-string v11, "startTime"

    const-string v12, "INTEGER"

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "startTime"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v6, "midTime"

    const-string v7, "INTEGER"

    const/4 v9, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "midTime"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v6, "endTime"

    const-string v7, "INTEGER"

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "endTime"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v6, "durationSeconds"

    const-string v7, "INTEGER"

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "durationSeconds"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v6, "distanceKm"

    const-string v7, "REAL"

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "distanceKm"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v6, "maxSpeedKmh"

    const-string v7, "REAL"

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "maxSpeedKmh"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v6, "avgSpeedKmh"

    const-string v7, "REAL"

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "avgSpeedKmh"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v6, "estimatedFuelUsedL"

    const-string v7, "REAL"

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "estimatedFuelUsedL"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v6, "weatherCondition"

    const-string v7, "TEXT"

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "weatherCondition"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v6, "mode"

    const-string v7, "TEXT"

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "mode"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v6, "vehicleType"

    const-string v7, "TEXT"

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "vehicleType"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v6, "warningCount"

    const-string v7, "INTEGER"

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "warningCount"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-string v7, "isFinished"

    const-string v8, "INTEGER"

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "isFinished"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v7, "startLat"

    const-string v8, "REAL"

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "startLat"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v7, "startLon"

    const-string v8, "REAL"

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "startLon"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v7, "midLat"

    const-string v8, "REAL"

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "midLat"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v7, "midLon"

    const-string v8, "REAL"

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "midLon"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v7, "endLat"

    const-string v8, "REAL"

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "endLat"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v7, "endLon"

    const-string v8, "REAL"

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "endLon"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v7, "peakGForce"

    const-string v8, "REAL"

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "peakGForce"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v7, "smoothnessScore"

    const-string v8, "INTEGER"

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "smoothnessScore"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v7, "launchAccelTimeSec"

    const-string v8, "REAL"

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "launchAccelTimeSec"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v7, "terrainSummary"

    const-string v8, "TEXT"

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "terrainSummary"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v7, "isCompressed"

    const-string v8, "INTEGER"

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "isCompressed"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v3, Ljava/util/HashSet;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 119
    .local v3, "_foreignKeysRideLogs":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 120
    .local v6, "_indicesRideLogs":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    new-instance v7, Landroidx/room/util/TableInfo;

    const-string v8, "ride_logs"

    invoke-direct {v7, v8, v1, v3, v6}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 121
    .local v7, "_infoRideLogs":Landroidx/room/util/TableInfo;
    invoke-static {v0, v8}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v8

    .line 122
    .local v8, "_existingRideLogs":Landroidx/room/util/TableInfo;
    invoke-virtual {v7, v8}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "\n Found:\n"

    if-nez v9, :cond_0

    .line 123
    new-instance v2, Landroidx/room/RoomOpenHelper$ValidationResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ride_logs(com.cgs.atvobserver.data.db.RideLogEntity).\n Expected:\n"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v5, v4}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    return-object v2

    .line 127
    :cond_0
    new-instance v9, Ljava/util/HashMap;

    const/4 v11, 0x5

    invoke-direct {v9, v11}, Ljava/util/HashMap;-><init>(I)V

    .line 128
    .local v9, "_columnsFuelRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    const/16 v16, 0x0

    const/16 v17, 0x1

    const-string v12, "id"

    const-string v13, "INTEGER"

    const/4 v14, 0x1

    const/16 v18, 0x1

    move-object v11, v15

    move-object v5, v15

    move/from16 v15, v18

    invoke-direct/range {v11 .. v17}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v9, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const/16 v24, 0x0

    const/16 v25, 0x1

    const-string v20, "timestamp"

    const-string v21, "INTEGER"

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "timestamp"

    invoke-virtual {v9, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v12, "fuelLitres"

    const-string v13, "REAL"

    const/4 v15, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "fuelLitres"

    invoke-virtual {v9, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v12, "entryType"

    const-string v13, "TEXT"

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "entryType"

    invoke-virtual {v9, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v12, "vehicleType"

    const-string v13, "TEXT"

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v9, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance v2, Ljava/util/HashSet;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 134
    .local v2, "_foreignKeysFuelRecords":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(I)V

    move-object v4, v5

    .line 135
    .local v4, "_indicesFuelRecords":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    new-instance v5, Landroidx/room/util/TableInfo;

    const-string v11, "fuel_records"

    invoke-direct {v5, v11, v9, v2, v4}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 136
    .local v5, "_infoFuelRecords":Landroidx/room/util/TableInfo;
    invoke-static {v0, v11}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v11

    .line 137
    .local v11, "_existingFuelRecords":Landroidx/room/util/TableInfo;
    invoke-virtual {v5, v11}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 138
    new-instance v12, Landroidx/room/RoomOpenHelper$ValidationResult;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fuel_records(com.cgs.atvobserver.data.db.FuelRecordEntity).\n Expected:\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    invoke-direct {v12, v13, v10}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    return-object v12

    .line 142
    :cond_1
    new-instance v12, Ljava/util/HashMap;

    const/4 v13, 0x4

    invoke-direct {v12, v13}, Ljava/util/HashMap;-><init>(I)V

    .line 143
    .local v12, "_columnsCalibrationRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    const/16 v24, 0x0

    const/16 v25, 0x1

    const-string v20, "key"

    const-string v21, "TEXT"

    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v19, v13

    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v14, "key"

    invoke-virtual {v12, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    const-string v20, "value"

    const-string v21, "TEXT"

    const/16 v23, 0x0

    move-object/from16 v19, v13

    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v14, "value"

    invoke-virtual {v12, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    const-string v20, "confidence"

    const-string v21, "TEXT"

    move-object/from16 v19, v13

    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v14, "confidence"

    invoke-virtual {v12, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    const-string v20, "lastUpdated"

    const-string v21, "INTEGER"

    move-object/from16 v19, v13

    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v14, "lastUpdated"

    invoke-virtual {v12, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v13, Ljava/util/HashSet;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Ljava/util/HashSet;-><init>(I)V

    .line 148
    .local v13, "_foreignKeysCalibrationRecords":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15, v14}, Ljava/util/HashSet;-><init>(I)V

    move-object v14, v15

    .line 149
    .local v14, "_indicesCalibrationRecords":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    new-instance v15, Landroidx/room/util/TableInfo;

    move-object/from16 v16, v1

    .end local v1    # "_columnsRideLogs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    .local v16, "_columnsRideLogs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    const-string v1, "calibration_records"

    invoke-direct {v15, v1, v12, v13, v14}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 150
    .local v15, "_infoCalibrationRecords":Landroidx/room/util/TableInfo;
    invoke-static {v0, v1}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v1

    .line 151
    .local v1, "_existingCalibrationRecords":Landroidx/room/util/TableInfo;
    invoke-virtual {v15, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 152
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    move-object/from16 v17, v2

    .end local v2    # "_foreignKeysFuelRecords":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .local v17, "_foreignKeysFuelRecords":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v3

    .end local v3    # "_foreignKeysRideLogs":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .local v18, "_foreignKeysRideLogs":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    const-string v3, "calibration_records(com.cgs.atvobserver.data.db.CalibrationEntity).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 156
    .end local v17    # "_foreignKeysFuelRecords":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .end local v18    # "_foreignKeysRideLogs":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .restart local v2    # "_foreignKeysFuelRecords":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .restart local v3    # "_foreignKeysRideLogs":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    :cond_2
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    .end local v2    # "_foreignKeysFuelRecords":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .end local v3    # "_foreignKeysRideLogs":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .restart local v17    # "_foreignKeysFuelRecords":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .restart local v18    # "_foreignKeysRideLogs":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method
