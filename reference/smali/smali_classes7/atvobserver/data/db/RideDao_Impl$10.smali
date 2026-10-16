.class Lcom/cgs/atvobserver/data/db/RideDao_Impl$10;
.super Ljava/lang/Object;
.source "RideDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/data/db/RideDao_Impl;->updateRide(Lcom/cgs/atvobserver/data/db/RideLogEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cgs/atvobserver/data/db/RideDao_Impl;

.field final synthetic val$ride:Lcom/cgs/atvobserver/data/db/RideLogEntity;


# direct methods
.method constructor <init>(Lcom/cgs/atvobserver/data/db/RideDao_Impl;Lcom/cgs/atvobserver/data/db/RideLogEntity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cgs/atvobserver/data/db/RideDao_Impl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$ride"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 239
    iput-object p1, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl$10;->this$0:Lcom/cgs/atvobserver/data/db/RideDao_Impl;

    iput-object p2, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl$10;->val$ride:Lcom/cgs/atvobserver/data/db/RideLogEntity;

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

    .line 239
    invoke-virtual {p0}, Lcom/cgs/atvobserver/data/db/RideDao_Impl$10;->call()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public call()Lkotlin/Unit;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl$10;->this$0:Lcom/cgs/atvobserver/data/db/RideDao_Impl;

    invoke-static {v0}, Lcom/cgs/atvobserver/data/db/RideDao_Impl;->-$$Nest$fget__db(Lcom/cgs/atvobserver/data/db/RideDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl$10;->this$0:Lcom/cgs/atvobserver/data/db/RideDao_Impl;

    invoke-static {v0}, Lcom/cgs/atvobserver/data/db/RideDao_Impl;->-$$Nest$fget__updateAdapterOfRideLogEntity(Lcom/cgs/atvobserver/data/db/RideDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl$10;->val$ride:Lcom/cgs/atvobserver/data/db/RideLogEntity;

    invoke-virtual {v0, v1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 246
    iget-object v0, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl$10;->this$0:Lcom/cgs/atvobserver/data/db/RideDao_Impl;

    invoke-static {v0}, Lcom/cgs/atvobserver/data/db/RideDao_Impl;->-$$Nest$fget__db(Lcom/cgs/atvobserver/data/db/RideDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 247
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    iget-object v1, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl$10;->this$0:Lcom/cgs/atvobserver/data/db/RideDao_Impl;

    invoke-static {v1}, Lcom/cgs/atvobserver/data/db/RideDao_Impl;->-$$Nest$fget__db(Lcom/cgs/atvobserver/data/db/RideDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 247
    return-object v0

    .line 249
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl$10;->this$0:Lcom/cgs/atvobserver/data/db/RideDao_Impl;

    invoke-static {v1}, Lcom/cgs/atvobserver/data/db/RideDao_Impl;->-$$Nest$fget__db(Lcom/cgs/atvobserver/data/db/RideDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 250
    throw v0
.end method
