package com.cgs.atvobserver.data.db;

import android.database.Cursor;
import android.os.CancellationSignal;
import androidx.room.CoroutinesRoom;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.Flow;

/* loaded from: classes7.dex */
public final class RideDao_Impl implements RideDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<CalibrationEntity> __insertionAdapterOfCalibrationEntity;
    private final EntityInsertionAdapter<FuelRecordEntity> __insertionAdapterOfFuelRecordEntity;
    private final EntityInsertionAdapter<RideLogEntity> __insertionAdapterOfRideLogEntity;
    private final SharedSQLiteStatement __preparedStmtOfClearAllRides;
    private final SharedSQLiteStatement __preparedStmtOfDeleteRideById;
    private final EntityDeletionOrUpdateAdapter<RideLogEntity> __updateAdapterOfRideLogEntity;

    public RideDao_Impl(final RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfRideLogEntity = new EntityInsertionAdapter<RideLogEntity>(__db) { // from class: com.cgs.atvobserver.data.db.RideDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            protected String createQuery() {
                return "INSERT OR ABORT INTO `ride_logs` (`id`,`startTime`,`midTime`,`endTime`,`durationSeconds`,`distanceKm`,`maxSpeedKmh`,`avgSpeedKmh`,`estimatedFuelUsedL`,`weatherCondition`,`mode`,`vehicleType`,`warningCount`,`isFinished`,`startLat`,`startLon`,`midLat`,`midLon`,`endLat`,`endLon`,`peakGForce`,`smoothnessScore`,`launchAccelTimeSec`,`terrainSummary`,`isCompressed`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement supportSQLiteStatement, RideLogEntity rideLogEntity) {
                supportSQLiteStatement.bindLong(1, rideLogEntity.getId());
                supportSQLiteStatement.bindLong(2, rideLogEntity.getStartTime());
                supportSQLiteStatement.bindLong(3, rideLogEntity.getMidTime());
                supportSQLiteStatement.bindLong(4, rideLogEntity.getEndTime());
                supportSQLiteStatement.bindLong(5, rideLogEntity.getDurationSeconds());
                supportSQLiteStatement.bindDouble(6, rideLogEntity.getDistanceKm());
                supportSQLiteStatement.bindDouble(7, rideLogEntity.getMaxSpeedKmh());
                supportSQLiteStatement.bindDouble(8, rideLogEntity.getAvgSpeedKmh());
                supportSQLiteStatement.bindDouble(9, rideLogEntity.getEstimatedFuelUsedL());
                supportSQLiteStatement.bindString(10, rideLogEntity.getWeatherCondition());
                supportSQLiteStatement.bindString(11, rideLogEntity.getMode());
                supportSQLiteStatement.bindString(12, rideLogEntity.getVehicleType());
                supportSQLiteStatement.bindLong(13, rideLogEntity.getWarningCount());
                supportSQLiteStatement.bindLong(14, rideLogEntity.isFinished() ? 1L : 0L);
                supportSQLiteStatement.bindDouble(15, rideLogEntity.getStartLat());
                supportSQLiteStatement.bindDouble(16, rideLogEntity.getStartLon());
                supportSQLiteStatement.bindDouble(17, rideLogEntity.getMidLat());
                supportSQLiteStatement.bindDouble(18, rideLogEntity.getMidLon());
                supportSQLiteStatement.bindDouble(19, rideLogEntity.getEndLat());
                supportSQLiteStatement.bindDouble(20, rideLogEntity.getEndLon());
                supportSQLiteStatement.bindDouble(21, rideLogEntity.getPeakGForce());
                supportSQLiteStatement.bindLong(22, rideLogEntity.getSmoothnessScore());
                supportSQLiteStatement.bindDouble(23, rideLogEntity.getLaunchAccelTimeSec());
                supportSQLiteStatement.bindString(24, rideLogEntity.getTerrainSummary());
                supportSQLiteStatement.bindLong(25, rideLogEntity.isCompressed() ? 1L : 0L);
            }
        };
        this.__insertionAdapterOfFuelRecordEntity = new EntityInsertionAdapter<FuelRecordEntity>(__db) { // from class: com.cgs.atvobserver.data.db.RideDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            protected String createQuery() {
                return "INSERT OR REPLACE INTO `fuel_records` (`id`,`timestamp`,`fuelLitres`,`entryType`,`vehicleType`) VALUES (nullif(?, 0),?,?,?,?)";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityInsertionAdapter
            public void bind(final SupportSQLiteStatement statement, final FuelRecordEntity entity) {
                statement.bindLong(1, entity.getId());
                statement.bindLong(2, entity.getTimestamp());
                statement.bindDouble(3, entity.getFuelLitres());
                statement.bindString(4, entity.getEntryType());
                statement.bindString(5, entity.getVehicleType());
            }
        };
        this.__insertionAdapterOfCalibrationEntity = new EntityInsertionAdapter<CalibrationEntity>(__db) { // from class: com.cgs.atvobserver.data.db.RideDao_Impl.3
            @Override // androidx.room.SharedSQLiteStatement
            protected String createQuery() {
                return "INSERT OR REPLACE INTO `calibration_records` (`key`,`value`,`confidence`,`lastUpdated`) VALUES (?,?,?,?)";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityInsertionAdapter
            public void bind(final SupportSQLiteStatement statement, final CalibrationEntity entity) {
                statement.bindString(1, entity.getKey());
                statement.bindString(2, entity.getValue());
                statement.bindString(3, entity.getConfidence());
                statement.bindLong(4, entity.getLastUpdated());
            }
        };
        this.__updateAdapterOfRideLogEntity = new EntityDeletionOrUpdateAdapter<RideLogEntity>(__db) { // from class: com.cgs.atvobserver.data.db.RideDao_Impl.4
            @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
            protected String createQuery() {
                return "UPDATE OR ABORT `ride_logs` SET `id` = ?,`startTime` = ?,`midTime` = ?,`endTime` = ?,`durationSeconds` = ?,`distanceKm` = ?,`maxSpeedKmh` = ?,`avgSpeedKmh` = ?,`estimatedFuelUsedL` = ?,`weatherCondition` = ?,`mode` = ?,`vehicleType` = ?,`warningCount` = ?,`isFinished` = ?,`startLat` = ?,`startLon` = ?,`midLat` = ?,`midLon` = ?,`endLat` = ?,`endLon` = ?,`peakGForce` = ?,`smoothnessScore` = ?,`launchAccelTimeSec` = ?,`terrainSummary` = ?,`isCompressed` = ? WHERE `id` = ?";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement supportSQLiteStatement, RideLogEntity rideLogEntity) {
                supportSQLiteStatement.bindLong(1, rideLogEntity.getId());
                supportSQLiteStatement.bindLong(2, rideLogEntity.getStartTime());
                supportSQLiteStatement.bindLong(3, rideLogEntity.getMidTime());
                supportSQLiteStatement.bindLong(4, rideLogEntity.getEndTime());
                supportSQLiteStatement.bindLong(5, rideLogEntity.getDurationSeconds());
                supportSQLiteStatement.bindDouble(6, rideLogEntity.getDistanceKm());
                supportSQLiteStatement.bindDouble(7, rideLogEntity.getMaxSpeedKmh());
                supportSQLiteStatement.bindDouble(8, rideLogEntity.getAvgSpeedKmh());
                supportSQLiteStatement.bindDouble(9, rideLogEntity.getEstimatedFuelUsedL());
                supportSQLiteStatement.bindString(10, rideLogEntity.getWeatherCondition());
                supportSQLiteStatement.bindString(11, rideLogEntity.getMode());
                supportSQLiteStatement.bindString(12, rideLogEntity.getVehicleType());
                supportSQLiteStatement.bindLong(13, rideLogEntity.getWarningCount());
                supportSQLiteStatement.bindLong(14, rideLogEntity.isFinished() ? 1L : 0L);
                supportSQLiteStatement.bindDouble(15, rideLogEntity.getStartLat());
                supportSQLiteStatement.bindDouble(16, rideLogEntity.getStartLon());
                supportSQLiteStatement.bindDouble(17, rideLogEntity.getMidLat());
                supportSQLiteStatement.bindDouble(18, rideLogEntity.getMidLon());
                supportSQLiteStatement.bindDouble(19, rideLogEntity.getEndLat());
                supportSQLiteStatement.bindDouble(20, rideLogEntity.getEndLon());
                supportSQLiteStatement.bindDouble(21, rideLogEntity.getPeakGForce());
                supportSQLiteStatement.bindLong(22, rideLogEntity.getSmoothnessScore());
                supportSQLiteStatement.bindDouble(23, rideLogEntity.getLaunchAccelTimeSec());
                supportSQLiteStatement.bindString(24, rideLogEntity.getTerrainSummary());
                supportSQLiteStatement.bindLong(25, rideLogEntity.isCompressed() ? 1L : 0L);
                supportSQLiteStatement.bindLong(26, rideLogEntity.getId());
            }
        };
        this.__preparedStmtOfDeleteRideById = new SharedSQLiteStatement(__db) { // from class: com.cgs.atvobserver.data.db.RideDao_Impl.5
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM ride_logs WHERE id = ?";
            }
        };
        this.__preparedStmtOfClearAllRides = new SharedSQLiteStatement(__db) { // from class: com.cgs.atvobserver.data.db.RideDao_Impl.6
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM ride_logs";
            }
        };
    }

    @Override // com.cgs.atvobserver.data.db.RideDao
    public Object insertRide(final RideLogEntity ride, final Continuation<? super Long> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Long>() { // from class: com.cgs.atvobserver.data.db.RideDao_Impl.7
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Long call() throws Exception {
                RideDao_Impl.this.__db.beginTransaction();
                try {
                    Long _result = Long.valueOf(RideDao_Impl.this.__insertionAdapterOfRideLogEntity.insertAndReturnId(ride));
                    RideDao_Impl.this.__db.setTransactionSuccessful();
                    return _result;
                } finally {
                    RideDao_Impl.this.__db.endTransaction();
                }
            }
        }, $completion);
    }

    @Override // com.cgs.atvobserver.data.db.RideDao
    public Object insertFuelRecord(final FuelRecordEntity record, final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.cgs.atvobserver.data.db.RideDao_Impl.8
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                RideDao_Impl.this.__db.beginTransaction();
                try {
                    RideDao_Impl.this.__insertionAdapterOfFuelRecordEntity.insert((EntityInsertionAdapter) record);
                    RideDao_Impl.this.__db.setTransactionSuccessful();
                    return Unit.INSTANCE;
                } finally {
                    RideDao_Impl.this.__db.endTransaction();
                }
            }
        }, $completion);
    }

    @Override // com.cgs.atvobserver.data.db.RideDao
    public Object setCalibration(final CalibrationEntity calibration, final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.cgs.atvobserver.data.db.RideDao_Impl.9
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                RideDao_Impl.this.__db.beginTransaction();
                try {
                    RideDao_Impl.this.__insertionAdapterOfCalibrationEntity.insert((EntityInsertionAdapter) calibration);
                    RideDao_Impl.this.__db.setTransactionSuccessful();
                    return Unit.INSTANCE;
                } finally {
                    RideDao_Impl.this.__db.endTransaction();
                }
            }
        }, $completion);
    }

    @Override // com.cgs.atvobserver.data.db.RideDao
    public Object updateRide(final RideLogEntity ride, final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.cgs.atvobserver.data.db.RideDao_Impl.10
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                RideDao_Impl.this.__db.beginTransaction();
                try {
                    RideDao_Impl.this.__updateAdapterOfRideLogEntity.handle(ride);
                    RideDao_Impl.this.__db.setTransactionSuccessful();
                    return Unit.INSTANCE;
                } finally {
                    RideDao_Impl.this.__db.endTransaction();
                }
            }
        }, $completion);
    }

    @Override // com.cgs.atvobserver.data.db.RideDao
    public Object deleteRideById(final long rideId, final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.cgs.atvobserver.data.db.RideDao_Impl.11
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                SupportSQLiteStatement _stmt = RideDao_Impl.this.__preparedStmtOfDeleteRideById.acquire();
                _stmt.bindLong(1, rideId);
                try {
                    RideDao_Impl.this.__db.beginTransaction();
                    try {
                        _stmt.executeUpdateDelete();
                        RideDao_Impl.this.__db.setTransactionSuccessful();
                        return Unit.INSTANCE;
                    } finally {
                        RideDao_Impl.this.__db.endTransaction();
                    }
                } finally {
                    RideDao_Impl.this.__preparedStmtOfDeleteRideById.release(_stmt);
                }
            }
        }, $completion);
    }

    @Override // com.cgs.atvobserver.data.db.RideDao
    public Object clearAllRides(final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.cgs.atvobserver.data.db.RideDao_Impl.12
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                SupportSQLiteStatement _stmt = RideDao_Impl.this.__preparedStmtOfClearAllRides.acquire();
                try {
                    RideDao_Impl.this.__db.beginTransaction();
                    try {
                        _stmt.executeUpdateDelete();
                        RideDao_Impl.this.__db.setTransactionSuccessful();
                        return Unit.INSTANCE;
                    } finally {
                        RideDao_Impl.this.__db.endTransaction();
                    }
                } finally {
                    RideDao_Impl.this.__preparedStmtOfClearAllRides.release(_stmt);
                }
            }
        }, $completion);
    }

    @Override // com.cgs.atvobserver.data.db.RideDao
    public Flow<List<RideLogEntity>> getAllRides() {
        final RoomSQLiteQuery _statement = RoomSQLiteQuery.acquire("SELECT * FROM ride_logs ORDER BY startTime DESC", 0);
        return CoroutinesRoom.createFlow(this.__db, false, new String[]{"ride_logs"}, new Callable<List<RideLogEntity>>() { // from class: com.cgs.atvobserver.data.db.RideDao_Impl.13
            @Override // java.util.concurrent.Callable
            public List<RideLogEntity> call() throws Exception {
                Cursor _cursor = DBUtil.query(RideDao_Impl.this.__db, _statement, false, null);
                try {
                    int _cursorIndexOfId = CursorUtil.getColumnIndexOrThrow(_cursor, "id");
                    int _cursorIndexOfStartTime = CursorUtil.getColumnIndexOrThrow(_cursor, "startTime");
                    int _cursorIndexOfMidTime = CursorUtil.getColumnIndexOrThrow(_cursor, "midTime");
                    int _cursorIndexOfEndTime = CursorUtil.getColumnIndexOrThrow(_cursor, "endTime");
                    int _cursorIndexOfDurationSeconds = CursorUtil.getColumnIndexOrThrow(_cursor, "durationSeconds");
                    int _cursorIndexOfDistanceKm = CursorUtil.getColumnIndexOrThrow(_cursor, "distanceKm");
                    int _cursorIndexOfMaxSpeedKmh = CursorUtil.getColumnIndexOrThrow(_cursor, "maxSpeedKmh");
                    int _cursorIndexOfAvgSpeedKmh = CursorUtil.getColumnIndexOrThrow(_cursor, "avgSpeedKmh");
                    int _cursorIndexOfEstimatedFuelUsedL = CursorUtil.getColumnIndexOrThrow(_cursor, "estimatedFuelUsedL");
                    int _cursorIndexOfWeatherCondition = CursorUtil.getColumnIndexOrThrow(_cursor, "weatherCondition");
                    int _cursorIndexOfMode = CursorUtil.getColumnIndexOrThrow(_cursor, "mode");
                    int _cursorIndexOfVehicleType = CursorUtil.getColumnIndexOrThrow(_cursor, "vehicleType");
                    int _cursorIndexOfWarningCount = CursorUtil.getColumnIndexOrThrow(_cursor, "warningCount");
                    int _cursorIndexOfIsFinished = CursorUtil.getColumnIndexOrThrow(_cursor, "isFinished");
                    int _cursorIndexOfStartLat = CursorUtil.getColumnIndexOrThrow(_cursor, "startLat");
                    int _cursorIndexOfStartLat2 = _cursorIndexOfStartLat;
                    int _cursorIndexOfStartLon = CursorUtil.getColumnIndexOrThrow(_cursor, "startLon");
                    int _cursorIndexOfStartLon2 = _cursorIndexOfStartLon;
                    int _cursorIndexOfMidLat = CursorUtil.getColumnIndexOrThrow(_cursor, "midLat");
                    int _cursorIndexOfMidLat2 = _cursorIndexOfMidLat;
                    int _cursorIndexOfMidLon = CursorUtil.getColumnIndexOrThrow(_cursor, "midLon");
                    int _cursorIndexOfMidLon2 = _cursorIndexOfMidLon;
                    int _cursorIndexOfEndLat = CursorUtil.getColumnIndexOrThrow(_cursor, "endLat");
                    int _cursorIndexOfEndLat2 = _cursorIndexOfEndLat;
                    int _cursorIndexOfEndLon = CursorUtil.getColumnIndexOrThrow(_cursor, "endLon");
                    int _cursorIndexOfEndLon2 = _cursorIndexOfEndLon;
                    int _cursorIndexOfPeakGForce = CursorUtil.getColumnIndexOrThrow(_cursor, "peakGForce");
                    int _cursorIndexOfPeakGForce2 = _cursorIndexOfPeakGForce;
                    int _cursorIndexOfSmoothnessScore = CursorUtil.getColumnIndexOrThrow(_cursor, "smoothnessScore");
                    int _cursorIndexOfSmoothnessScore2 = _cursorIndexOfSmoothnessScore;
                    int _cursorIndexOfLaunchAccelTimeSec = CursorUtil.getColumnIndexOrThrow(_cursor, "launchAccelTimeSec");
                    int _cursorIndexOfLaunchAccelTimeSec2 = _cursorIndexOfLaunchAccelTimeSec;
                    int _cursorIndexOfTerrainSummary = CursorUtil.getColumnIndexOrThrow(_cursor, "terrainSummary");
                    int _cursorIndexOfTerrainSummary2 = _cursorIndexOfTerrainSummary;
                    int _cursorIndexOfIsCompressed = CursorUtil.getColumnIndexOrThrow(_cursor, "isCompressed");
                    int _tmp_1 = _cursorIndexOfIsCompressed;
                    int _tmp = _cursorIndexOfIsFinished;
                    int _cursorIndexOfIsFinished2 = _cursor.getCount();
                    List<RideLogEntity> _result = new ArrayList<>(_cursorIndexOfIsFinished2);
                    while (_cursor.moveToNext()) {
                        long _tmpId = _cursor.getLong(_cursorIndexOfId);
                        long _tmpStartTime = _cursor.getLong(_cursorIndexOfStartTime);
                        long _tmpMidTime = _cursor.getLong(_cursorIndexOfMidTime);
                        long _tmpEndTime = _cursor.getLong(_cursorIndexOfEndTime);
                        long _tmpDurationSeconds = _cursor.getLong(_cursorIndexOfDurationSeconds);
                        double _tmpDistanceKm = _cursor.getDouble(_cursorIndexOfDistanceKm);
                        double _tmpMaxSpeedKmh = _cursor.getDouble(_cursorIndexOfMaxSpeedKmh);
                        double _tmpAvgSpeedKmh = _cursor.getDouble(_cursorIndexOfAvgSpeedKmh);
                        double _tmpEstimatedFuelUsedL = _cursor.getDouble(_cursorIndexOfEstimatedFuelUsedL);
                        String _tmpWeatherCondition = _cursor.getString(_cursorIndexOfWeatherCondition);
                        String _tmpMode = _cursor.getString(_cursorIndexOfMode);
                        String _tmpVehicleType = _cursor.getString(_cursorIndexOfVehicleType);
                        int _tmpWarningCount = _cursor.getInt(_cursorIndexOfWarningCount);
                        int _cursorIndexOfIsFinished3 = _tmp;
                        int _tmp2 = _cursor.getInt(_cursorIndexOfIsFinished3);
                        boolean _tmpIsFinished = _tmp2 != 0;
                        int _cursorIndexOfId2 = _cursorIndexOfId;
                        int _cursorIndexOfId3 = _cursorIndexOfStartLat2;
                        double _tmpStartLat = _cursor.getDouble(_cursorIndexOfId3);
                        _cursorIndexOfStartLat2 = _cursorIndexOfId3;
                        int _cursorIndexOfStartLat3 = _cursorIndexOfStartLon2;
                        double _tmpStartLon = _cursor.getDouble(_cursorIndexOfStartLat3);
                        _cursorIndexOfStartLon2 = _cursorIndexOfStartLat3;
                        int _cursorIndexOfStartLon3 = _cursorIndexOfMidLat2;
                        double _tmpMidLat = _cursor.getDouble(_cursorIndexOfStartLon3);
                        _cursorIndexOfMidLat2 = _cursorIndexOfStartLon3;
                        int _cursorIndexOfMidLat3 = _cursorIndexOfMidLon2;
                        double _tmpMidLon = _cursor.getDouble(_cursorIndexOfMidLat3);
                        _cursorIndexOfMidLon2 = _cursorIndexOfMidLat3;
                        int _cursorIndexOfMidLon3 = _cursorIndexOfEndLat2;
                        double _tmpEndLat = _cursor.getDouble(_cursorIndexOfMidLon3);
                        _cursorIndexOfEndLat2 = _cursorIndexOfMidLon3;
                        int _cursorIndexOfEndLat3 = _cursorIndexOfEndLon2;
                        double _tmpEndLon = _cursor.getDouble(_cursorIndexOfEndLat3);
                        _cursorIndexOfEndLon2 = _cursorIndexOfEndLat3;
                        int _cursorIndexOfEndLon3 = _cursorIndexOfPeakGForce2;
                        double _tmpPeakGForce = _cursor.getDouble(_cursorIndexOfEndLon3);
                        _cursorIndexOfPeakGForce2 = _cursorIndexOfEndLon3;
                        int _cursorIndexOfPeakGForce3 = _cursorIndexOfSmoothnessScore2;
                        int _tmpSmoothnessScore = _cursor.getInt(_cursorIndexOfPeakGForce3);
                        _cursorIndexOfSmoothnessScore2 = _cursorIndexOfPeakGForce3;
                        int _cursorIndexOfSmoothnessScore3 = _cursorIndexOfLaunchAccelTimeSec2;
                        double _tmpLaunchAccelTimeSec = _cursor.getDouble(_cursorIndexOfSmoothnessScore3);
                        _cursorIndexOfLaunchAccelTimeSec2 = _cursorIndexOfSmoothnessScore3;
                        int _cursorIndexOfLaunchAccelTimeSec3 = _cursorIndexOfTerrainSummary2;
                        String _tmpTerrainSummary = _cursor.getString(_cursorIndexOfLaunchAccelTimeSec3);
                        _cursorIndexOfTerrainSummary2 = _cursorIndexOfLaunchAccelTimeSec3;
                        int _cursorIndexOfTerrainSummary3 = _tmp_1;
                        int _tmp_12 = _cursor.getInt(_cursorIndexOfTerrainSummary3);
                        boolean _tmpIsCompressed = _tmp_12 != 0;
                        RideLogEntity _item = new RideLogEntity(_tmpId, _tmpStartTime, _tmpMidTime, _tmpEndTime, _tmpDurationSeconds, _tmpDistanceKm, _tmpMaxSpeedKmh, _tmpAvgSpeedKmh, _tmpEstimatedFuelUsedL, _tmpWeatherCondition, _tmpMode, _tmpVehicleType, _tmpWarningCount, _tmpIsFinished, _tmpStartLat, _tmpStartLon, _tmpMidLat, _tmpMidLon, _tmpEndLat, _tmpEndLon, _tmpPeakGForce, _tmpSmoothnessScore, _tmpLaunchAccelTimeSec, _tmpTerrainSummary, _tmpIsCompressed);
                        _result.add(_item);
                        _tmp = _cursorIndexOfIsFinished3;
                        _cursorIndexOfId = _cursorIndexOfId2;
                        _tmp_1 = _cursorIndexOfTerrainSummary3;
                    }
                    return _result;
                } finally {
                    _cursor.close();
                }
            }

            protected void finalize() {
                _statement.release();
            }
        });
    }

    @Override // com.cgs.atvobserver.data.db.RideDao
    public Flow<List<RideLogEntity>> getRidesByVehicle(final String vehicleType) {
        final RoomSQLiteQuery _statement = RoomSQLiteQuery.acquire("SELECT * FROM ride_logs WHERE vehicleType = ? ORDER BY startTime DESC", 1);
        _statement.bindString(1, vehicleType);
        return CoroutinesRoom.createFlow(this.__db, false, new String[]{"ride_logs"}, new Callable<List<RideLogEntity>>() { // from class: com.cgs.atvobserver.data.db.RideDao_Impl.14
            @Override // java.util.concurrent.Callable
            public List<RideLogEntity> call() throws Exception {
                Cursor _cursor = DBUtil.query(RideDao_Impl.this.__db, _statement, false, null);
                try {
                    int _cursorIndexOfId = CursorUtil.getColumnIndexOrThrow(_cursor, "id");
                    int _cursorIndexOfStartTime = CursorUtil.getColumnIndexOrThrow(_cursor, "startTime");
                    int _cursorIndexOfMidTime = CursorUtil.getColumnIndexOrThrow(_cursor, "midTime");
                    int _cursorIndexOfEndTime = CursorUtil.getColumnIndexOrThrow(_cursor, "endTime");
                    int _cursorIndexOfDurationSeconds = CursorUtil.getColumnIndexOrThrow(_cursor, "durationSeconds");
                    int _cursorIndexOfDistanceKm = CursorUtil.getColumnIndexOrThrow(_cursor, "distanceKm");
                    int _cursorIndexOfMaxSpeedKmh = CursorUtil.getColumnIndexOrThrow(_cursor, "maxSpeedKmh");
                    int _cursorIndexOfAvgSpeedKmh = CursorUtil.getColumnIndexOrThrow(_cursor, "avgSpeedKmh");
                    int _cursorIndexOfEstimatedFuelUsedL = CursorUtil.getColumnIndexOrThrow(_cursor, "estimatedFuelUsedL");
                    int _cursorIndexOfWeatherCondition = CursorUtil.getColumnIndexOrThrow(_cursor, "weatherCondition");
                    int _cursorIndexOfMode = CursorUtil.getColumnIndexOrThrow(_cursor, "mode");
                    int _cursorIndexOfVehicleType = CursorUtil.getColumnIndexOrThrow(_cursor, "vehicleType");
                    int _cursorIndexOfWarningCount = CursorUtil.getColumnIndexOrThrow(_cursor, "warningCount");
                    int _cursorIndexOfIsFinished = CursorUtil.getColumnIndexOrThrow(_cursor, "isFinished");
                    int _cursorIndexOfStartLat = CursorUtil.getColumnIndexOrThrow(_cursor, "startLat");
                    int _cursorIndexOfStartLat2 = _cursorIndexOfStartLat;
                    int _cursorIndexOfStartLon = CursorUtil.getColumnIndexOrThrow(_cursor, "startLon");
                    int _cursorIndexOfStartLon2 = _cursorIndexOfStartLon;
                    int _cursorIndexOfMidLat = CursorUtil.getColumnIndexOrThrow(_cursor, "midLat");
                    int _cursorIndexOfMidLat2 = _cursorIndexOfMidLat;
                    int _cursorIndexOfMidLon = CursorUtil.getColumnIndexOrThrow(_cursor, "midLon");
                    int _cursorIndexOfMidLon2 = _cursorIndexOfMidLon;
                    int _cursorIndexOfEndLat = CursorUtil.getColumnIndexOrThrow(_cursor, "endLat");
                    int _cursorIndexOfEndLat2 = _cursorIndexOfEndLat;
                    int _cursorIndexOfEndLon = CursorUtil.getColumnIndexOrThrow(_cursor, "endLon");
                    int _cursorIndexOfEndLon2 = _cursorIndexOfEndLon;
                    int _cursorIndexOfPeakGForce = CursorUtil.getColumnIndexOrThrow(_cursor, "peakGForce");
                    int _cursorIndexOfPeakGForce2 = _cursorIndexOfPeakGForce;
                    int _cursorIndexOfSmoothnessScore = CursorUtil.getColumnIndexOrThrow(_cursor, "smoothnessScore");
                    int _cursorIndexOfSmoothnessScore2 = _cursorIndexOfSmoothnessScore;
                    int _cursorIndexOfLaunchAccelTimeSec = CursorUtil.getColumnIndexOrThrow(_cursor, "launchAccelTimeSec");
                    int _cursorIndexOfLaunchAccelTimeSec2 = _cursorIndexOfLaunchAccelTimeSec;
                    int _cursorIndexOfTerrainSummary = CursorUtil.getColumnIndexOrThrow(_cursor, "terrainSummary");
                    int _cursorIndexOfTerrainSummary2 = _cursorIndexOfTerrainSummary;
                    int _cursorIndexOfIsCompressed = CursorUtil.getColumnIndexOrThrow(_cursor, "isCompressed");
                    int _tmp_1 = _cursorIndexOfIsCompressed;
                    int _tmp = _cursorIndexOfIsFinished;
                    int _cursorIndexOfIsFinished2 = _cursor.getCount();
                    List<RideLogEntity> _result = new ArrayList<>(_cursorIndexOfIsFinished2);
                    while (_cursor.moveToNext()) {
                        long _tmpId = _cursor.getLong(_cursorIndexOfId);
                        long _tmpStartTime = _cursor.getLong(_cursorIndexOfStartTime);
                        long _tmpMidTime = _cursor.getLong(_cursorIndexOfMidTime);
                        long _tmpEndTime = _cursor.getLong(_cursorIndexOfEndTime);
                        long _tmpDurationSeconds = _cursor.getLong(_cursorIndexOfDurationSeconds);
                        double _tmpDistanceKm = _cursor.getDouble(_cursorIndexOfDistanceKm);
                        double _tmpMaxSpeedKmh = _cursor.getDouble(_cursorIndexOfMaxSpeedKmh);
                        double _tmpAvgSpeedKmh = _cursor.getDouble(_cursorIndexOfAvgSpeedKmh);
                        double _tmpEstimatedFuelUsedL = _cursor.getDouble(_cursorIndexOfEstimatedFuelUsedL);
                        String _tmpWeatherCondition = _cursor.getString(_cursorIndexOfWeatherCondition);
                        String _tmpMode = _cursor.getString(_cursorIndexOfMode);
                        String _tmpVehicleType = _cursor.getString(_cursorIndexOfVehicleType);
                        int _tmpWarningCount = _cursor.getInt(_cursorIndexOfWarningCount);
                        int _cursorIndexOfIsFinished3 = _tmp;
                        int _tmp2 = _cursor.getInt(_cursorIndexOfIsFinished3);
                        boolean _tmpIsFinished = _tmp2 != 0;
                        int _cursorIndexOfId2 = _cursorIndexOfId;
                        int _cursorIndexOfId3 = _cursorIndexOfStartLat2;
                        double _tmpStartLat = _cursor.getDouble(_cursorIndexOfId3);
                        _cursorIndexOfStartLat2 = _cursorIndexOfId3;
                        int _cursorIndexOfStartLat3 = _cursorIndexOfStartLon2;
                        double _tmpStartLon = _cursor.getDouble(_cursorIndexOfStartLat3);
                        _cursorIndexOfStartLon2 = _cursorIndexOfStartLat3;
                        int _cursorIndexOfStartLon3 = _cursorIndexOfMidLat2;
                        double _tmpMidLat = _cursor.getDouble(_cursorIndexOfStartLon3);
                        _cursorIndexOfMidLat2 = _cursorIndexOfStartLon3;
                        int _cursorIndexOfMidLat3 = _cursorIndexOfMidLon2;
                        double _tmpMidLon = _cursor.getDouble(_cursorIndexOfMidLat3);
                        _cursorIndexOfMidLon2 = _cursorIndexOfMidLat3;
                        int _cursorIndexOfMidLon3 = _cursorIndexOfEndLat2;
                        double _tmpEndLat = _cursor.getDouble(_cursorIndexOfMidLon3);
                        _cursorIndexOfEndLat2 = _cursorIndexOfMidLon3;
                        int _cursorIndexOfEndLat3 = _cursorIndexOfEndLon2;
                        double _tmpEndLon = _cursor.getDouble(_cursorIndexOfEndLat3);
                        _cursorIndexOfEndLon2 = _cursorIndexOfEndLat3;
                        int _cursorIndexOfEndLon3 = _cursorIndexOfPeakGForce2;
                        double _tmpPeakGForce = _cursor.getDouble(_cursorIndexOfEndLon3);
                        _cursorIndexOfPeakGForce2 = _cursorIndexOfEndLon3;
                        int _cursorIndexOfPeakGForce3 = _cursorIndexOfSmoothnessScore2;
                        int _tmpSmoothnessScore = _cursor.getInt(_cursorIndexOfPeakGForce3);
                        _cursorIndexOfSmoothnessScore2 = _cursorIndexOfPeakGForce3;
                        int _cursorIndexOfSmoothnessScore3 = _cursorIndexOfLaunchAccelTimeSec2;
                        double _tmpLaunchAccelTimeSec = _cursor.getDouble(_cursorIndexOfSmoothnessScore3);
                        _cursorIndexOfLaunchAccelTimeSec2 = _cursorIndexOfSmoothnessScore3;
                        int _cursorIndexOfLaunchAccelTimeSec3 = _cursorIndexOfTerrainSummary2;
                        String _tmpTerrainSummary = _cursor.getString(_cursorIndexOfLaunchAccelTimeSec3);
                        _cursorIndexOfTerrainSummary2 = _cursorIndexOfLaunchAccelTimeSec3;
                        int _cursorIndexOfTerrainSummary3 = _tmp_1;
                        int _tmp_12 = _cursor.getInt(_cursorIndexOfTerrainSummary3);
                        boolean _tmpIsCompressed = _tmp_12 != 0;
                        RideLogEntity _item = new RideLogEntity(_tmpId, _tmpStartTime, _tmpMidTime, _tmpEndTime, _tmpDurationSeconds, _tmpDistanceKm, _tmpMaxSpeedKmh, _tmpAvgSpeedKmh, _tmpEstimatedFuelUsedL, _tmpWeatherCondition, _tmpMode, _tmpVehicleType, _tmpWarningCount, _tmpIsFinished, _tmpStartLat, _tmpStartLon, _tmpMidLat, _tmpMidLon, _tmpEndLat, _tmpEndLon, _tmpPeakGForce, _tmpSmoothnessScore, _tmpLaunchAccelTimeSec, _tmpTerrainSummary, _tmpIsCompressed);
                        _result.add(_item);
                        _tmp = _cursorIndexOfIsFinished3;
                        _cursorIndexOfId = _cursorIndexOfId2;
                        _tmp_1 = _cursorIndexOfTerrainSummary3;
                    }
                    return _result;
                } finally {
                    _cursor.close();
                }
            }

            protected void finalize() {
                _statement.release();
            }
        });
    }

    @Override // com.cgs.atvobserver.data.db.RideDao
    public Object getUnfinishedRide(final Continuation<? super RideLogEntity> $completion) {
        final RoomSQLiteQuery _statement = RoomSQLiteQuery.acquire("SELECT * FROM ride_logs WHERE isFinished = 0 ORDER BY startTime DESC LIMIT 1", 0);
        CancellationSignal _cancellationSignal = DBUtil.createCancellationSignal();
        return CoroutinesRoom.execute(this.__db, false, _cancellationSignal, new Callable<RideLogEntity>() { // from class: com.cgs.atvobserver.data.db.RideDao_Impl.15
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public RideLogEntity call() throws Exception {
                int _cursorIndexOfLaunchAccelTimeSec;
                RideLogEntity _result;
                AnonymousClass15 anonymousClass15 = this;
                Cursor _cursor = DBUtil.query(RideDao_Impl.this.__db, _statement, false, null);
                try {
                    int _cursorIndexOfId = CursorUtil.getColumnIndexOrThrow(_cursor, "id");
                    int _cursorIndexOfStartTime = CursorUtil.getColumnIndexOrThrow(_cursor, "startTime");
                    int _cursorIndexOfMidTime = CursorUtil.getColumnIndexOrThrow(_cursor, "midTime");
                    int _cursorIndexOfEndTime = CursorUtil.getColumnIndexOrThrow(_cursor, "endTime");
                    int _cursorIndexOfDurationSeconds = CursorUtil.getColumnIndexOrThrow(_cursor, "durationSeconds");
                    int _cursorIndexOfDistanceKm = CursorUtil.getColumnIndexOrThrow(_cursor, "distanceKm");
                    int _cursorIndexOfMaxSpeedKmh = CursorUtil.getColumnIndexOrThrow(_cursor, "maxSpeedKmh");
                    int _cursorIndexOfAvgSpeedKmh = CursorUtil.getColumnIndexOrThrow(_cursor, "avgSpeedKmh");
                    int _cursorIndexOfEstimatedFuelUsedL = CursorUtil.getColumnIndexOrThrow(_cursor, "estimatedFuelUsedL");
                    int _cursorIndexOfWeatherCondition = CursorUtil.getColumnIndexOrThrow(_cursor, "weatherCondition");
                    int _cursorIndexOfMode = CursorUtil.getColumnIndexOrThrow(_cursor, "mode");
                    int _cursorIndexOfVehicleType = CursorUtil.getColumnIndexOrThrow(_cursor, "vehicleType");
                    int _cursorIndexOfWarningCount = CursorUtil.getColumnIndexOrThrow(_cursor, "warningCount");
                    int _cursorIndexOfIsFinished = CursorUtil.getColumnIndexOrThrow(_cursor, "isFinished");
                    try {
                        int _cursorIndexOfStartLat = CursorUtil.getColumnIndexOrThrow(_cursor, "startLat");
                        int _cursorIndexOfStartLon = CursorUtil.getColumnIndexOrThrow(_cursor, "startLon");
                        int _cursorIndexOfMidLat = CursorUtil.getColumnIndexOrThrow(_cursor, "midLat");
                        int _cursorIndexOfMidLon = CursorUtil.getColumnIndexOrThrow(_cursor, "midLon");
                        int _cursorIndexOfEndLat = CursorUtil.getColumnIndexOrThrow(_cursor, "endLat");
                        int _cursorIndexOfEndLon = CursorUtil.getColumnIndexOrThrow(_cursor, "endLon");
                        int _cursorIndexOfPeakGForce = CursorUtil.getColumnIndexOrThrow(_cursor, "peakGForce");
                        int _cursorIndexOfSmoothnessScore = CursorUtil.getColumnIndexOrThrow(_cursor, "smoothnessScore");
                        int _cursorIndexOfLaunchAccelTimeSec2 = CursorUtil.getColumnIndexOrThrow(_cursor, "launchAccelTimeSec");
                        int _cursorIndexOfTerrainSummary = CursorUtil.getColumnIndexOrThrow(_cursor, "terrainSummary");
                        int _cursorIndexOfIsCompressed = CursorUtil.getColumnIndexOrThrow(_cursor, "isCompressed");
                        if (!_cursor.moveToFirst()) {
                            _cursorIndexOfLaunchAccelTimeSec = _cursorIndexOfTerrainSummary;
                            _result = null;
                        } else {
                            long _tmpId = _cursor.getLong(_cursorIndexOfId);
                            long _tmpStartTime = _cursor.getLong(_cursorIndexOfStartTime);
                            long _tmpMidTime = _cursor.getLong(_cursorIndexOfMidTime);
                            long _tmpEndTime = _cursor.getLong(_cursorIndexOfEndTime);
                            long _tmpDurationSeconds = _cursor.getLong(_cursorIndexOfDurationSeconds);
                            double _tmpDistanceKm = _cursor.getDouble(_cursorIndexOfDistanceKm);
                            double _tmpMaxSpeedKmh = _cursor.getDouble(_cursorIndexOfMaxSpeedKmh);
                            double _tmpAvgSpeedKmh = _cursor.getDouble(_cursorIndexOfAvgSpeedKmh);
                            double _tmpEstimatedFuelUsedL = _cursor.getDouble(_cursorIndexOfEstimatedFuelUsedL);
                            String _tmpWeatherCondition = _cursor.getString(_cursorIndexOfWeatherCondition);
                            String _tmpMode = _cursor.getString(_cursorIndexOfMode);
                            String _tmpVehicleType = _cursor.getString(_cursorIndexOfVehicleType);
                            int _tmpWarningCount = _cursor.getInt(_cursorIndexOfWarningCount);
                            int _tmp = _cursor.getInt(_cursorIndexOfIsFinished);
                            boolean _tmpIsFinished = _tmp != 0;
                            double _tmpStartLat = _cursor.getDouble(_cursorIndexOfStartLat);
                            double _tmpStartLon = _cursor.getDouble(_cursorIndexOfStartLon);
                            double _tmpMidLat = _cursor.getDouble(_cursorIndexOfMidLat);
                            double _tmpMidLon = _cursor.getDouble(_cursorIndexOfMidLon);
                            double _tmpEndLat = _cursor.getDouble(_cursorIndexOfEndLat);
                            double _tmpEndLon = _cursor.getDouble(_cursorIndexOfEndLon);
                            double _tmpPeakGForce = _cursor.getDouble(_cursorIndexOfPeakGForce);
                            int _tmpSmoothnessScore = _cursor.getInt(_cursorIndexOfSmoothnessScore);
                            double _tmpLaunchAccelTimeSec = _cursor.getDouble(_cursorIndexOfLaunchAccelTimeSec2);
                            _cursorIndexOfLaunchAccelTimeSec = _cursorIndexOfTerrainSummary;
                            String _tmpTerrainSummary = _cursor.getString(_cursorIndexOfLaunchAccelTimeSec);
                            int _tmp_1 = _cursor.getInt(_cursorIndexOfIsCompressed);
                            boolean _tmpIsCompressed = _tmp_1 != 0;
                            _result = new RideLogEntity(_tmpId, _tmpStartTime, _tmpMidTime, _tmpEndTime, _tmpDurationSeconds, _tmpDistanceKm, _tmpMaxSpeedKmh, _tmpAvgSpeedKmh, _tmpEstimatedFuelUsedL, _tmpWeatherCondition, _tmpMode, _tmpVehicleType, _tmpWarningCount, _tmpIsFinished, _tmpStartLat, _tmpStartLon, _tmpMidLat, _tmpMidLon, _tmpEndLat, _tmpEndLon, _tmpPeakGForce, _tmpSmoothnessScore, _tmpLaunchAccelTimeSec, _tmpTerrainSummary, _tmpIsCompressed);
                        }
                        _cursor.close();
                        _statement.release();
                        return _result;
                    } catch (Throwable th) {
                        th = th;
                        anonymousClass15 = this;
                        _cursor.close();
                        _statement.release();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }, $completion);
    }

    @Override // com.cgs.atvobserver.data.db.RideDao
    public Object getOldUncompressedRides(final long cutoffTimestamp, final Continuation<? super List<RideLogEntity>> $completion) {
        final RoomSQLiteQuery _statement = RoomSQLiteQuery.acquire("SELECT * FROM ride_logs WHERE startTime < ? AND isCompressed = 0", 1);
        _statement.bindLong(1, cutoffTimestamp);
        CancellationSignal _cancellationSignal = DBUtil.createCancellationSignal();
        return CoroutinesRoom.execute(this.__db, false, _cancellationSignal, new Callable<List<RideLogEntity>>() { // from class: com.cgs.atvobserver.data.db.RideDao_Impl.16
            @Override // java.util.concurrent.Callable
            public List<RideLogEntity> call() throws Exception {
                AnonymousClass16 anonymousClass16;
                Cursor _cursor = DBUtil.query(RideDao_Impl.this.__db, _statement, false, null);
                try {
                    int _cursorIndexOfId = CursorUtil.getColumnIndexOrThrow(_cursor, "id");
                    int _cursorIndexOfStartTime = CursorUtil.getColumnIndexOrThrow(_cursor, "startTime");
                    int _cursorIndexOfMidTime = CursorUtil.getColumnIndexOrThrow(_cursor, "midTime");
                    int _cursorIndexOfEndTime = CursorUtil.getColumnIndexOrThrow(_cursor, "endTime");
                    int _cursorIndexOfDurationSeconds = CursorUtil.getColumnIndexOrThrow(_cursor, "durationSeconds");
                    int _cursorIndexOfDistanceKm = CursorUtil.getColumnIndexOrThrow(_cursor, "distanceKm");
                    int _cursorIndexOfMaxSpeedKmh = CursorUtil.getColumnIndexOrThrow(_cursor, "maxSpeedKmh");
                    int _cursorIndexOfAvgSpeedKmh = CursorUtil.getColumnIndexOrThrow(_cursor, "avgSpeedKmh");
                    int _cursorIndexOfEstimatedFuelUsedL = CursorUtil.getColumnIndexOrThrow(_cursor, "estimatedFuelUsedL");
                    int _cursorIndexOfWeatherCondition = CursorUtil.getColumnIndexOrThrow(_cursor, "weatherCondition");
                    int _cursorIndexOfMode = CursorUtil.getColumnIndexOrThrow(_cursor, "mode");
                    int _cursorIndexOfVehicleType = CursorUtil.getColumnIndexOrThrow(_cursor, "vehicleType");
                    int _cursorIndexOfWarningCount = CursorUtil.getColumnIndexOrThrow(_cursor, "warningCount");
                    int _cursorIndexOfIsFinished = CursorUtil.getColumnIndexOrThrow(_cursor, "isFinished");
                    try {
                        int _cursorIndexOfStartLat = CursorUtil.getColumnIndexOrThrow(_cursor, "startLat");
                        int _cursorIndexOfStartLat2 = _cursorIndexOfStartLat;
                        int _cursorIndexOfStartLon = CursorUtil.getColumnIndexOrThrow(_cursor, "startLon");
                        int _cursorIndexOfStartLon2 = _cursorIndexOfStartLon;
                        int _cursorIndexOfMidLat = CursorUtil.getColumnIndexOrThrow(_cursor, "midLat");
                        int _cursorIndexOfMidLat2 = _cursorIndexOfMidLat;
                        int _cursorIndexOfMidLon = CursorUtil.getColumnIndexOrThrow(_cursor, "midLon");
                        int _cursorIndexOfMidLon2 = _cursorIndexOfMidLon;
                        int _cursorIndexOfEndLat = CursorUtil.getColumnIndexOrThrow(_cursor, "endLat");
                        int _cursorIndexOfEndLat2 = _cursorIndexOfEndLat;
                        int _cursorIndexOfEndLon = CursorUtil.getColumnIndexOrThrow(_cursor, "endLon");
                        int _cursorIndexOfEndLon2 = _cursorIndexOfEndLon;
                        int _cursorIndexOfPeakGForce = CursorUtil.getColumnIndexOrThrow(_cursor, "peakGForce");
                        int _cursorIndexOfPeakGForce2 = _cursorIndexOfPeakGForce;
                        int _cursorIndexOfSmoothnessScore = CursorUtil.getColumnIndexOrThrow(_cursor, "smoothnessScore");
                        int _cursorIndexOfSmoothnessScore2 = _cursorIndexOfSmoothnessScore;
                        int _cursorIndexOfLaunchAccelTimeSec = CursorUtil.getColumnIndexOrThrow(_cursor, "launchAccelTimeSec");
                        int _cursorIndexOfLaunchAccelTimeSec2 = _cursorIndexOfLaunchAccelTimeSec;
                        int _cursorIndexOfTerrainSummary = CursorUtil.getColumnIndexOrThrow(_cursor, "terrainSummary");
                        int _cursorIndexOfTerrainSummary2 = _cursorIndexOfTerrainSummary;
                        int _cursorIndexOfIsCompressed = CursorUtil.getColumnIndexOrThrow(_cursor, "isCompressed");
                        int _tmp_1 = _cursorIndexOfIsCompressed;
                        int _tmp = _cursorIndexOfIsFinished;
                        int _cursorIndexOfIsFinished2 = _cursor.getCount();
                        List<RideLogEntity> _result = new ArrayList<>(_cursorIndexOfIsFinished2);
                        while (_cursor.moveToNext()) {
                            long _tmpId = _cursor.getLong(_cursorIndexOfId);
                            long _tmpStartTime = _cursor.getLong(_cursorIndexOfStartTime);
                            long _tmpMidTime = _cursor.getLong(_cursorIndexOfMidTime);
                            long _tmpEndTime = _cursor.getLong(_cursorIndexOfEndTime);
                            long _tmpDurationSeconds = _cursor.getLong(_cursorIndexOfDurationSeconds);
                            double _tmpDistanceKm = _cursor.getDouble(_cursorIndexOfDistanceKm);
                            double _tmpMaxSpeedKmh = _cursor.getDouble(_cursorIndexOfMaxSpeedKmh);
                            double _tmpAvgSpeedKmh = _cursor.getDouble(_cursorIndexOfAvgSpeedKmh);
                            double _tmpEstimatedFuelUsedL = _cursor.getDouble(_cursorIndexOfEstimatedFuelUsedL);
                            String _tmpWeatherCondition = _cursor.getString(_cursorIndexOfWeatherCondition);
                            String _tmpMode = _cursor.getString(_cursorIndexOfMode);
                            String _tmpVehicleType = _cursor.getString(_cursorIndexOfVehicleType);
                            int _tmpWarningCount = _cursor.getInt(_cursorIndexOfWarningCount);
                            int _cursorIndexOfIsFinished3 = _tmp;
                            int _tmp2 = _cursor.getInt(_cursorIndexOfIsFinished3);
                            boolean _tmpIsFinished = _tmp2 != 0;
                            int _cursorIndexOfId2 = _cursorIndexOfId;
                            int _cursorIndexOfId3 = _cursorIndexOfStartLat2;
                            double _tmpStartLat = _cursor.getDouble(_cursorIndexOfId3);
                            _cursorIndexOfStartLat2 = _cursorIndexOfId3;
                            int _cursorIndexOfStartLat3 = _cursorIndexOfStartLon2;
                            double _tmpStartLon = _cursor.getDouble(_cursorIndexOfStartLat3);
                            _cursorIndexOfStartLon2 = _cursorIndexOfStartLat3;
                            int _cursorIndexOfStartLon3 = _cursorIndexOfMidLat2;
                            double _tmpMidLat = _cursor.getDouble(_cursorIndexOfStartLon3);
                            _cursorIndexOfMidLat2 = _cursorIndexOfStartLon3;
                            int _cursorIndexOfMidLat3 = _cursorIndexOfMidLon2;
                            double _tmpMidLon = _cursor.getDouble(_cursorIndexOfMidLat3);
                            _cursorIndexOfMidLon2 = _cursorIndexOfMidLat3;
                            int _cursorIndexOfMidLon3 = _cursorIndexOfEndLat2;
                            double _tmpEndLat = _cursor.getDouble(_cursorIndexOfMidLon3);
                            _cursorIndexOfEndLat2 = _cursorIndexOfMidLon3;
                            int _cursorIndexOfEndLat3 = _cursorIndexOfEndLon2;
                            double _tmpEndLon = _cursor.getDouble(_cursorIndexOfEndLat3);
                            _cursorIndexOfEndLon2 = _cursorIndexOfEndLat3;
                            int _cursorIndexOfEndLon3 = _cursorIndexOfPeakGForce2;
                            double _tmpPeakGForce = _cursor.getDouble(_cursorIndexOfEndLon3);
                            _cursorIndexOfPeakGForce2 = _cursorIndexOfEndLon3;
                            int _cursorIndexOfPeakGForce3 = _cursorIndexOfSmoothnessScore2;
                            int _tmpSmoothnessScore = _cursor.getInt(_cursorIndexOfPeakGForce3);
                            _cursorIndexOfSmoothnessScore2 = _cursorIndexOfPeakGForce3;
                            int _cursorIndexOfSmoothnessScore3 = _cursorIndexOfLaunchAccelTimeSec2;
                            double _tmpLaunchAccelTimeSec = _cursor.getDouble(_cursorIndexOfSmoothnessScore3);
                            _cursorIndexOfLaunchAccelTimeSec2 = _cursorIndexOfSmoothnessScore3;
                            int _cursorIndexOfLaunchAccelTimeSec3 = _cursorIndexOfTerrainSummary2;
                            String _tmpTerrainSummary = _cursor.getString(_cursorIndexOfLaunchAccelTimeSec3);
                            _cursorIndexOfTerrainSummary2 = _cursorIndexOfLaunchAccelTimeSec3;
                            int _cursorIndexOfTerrainSummary3 = _tmp_1;
                            int _tmp_12 = _cursor.getInt(_cursorIndexOfTerrainSummary3);
                            boolean _tmpIsCompressed = _tmp_12 != 0;
                            RideLogEntity _item = new RideLogEntity(_tmpId, _tmpStartTime, _tmpMidTime, _tmpEndTime, _tmpDurationSeconds, _tmpDistanceKm, _tmpMaxSpeedKmh, _tmpAvgSpeedKmh, _tmpEstimatedFuelUsedL, _tmpWeatherCondition, _tmpMode, _tmpVehicleType, _tmpWarningCount, _tmpIsFinished, _tmpStartLat, _tmpStartLon, _tmpMidLat, _tmpMidLon, _tmpEndLat, _tmpEndLon, _tmpPeakGForce, _tmpSmoothnessScore, _tmpLaunchAccelTimeSec, _tmpTerrainSummary, _tmpIsCompressed);
                            _result.add(_item);
                            _tmp = _cursorIndexOfIsFinished3;
                            _cursorIndexOfId = _cursorIndexOfId2;
                            _tmp_1 = _cursorIndexOfTerrainSummary3;
                        }
                        _cursor.close();
                        _statement.release();
                        return _result;
                    } catch (Throwable th) {
                        th = th;
                        anonymousClass16 = this;
                        _cursor.close();
                        _statement.release();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    anonymousClass16 = this;
                }
            }
        }, $completion);
    }

    @Override // com.cgs.atvobserver.data.db.RideDao
    public Object getLatestFuelRecord(final Continuation<? super FuelRecordEntity> $completion) {
        final RoomSQLiteQuery _statement = RoomSQLiteQuery.acquire("SELECT * FROM fuel_records ORDER BY timestamp DESC LIMIT 1", 0);
        CancellationSignal _cancellationSignal = DBUtil.createCancellationSignal();
        return CoroutinesRoom.execute(this.__db, false, _cancellationSignal, new Callable<FuelRecordEntity>() { // from class: com.cgs.atvobserver.data.db.RideDao_Impl.17
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public FuelRecordEntity call() throws Exception {
                FuelRecordEntity _result;
                Cursor _cursor = DBUtil.query(RideDao_Impl.this.__db, _statement, false, null);
                try {
                    int _cursorIndexOfId = CursorUtil.getColumnIndexOrThrow(_cursor, "id");
                    int _cursorIndexOfTimestamp = CursorUtil.getColumnIndexOrThrow(_cursor, "timestamp");
                    int _cursorIndexOfFuelLitres = CursorUtil.getColumnIndexOrThrow(_cursor, "fuelLitres");
                    int _cursorIndexOfEntryType = CursorUtil.getColumnIndexOrThrow(_cursor, "entryType");
                    int _cursorIndexOfVehicleType = CursorUtil.getColumnIndexOrThrow(_cursor, "vehicleType");
                    if (_cursor.moveToFirst()) {
                        long _tmpId = _cursor.getLong(_cursorIndexOfId);
                        long _tmpTimestamp = _cursor.getLong(_cursorIndexOfTimestamp);
                        double _tmpFuelLitres = _cursor.getDouble(_cursorIndexOfFuelLitres);
                        String _tmpEntryType = _cursor.getString(_cursorIndexOfEntryType);
                        String _tmpVehicleType = _cursor.getString(_cursorIndexOfVehicleType);
                        _result = new FuelRecordEntity(_tmpId, _tmpTimestamp, _tmpFuelLitres, _tmpEntryType, _tmpVehicleType);
                    } else {
                        _result = null;
                    }
                    return _result;
                } finally {
                    _cursor.close();
                    _statement.release();
                }
            }
        }, $completion);
    }

    @Override // com.cgs.atvobserver.data.db.RideDao
    public Object getCalibration(final String key, final Continuation<? super CalibrationEntity> $completion) {
        final RoomSQLiteQuery _statement = RoomSQLiteQuery.acquire("SELECT * FROM calibration_records WHERE `key` = ?", 1);
        _statement.bindString(1, key);
        CancellationSignal _cancellationSignal = DBUtil.createCancellationSignal();
        return CoroutinesRoom.execute(this.__db, false, _cancellationSignal, new Callable<CalibrationEntity>() { // from class: com.cgs.atvobserver.data.db.RideDao_Impl.18
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public CalibrationEntity call() throws Exception {
                CalibrationEntity _result;
                Cursor _cursor = DBUtil.query(RideDao_Impl.this.__db, _statement, false, null);
                try {
                    int _cursorIndexOfKey = CursorUtil.getColumnIndexOrThrow(_cursor, "key");
                    int _cursorIndexOfValue = CursorUtil.getColumnIndexOrThrow(_cursor, "value");
                    int _cursorIndexOfConfidence = CursorUtil.getColumnIndexOrThrow(_cursor, "confidence");
                    int _cursorIndexOfLastUpdated = CursorUtil.getColumnIndexOrThrow(_cursor, "lastUpdated");
                    if (_cursor.moveToFirst()) {
                        String _tmpKey = _cursor.getString(_cursorIndexOfKey);
                        String _tmpValue = _cursor.getString(_cursorIndexOfValue);
                        String _tmpConfidence = _cursor.getString(_cursorIndexOfConfidence);
                        long _tmpLastUpdated = _cursor.getLong(_cursorIndexOfLastUpdated);
                        _result = new CalibrationEntity(_tmpKey, _tmpValue, _tmpConfidence, _tmpLastUpdated);
                    } else {
                        _result = null;
                    }
                    return _result;
                } finally {
                    _cursor.close();
                    _statement.release();
                }
            }
        }, $completion);
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }
}
