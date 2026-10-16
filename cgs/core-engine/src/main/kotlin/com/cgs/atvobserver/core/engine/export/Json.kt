package com.cgs.atvobserver.core.engine.export

/**
 * Tiny dependency-free JSON writer/parser (objects, arrays, strings, numbers, booleans, null).
 * Numbers parse to Long when integral without exponent/fraction, else Double.
 */
object Json {
    fun write(v: Any?): String = StringBuilder().also { write(it, v, 0) }.toString()

    private fun write(sb: StringBuilder, v: Any?, indent: Int) {
        when (v) {
            null -> sb.append("null")
            is String -> quote(sb, v)
            is Boolean -> sb.append(v)
            is Double -> { require(!v.isNaN() && !v.isInfinite()) { "non-finite number" }; sb.append(v.toString()) }
            is Float -> write(sb, v.toDouble(), indent)
            is Number -> sb.append(v.toLong())
            is Map<*, *> -> {
                sb.append('{')
                var first = true
                for ((k, value) in v) {
                    if (!first) sb.append(','); first = false
                    sb.append('\n'); repeat(indent + 1) { sb.append("  ") }
                    quote(sb, k.toString()); sb.append(": "); write(sb, value, indent + 1)
                }
                if (v.isNotEmpty()) { sb.append('\n'); repeat(indent) { sb.append("  ") } }
                sb.append('}')
            }
            is Iterable<*> -> {
                sb.append('[')
                var first = true
                for (e in v) {
                    if (!first) sb.append(','); first = false
                    sb.append('\n'); repeat(indent + 1) { sb.append("  ") }
                    write(sb, e, indent + 1)
                }
                if (v.any()) { sb.append('\n'); repeat(indent) { sb.append("  ") } }
                sb.append(']')
            }
            else -> quote(sb, v.toString())
        }
    }

    private fun quote(sb: StringBuilder, s: String) {
        sb.append('"')
        for (c in s) when (c) {
            '"' -> sb.append("\\\""); '\\' -> sb.append("\\\\")
            '\n' -> sb.append("\\n"); '\r' -> sb.append("\\r"); '\t' -> sb.append("\\t")
            else -> if (c < ' ') sb.append("\\u%04x".format(c.code)) else sb.append(c)
        }
        sb.append('"')
    }

    class ParseException(msg: String) : Exception(msg)

    fun parse(text: String): Any? {
        val p = Parser(text)
        val v = p.value()
        p.ws()
        if (p.i != text.length) throw ParseException("trailing data at ${p.i}")
        return v
    }

    private class Parser(val s: String) {
        var i = 0
        fun ws() { while (i < s.length && s[i].isWhitespace()) i++ }
        fun value(): Any? {
            ws()
            if (i >= s.length) throw ParseException("unexpected end")
            return when (s[i]) {
                '{' -> obj(); '[' -> arr(); '"' -> str()
                't' -> lit("true", true); 'f' -> lit("false", false); 'n' -> lit("null", null)
                else -> num()
            }
        }
        fun lit(w: String, v: Any?): Any? {
            if (!s.startsWith(w, i)) throw ParseException("bad literal at $i"); i += w.length; return v
        }
        fun obj(): Map<String, Any?> {
            val m = LinkedHashMap<String, Any?>(); i++; ws()
            if (s.getOrNull(i) == '}') { i++; return m }
            while (true) {
                ws(); if (s.getOrNull(i) != '"') throw ParseException("expected key at $i")
                val k = str(); ws()
                if (s.getOrNull(i) != ':') throw ParseException("expected ':' at $i"); i++
                m[k] = value(); ws()
                when (s.getOrNull(i)) { ',' -> i++; '}' -> { i++; return m }; else -> throw ParseException("expected ',' or '}' at $i") }
            }
        }
        fun arr(): List<Any?> {
            val l = ArrayList<Any?>(); i++; ws()
            if (s.getOrNull(i) == ']') { i++; return l }
            while (true) {
                l += value(); ws()
                when (s.getOrNull(i)) { ',' -> i++; ']' -> { i++; return l }; else -> throw ParseException("expected ',' or ']' at $i") }
            }
        }
        fun str(): String {
            val sb = StringBuilder(); i++
            while (true) {
                if (i >= s.length) throw ParseException("unterminated string")
                val c = s[i++]
                when (c) {
                    '"' -> return sb.toString()
                    '\\' -> {
                        val e = s.getOrNull(i++) ?: throw ParseException("bad escape")
                        when (e) {
                            'n' -> sb.append('\n'); 'r' -> sb.append('\r'); 't' -> sb.append('\t')
                            'b' -> sb.append('\b'); 'f' -> sb.append('\u000c')
                            'u' -> { sb.append(s.substring(i, i + 4).toInt(16).toChar()); i += 4 }
                            else -> sb.append(e)
                        }
                    }
                    else -> sb.append(c)
                }
            }
        }
        fun num(): Number {
            val st = i
            while (i < s.length && (s[i].isDigit() || s[i] in "+-.eE")) i++
            val t = s.substring(st, i)
            if (t.isEmpty()) throw ParseException("unexpected '${s[st]}' at $st")
            return if (t.any { it in ".eE" }) t.toDouble() else t.toLongOrNull() ?: t.toDouble()
        }
    }
}
