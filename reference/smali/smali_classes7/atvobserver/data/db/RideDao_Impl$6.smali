.class Lcom/cgs/atvobserver/data/db/RideDao_Impl$6;
.super Landroidx/room/SharedSQLiteStatement;
.source "RideDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cgs/atvobserver/data/db/RideDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

    .line 171
    iput-object p1, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl$6;->this$0:Lcom/cgs/atvobserver/data/db/RideDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 2

    .line 175
    const-string v0, "DELETE FROM ride_logs"

    .line 176
    .local v0, "_query":Ljava/lang/String;
    const-string v1, "DELETE FROM ride_logs"

    return-object v1
.end method
