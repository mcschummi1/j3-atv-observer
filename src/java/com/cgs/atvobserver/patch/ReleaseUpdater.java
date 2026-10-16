package com.cgs.atvobserver.patch;

import java.io.IOException;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Android-free update logic (covered by tests/UpdaterTest.java; docs/IN_APP_UPDATER.md).
 *
 * <h3>Where the versionCode of a release comes from</h3>
 * The GitHub release API says nothing about the APK's versionCode and the tag is not reliable
 * (pinned release {@code v1.1.7} = code 17, older CI builds {@code ...-ci.<run>} = 100 + run).
 * Rule, in order, first match wins:
 * <ol>
 *   <li><b>Release body marker</b> {@code J3ATV-VersionCode: <n>} on a line of its own - written by
 *       the workflow for every release from this phase on (authoritative).</li>
 *   <li><b>Legacy body line</b> written by the previous workflow:
 *       {@code - versionName: `1.1.7`, versionCode: `17`}.</li>
 *   <li><b>Legacy tag</b> {@code ...-ci.<run>} = 100 + run (workflow formula of that time).</li>
 *   <li>Otherwise the release is <b>ignored</b>: a version is never guessed from semver/tag text,
 *       because offering a wrong "update" is worse than offering none.</li>
 * </ol>
 * The number is only a claim from the release page; the Android side re-checks it against the
 * downloaded file (package name, versionCode, signing certificate) before asking PackageInstaller.
 */
public final class ReleaseUpdater {
    public static final String REPO = "mcschummi1/j3-atv-observer";
    public static final String RELEASES_URL = "https://api.github.com/repos/" + REPO + "/releases?per_page=100";
    public static final String VERSION_MARKER = "J3ATV-VersionCode";
    public static final long AUTO_CHECK_INTERVAL_MS = 24L * 60 * 60 * 1000;
    /** Hard cap for the release list response and the .sha256 file (the APK has its own cap). */
    public static final int MAX_JSON_BYTES = 2 * 1024 * 1024;
    public static final long MAX_APK_BYTES = 300L * 1024 * 1024;
    static final int MAX_VERSION_CODE = 2_000_000_000; // PackageInfo.versionCode is a signed int

    private static final Pattern MARKER = Pattern.compile(
            "(?im)^[ \\t>*-]*`?" + VERSION_MARKER + "`?[ \\t]*[:=][ \\t]*`?([0-9]{1,10})`?[ \\t]*$");
    private static final Pattern LEGACY_BODY = Pattern.compile(
            "(?m)^- versionName: `[^`\\r\\n]*`, versionCode: `([0-9]{1,10})`\\s*$");
    private static final Pattern LEGACY_TAG = Pattern.compile("-ci\\.([0-9]{1,6})$");
    private static final Pattern SHA256_HEX = Pattern.compile("(?i)\\b([0-9a-f]{64})\\b");

    private ReleaseUpdater() { }

    /** One installable release. */
    public static final class Candidate {
        public final String tag, name, htmlUrl, notes, publishedAt, versionCodeSource;
        public final String apkName, apkUrl, shaUrl;
        /** {@code sha256:<hex>} reported by the API for the APK asset, or null (older releases). */
        public final String apiDigest;
        public final long apkSize;
        public final int versionCode;
        public final boolean prerelease;

        Candidate(String tag, String name, String htmlUrl, String notes, String publishedAt, String source,
                  String apkName, String apkUrl, String shaUrl, String apiDigest, long apkSize,
                  int versionCode, boolean prerelease) {
            this.tag = tag; this.name = name; this.htmlUrl = htmlUrl; this.notes = notes;
            this.publishedAt = publishedAt; this.versionCodeSource = source;
            this.apkName = apkName; this.apkUrl = apkUrl; this.shaUrl = shaUrl; this.apiDigest = apiDigest;
            this.apkSize = apkSize; this.versionCode = versionCode; this.prerelease = prerelease;
        }

        @Override public String toString() {
            return tag + " (versionCode " + versionCode + " from " + versionCodeSource
                    + (prerelease ? ", pre-release" : "") + ")";
        }
    }

