.class public final Lcom/cgs/atvobserver/data/db/RideDao_Impl;
.super Ljava/lang/Object;
.source "RideDao_Impl.java"

# interfaces
.implements Lcom/cgs/atvobserver/data/db/RideDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfCalibrationEntity:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/cgs/atvobserver/data/db/CalibrationEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfFuelRecordEntity:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/cgs/atvobserver/data/db/FuelRecordEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfRideLogEntity:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/cgs/atvobserver/data/db/RideLogEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfClearAllRides:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteRideById:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfRideLogEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/cgs/atvobserver/data/db/RideLogEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fget__db(Lcom/cgs/atvobserver/data/db/RideDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    iget-object p0, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__insertionAdapterOfCalibrationEntity(Lcom/cgs/atvobserver/data/db/RideDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    iget-object p0, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl;->__insertionAdapterOfCalibrationEntity:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__insertionAdapterOfFuelRecordEntity(Lcom/cgs/atvobserver/data/db/RideDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    iget-object p0, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl;->__insertionAdapterOfFuelRecordEntity:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__insertionAdapterOfRideLogEntity(Lcom/cgs/atvobserver/data/db/RideDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    iget-object p0, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl;->__insertionAdapterOfRideLogEntity:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__preparedStmtOfClearAllRides(Lcom/cgs/atvobserver/data/db/RideDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl;->__preparedStmtOfClearAllRides:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__preparedStmtOfDeleteRideById(Lcom/cgs/atvobserver/data/db/RideDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl;->__preparedStmtOfDeleteRideById:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__updateAdapterOfRideLogEntity(Lcom/cgs/atvobserver/data/db/RideDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 0

    iget-object p0, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl;->__updateAdapterOfRideLogEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-object p0
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .param p1, "__db"    # Landroidx/room/RoomDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "__db"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 51
    new-instance v0, Lcom/cgs/atvobserver/data/db/RideDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/cgs/atvobserver/data/db/RideDao_Impl$1;-><init>(Lcom/cgs/atvobserver/data/db/RideDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl;->__insertionAdapterOfRideLogEntity:Landroidx/room/EntityInsertionAdapter;

    .line 90
    new-instance v0, Lcom/cgs/atvobserver/data/db/RideDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/cgs/atvobserver/data/db/RideDao_Impl$2;-><init>(Lcom/cgs/atvobserver/data/db/RideDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl;->__insertionAdapterOfFuelRecordEntity:Landroidx/room/EntityInsertionAdapter;

    .line 107
    new-instance v0, Lcom/cgs/atvobserver/data/db/RideDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/cgs/atvobserver/data/db/RideDao_Impl$3;-><init>(Lcom/cgs/atvobserver/data/db/RideDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl;->__insertionAdapterOfCalibrationEntity:Landroidx/room/EntityInsertionAdapter;

    .line 123
    new-instance v0, Lcom/cgs/atvobserver/data/db/RideDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/cgs/atvobserver/data/db/RideDao_Impl$4;-><init>(Lcom/cgs/atvobserver/data/db/RideDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl;->__updateAdapterOfRideLogEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 163
    new-instance v0, Lcom/cgs/atvobserver/data/db/RideDao_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/cgs/atvobserver/data/db/RideDao_Impl$5;-><init>(Lcom/cgs/atvobserver/data/db/RideDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl;->__preparedStmtOfDeleteRideById:Landroidx/room/SharedSQLiteStatement;

    .line 171
    new-instance v0, Lcom/cgs/atvobserver/data/db/RideDao_Impl$6;

    invoke-direct {v0, p0, p1}, Lcom/cgs/atvobserver/data/db/RideDao_Impl$6;-><init>(Lcom/cgs/atvobserver/data/db/RideDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl;->__preparedStmtOfClearAllRides:Landroidx/room/SharedSQLiteStatement;

    .line 179
    return-void
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 818
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearAllRides(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 282
    .local p1, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Lkotlin/Unit;>;"
    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/cgs/atvobserver/data/db/RideDao_Impl$12;

    invoke-direct {v1, p0}, Lcom/cgs/atvobserver/data/db/RideDao_Impl$12;-><init>(Lcom/cgs/atvobserver/data/db/RideDao_Impl;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p1}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deleteRideById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "rideId"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "rideId",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 257
    .local p3, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Lkotlin/Unit;>;"
    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/cgs/atvobserver/data/db/RideDao_Impl$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/cgs/atvobserver/data/db/RideDao_Impl$11;-><init>(Lcom/cgs/atvobserver/data/db/RideDao_Impl;J)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAllRides()Lkotlinx/coroutines/flow/Flow;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/cgs/atvobserver/data/db/RideLogEntity;",
            ">;>;"
        }
    .end annotation

    .line 305
    const-string v0, "SELECT * FROM ride_logs ORDER BY startTime DESC"

    .line 306
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM ride_logs ORDER BY startTime DESC"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 307
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v3, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "ride_logs"

    aput-object v5, v4, v2

    new-instance v5, Lcom/cgs/atvobserver/data/db/RideDao_Impl$13;

    invoke-direct {v5, p0, v1}, Lcom/cgs/atvobserver/data/db/RideDao_Impl$13;-><init>(Lcom/cgs/atvobserver/data/db/RideDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v3, v2, v4, v5}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    return-object v2
.end method

.method public getCalibration(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cgs/atvobserver/data/db/CalibrationEntity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 778
    .local p2, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Lcom/cgs/atvobserver/data/db/CalibrationEntity;>;"
    const-string v0, "SELECT * FROM calibration_records WHERE `key` = ?"

    .line 779
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM calibration_records WHERE `key` = ?"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 780
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 781
    .local v2, "_argIndex":I
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 782
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object v3

    .line 783
    .local v3, "_cancellationSignal":Landroid/os/CancellationSignal;
    iget-object v4, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v5, Lcom/cgs/atvobserver/data/db/RideDao_Impl$18;

    invoke-direct {v5, p0, v1}, Lcom/cgs/atvobserver/data/db/RideDao_Impl$18;-><init>(Lcom/cgs/atvobserver/data/db/RideDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v6, 0x0

    invoke-static {v4, v6, v3, v5, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method public getLatestFuelRecord(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cgs/atvobserver/data/db/FuelRecordEntity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 736
    .local p1, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Lcom/cgs/atvobserver/data/db/FuelRecordEntity;>;"
    const-string v0, "SELECT * FROM fuel_records ORDER BY timestamp DESC LIMIT 1"

    .line 737
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM fuel_records ORDER BY timestamp DESC LIMIT 1"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 738
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object v3

    .line 739
    .local v3, "_cancellationSignal":Landroid/os/CancellationSignal;
    iget-object v4, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v5, Lcom/cgs/atvobserver/data/db/RideDao_Impl$17;

    invoke-direct {v5, p0, v1}, Lcom/cgs/atvobserver/data/db/RideDao_Impl$17;-><init>(Lcom/cgs/atvobserver/data/db/RideDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v4, v2, v3, v5, p1}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public getOldUncompressedRides(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "cutoffTimestamp"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "cutoffTimestamp",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/cgs/atvobserver/data/db/RideLogEntity;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 629
    .local p3, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Ljava/util/List<Lcom/cgs/atvobserver/data/db/RideLogEntity;>;>;"
    const-string v0, "SELECT * FROM ride_logs WHERE startTime < ? AND isCompressed = 0"

    .line 630
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM ride_logs WHERE startTime < ? AND isCompressed = 0"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 631
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 632
    .local v2, "_argIndex":I
    invoke-virtual {v1, v2, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 633
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object v3

    .line 634
    .local v3, "_cancellationSignal":Landroid/os/CancellationSignal;
    iget-object v4, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v5, Lcom/cgs/atvobserver/data/db/RideDao_Impl$16;

    invoke-direct {v5, p0, v1}, Lcom/cgs/atvobserver/data/db/RideDao_Impl$16;-><init>(Lcom/cgs/atvobserver/data/db/RideDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v6, 0x0

    invoke-static {v4, v6, v3, v5, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method public getRidesByVehicle(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .locals 7
    .param p1, "vehicleType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "vehicleType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/cgs/atvobserver/data/db/RideLogEntity;",
            ">;>;"
        }
    .end annotation

    .line 413
    const-string v0, "SELECT * FROM ride_logs WHERE vehicleType = ? ORDER BY startTime DESC"

    .line 414
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM ride_logs WHERE vehicleType = ? ORDER BY startTime DESC"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 415
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v3, 0x1

    .line 416
    .local v3, "_argIndex":I
    invoke-virtual {v1, v3, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 417
    iget-object v4, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "ride_logs"

    const/4 v6, 0x0

    aput-object v5, v2, v6

    new-instance v5, Lcom/cgs/atvobserver/data/db/RideDao_Impl$14;

    invoke-direct {v5, p0, v1}, Lcom/cgs/atvobserver/data/db/RideDao_Impl$14;-><init>(Lcom/cgs/atvobserver/data/db/RideDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v4, v6, v2, v5}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    return-object v2
.end method

.method public getUnfinishedRide(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cgs/atvobserver/data/db/RideLogEntity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 523
    .local p1, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Lcom/cgs/atvobserver/data/db/RideLogEntity;>;"
    const-string v0, "SELECT * FROM ride_logs WHERE isFinished = 0 ORDER BY startTime DESC LIMIT 1"

    .line 524
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM ride_logs WHERE isFinished = 0 ORDER BY startTime DESC LIMIT 1"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 525
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object v3

    .line 526
    .local v3, "_cancellationSignal":Landroid/os/CancellationSignal;
    iget-object v4, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v5, Lcom/cgs/atvobserver/data/db/RideDao_Impl$15;

    invoke-direct {v5, p0, v1}, Lcom/cgs/atvobserver/data/db/RideDao_Impl$15;-><init>(Lcom/cgs/atvobserver/data/db/RideDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v4, v2, v3, v5, p1}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public insertFuelRecord(Lcom/cgs/atvobserver/data/db/FuelRecordEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "record"    # Lcom/cgs/atvobserver/data/db/FuelRecordEntity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "record",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cgs/atvobserver/data/db/FuelRecordEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 202
    .local p2, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Lkotlin/Unit;>;"
    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/cgs/atvobserver/data/db/RideDao_Impl$8;

    invoke-direct {v1, p0, p1}, Lcom/cgs/atvobserver/data/db/RideDao_Impl$8;-><init>(Lcom/cgs/atvobserver/data/db/RideDao_Impl;Lcom/cgs/atvobserver/data/db/FuelRecordEntity;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public insertRide(Lcom/cgs/atvobserver/data/db/RideLogEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "ride"    # Lcom/cgs/atvobserver/data/db/RideLogEntity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ride",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cgs/atvobserver/data/db/RideLogEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 183
    .local p2, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/cgs/atvobserver/data/db/RideDao_Impl$7;

    invoke-direct {v1, p0, p1}, Lcom/cgs/atvobserver/data/db/RideDao_Impl$7;-><init>(Lcom/cgs/atvobserver/data/db/RideDao_Impl;Lcom/cgs/atvobserver/data/db/RideLogEntity;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setCalibration(Lcom/cgs/atvobserver/data/db/CalibrationEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "calibration"    # Lcom/cgs/atvobserver/data/db/CalibrationEntity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "calibration",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cgs/atvobserver/data/db/CalibrationEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 221
    .local p2, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Lkotlin/Unit;>;"
    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/cgs/atvobserver/data/db/RideDao_Impl$9;

    invoke-direct {v1, p0, p1}, Lcom/cgs/atvobserver/data/db/RideDao_Impl$9;-><init>(Lcom/cgs/atvobserver/data/db/RideDao_Impl;Lcom/cgs/atvobserver/data/db/CalibrationEntity;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public updateRide(Lcom/cgs/atvobserver/data/db/RideLogEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "ride"    # Lcom/cgs/atvobserver/data/db/RideLogEntity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ride",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cgs/atvobserver/data/db/RideLogEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 239
    .local p2, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Lkotlin/Unit;>;"
    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/cgs/atvobserver/data/db/RideDao_Impl$10;

    invoke-direct {v1, p0, p1}, Lcom/cgs/atvobserver/data/db/RideDao_Impl$10;-><init>(Lcom/cgs/atvobserver/data/db/RideDao_Impl;Lcom/cgs/atvobserver/data/db/RideLogEntity;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
