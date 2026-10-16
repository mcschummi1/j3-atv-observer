.class Lcom/cgs/atvobserver/data/db/RideDao_Impl$3;
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
        "Lcom/cgs/atvobserver/data/db/CalibrationEntity;",
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

    .line 107
    iput-object p1, p0, Lcom/cgs/atvobserver/data/db/RideDao_Impl$3;->this$0:Lcom/cgs/atvobserver/data/db/RideDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/cgs/atvobserver/data/db/CalibrationEntity;)V
    .locals 3
    .param p1, "statement"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "entity"    # Lcom/cgs/atvobserver/data/db/CalibrationEntity;
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

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/cgs/atvobserver/data/db/CalibrationEntity;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 118
    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/cgs/atvobserver/data/db/CalibrationEntity;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 119
    const/4 v0, 0x3

    invoke-virtual {p2}, Lcom/cgs/atvobserver/data/db/CalibrationEntity;->getConfidence()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 120
    const/4 v0, 0x4

    invoke-virtual {p2}, Lcom/cgs/atvobserver/data/db/CalibrationEntity;->getLastUpdated()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 121
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

    .line 107
    check-cast p2, Lcom/cgs/atvobserver/data/db/CalibrationEntity;

    invoke-virtual {p0, p1, p2}, Lcom/cgs/atvobserver/data/db/RideDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/cgs/atvobserver/data/db/CalibrationEntity;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 111
    const-string v0, "INSERT OR REPLACE INTO `calibration_records` (`key`,`value`,`confidence`,`lastUpdated`) VALUES (?,?,?,?)"

    return-object v0
.end method