    /** Result of parsing: usable candidates plus a human-readable reason for every skipped release. */
    public static final class Parsed {
        public final List<Candidate> candidates = new ArrayList<>();
        public final List<String> skipped = new ArrayList<>();
    }

    // ------------------------------------------------------------------ versionCode rule
    /** Returns {code, sourceId} or null when the release carries no usable versionCode. */
    public static Object[] versionCodeOf(String tag, String body) {
        Matcher m = MARKER.matcher(body == null ? "" : body);
        if (m.find()) return codeOrNull(m.group(1), "body marker");
        m = LEGACY_BODY.matcher(body == null ? "" : body);
        if (m.find()) return codeOrNull(m.group(1), "legacy body line");
        m = LEGACY_TAG.matcher(tag == null ? "" : tag);
        if (m.find()) {
            Object[] r = codeOrNull(m.group(1), "legacy -ci tag");
            return r == null ? null : new Object[]{(Integer) r[0] + 100, r[1]};
        }
        return null;
    }

    private static Object[] codeOrNull(String digits, String source) {
        try {
            long v = Long.parseLong(digits);
            if (v < 1 || v > MAX_VERSION_CODE) return null;
            return new Object[]{(int) v, source};
        } catch (NumberFormatException e) { return null; }
    }

    // ------------------------------------------------------------------ release list
    @SuppressWarnings("unchecked")
    public static Parsed parseReleases(String json) throws IOException {
        Object root = ReleaseJson.parse(json);
        if (!(root instanceof List)) {
            String why = root instanceof Map ? String.valueOf(((Map<String, Object>) root).get("message")) : "not a list";
            throw new IOException("Unexpected GitHub response: " + why);
        }
        Parsed out = new Parsed();
        for (Object o : (List<Object>) root) {
            if (!(o instanceof Map)) continue;
            Map<String, Object> r = (Map<String, Object>) o;
            String tag = str(r.get("tag_name"));
            if (Boolean.TRUE.equals(r.get("draft"))) { out.skipped.add(tag + ": draft"); continue; }
            Object[] vc = versionCodeOf(tag, str(r.get("body")));
            if (vc == null) { out.skipped.add(tag + ": no versionCode (no " + VERSION_MARKER + " marker)"); continue; }

            Map<String, Object> apk = null, sha = null;
            int apks = 0;
            Object assets = r.get("assets");
            if (assets instanceof List) {
                for (Object a : (List<Object>) assets) {
                    if (!(a instanceof Map) || !"uploaded".equals(((Map<String, Object>) a).get("state"))) continue;
                    String n = str(((Map<String, Object>) a).get("name")).toLowerCase(Locale.ROOT);
                    if (n.endsWith(".apk")) { apks++; apk = (Map<String, Object>) a; }
                }
                if (apk != null) {
                    String want = str(apk.get("name")) + ".sha256";
                    for (Object a : (List<Object>) assets) {
                        if (a instanceof Map && want.equals(str(((Map<String, Object>) a).get("name")))) sha = (Map<String, Object>) a;
                    }
                }
            }
            if (apks != 1) { out.skipped.add(tag + ": expected exactly one .apk asset, found " + apks); continue; }
            if (sha == null) { out.skipped.add(tag + ": no " + str(apk.get("name")) + ".sha256 asset"); continue; }
            String apkUrl = str(apk.get("browser_download_url")), shaUrl = str(sha.get("browser_download_url"));
            if (!isTrustedDownloadUrl(apkUrl) || !isTrustedDownloadUrl(shaUrl)) {
                out.skipped.add(tag + ": asset URL is not an https github.com URL"); continue;
            }
            Object size = apk.get("size");
            long apkSize = size instanceof Long ? (Long) size : -1;
            String digest = apk.get("digest") == null ? null : str(apk.get("digest")).toLowerCase(Locale.ROOT);
            if (digest != null && !digest.matches("sha256:[0-9a-f]{64}")) digest = null;
            out.candidates.add(new Candidate(tag, str(r.get("name")), str(r.get("html_url")), str(r.get("body")),
                    str(r.get("published_at")), (String) vc[1], str(apk.get("name")), apkUrl, shaUrl, digest,
                    apkSize, (Integer) vc[0], Boolean.TRUE.equals(r.get("prerelease"))));
        }
        return out;
    }

