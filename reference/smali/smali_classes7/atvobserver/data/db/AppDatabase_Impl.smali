.class public final Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;
.super Lcom/cgs/atvobserver/data/db/AppDatabase;
.source "AppDatabase_Impl.java"


# instance fields
.field private volatile _rideDao:Lcom/cgs/atvobserver/data/db/RideDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/cgs/atvobserver/data/db/AppDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;

    .line 28
    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;

    .line 28
    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0
    .param p0, "x0"    # Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;
    .param p1, "x1"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 28
    iput-object p1, p0, Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$300(Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0
    .param p0, "x0"    # Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;
    .param p1, "x1"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 28
    invoke-virtual {p0, p1}, Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$400(Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;

    .line 28
    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public clearAllTables()V
    .locals 4

    .line 174
    const-string v0, "VACUUM"

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    invoke-super {p0}, Lcom/cgs/atvobserver/data/db/AppDatabase;->assertNotMainThread()V

    .line 175
    invoke-super {p0}, Lcom/cgs/atvobserver/data/db/AppDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v2

    .line 177
    .local v2, "_db":Landroidx/sqlite/db/SupportSQLiteDatabase;
    :try_start_0
    invoke-super {p0}, Lcom/cgs/atvobserver/data/db/AppDatabase;->beginTransaction()V

    .line 178
    const-string v3, "DELETE FROM `ride_logs`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 179
    const-string v3, "DELETE FROM `fuel_records`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 180
    const-string v3, "DELETE FROM `calibration_records`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 181
    invoke-super {p0}, Lcom/cgs/atvobserver/data/db/AppDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    invoke-super {p0}, Lcom/cgs/atvobserver/data/db/AppDatabase;->endTransaction()V

    .line 184
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 185
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 189
    :cond_0
    return-void

    .line 183
    :catchall_0
    move-exception v3

    invoke-super {p0}, Lcom/cgs/atvobserver/data/db/AppDatabase;->endTransaction()V

    .line 184
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 185
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 186
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 188
    :cond_1
    throw v3
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 6

    .line 167
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 168
    .local v0, "_shadowTablesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 169
    .local v2, "_viewTables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v3, Landroidx/room/InvalidationTracker;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "ride_logs"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "fuel_records"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "calibration_records"

    aput-object v5, v4, v1

    invoke-direct {v3, p0, v0, v2, v4}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v3
.end method

.method protected createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4
    .param p1, "config"    # Landroidx/room/DatabaseConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "config"
        }
    .end annotation

    .line 34
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lcom/cgs/atvobserver/data/db/AppDatabase_Impl$1;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/cgs/atvobserver/data/db/AppDatabase_Impl$1;-><init>(Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;I)V

    const-string v2, "c0123e4383c0dbb3474efce306556582"

    const-string v3, "5e0ff730735fd32ec8a7c878daab5ee8"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .local v0, "_openCallback":Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v1

    .line 160
    .local v1, "_sqliteConfig":Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;
    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    .line 161
    .local v2, "_helper":Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    return-object v2
.end method

.method public getAutoMigrations(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "autoMigrationSpecs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/room/migration/Migration;",
            ">;"
        }
    .end annotation

    .line 210
    .local p1, "autoMigrationSpecs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Landroidx/room/migration/AutoMigrationSpec;>;Landroidx/room/migration/AutoMigrationSpec;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v0, "_autoMigrations":Ljava/util/List;, "Ljava/util/List<Landroidx/room/migration/Migration;>;"
    return-object v0
.end method

.method public getRequiredAutoMigrationSpecs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;>;"
        }
    .end annotation

    .line 202
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 203
    .local v0, "_autoMigrationSpecsSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Class<+Landroidx/room/migration/AutoMigrationSpec;>;>;"
    return-object v0
.end method

.method protected getRequiredTypeConverters()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 195
    .local v0, "_typeConvertersMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;Ljava/util/List<Ljava/lang/Class<*>;>;>;"
    const-class v1, Lcom/cgs/atvobserver/data/db/RideDao;

    invoke-static {}, Lcom/cgs/atvobserver/data/db/RideDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    return-object v0
.end method

.method public rideDao()Lcom/cgs/atvobserver/data/db/RideDao;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;->_rideDao:Lcom/cgs/atvobserver/data/db/RideDao;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;->_rideDao:Lcom/cgs/atvobserver/data/db/RideDao;

    return-object v0

    .line 219
    :cond_0
    monitor-enter p0

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;->_rideDao:Lcom/cgs/atvobserver/data/db/RideDao;

    if-nez v0, :cond_1

    .line 221
    new-instance v0, Lcom/cgs/atvobserver/data/db/RideDao_Impl;

    invoke-direct {v0, p0}, Lcom/cgs/atvobserver/data/db/RideDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;->_rideDao:Lcom/cgs/atvobserver/data/db/RideDao;

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/AppDatabase_Impl;->_rideDao:Lcom/cgs/atvobserver/data/db/RideDao;

    monitor-exit p0

    return-object v0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
