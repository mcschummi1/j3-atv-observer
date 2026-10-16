import com.cgs.atvobserver.patch.ReleaseUpdater;
import com.cgs.atvobserver.patch.ReleaseUpdater.Candidate;
import com.cgs.atvobserver.patch.ReleaseUpdater.Parsed;

import java.io.IOException;
import java.util.List;

/**
 * Host-JVM test of the Android-free updater logic: release-list parsing, versionCode rule,
 * pre-release handling, SHA-256 file handling, URL policy and user-facing messages.
 * Fixtures mirror the real GitHub API shape (the v1.1.7 fixture is a trimmed copy of the live response).
 */
public class UpdaterTest {
    static int fails = 0;
    static void check(String what, boolean ok) { System.out.println((ok ? "PASS " : "FAIL ") + what); if (!ok) fails++; }

    static final String H1 = "4ff2606c1eaa26684247f4c73647b920e32ccf36feec1af62ca3cac646d95680";
    static final String H2 = "00112233445566778899aabbccddeeff00112233445566778899aabbccddeeff";
    static final String DL = "https://github.com/mcschummi1/j3-atv-observer/releases/download/";

    static String asset(String name, long size, String digest, String state) {
        return "{\"name\":\"" + name + "\",\"state\":\"" + state + "\",\"size\":" + size
                + (digest == null ? ",\"digest\":null" : ",\"digest\":\"sha256:" + digest + "\"")
                + ",\"browser_download_url\":\"" + DL + "T/" + name + "\"}";
    }
    static String release(String tag, boolean pre, boolean draft, String body, String published, String... assets) {
        return "{\"tag_name\":\"" + tag + "\",\"name\":\"R " + tag + "\",\"prerelease\":" + pre + ",\"draft\":" + draft
                + ",\"published_at\":\"" + published + "\",\"html_url\":\"https://github.com/mcschummi1/j3-atv-observer/releases/tag/" + tag
                + "\",\"body\":\"" + body + "\",\"assets\":[" + String.join(",", assets) + "]}";
    }
    static String list(String... releases) { return "[" + String.join(",", releases) + "]"; }
    static String apk(String v) { return asset("j3-" + v + ".apk", 5_000_000, H1, "uploaded"); }
    static String sha(String v) { return asset("j3-" + v + ".apk.sha256", 100, null, "uploaded"); }

    static final String LEGACY_BODY = "Automated pre-release build of J3 ATV Observer (patched from v1.1.6-Mk1).\\n\\n"
            + "- versionName: `1.1.7`, versionCode: `17`\\n- commit: `e945a86`\\n";