    private static String str(Object o) { return o == null ? "" : o.toString(); }

    /**
     * Highest versionCode strictly greater than {@code installed} (pre-releases included).
     * Equal codes: the later {@code published_at} wins. Returns null when up to date.
     */
    public static Candidate pickUpdate(List<Candidate> list, int installed) {
        Candidate best = null;
        for (Candidate c : list) {
            if (c.versionCode <= installed) continue;
            if (best == null || c.versionCode > best.versionCode
                    || (c.versionCode == best.versionCode && c.publishedAt.compareTo(best.publishedAt) > 0)) best = c;
        }
        return best;
    }

    // ------------------------------------------------------------------ URL policy
    /**
     * Only https URLs on GitHub's own hosts are followed (release assets redirect to
     * *.githubusercontent.com). No user info, no custom port, no http downgrade.
     */
    public static boolean isTrustedDownloadUrl(String url) {
        try {
            URI u = new URI(url);
            if (!"https".equals(u.getScheme()) || u.getUserInfo() != null || u.getPort() != -1 || u.getHost() == null) return false;
            String h = u.getHost().toLowerCase(Locale.ROOT);
            return h.equals("github.com") || h.equals("api.github.com") || h.endsWith(".githubusercontent.com");
        } catch (Exception e) { return false; }
    }

    // ------------------------------------------------------------------ SHA-256
    /**
     * Reads the hex digest from a {@code .sha256} asset ({@code sha256sum} output
     * {@code <hex>  <name>} or a bare hex string). When a file name is present it must be {@code apkName}.
     * Returns lower-case hex or null when the file is malformed or names another file.
     */
    public static String parseSha256File(String content, String apkName) {
        if (content == null) return null;
        String found = null;
        for (String line : content.split("\\r?\\n")) {
            String t = line.trim();
            if (t.isEmpty()) continue;
            Matcher m = SHA256_HEX.matcher(t);
            if (!m.find() || m.start() != 0) return null;
            String rest = t.substring(m.end()).trim();
            if (rest.startsWith("*")) rest = rest.substring(1);
            if (!rest.isEmpty()) {
                int slash = Math.max(rest.lastIndexOf('/'), rest.lastIndexOf('\\'));
                if (!rest.substring(slash + 1).equals(apkName)) return null;
            }
            if (found != null) return null; // two entries: ambiguous
            found = m.group(1).toLowerCase(Locale.ROOT);
        }
        return found;
    }

    /** Case-insensitive comparison of two 64-char hex digests. */
    public static boolean sameSha256(String a, String b) {
        return a != null && b != null && a.length() == 64 && a.equalsIgnoreCase(b);
    }

    /** Expected digest for {@code c}: the .sha256 asset, cross-checked against the API digest when present. */
    public static String expectedSha256(Candidate c, String shaFileContent) throws IOException {
        String fromFile = parseSha256File(shaFileContent, c.apkName);
        if (fromFile == null) throw new IOException("The " + c.apkName + ".sha256 file is malformed or names a different file.");
        if (c.apiDigest != null && !sameSha256(fromFile, c.apiDigest.substring(7)))
            throw new IOException("The .sha256 file disagrees with the digest GitHub reports for the APK; refusing to install.");
        return fromFile;
    }

    public static String hex(byte[] bytes) {
        char[] d = "0123456789abcdef".toCharArray();
        char[] out = new char[bytes.length * 2];
        for (int i = 0; i < bytes.length; i++) { out[2 * i] = d[(bytes[i] >> 4) & 15]; out[2 * i + 1] = d[bytes[i] & 15]; }
        return new String(out);
    }

