import com.cgs.atvobserver.patch.ReleaseUpdater;
import com.cgs.atvobserver.patch.ReleaseUpdater.Candidate;
import com.cgs.atvobserver.patch.UpdateClient;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Map;

/** Offline host test of the download/verify pipeline with an injected fake HTTP source. */
public class UpdateClientTest {
    static int fails = 0;
    static void check(String what, boolean ok) { System.out.println((ok ? "PASS " : "FAIL ") + what); if (!ok) fails++; }
    static final String DL = "https://github.com/mcschummi1/j3-atv-observer/releases/download/v/";

    static String sha(byte[] b) throws Exception { return ReleaseUpdater.hex(MessageDigest.getInstance("SHA-256").digest(b)); }
    static String rel(int code, int size, String digest) {
        return "{\"tag_name\":\"t" + code + "\",\"prerelease\":true,\"draft\":false,\"published_at\":\"2026-01-01T00:00:00Z\",\"body\":\"J3ATV-VersionCode: " + code + "\","
                + "\"assets\":[{\"name\":\"a" + code + ".apk\",\"state\":\"uploaded\",\"size\":" + size + ",\"digest\":" + (digest == null ? "null" : "\"sha256:" + digest + "\"")
                + ",\"browser_download_url\":\"" + DL + "a" + code + ".apk\"},{\"name\":\"a" + code + ".apk.sha256\",\"state\":\"uploaded\",\"size\":90,\"browser_download_url\":\"" + DL + "a" + code + ".apk.sha256\"}]}";
    }
    static UpdateClient fake(Map<String, byte[]> files, int[] opened) {
        return new UpdateClient(url -> {
            opened[0]++;
            byte[] b = files.get(url);
            if (b == null) throw new IOException("HTTP 404 " + url);
            return new UpdateClient.Reply(new ByteArrayInputStream(b), b.length);
        });
    }
    static final UpdateClient.Progress NOP = (a, b) -> { };

    public static void main(String[] args) throws Exception {
        byte[] apk = new byte[300_000];
        for (int i = 0; i < apk.length; i++) apk[i] = (byte) (i * 31);
        String h = sha(apk);
        Map<String, byte[]> files = new HashMap<>();
        int[] opened = {0};

        // pagination: page 1 has 100 releases (all older), page 2 holds the newer one
        StringBuilder p1 = new StringBuilder("[");
        for (int i = 1; i <= 100; i++) p1.append(i > 1 ? "," : "").append(rel(i, apk.length, null));
        files.put(ReleaseUpdater.RELEASES_URL + "&page=1", (p1 + "]").getBytes(StandardCharsets.UTF_8));
        files.put(ReleaseUpdater.RELEASES_URL + "&page=2", ("[" + rel(500, apk.length, h) + "]").getBytes(StandardCharsets.UTF_8));
        UpdateClient.Check chk = fake(files, opened).check(17, NOP);
        check("second page is read when the first one is full; newest code wins", chk.update != null && chk.update.versionCode == 500 && opened[0] == 2);
        check("up to date when installed is already 500", fake(files, opened).check(500, NOP).update == null);
        files.put(ReleaseUpdater.RELEASES_URL + "&page=2", "{\"message\":\"API rate limit exceeded\"}".getBytes(StandardCharsets.UTF_8));
        try { fake(files, opened).check(17, NOP); check("API error on page 2 is not treated as 'up to date'", false); }
        catch (IOException e) { check("API error on page 2 is not treated as 'up to date'", true); }

        Candidate c = ReleaseUpdater.parseReleases("[" + rel(500, apk.length, h) + "]").candidates.get(0);
        File dest = File.createTempFile("upd", ".apk");
        Map<String, byte[]> dl = new HashMap<>();
        dl.put(c.apkUrl, apk);
        dl.put(c.shaUrl, (h + "  " + c.apkName + "\n").getBytes(StandardCharsets.UTF_8));
        String got = fake(dl, opened).download(c, dest, NOP);
        check("good download verifies and keeps the file", got.equals(h) && dest.length() == apk.length);

        // digest mismatch
        byte[] tampered = apk.clone(); tampered[1000] ^= 1;
        dl.put(c.apkUrl, tampered);
        try { fake(dl, opened).download(c, dest, NOP); check("tampered APK refused", false); }
        catch (IOException e) { check("tampered APK refused", e.getMessage().contains("SHA-256 mismatch")); }
        check("tampered APK file deleted", !dest.exists());

        // truncated
        dl.put(c.apkUrl, java.util.Arrays.copyOf(apk, apk.length - 10));
        try { fake(dl, opened).download(c, dest, NOP); check("truncated APK refused", false); }
        catch (IOException e) { check("truncated APK refused", true); }
        check("truncated APK file deleted", !dest.exists());

        // oversize body (server sends more than the asset says)
        UpdateClient over = new UpdateClient(url -> new UpdateClient.Reply(
                new ByteArrayInputStream(url.endsWith(".sha256") ? (h + " " + c.apkName).getBytes(StandardCharsets.UTF_8) : new byte[apk.length + 5000]), -1));
        try { over.download(c, dest, NOP); check("oversize body refused", false); }
        catch (IOException e) { check("oversize body refused", e.getMessage().contains("exceeds")); }
        check("oversize file deleted", !dest.exists());

        // wrong sha file
        dl.put(c.apkUrl, apk);
        dl.put(c.shaUrl, "not a hash".getBytes(StandardCharsets.UTF_8));
        try { fake(dl, opened).download(c, dest, NOP); check("malformed .sha256 refused", false); }
        catch (IOException e) { check("malformed .sha256 refused", true); }
        check("APK not even downloaded when .sha256 is bad", !dest.exists());

        // the .sha256 asset says something different than GitHub's digest
        dl.put(c.shaUrl, (sha(tampered) + "  " + c.apkName).getBytes(StandardCharsets.UTF_8));
        try { fake(dl, opened).download(c, dest, NOP); check("API digest vs .sha256 disagreement refused", false); }
        catch (IOException e) { check("API digest vs .sha256 disagreement refused", true); }

        // cancellation through the progress callback
        dl.put(c.shaUrl, (h + "  " + c.apkName).getBytes(StandardCharsets.UTF_8));
        try { fake(dl, opened).download(c, dest, (r, t) -> { if (r > 100_000) throw new IOException("Update cancelled."); }); check("cancel stops the copy", false); }
        catch (IOException e) { check("cancel stops the copy", e.getMessage().contains("cancelled")); }
        check("cancelled partial file deleted", !dest.exists());

        // size-less releases are not installable
        check("release with APK size 0 is skipped", ReleaseUpdater.parseReleases("[" + rel(9, 0, null) + "]").candidates.isEmpty());
        check("release above the size cap is skipped", ReleaseUpdater.parseReleases("[" + rel(9, 400_000_000, null) + "]").candidates.isEmpty());

        // HttpsSource redirect policy is plain URL validation
        check("redirect to non-GitHub host would be refused", !ReleaseUpdater.isTrustedDownloadUrl("https://example.com/a.apk"));

        System.out.println(fails == 0 ? "UpdateClientTest: ALL PASSED" : "UpdateClientTest: " + fails + " FAILED");
        System.exit(fails == 0 ? 0 : 1);
    }
}
