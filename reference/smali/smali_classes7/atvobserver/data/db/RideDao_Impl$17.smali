.class Lcom/cgs/atvobserver/data/db/RideDao_Impl$17;
.super Ljava/lang/Object;
.source "RideDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/data/db/RideDao_Impl;->getLatestFuelRecord(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/cgs/atvobserver/data/db/FuelRecordEntity;",
        ">;"
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

    .line 739
    iput-object p1, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl$17;->this$0:Lcom/cgs/atvobserver/data/db/RideDao_Impl;

    iput-object p2, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl$17;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/cgs/atvobserver/data/db/FuelRecordEntity;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 743
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/cgs/atvobserver/data/db/RideDao_Impl$17;->this$0:Lcom/cgs/atvobserver/data/db/RideDao_Impl;

    invoke-static {v0}, Lcom/cgs/atvobserver/data/db/RideDao_Impl;->-$$Nest$fget__db(Lcom/cgs/atvobserver/data/db/RideDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Lcom/cgs/atvobserver/data/db/RideDao_Impl$17;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 745
    .local v2, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 746
    .local v0, "_cursorIndexOfId":I
    const-string v3, "timestamp"

    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 747
    .local v3, "_cursorIndexOfTimestamp":I
    const-string v4, "fuelLitres"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 748
    .local v4, "_cursorIndexOfFuelLitres":I
    const-string v5, "entryType"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 749
    .local v5, "_cursorIndexOfEntryType":I
    const-string v6, "vehicleType"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 751
    .local v6, "_cursorIndexOfVehicleType":I
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 753
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 755
    .local v9, "_tmpId":J
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 757
    .local v11, "_tmpTimestamp":J
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v13

    .line 759
    .local v13, "_tmpFuelLitres":D
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 761
    .local v15, "_tmpEntryType":Ljava/lang/String;
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 762
    .local v16, "_tmpVehicleType":Ljava/lang/String;
    new-instance v7, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;

    move-object v8, v7

    invoke-direct/range {v8 .. v16}, Lcom/cgs/atvobserver/data/db/FuelRecordEntity;-><init>(JJDLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    .end local v9    # "_tmpId":J
    .end local v11    # "_tmpTimestamp":J
    .end local v13    # "_tmpFuelLitres":D
    .end local v15    # "_tmpEntryType":Ljava/lang/String;
    .end local v16    # "_tmpVehicleType":Ljava/lang/String;
    .local v7, "_result":Lcom/cgs/atvobserver/data/db/FuelRecordEntity;
    goto :goto_0

    .line 764
    .end local v7    # "_result":Lcom/cgs/atvobserver/data/db/FuelRecordEntity;
    :cond_0
    const/4 v7, 0x0

    .line 766
    .restart local v7    # "_result":Lcom/cgs/atvobserver/data/db/FuelRecordEntity;
    :goto_0
    nop

    .line 768
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 769
    iget-object v8, v1, Lcom/cgs/atvobserver/data/db/RideDao_Impl$17;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v8}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 766
    return-object v7

    .line 768
    .end local v0    # "_cursorIndexOfId":I
    .end local v3    # "_cursorIndexOfTimestamp":I
    .end local v4    # "_cursorIndexOfFuelLitres":I
    .end local v5    # "_cursorIndexOfEntryType":I
    .end local v6    # "_cursorIndexOfVehicleType":I
    .end local v7    # "_result":Lcom/cgs/atvobserver/data/db/FuelRecordEntity;
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 769
    iget-object v3, v1, Lcom/cgs/atvobserver/data/db/RideDao_Impl$17;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 770
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 739
    invoke-virtual {p0}, Lcom/cgs/atvobserver/data/db/RideDao_Impl$17;->call()Lcom/cgs/atvobserver/data/db/FuelRecordEntity;

    move-result-object v0

    return-object v0
.end method
