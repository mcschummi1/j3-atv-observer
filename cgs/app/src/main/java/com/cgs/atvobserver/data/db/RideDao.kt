package com.cgs.atvobserver.data.db

import androidx.room.Dao
import androidx.room.Insert
import androidx.room.OnConflictStrategy
import androidx.room.Query
import androidx.room.Update

/** Same queries as the original RideDao (synchronous; callers run them off the main thread). */
@Dao
interface RideDao {
    @Insert(onConflict = OnConflictStrategy.ABORT)
    fun insertRide(ride: RideLogEntity): Long

    @Update
    fun updateRide(ride: RideLogEntity)

    @Query("SELECT * FROM ride_logs ORDER BY startTime DESC")
    fun getAllRides(): List<RideLogEntity>

    @Query("SELECT * FROM ride_logs WHERE vehicleType = :vehicleType ORDER BY startTime DESC")
    fun getRidesByVehicle(vehicleType: String): List<RideLogEntity>

    @Query("SELECT * FROM ride_logs WHERE isFinished = 0 ORDER BY startTime DESC LIMIT 1")
    fun getUnfinishedRide(): RideLogEntity?

    @Query("SELECT * FROM ride_logs WHERE startTime < :threshold AND isCompressed = 0")
    fun getOldUncompressedRides(threshold: Long): List<RideLogEntity>

    @Query("DELETE FROM ride_logs WHERE id = :id")
    fun deleteRideById(id: Long)

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    fun insertFuelRecord(record: FuelRecordEntity)

    @Query("SELECT * FROM fuel_records ORDER BY timestamp DESC LIMIT 1")
    fun getLatestFuelRecord(): FuelRecordEntity?

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    fun setCalibration(c: CalibrationEntity)

    @Query("SELECT * FROM calibration_records WHERE `key` = :key")
    fun getCalibration(key: String): CalibrationEntity?
}
