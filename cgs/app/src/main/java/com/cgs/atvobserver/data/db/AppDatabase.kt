package com.cgs.atvobserver.data.db

import android.content.Context
import androidx.room.Database
import androidx.room.Room
import androidx.room.RoomDatabase
import androidx.room.migration.Migration

/**
 * `atv_observer_db`, schema version 5 - byte-for-byte the schema of v1.1.6/v1.1.7, so an in-place
 * update keeps every ride. The original opened it with the destructive-migration fallback; this app
 * does NOT: a missing migration fails loudly instead of deleting rides.
 */
@Database(
    entities = [RideLogEntity::class, FuelRecordEntity::class, CalibrationEntity::class],
    version = AppDatabase.VERSION,
    exportSchema = true,
)
abstract class AppDatabase : RoomDatabase() {
    abstract fun rideDao(): RideDao

    companion object {
        const val NAME = "atv_observer_db"
        const val VERSION = 5
        const val IDENTITY_HASH_V5 = "c0123e4383c0dbb3474efce306556582"

        /** Explicit migrations only. Empty while the schema stays at v5. */
        val MIGRATIONS: Array<Migration> = emptyArray()

        @Volatile private var instance: AppDatabase? = null

        fun get(context: Context): AppDatabase = instance ?: synchronized(this) {
            instance ?: build(context.applicationContext, NAME).also { instance = it }
        }

        fun build(context: Context, name: String?): AppDatabase {
            val b = if (name == null) Room.inMemoryDatabaseBuilder(context, AppDatabase::class.java)
            else Room.databaseBuilder(context, AppDatabase::class.java, name)
            return b.addMigrations(*MIGRATIONS).build()
        }
    }
}
