package com.cgs.atvobserver.patch;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import javax.net.ssl.HttpsURLConnection;

/** Android-free network/download orchestration; Source is injectable for offline host tests. */
public final class UpdateClient {
    public interface Progress {
        /** Also called before connecting; throwing IOException cancels the operation. */
        void update(long received, long total) throws IOException;
    }
    public interface Source { Reply open(String url) throws IOException; }
    public static final class Reply implements Closeable {
        public final InputStream body;
        public final long length;
        public Reply(InputStream body, long length) { this.body = body; this.length = length; }
        @Override public void close() throws IOException { body.close(); }
    }
    public static final class Check {
        public final ReleaseUpdater.Candidate update;
        public final int skipped;
        Check(ReleaseUpdater.Candidate update, int skipped) { this.update = update; this.skipped = skipped; }
    }
    private final Source source;
    public UpdateClient(Source source) { this.source = source; }
    public UpdateClient() { this(new HttpsSource()); }

    /** Fetch every page, not /latest (which excludes pre-releases). Fail rather than return a partial result. */
    public Check check(int installed, Progress progress) throws IOException {
        List<ReleaseUpdater.Candidate> candidates = new ArrayList<>();
        int skipped = 0;
        for (int page = 1; page <= 10; page++) {
            progress.update(0, -1);
            String json = text(ReleaseUpdater.RELEASES_URL + "&page=" + page, ReleaseUpdater.MAX_JSON_BYTES, progress);
            ReleaseUpdater.Parsed parsed = ReleaseUpdater.parseReleases(json);
            candidates.addAll(parsed.candidates);
            skipped += parsed.skipped.size();
            if (parsed.releaseCount < 100) return new Check(ReleaseUpdater.pickUpdate(candidates, installed), skipped);
        }
        throw new IOException("More than 1,000 releases: cannot check the complete list safely. Please use the GitHub releases page.");
    }

    /** Private, fixed destination chosen by Android, never a path from the network. Deletes partial/mismatching data. */
    public String download(ReleaseUpdater.Candidate candidate, File destination, Progress progress) throws IOException {
        boolean ok = false;
        try {
            String expected = ReleaseUpdater.expectedSha256(candidate, text(candidate.shaUrl, 4096, progress));
            MessageDigest digest = sha256();
            progress.update(0, candidate.apkSize);
            try (Reply reply = source.open(candidate.apkUrl);
                 FileOutputStream out = new FileOutputStream(destination)) {
                if (reply.length > 0 && reply.length != candidate.apkSize) throw new IOException("APK length differs from the release asset.");
                long count = copy(reply.body, out, digest, candidate.apkSize, progress);
                if (count != candidate.apkSize) throw new IOException("APK download was truncated. Please try again.");
                out.getFD().sync();
            }
            if (!ReleaseUpdater.sameSha256(ReleaseUpdater.hex(digest.digest()), expected))
                throw new IOException("SHA-256 mismatch. The downloaded APK has been deleted; nothing was sent to the installer.");
            ok = true;
            return expected;
        } finally {
            if (!ok && destination.exists()) destination.delete();
        }
    }

    /** Shared bounded stream copy; also hashes the exact bytes sent to PackageInstaller before commit. */
    public static long copy(InputStream in, java.io.OutputStream out, MessageDigest digest, long limit,
                            Progress progress) throws IOException {
        long count = 0, deadline = System.nanoTime() + 10L * 60 * 1_000_000_000;
        byte[] buf = new byte[64 * 1024];
        int n;
        while ((n = in.read(buf)) != -1) {
            if (Thread.currentThread().isInterrupted()) throw new IOException("Update cancelled.");
            if (System.nanoTime() > deadline) throw new IOException("Download timed out. Please try again.");
            count += n;
            if (count > limit) throw new IOException("Download exceeds its expected size; refusing it.");
            progress.update(count, limit);
            out.write(buf, 0, n);
            if (digest != null) digest.update(buf, 0, n);
        }
        progress.update(count, limit);
        return count;
    }
    private String text(String url, int limit, Progress progress) throws IOException {
        progress.update(0, -1);
        try (Reply reply = source.open(url)) {
            if (reply.length > limit) throw new IOException("GitHub response is too large.");
            ByteArrayOutputStream out = new ByteArrayOutputStream();
            copy(reply.body, out, null, limit, (done, total) -> progress.update(0, -1));
            return new String(out.toByteArray(), StandardCharsets.UTF_8);
        }
    }
    public static MessageDigest sha256() {
        try { return MessageDigest.getInstance("SHA-256"); }
        catch (NoSuchAlgorithmException e) { throw new AssertionError(e); }
    }

    /** No credentials, cleartext, default redirect handling, or TLS overrides. Every hop is checked. */
    public static final class HttpsSource implements Source {
        @Override public Reply open(String address) throws IOException {
            URL url = new URL(address);
            for (int hops = 0; hops <= 5; hops++) {
                if (!ReleaseUpdater.isTrustedDownloadUrl(url.toString())) throw new IOException("Unsafe download URL or redirect rejected.");
                HttpsURLConnection conn = (HttpsURLConnection) url.openConnection();
                conn.setConnectTimeout(15_000);
                conn.setReadTimeout(30_000);
                conn.setInstanceFollowRedirects(false);
                conn.setRequestProperty("User-Agent", "J3-ATV-Observer-Updater");
                conn.setRequestProperty("Accept", url.getHost().equals("api.github.com") ? "application/vnd.github+json" : "application/octet-stream");
                if (url.getHost().equals("api.github.com")) conn.setRequestProperty("X-GitHub-Api-Version", "2022-11-28");
                conn.setRequestProperty("Accept-Encoding", "identity");
                boolean handedOff = false;
                try {
                    int status = conn.getResponseCode();
                    if (status == 301 || status == 302 || status == 303 || status == 307 || status == 308) {
                        String location = conn.getHeaderField("Location");
                        if (location == null) throw new IOException("GitHub sent a redirect with no destination.");
                        url = new URL(url, location);
                        continue;
                    }
                    if (status != 200) throw new IOException(ReleaseUpdater.describeHttpError(status, conn.getHeaderField("X-RateLimit-Remaining")));
                    Reply reply = new Reply(new FilterInputStream(conn.getInputStream()) {
                        @Override public void close() throws IOException {
                            try { super.close(); } finally { conn.disconnect(); }
                        }
                    }, conn.getContentLengthLong());
                    handedOff = true;
                    return reply;
                } finally { if (!handedOff) conn.disconnect(); }
            }
            throw new IOException("Too many HTTPS redirects.");
        }
    }
}
