.class public interface abstract Lcom/cgs/atvobserver/data/db/RideDao;
.super Ljava/lang/Object;
.source "EntitiesAndDao.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008g\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u00020\u0003H\u00a7@\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u00a7@\u00a2\u0006\u0002\u0010\u0008J\u0014\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\nH\'J\u0018\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u00a7@\u00a2\u0006\u0002\u0010\u0011J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u00a7@\u00a2\u0006\u0002\u0010\u0004J\u001c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\u0015\u001a\u00020\u0007H\u00a7@\u00a2\u0006\u0002\u0010\u0008J\u001c\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\n2\u0006\u0010\u0017\u001a\u00020\u0010H\'J\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u000cH\u00a7@\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0013H\u00a7@\u00a2\u0006\u0002\u0010\u001bJ\u0016\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u000cH\u00a7@\u00a2\u0006\u0002\u0010\u001eJ\u0016\u0010\u001f\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u000eH\u00a7@\u00a2\u0006\u0002\u0010!J\u0016\u0010\"\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u000cH\u00a7@\u00a2\u0006\u0002\u0010\u001e\u00a8\u0006#"
    }
    d2 = {
        "Lcom/cgs/atvobserver/data/db/RideDao;",
        "",
        "clearAllRides",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deleteRideById",
        "rideId",
        "",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getAllRides",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "Lcom/cgs/atvobserver/data/db/RideLogEntity;",
        "getCalibration",
        "Lcom/cgs/atvobserver/data/db/CalibrationEntity;",
        "key",
        "",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getLatestFuelRecord",
        "Lcom/cgs/atvobserver/data/db/FuelRecordEntity;",
        "getOldUncompressedRides",
        "cutoffTimestamp",
        "getRidesByVehicle",
        "vehicleType",
        "getUnfinishedRide",
        "insertFuelRecord",
        "record",
        "(Lcom/cgs/atvobserver/data/db/FuelRecordEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "insertRide",
        "ride",
        "(Lcom/cgs/atvobserver/data/db/RideLogEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setCalibration",
        "calibration",
        "(Lcom/cgs/atvobserver/data/db/CalibrationEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateRide",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract clearAllRides(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract deleteRideById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract getAllRides()Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/cgs/atvobserver/data/db/RideLogEntity;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getCalibration(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract getLatestFuelRecord(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract getOldUncompressedRides(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract getRidesByVehicle(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
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
.end method

.method public abstract getUnfinishedRide(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract insertFuelRecord(Lcom/cgs/atvobserver/data/db/FuelRecordEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract insertRide(Lcom/cgs/atvobserver/data/db/RideLogEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract setCalibration(Lcom/cgs/atvobserver/data/db/CalibrationEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract updateRide(Lcom/cgs/atvobserver/data/db/RideLogEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method