    // ------------------------------------------------------------------ scheduling
    /** At most one automatic check per 24 h; a clock that went backwards counts as "due". */
    public static boolean autoCheckDue(long lastCheckMs, long nowMs) {
        return lastCheckMs <= 0 || nowMs < lastCheckMs || nowMs - lastCheckMs >= AUTO_CHECK_INTERVAL_MS;
    }

    /** The automatic prompt is shown once per offered versionCode; the manual entry always shows it. */
    public static boolean shouldPrompt(Candidate c, int dismissedVersionCode) {
        return c != null && c.versionCode != dismissedVersionCode;
    }

    // ------------------------------------------------------------------ user-facing text
    public static String describeHttpError(int code, String rateLimitRemaining) {
        if ((code == 403 || code == 429) && "0".equals(rateLimitRemaining))
            return "GitHub's anonymous rate limit (60 requests/hour) is used up. Try again in about an hour.";
        if (code == 404) return "The release list was not found (repository renamed or private?).";
        if (code >= 500) return "GitHub is having problems (HTTP " + code + "). Try again later.";
        return "GitHub answered HTTP " + code + ".";
    }

    // PackageInstaller.STATUS_* values (literal so this class stays Android-free; asserted in UpdaterTest)
    public static final int ST_PENDING_USER_ACTION = -1, ST_SUCCESS = 0, ST_FAILURE = 1, ST_FAILURE_BLOCKED = 2,
            ST_FAILURE_ABORTED = 3, ST_FAILURE_INVALID = 4, ST_FAILURE_CONFLICT = 5, ST_FAILURE_STORAGE = 6,
            ST_FAILURE_INCOMPATIBLE = 7, ST_FAILURE_TIMEOUT = 8;

    /** True for outcomes that mean "the installed copy has a different signature / is a different install". */
    public static boolean isSignatureConflict(int status, String platformMessage) {
        String m = platformMessage == null ? "" : platformMessage.toUpperCase(Locale.ROOT);
        return status == ST_FAILURE_CONFLICT
                || m.contains("INSTALL_FAILED_UPDATE_INCOMPATIBLE") || m.contains("SIGNATURES DO NOT MATCH")
                || m.contains("INCONSISTENT CERTIFICATES") || m.contains("INSTALL_FAILED_DUPLICATE_PACKAGE")
                || m.contains("INSTALL_FAILED_SHARED_USER_INCOMPATIBLE");
    }

    /** Text for the result dialog; {@code releaseUrl} is where to download again after uninstalling. */
    public static String describeInstallStatus(int status, String platformMessage, String releaseUrl) {
        String detail = platformMessage == null || platformMessage.isEmpty() ? "" : "\n\nAndroid says: " + platformMessage;
        if (isSignatureConflict(status, platformMessage)) {
            return "Android refused the update because it conflicts with the installed copy: that copy is signed "
                    + "with a different key (for example the original debug-signed build) or another copy of the app "
                    + "exists in a different profile/user.\n\n"
                    + "Fix: uninstall the old J3 ATV Observer in EVERY profile and user (Settings > Apps > J3 ATV "
                    + "Observer > Uninstall / Uninstall for all users; also check work profile, Private Space, "
                    + "second user / Family Space and dual-app clones), then install the new APK again from\n"
                    + releaseUrl + "\n\nUninstalling deletes the ride database - export rides to CSV first if you need them." + detail;
        }
        switch (status) {
            case ST_SUCCESS: return "Update installed.";
            case ST_FAILURE_ABORTED: return "Installation was cancelled. You can start it again from the update screen.";
            case ST_FAILURE_BLOCKED: return "Android or a device policy blocked the installation (parental controls, Play Protect or "
                    + "'install unknown apps' restrictions)." + detail;
            case ST_FAILURE_INVALID: return "Android considers the downloaded APK invalid or not installable on this device." + detail;
            case ST_FAILURE_STORAGE: return "Not enough free storage to install the update." + detail;
            case ST_FAILURE_INCOMPATIBLE: return "The update is not compatible with this device (SDK level, ABI or features)." + detail;
            case ST_FAILURE_TIMEOUT: return "The installation timed out. Try again." + detail;
            default: return "Installation failed (status " + status + ")." + detail;
        }
    }
}
