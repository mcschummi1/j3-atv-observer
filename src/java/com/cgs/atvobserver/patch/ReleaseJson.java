package com.cgs.atvobserver.patch;

import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/** Small strict JSON reader, shared by Android and host tests (no org.json/Android dependency). */
final class ReleaseJson {
    private final String text;
    private int pos;
    private ReleaseJson(String text) { this.text = text; }

    static Object parse(String text) throws IOException {
        ReleaseJson p = new ReleaseJson(text);
        Object value = p.value(0);
        p.space();
        if (p.pos != text.length()) throw p.bad();
        return value;
    }

    private IOException bad() { return new IOException("Invalid release JSON at character " + pos); }
    private void space() {
        while (pos < text.length() && " \n\r\t".indexOf(text.charAt(pos)) >= 0) pos++;
    }
    private boolean take(char c) {
        space();
        if (pos < text.length() && text.charAt(pos) == c) { pos++; return true; }
        return false;
    }
    private Object value(int depth) throws IOException {
        space();
        if (depth > 32 || pos == text.length()) throw bad();
        char c = text.charAt(pos);
        if (c == '"') return string();
        if (take('{')) {
            Map<String, Object> map = new LinkedHashMap<>();
            if (take('}')) return map;
            do {
                space();
                if (pos == text.length() || text.charAt(pos) != '"') throw bad();
                String key = string();
                if (map.containsKey(key) || !take(':')) throw bad();
                map.put(key, value(depth + 1));
                if (take('}')) return map;
            } while (take(','));
            throw bad();
        }
        if (take('[')) {
            List<Object> list = new ArrayList<>();
            if (take(']')) return list;
            do {
                list.add(value(depth + 1));
                if (take(']')) return list;
            } while (take(','));
            throw bad();
        }
        for (String word : new String[]{"true", "false", "null"}) {
            if (text.startsWith(word, pos)) {
                pos += word.length();
                return word.equals("null") ? null : Boolean.valueOf(word);
            }
        }
        int start = pos;
        if (pos < text.length() && text.charAt(pos) == '-') pos++;
        if (pos == text.length() || !digit(text.charAt(pos))) throw bad();
        if (text.charAt(pos) == '0') pos++;
        else while (pos < text.length() && digit(text.charAt(pos))) pos++;
        boolean integer = true;
        if (pos < text.length() && text.charAt(pos) == '.') {
            integer = false; pos++;
            int fraction = pos;
            while (pos < text.length() && digit(text.charAt(pos))) pos++;
            if (fraction == pos) throw bad();
        }
        if (pos < text.length() && "eE".indexOf(text.charAt(pos)) >= 0) {
            integer = false; pos++;
            if (pos < text.length() && "+-".indexOf(text.charAt(pos)) >= 0) pos++;
            int exponent = pos;
            while (pos < text.length() && digit(text.charAt(pos))) pos++;
            if (exponent == pos) throw bad();
        }
        try {
            // Explicit branches avoid Java's numeric conditional promotion (Long -> Double).
            if (integer) return Long.valueOf(text.substring(start, pos));
            return new java.math.BigDecimal(text.substring(start, pos));
        } catch (NumberFormatException e) { throw bad(); }
    }
    private static boolean digit(char c) { return c >= '0' && c <= '9'; }
    private String string() throws IOException {
        pos++; // opening quote
        StringBuilder out = new StringBuilder();
        while (pos < text.length()) {
            char c = text.charAt(pos++);
            if (c == '"') return out.toString();
            if (c < 32) throw bad();
            if (c == '\\') {
                if (pos == text.length()) throw bad();
                c = text.charAt(pos++);
                switch (c) {
                    case '"': case '\\': case '/': out.append(c); break;
                    case 'b': out.append('\b'); break;
                    case 'f': out.append('\f'); break;
                    case 'n': out.append('\n'); break;
                    case 'r': out.append('\r'); break;
                    case 't': out.append('\t'); break;
                    case 'u':
                        if (pos + 4 > text.length()) throw bad();
                        try { out.append((char) Integer.parseInt(text.substring(pos, pos + 4), 16)); }
                        catch (NumberFormatException e) { throw bad(); }
                        pos += 4; break;
                    default: throw bad();
                }
            } else out.append(c);
        }
        throw bad();
    }
}