    public static void main(String[] args) throws Exception {
        // ---- versionCode rule
        Object[] r;
        r = ReleaseUpdater.versionCodeOf("v1.1.8", "x\nJ3ATV-VersionCode: 123\ny");
        check("marker line -> 123", r != null && (Integer) r[0] == 123 && r[1].equals("body marker"));
        r = ReleaseUpdater.versionCodeOf("v1", "- `j3atv-versioncode` = `45`");
        check("marker is case-insensitive, backticks/bullet tolerated", r != null && (Integer) r[0] == 45);
        r = ReleaseUpdater.versionCodeOf("v1.1.7", "- versionName: `1.1.7`, versionCode: `17`\n- commit: abc");
        check("legacy body line (pinned release) -> 17", r != null && (Integer) r[0] == 17 && r[1].equals("legacy body line"));
        r = ReleaseUpdater.versionCodeOf("v1.1.7-Mk1-pocketfix-ci.12", "no code here");
        check("legacy -ci.<run> tag -> 100+run = 112", r != null && (Integer) r[0] == 112);
        check("plain semver tag without marker -> unknown (never guessed)", ReleaseUpdater.versionCodeOf("v1.1.9", "notes") == null);
        check("marker wins over legacy tag", (Integer) ReleaseUpdater.versionCodeOf("v-ci.5", "J3ATV-VersionCode: 300")[0] == 300);
        // DIAG pre-release (workflow package_suffix): neither marker, legacy body line nor legacy tag -> never offered to the normal app
        check("DIAG release (tag ...-ci.7-diag, no marker) is ignored by the normal updater",
                ReleaseUpdater.versionCodeOf("v1.1.7-Mk1-pocketfix-ci.7-diag",
                        "DIAG build, package com.cgs.atvobserver.diag\n- versionName `1.1.7-Mk1-pocketfix-ci.7-diag`, versionCode `107`\n") == null);
        check("marker must be on its own line (quoted prose ignored)",
                ReleaseUpdater.versionCodeOf("v1", "see J3ATV-VersionCode: 999 in docs") == null);
        check("zero rejected", ReleaseUpdater.versionCodeOf("v1", "J3ATV-VersionCode: 0") == null);
        check("overflow rejected", ReleaseUpdater.versionCodeOf("v1", "J3ATV-VersionCode: 4000000000") == null);
        check("non-numeric rejected", ReleaseUpdater.versionCodeOf("v1", "J3ATV-VersionCode: 1x") == null);
        check("null body/tag safe", ReleaseUpdater.versionCodeOf(null, null) == null);

        // ---- parsing the live-shaped pinned release
        Parsed p = ReleaseUpdater.parseReleases(list(release("v1.1.7", true, false, LEGACY_BODY, "2026-10-16T09:38:43Z", apk("1.1.7"), sha("1.1.7"))));
        check("pinned v1.1.7 parsed as pre-release candidate", p.candidates.size() == 1 && p.candidates.get(0).prerelease
                && p.candidates.get(0).versionCode == 17 && p.candidates.get(0).apkName.equals("j3-1.1.7.apk"));
        check("api digest kept", p.candidates.get(0).apiDigest.equals("sha256:" + H1));
        check("no update when installed == 17", ReleaseUpdater.pickUpdate(p.candidates, 17) == null);
        check("update offered from installed 16", ReleaseUpdater.pickUpdate(p.candidates, 16) != null);

        // ---- picking among many (API order is newest-created first, not highest code)
        String body = "J3ATV-VersionCode: ";
        Parsed many = ReleaseUpdater.parseReleases(list(
                release("v1.1.8-a", true, false, body + "120", "2026-10-17T10:00:00Z", apk("a"), sha("a")),
                release("v1.1.8-b", true, false, body + "130", "2026-10-16T10:00:00Z", apk("b"), sha("b")),     // older upload, higher code
                release("v1.1.7", false, false, LEGACY_BODY, "2026-10-15T10:00:00Z", apk("c"), sha("c")),
                release("v-draft", true, true, body + "999", "2026-10-18T10:00:00Z", apk("d"), sha("d")),
                release("v-nosha", true, false, body + "500", "2026-10-18T10:00:00Z", apk("e")),
                release("v-nocode", true, false, "just text", "2026-10-18T10:00:00Z", apk("f"), sha("f")),
                release("v-twoapk", true, false, body + "600", "2026-10-18T10:00:00Z", apk("g"), asset("other.apk", 1, H1, "uploaded"), sha("g")),
                release("v-pending", true, false, body + "700", "2026-10-18T10:00:00Z", asset("j3-h.apk", 1, H1, "starter"), sha("h"))));
        check("only the 3 valid releases become candidates", many.candidates.size() == 3);
        check("every skipped release has a reason", many.skipped.size() == 5);
        Candidate best = ReleaseUpdater.pickUpdate(many.candidates, 17);
        check("highest versionCode wins (130), pre-releases included", best != null && best.versionCode == 130 && best.prerelease);
        check("nothing newer than 130", ReleaseUpdater.pickUpdate(many.candidates, 130) == null);
        check("downgrade never offered", ReleaseUpdater.pickUpdate(many.candidates, 500) == null);
        Parsed dup = ReleaseUpdater.parseReleases(list(
                release("a", true, false, body + "50", "2026-10-01T00:00:00Z", apk("a"), sha("a")),
                release("b", false, false, body + "50", "2026-10-02T00:00:00Z", apk("b"), sha("b"))));
        check("equal codes: later publish date wins", ReleaseUpdater.pickUpdate(dup.candidates, 10).tag.equals("b"));
        check("empty list -> no update", ReleaseUpdater.pickUpdate(ReleaseUpdater.parseReleases("[]").candidates, 1) == null);

        // ---- hostile / broken API responses
        try { ReleaseUpdater.parseReleases("{\"message\":\"API rate limit exceeded\"}"); check("error object throws", false); }
        catch (IOException e) { check("error object -> IOException with GitHub message", e.getMessage().contains("rate limit")); }
        for (String bad : new String[]{"", "[", "[{]", "[1,]", "{\"a\":1}x", "[\"\\u12\"]", "[01]", "[1.]", "[tru]"}) {
            try { ReleaseUpdater.parseReleases(bad); check("malformed JSON rejected: " + bad, false); }
            catch (IOException e) { check("malformed JSON rejected: " + bad, true); }
        }
        Parsed esc = ReleaseUpdater.parseReleases("[{\"tag_name\":\"v\\u0031\",\"body\":\"J3ATV-VersionCode: 7\\r\\nx\",\"assets\":["
                + asset("a.apk", 1, null, "uploaded") + "," + asset("a.apk.sha256", 1, null, "uploaded") + "],\"prerelease\":false,\"draft\":false}]");
        check("unicode escape + CRLF body parse", esc.candidates.size() == 1 && esc.candidates.get(0).tag.equals("v1") && esc.candidates.get(0).versionCode == 7);
        Parsed evil = ReleaseUpdater.parseReleases("[{\"tag_name\":\"x\",\"body\":\"J3ATV-VersionCode: 9\",\"assets\":["
                + "{\"name\":\"a.apk\",\"state\":\"uploaded\",\"browser_download_url\":\"http://evil.example/a.apk\"},"
                + "{\"name\":\"a.apk.sha256\",\"state\":\"uploaded\",\"browser_download_url\":\"https://evil.example/a.apk.sha256\"}]}]");
        check("non-GitHub asset URLs rejected", evil.candidates.isEmpty());

        // ---- URL policy
        check("github.com ok", ReleaseUpdater.isTrustedDownloadUrl(DL + "v1/a.apk"));
        check("objects.githubusercontent.com ok", ReleaseUpdater.isTrustedDownloadUrl("https://objects.githubusercontent.com/x?y=1"));
        check("release-assets.githubusercontent.com ok", ReleaseUpdater.isTrustedDownloadUrl("https://release-assets.githubusercontent.com/x"));
        check("http rejected", !ReleaseUpdater.isTrustedDownloadUrl("http://github.com/a"));
        check("lookalike host rejected", !ReleaseUpdater.isTrustedDownloadUrl("https://github.com.evil.example/a"));
        check("suffix trick rejected", !ReleaseUpdater.isTrustedDownloadUrl("https://evilgithubusercontent.com/a"));
        check("user-info trick rejected", !ReleaseUpdater.isTrustedDownloadUrl("https://github.com@evil.example/a"));
        check("custom port rejected", !ReleaseUpdater.isTrustedDownloadUrl("https://github.com:8443/a"));
        check("garbage rejected", !ReleaseUpdater.isTrustedDownloadUrl("not a url") && !ReleaseUpdater.isTrustedDownloadUrl(""));

        // ---- sha256 file handling
        check("sha256sum output with CI path (the real v1.1.7 file)",
                H1.equals(ReleaseUpdater.parseSha256File(H1 + "  /home/runner/work/j3-atv-observer/j3-atv-observer/out/j3-atv-observer-1.1.7.apk\n", "j3-atv-observer-1.1.7.apk")));
        check("binary-mode marker and upper case", H1.equals(ReleaseUpdater.parseSha256File(H1.toUpperCase() + " *a.apk", "a.apk")));
        check("bare hash accepted", H1.equals(ReleaseUpdater.parseSha256File(H1 + "\n", "a.apk")));
        check("hash for another file rejected", ReleaseUpdater.parseSha256File(H1 + "  other.apk", "a.apk") == null);
        check("short/garbage rejected", ReleaseUpdater.parseSha256File("abc123", "a.apk") == null && ReleaseUpdater.parseSha256File("", "a.apk") == null
                && ReleaseUpdater.parseSha256File(null, "a.apk") == null);
        check("hash not at line start rejected", ReleaseUpdater.parseSha256File("x " + H1, "a.apk") == null);
        check("two entries are ambiguous", ReleaseUpdater.parseSha256File(H1 + "  a.apk\n" + H2 + "  a.apk\n", "a.apk") == null);
        check("65 hex chars rejected", ReleaseUpdater.parseSha256File(H1 + "0  a.apk", "a.apk") == null);
        check("sameSha256 case-insensitive", ReleaseUpdater.sameSha256(H1, H1.toUpperCase()) && !ReleaseUpdater.sameSha256(H1, H2) && !ReleaseUpdater.sameSha256(null, H1));
        check("hex()", ReleaseUpdater.hex(new byte[]{0, 15, (byte) 0xab, (byte) 0xff}).equals("000fabff"));
        Candidate c = p.candidates.get(0);
        check("expected digest = .sha256 content when it agrees with API digest", ReleaseUpdater.expectedSha256(c, H1 + "  j3-1.1.7.apk").equals(H1));
        try { ReleaseUpdater.expectedSha256(c, H2 + "  j3-1.1.7.apk"); check("API/file digest disagreement refused", false); }
        catch (IOException e) { check("API/file digest disagreement refused", true); }
        try { ReleaseUpdater.expectedSha256(c, "garbage"); check("malformed .sha256 refused", false); }
        catch (IOException e) { check("malformed .sha256 refused", true); }
        Candidate nodigest = ReleaseUpdater.parseReleases(list(release("n", true, false, body + "5", "2026-01-01T00:00:00Z",
                asset("n.apk", 1, null, "uploaded"), asset("n.apk.sha256", 1, null, "uploaded")))).candidates.get(0);
        check("old release without API digest still verifiable via .sha256", ReleaseUpdater.expectedSha256(nodigest, H2 + " n.apk").equals(H2));

        // ---- messages
        String url = "https://github.com/mcschummi1/j3-atv-observer/releases/tag/v1";
        String conflict = ReleaseUpdater.describeInstallStatus(ReleaseUpdater.ST_FAILURE_CONFLICT, "INSTALL_FAILED_UPDATE_INCOMPATIBLE: signatures do not match", url);
        check("conflict text says uninstall in every profile/user and reinstall",
                conflict.contains("EVERY profile and user") && conflict.contains("Uninstall for all users") && conflict.contains("install the new APK again") && conflict.contains(url));
        check("conflict text warns about ride data", conflict.contains("ride database"));
        check("signature mismatch recognised from platform message even with generic status",
                ReleaseUpdater.describeInstallStatus(ReleaseUpdater.ST_FAILURE, "INSTALL_FAILED_UPDATE_INCOMPATIBLE: Existing package com.cgs.atvobserver signatures do not match", url).contains("EVERY profile and user"));
        check("status 5 alone is a conflict", ReleaseUpdater.isSignatureConflict(5, null));
        check("generic failure is not a signature conflict", !ReleaseUpdater.isSignatureConflict(ReleaseUpdater.ST_FAILURE, "something else"));
        check("storage text", ReleaseUpdater.describeInstallStatus(ReleaseUpdater.ST_FAILURE_STORAGE, null, url).contains("storage"));
        check("aborted text", ReleaseUpdater.describeInstallStatus(ReleaseUpdater.ST_FAILURE_ABORTED, null, url).contains("cancelled"));
        check("blocked text mentions policy", ReleaseUpdater.describeInstallStatus(ReleaseUpdater.ST_FAILURE_BLOCKED, null, url).contains("policy"));
        check("unknown status keeps the code", ReleaseUpdater.describeInstallStatus(42, "boom", url).contains("42") && ReleaseUpdater.describeInstallStatus(42, "boom", url).contains("boom"));
        check("rate-limit text", ReleaseUpdater.describeHttpError(403, "0").contains("rate limit"));
        check("403 without rate limit stays generic", ReleaseUpdater.describeHttpError(403, "12").contains("HTTP 403"));

        System.out.println(fails == 0 ? "UpdaterTest: ALL PASSED" : "UpdaterTest: " + fails + " FAILED");
        System.exit(fails == 0 ? 0 : 1);
    }
}
