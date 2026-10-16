package com.cgs.atvobserver.data.db;

import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.Flow;

/* compiled from: EntitiesAndDao.kt */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\bg\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u00020\u0003H§@¢\u0006\u0002\u0010\u0004J\u0016\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H§@¢\u0006\u0002\u0010\bJ\u0014\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b0\nH'J\u0018\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H§@¢\u0006\u0002\u0010\u0011J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013H§@¢\u0006\u0002\u0010\u0004J\u001c\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\u0015\u001a\u00020\u0007H§@¢\u0006\u0002\u0010\bJ\u001c\u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b0\n2\u0006\u0010\u0017\u001a\u00020\u0010H'J\u0010\u0010\u0018\u001a\u0004\u0018\u00010\fH§@¢\u0006\u0002\u0010\u0004J\u0016\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0013H§@¢\u0006\u0002\u0010\u001bJ\u0016\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\fH§@¢\u0006\u0002\u0010\u001eJ\u0016\u0010\u001f\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u000eH§@¢\u0006\u0002\u0010!J\u0016\u0010\"\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\fH§@¢\u0006\u0002\u0010\u001e¨\u0006#"}, d2 = {"Lcom/cgs/atvobserver/data/db/RideDao;", "", "clearAllRides", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteRideById", "rideId", "", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getAllRides", "Lkotlinx/coroutines/flow/Flow;", "", "Lcom/cgs/atvobserver/data/db/RideLogEntity;", "getCalibration", "Lcom/cgs/atvobserver/data/db/CalibrationEntity;", "key", "", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getLatestFuelRecord", "Lcom/cgs/atvobserver/data/db/FuelRecordEntity;", "getOldUncompressedRides", "cutoffTimestamp", "getRidesByVehicle", "vehicleType", "getUnfinishedRide", "insertFuelRecord", "record", "(Lcom/cgs/atvobserver/data/db/FuelRecordEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "insertRide", "ride", "(Lcom/cgs/atvobserver/data/db/RideLogEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setCalibration", "calibration", "(Lcom/cgs/atvobserver/data/db/CalibrationEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateRide", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes7.dex */
public interface RideDao {
    Object clearAllRides(Continuation<? super Unit> continuation);

    Object deleteRideById(long j, Continuation<? super Unit> continuation);

    Flow<List<RideLogEntity>> getAllRides();

    Object getCalibration(String str, Continuation<? super CalibrationEntity> continuation);

    Object getLatestFuelRecord(Continuation<? super FuelRecordEntity> continuation);

    Object getOldUncompressedRides(long j, Continuation<? super List<RideLogEntity>> continuation);

    Flow<List<RideLogEntity>> getRidesByVehicle(String vehicleType);

    Object getUnfinishedRide(Continuation<? super RideLogEntity> continuation);

    Object insertFuelRecord(FuelRecordEntity fuelRecordEntity, Continuation<? super Unit> continuation);

    Object insertRide(RideLogEntity rideLogEntity, Continuation<? super Long> continuation);

    Object setCalibration(CalibrationEntity calibrationEntity, Continuation<? super Unit> continuation);

    Object updateRide(RideLogEntity rideLogEntity, Continuation<? super Unit> continuation);
}
