package com.cgs.atvobserver.data.db;

import androidx.room.DatabaseConfiguration;
import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.RoomMasterTable;
import androidx.room.RoomOpenHelper;
import androidx.room.migration.AutoMigrationSpec;
import androidx.room.migration.Migration;
import androidx.room.util.DBUtil;
import androidx.room.util.TableInfo;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes7.dex */
public final class AppDatabase_Impl extends AppDatabase {
    private volatile RideDao _rideDao;

    @Override // androidx.room.RoomDatabase
    protected SupportSQLiteOpenHelper createOpenHelper(final DatabaseConfiguration config) {
        SupportSQLiteOpenHelper.Callback _openCallback = new RoomOpenHelper(config, new RoomOpenHelper.Delegate(5) { // from class: com.cgs.atvobserver.data.db.AppDatabase_Impl.1
            @Override // androidx.room.RoomOpenHelper.Delegate
            public void createAllTables(final SupportSQLiteDatabase db) {
                db.execSQL("CREATE TABLE IF NOT EXISTS `ride_logs` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `startTime` INTEGER NOT NULL, `midTime` INTEGER NOT NULL, `endTime` INTEGER NOT NULL, `durationSeconds` INTEGER NOT NULL, `distanceKm` REAL NOT NULL, `maxSpeedKmh` REAL NOT NULL, `avgSpeedKmh` REAL NOT NULL, `estimatedFuelUsedL` REAL NOT NULL, `weatherCondition` TEXT NOT NULL, `mode` TEXT NOT NULL, `vehicleType` TEXT NOT NULL, `warningCount` INTEGER NOT NULL, `isFinished` INTEGER NOT NULL, `startLat` REAL NOT NULL, `startLon` REAL NOT NULL, `midLat` REAL NOT NULL, `midLon` REAL NOT NULL, `endLat` REAL NOT NULL, `endLon` REAL NOT NULL, `peakGForce` REAL NOT NULL, `smoothnessScore` INTEGER NOT NULL, `launchAccelTimeSec` REAL NOT NULL, `terrainSummary` TEXT NOT NULL, `isCompressed` INTEGER NOT NULL)");
                db.execSQL("CREATE TABLE IF NOT EXISTS `fuel_records` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `timestamp` INTEGER NOT NULL, `fuelLitres` REAL NOT NULL, `entryType` TEXT NOT NULL, `vehicleType` TEXT NOT NULL)");
                db.execSQL("CREATE TABLE IF NOT EXISTS `calibration_records` (`key` TEXT NOT NULL, `value` TEXT NOT NULL, `confidence` TEXT NOT NULL, `lastUpdated` INTEGER NOT NULL, PRIMARY KEY(`key`))");
                db.execSQL(RoomMasterTable.CREATE_QUERY);
                db.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'c0123e4383c0dbb3474efce306556582')");
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void dropAllTables(final SupportSQLiteDatabase db) {
                db.execSQL("DROP TABLE IF EXISTS `ride_logs`");
                db.execSQL("DROP TABLE IF EXISTS `fuel_records`");
                db.execSQL("DROP TABLE IF EXISTS `calibration_records`");
                List<? extends RoomDatabase.Callback> _callbacks = AppDatabase_Impl.this.mCallbacks;
                if (_callbacks != null) {
                    for (RoomDatabase.Callback _callback : _callbacks) {
                        _callback.onDestructiveMigration(db);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onCreate(final SupportSQLiteDatabase db) {
                List<? extends RoomDatabase.Callback> _callbacks = AppDatabase_Impl.this.mCallbacks;
                if (_callbacks != null) {
                    for (RoomDatabase.Callback _callback : _callbacks) {
                        _callback.onCreate(db);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onOpen(final SupportSQLiteDatabase db) {
                AppDatabase_Impl.this.mDatabase = db;
                AppDatabase_Impl.this.internalInitInvalidationTracker(db);
                List<? extends RoomDatabase.Callback> _callbacks = AppDatabase_Impl.this.mCallbacks;
                if (_callbacks != null) {
                    for (RoomDatabase.Callback _callback : _callbacks) {
                        _callback.onOpen(db);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onPreMigrate(final SupportSQLiteDatabase db) {
                DBUtil.dropFtsSyncTriggers(db);
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onPostMigrate(final SupportSQLiteDatabase db) {
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public RoomOpenHelper.ValidationResult onValidateSchema(final SupportSQLiteDatabase db) {
                HashMap<String, TableInfo.Column> _columnsRideLogs = new HashMap<>(25);
                _columnsRideLogs.put("id", new TableInfo.Column("id", "INTEGER", true, 1, null, 1));
                _columnsRideLogs.put("startTime", new TableInfo.Column("startTime", "INTEGER", true, 0, null, 1));
                _columnsRideLogs.put("midTime", new TableInfo.Column("midTime", "INTEGER", true, 0, null, 1));
                _columnsRideLogs.put("endTime", new TableInfo.Column("endTime", "INTEGER", true, 0, null, 1));
                _columnsRideLogs.put("durationSeconds", new TableInfo.Column("durationSeconds", "INTEGER", true, 0, null, 1));
                _columnsRideLogs.put("distanceKm", new TableInfo.Column("distanceKm", "REAL", true, 0, null, 1));
                _columnsRideLogs.put("maxSpeedKmh", new TableInfo.Column("maxSpeedKmh", "REAL", true, 0, null, 1));
                _columnsRideLogs.put("avgSpeedKmh", new TableInfo.Column("avgSpeedKmh", "REAL", true, 0, null, 1));
                _columnsRideLogs.put("estimatedFuelUsedL", new TableInfo.Column("estimatedFuelUsedL", "REAL", true, 0, null, 1));
                _columnsRideLogs.put("weatherCondition", new TableInfo.Column("weatherCondition", "TEXT", true, 0, null, 1));
                _columnsRideLogs.put("mode", new TableInfo.Column("mode", "TEXT", true, 0, null, 1));
                _columnsRideLogs.put("vehicleType", new TableInfo.Column("vehicleType", "TEXT", true, 0, null, 1));
                _columnsRideLogs.put("warningCount", new TableInfo.Column("warningCount", "INTEGER", true, 0, null, 1));
                _columnsRideLogs.put("isFinished", new TableInfo.Column("isFinished", "INTEGER", true, 0, null, 1));
                _columnsRideLogs.put("startLat", new TableInfo.Column("startLat", "REAL", true, 0, null, 1));
                _columnsRideLogs.put("startLon", new TableInfo.Column("startLon", "REAL", true, 0, null, 1));
                _columnsRideLogs.put("midLat", new TableInfo.Column("midLat", "REAL", true, 0, null, 1));
                _columnsRideLogs.put("midLon", new TableInfo.Column("midLon", "REAL", true, 0, null, 1));
                _columnsRideLogs.put("endLat", new TableInfo.Column("endLat", "REAL", true, 0, null, 1));
                _columnsRideLogs.put("endLon", new TableInfo.Column("endLon", "REAL", true, 0, null, 1));
                _columnsRideLogs.put("peakGForce", new TableInfo.Column("peakGForce", "REAL", true, 0, null, 1));
                _columnsRideLogs.put("smoothnessScore", new TableInfo.Column("smoothnessScore", "INTEGER", true, 0, null, 1));
                _columnsRideLogs.put("launchAccelTimeSec", new TableInfo.Column("launchAccelTimeSec", "REAL", true, 0, null, 1));
                _columnsRideLogs.put("terrainSummary", new TableInfo.Column("terrainSummary", "TEXT", true, 0, null, 1));
                _columnsRideLogs.put("isCompressed", new TableInfo.Column("isCompressed", "INTEGER", true, 0, null, 1));
                HashSet<TableInfo.ForeignKey> _foreignKeysRideLogs = new HashSet<>(0);
                HashSet<TableInfo.Index> _indicesRideLogs = new HashSet<>(0);
                TableInfo _infoRideLogs = new TableInfo("ride_logs", _columnsRideLogs, _foreignKeysRideLogs, _indicesRideLogs);
                TableInfo _existingRideLogs = TableInfo.read(db, "ride_logs");
                if (!_infoRideLogs.equals(_existingRideLogs)) {
                    return new RoomOpenHelper.ValidationResult(false, "ride_logs(com.cgs.atvobserver.data.db.RideLogEntity).\n Expected:\n" + _infoRideLogs + "\n Found:\n" + _existingRideLogs);
                }
                HashMap<String, TableInfo.Column> _columnsFuelRecords = new HashMap<>(5);
                _columnsFuelRecords.put("id", new TableInfo.Column("id", "INTEGER", true, 1, null, 1));
                _columnsFuelRecords.put("timestamp", new TableInfo.Column("timestamp", "INTEGER", true, 0, null, 1));
                _columnsFuelRecords.put("fuelLitres", new TableInfo.Column("fuelLitres", "REAL", true, 0, null, 1));
                _columnsFuelRecords.put("entryType", new TableInfo.Column("entryType", "TEXT", true, 0, null, 1));
                _columnsFuelRecords.put("vehicleType", new TableInfo.Column("vehicleType", "TEXT", true, 0, null, 1));
                HashSet<TableInfo.ForeignKey> _foreignKeysFuelRecords = new HashSet<>(0);
                HashSet<TableInfo.Index> _indicesFuelRecords = new HashSet<>(0);
                TableInfo _infoFuelRecords = new TableInfo("fuel_records", _columnsFuelRecords, _foreignKeysFuelRecords, _indicesFuelRecords);
                TableInfo _existingFuelRecords = TableInfo.read(db, "fuel_records");
                if (!_infoFuelRecords.equals(_existingFuelRecords)) {
                    return new RoomOpenHelper.ValidationResult(false, "fuel_records(com.cgs.atvobserver.data.db.FuelRecordEntity).\n Expected:\n" + _infoFuelRecords + "\n Found:\n" + _existingFuelRecords);
                }
                HashMap<String, TableInfo.Column> _columnsCalibrationRecords = new HashMap<>(4);
                _columnsCalibrationRecords.put("key", new TableInfo.Column("key", "TEXT", true, 1, null, 1));
                _columnsCalibrationRecords.put("value", new TableInfo.Column("value", "TEXT", true, 0, null, 1));
                _columnsCalibrationRecords.put("confidence", new TableInfo.Column("confidence", "TEXT", true, 0, null, 1));
                _columnsCalibrationRecords.put("lastUpdated", new TableInfo.Column("lastUpdated", "INTEGER", true, 0, null, 1));
                HashSet<TableInfo.ForeignKey> _foreignKeysCalibrationRecords = new HashSet<>(0);
                HashSet<TableInfo.Index> _indicesCalibrationRecords = new HashSet<>(0);
                TableInfo _infoCalibrationRecords = new TableInfo("calibration_records", _columnsCalibrationRecords, _foreignKeysCalibrationRecords, _indicesCalibrationRecords);
                TableInfo _existingCalibrationRecords = TableInfo.read(db, "calibration_records");
                return !_infoCalibrationRecords.equals(_existingCalibrationRecords) ? new RoomOpenHelper.ValidationResult(false, "calibration_records(com.cgs.atvobserver.data.db.CalibrationEntity).\n Expected:\n" + _infoCalibrationRecords + "\n Found:\n" + _existingCalibrationRecords) : new RoomOpenHelper.ValidationResult(true, null);
            }
        }, "c0123e4383c0dbb3474efce306556582", "5e0ff730735fd32ec8a7c878daab5ee8");
        SupportSQLiteOpenHelper.Configuration _sqliteConfig = SupportSQLiteOpenHelper.Configuration.builder(config.context).name(config.name).callback(_openCallback).build();
        SupportSQLiteOpenHelper _helper = config.sqliteOpenHelperFactory.create(_sqliteConfig);
        return _helper;
    }

    @Override // androidx.room.RoomDatabase
    protected InvalidationTracker createInvalidationTracker() {
        HashMap<String, String> _shadowTablesMap = new HashMap<>(0);
        HashMap<String, Set<String>> _viewTables = new HashMap<>(0);
        return new InvalidationTracker(this, _shadowTablesMap, _viewTables, "ride_logs", "fuel_records", "calibration_records");
    }

    @Override // androidx.room.RoomDatabase
    public void clearAllTables() {
        super.assertNotMainThread();
        SupportSQLiteDatabase _db = super.getOpenHelper().getWritableDatabase();
        try {
            super.beginTransaction();
            _db.execSQL("DELETE FROM `ride_logs`");
            _db.execSQL("DELETE FROM `fuel_records`");
            _db.execSQL("DELETE FROM `calibration_records`");
            super.setTransactionSuccessful();
        } finally {
            super.endTransaction();
            _db.query("PRAGMA wal_checkpoint(FULL)").close();
            if (!_db.inTransaction()) {
                _db.execSQL("VACUUM");
            }
        }
    }

    @Override // androidx.room.RoomDatabase
    protected Map<Class<?>, List<Class<?>>> getRequiredTypeConverters() {
        HashMap<Class<?>, List<Class<?>>> _typeConvertersMap = new HashMap<>();
        _typeConvertersMap.put(RideDao.class, RideDao_Impl.getRequiredConverters());
        return _typeConvertersMap;
    }

    @Override // androidx.room.RoomDatabase
    public Set<Class<? extends AutoMigrationSpec>> getRequiredAutoMigrationSpecs() {
        HashSet<Class<? extends AutoMigrationSpec>> _autoMigrationSpecsSet = new HashSet<>();
        return _autoMigrationSpecsSet;
    }

    @Override // androidx.room.RoomDatabase
    public List<Migration> getAutoMigrations(final Map<Class<? extends AutoMigrationSpec>, AutoMigrationSpec> autoMigrationSpecs) {
        List<Migration> _autoMigrations = new ArrayList<>();
        return _autoMigrations;
    }

    @Override // com.cgs.atvobserver.data.db.AppDatabase
    public RideDao rideDao() {
        RideDao rideDao;
        if (this._rideDao != null) {
            return this._rideDao;
        }
        synchronized (this) {
            if (this._rideDao == null) {
                this._rideDao = new RideDao_Impl(this);
            }
            rideDao = this._rideDao;
        }
        return rideDao;
    }
}
