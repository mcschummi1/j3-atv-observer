package com.cgs.atvobserver.data.prefs

import android.content.Context
import android.content.SharedPreferences
import com.cgs.atvobserver.core.engine.settings.ConfigKeys
import com.cgs.atvobserver.core.engine.settings.KeyValueStore

/** KeyValueStore over the original `cgs_atv_config` SharedPreferences file. */
class SharedPrefsStore(private val prefs: SharedPreferences) : KeyValueStore {
    override fun getString(key: String, def: String?): String? = prefs.getString(key, def)
    override fun getFloat(key: String, def: Float): Float = prefs.getFloat(key, def)
    override fun getInt(key: String, def: Int): Int = prefs.getInt(key, def)
    override fun getBoolean(key: String, def: Boolean): Boolean = prefs.getBoolean(key, def)
    override fun contains(key: String): Boolean = prefs.contains(key)
    override fun edit(block: KeyValueStore.Editor.() -> Unit) {
        val e = prefs.edit()
        object : KeyValueStore.Editor {
            override fun putString(key: String, v: String) { e.putString(key, v) }
            override fun putFloat(key: String, v: Float) { e.putFloat(key, v) }
            override fun putInt(key: String, v: Int) { e.putInt(key, v) }
            override fun putBoolean(key: String, v: Boolean) { e.putBoolean(key, v) }
            override fun remove(key: String) { e.remove(key) }
        }.block()
        e.apply()
    }

    companion object {
        fun config(c: Context) = SharedPrefsStore(c.getSharedPreferences(ConfigKeys.PREFS_FILE, Context.MODE_PRIVATE))
    }
}
