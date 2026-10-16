.class Lcom/cgs/atvobserver/data/db/RideDao_Impl$18;
.super Ljava/lang/Object;
.source "RideDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/data/db/RideDao_Impl;->getCalibration(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/cgs/atvobserver/data/db/CalibrationEntity;",
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

    .line 783
    iput-object p1, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl$18;->this$0:Lcom/cgs/atvobserver/data/db/RideDao_Impl;

    iput-object p2, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl$18;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/cgs/atvobserver/data/db/CalibrationEntity;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 787
    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl$18;->this$0:Lcom/cgs/atvobserver/data/db/RideDao_Impl;

    invoke-static {v0}, Lcom/cgs/atvobserver/data/db/RideDao_Impl;->-$$Nest$fget__db(Lcom/cgs/atvobserver/data/db/RideDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl$18;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    .line 789
    .local v0, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "key"

    invoke-static {v0, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 790
    .local v1, "_cursorIndexOfKey":I
    const-string v2, "value"

    invoke-static {v0, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 791
    .local v2, "_cursorIndexOfValue":I
    const-string v3, "confidence"

    invoke-static {v0, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 792
    .local v3, "_cursorIndexOfConfidence":I
    const-string v4, "lastUpdated"

    invoke-static {v0, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 794
    .local v4, "_cursorIndexOfLastUpdated":I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 796
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 798
    .local v7, "_tmpKey":Ljava/lang/String;
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 800
    .local v8, "_tmpValue":Ljava/lang/String;
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 802
    .local v9, "_tmpConfidence":Ljava/lang/String;
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 803
    .local v10, "_tmpLastUpdated":J
    new-instance v5, Lcom/cgs/atvobserver/data/db/CalibrationEntity;

    move-object v6, v5

    invoke-direct/range {v6 .. v11}, Lcom/cgs/atvobserver/data/db/CalibrationEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 804
    .end local v7    # "_tmpKey":Ljava/lang/String;
    .end local v8    # "_tmpValue":Ljava/lang/String;
    .end local v9    # "_tmpConfidence":Ljava/lang/String;
    .end local v10    # "_tmpLastUpdated":J
    .local v5, "_result":Lcom/cgs/atvobserver/data/db/CalibrationEntity;
    goto :goto_0

    .line 805
    .end local v5    # "_result":Lcom/cgs/atvobserver/data/db/CalibrationEntity;
    :cond_0
    const/4 v5, 0x0

    .line 807
    .restart local v5    # "_result":Lcom/cgs/atvobserver/data/db/CalibrationEntity;
    :goto_0
    nop

    .line 809
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 810
    iget-object v6, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl$18;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v6}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 807
    return-object v5

    .line 809
    .end local v1    # "_cursorIndexOfKey":I
    .end local v2    # "_cursorIndexOfValue":I
    .end local v3    # "_cursorIndexOfConfidence":I
    .end local v4    # "_cursorIndexOfLastUpdated":I
    .end local v5    # "_result":Lcom/cgs/atvobserver/data/db/CalibrationEntity;
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 810
    iget-object v2, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl$18;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 811
    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 783
    invoke-virtual {p0}, Lcom/cgs/atvobserver/data/db/RideDao_Impl$18;->call()Lcom/cgs/atvobserver/data/db/CalibrationEntity;

    move-result-object v0

    return-object v0
.end method
