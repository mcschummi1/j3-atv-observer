package com.cgs.atvobserver.patch;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/** User-initiated, foreground-only updater UI. No service, FileProvider, storage permission, or silent install. */
public final class UpdateActivity extends Activity {
    private static WeakReference<UpdateActivity> visible = new WeakReference<>(null);
    private enum Step { IDLE, CHECKING, OFFER, DOWNLOADING, READY, STAGING, INSTALLER, RESULT }
    private Step step = Step.IDLE;
    private TextView description, progressText;
    private ProgressBar progress;
    private Button primary, secondary;
    private volatile boolean destroyed;
    private boolean resumed;
    private Thread worker;
    private File apk;
    private ReleaseUpdater.Candidate candidate;
    private String expectedSha;
    private String resultText;
    private long lastProgress;
    private boolean waitingForSettings;
    private int launchedSession = -1;

    @Override public void onCreate(Bundle state) {
        super.onCreate(state);
        setTitle("J3 ATV Observer - Updates");
        LinearLayout content = new LinearLayout(this);
        content.setOrientation(LinearLayout.VERTICAL);
        int pad = (int) (20 * getResources().getDisplayMetrics().density);
        content.setPadding(pad, pad, pad, pad);
        TextView title = new TextView(this);
        title.setText("J3 ATV Observer updates"); title.setTextSize(22); content.addView(title);
        description = new TextView(this); description.setTextSize(16); description.setTextIsSelectable(true);
        content.addView(description);
        progress = new ProgressBar(this, null, android.R.attr.progressBarStyleHorizontal);
        progress.setMax(100); content.addView(progress);
        progressText = new TextView(this); content.addView(progressText);
        primary = new Button(this); content.addView(primary);
        secondary = new Button(this); content.addView(secondary);
        Button releases = new Button(this); releases.setText("Open GitHub releases"); content.addView(releases);
        releases.setOnClickListener(v -> {
            try { startActivity(new Intent(Intent.ACTION_VIEW, Uri.parse(InstallResult.RELEASES))); }
            catch (Exception e) { error("No browser available.\n" + InstallResult.RELEASES); }
        });
        Button back = new Button(this); back.setText("Back to app"); content.addView(back);
        back.setOnClickListener(v -> finish());
        ScrollView scroll = new ScrollView(this); scroll.addView(content); setContentView(scroll);
        primary.setOnClickListener(v -> action());
        secondary.setOnClickListener(v -> cancel());
        // A process restart safely discards any old uncommitted download; it never resumes an install from disk.
        File dir = new File(getCacheDir(), "updater");
        if (dir.isDirectory()) {
            File[] old = dir.listFiles();
            if (old != null) for (File f : old) if (f.getName().startsWith("download-") && f.getName().endsWith(".apk")) f.delete();
        }
        if (InstallResult.prefs(this).contains("session")) { step = Step.INSTALLER; renderInstaller(); }
        else check(); // User deliberately tapped the visible main-menu update entry.
    }

    @Override public void onResume() {
        super.onResume(); resumed = true; visible = new WeakReference<>(this);
        if (step == Step.INSTALLER) renderInstaller();
        else if (waitingForSettings) {
            waitingForSettings = false;
            progressText.setText(getPackageManager().canRequestPackageInstalls()
                    ? "Install permission granted. Tap the button to continue."
                    : "Install permission was not granted. Nothing was downloaded or installed.");
        }
    }
    @Override public void onPause() { resumed = false; super.onPause(); }
    @Override public void onDestroy() {
        destroyed = true;
        if (worker != null) worker.interrupt();
        discardDownload();
        if (visible.get() == this) visible.clear();
        super.onDestroy();
    }
    static boolean refreshIfVisible() {
        UpdateActivity a = visible.get();
        if (a == null || !a.resumed || a.destroyed) return false;
        a.runOnUiThread(() -> { if (!a.destroyed) a.renderInstaller(); });
        return true;
    }
    private void discardDownload() { if (apk != null) { apk.delete(); apk = null; } }
    private long installedCode() throws PackageManager.NameNotFoundException {
        return getPackageManager().getPackageInfo(getPackageName(), 0).getLongVersionCode();
    }
    private String installedLabel() {
        try {
            PackageInfo p = getPackageManager().getPackageInfo(getPackageName(), 0);
            return "Installed: " + p.versionName + " (versionCode " + p.getLongVersionCode() + ")";
        } catch (Exception e) { return "Installed: unknown"; }
    }
    private boolean busy() { return step == Step.CHECKING || step == Step.DOWNLOADING || step == Step.STAGING; }
    private void controls(String action, boolean enabled, String other) {
        primary.setText(action); primary.setEnabled(enabled);
        secondary.setText(other); secondary.setEnabled(true);
        progress.setIndeterminate(busy() && step == Step.CHECKING);
        if (!busy()) progress.setProgress(step == Step.READY ? 100 : 0);
    }
    /** Asked before the download so that an app restart caused by the settings change loses nothing. */
    private void ensureInstallPermission(Runnable next) {
        if (getPackageManager().canRequestPackageInstalls()) { next.run(); return; }
        new AlertDialog.Builder(this).setTitle("Allow installation from this source")
                .setMessage("Android requires your permission before J3 ATV Observer may hand an APK to the system installer. "
                        + "Enable 'Allow from this source' on the next screen, then come back and tap the button again. "
                        + "You can switch the permission off again afterwards; every installation is still confirmed by Android.")
                .setPositiveButton("Open settings", (d, which) -> {
                    try {
                        waitingForSettings = true;
                        startActivity(new Intent(Settings.ACTION_MANAGE_UNKNOWN_APP_SOURCES, Uri.parse("package:" + getPackageName())));
                    } catch (Exception e) {
                        waitingForSettings = false;
                        error("Cannot open install-source settings. Use Settings > Apps > Special access > Install unknown apps.");
                    }
                }).setNegativeButton("Not now", null).show();
    }
    private void action() {
        switch (step) {
            case OFFER: ensureInstallPermission(this::download); break;
            case READY:
                ensureInstallPermission(() -> new AlertDialog.Builder(this).setTitle("Install verified update?")
                        .setMessage(candidate.tag + " (versionCode " + candidate.versionCode + ")\n\nSHA-256 verified. "
                                + "Android will ask you to confirm the installation; a same-signature update keeps your rides.")
                        .setPositiveButton("Continue", (d, w) -> stage()).setNegativeButton("Not now", null).show());
                break;
            case INSTALLER: continueInstaller(); break;
            case IDLE: case RESULT: check(); break;
            default: break;
        }
    }
    private void cancel() {
        if (busy()) {
            if (worker != null) worker.interrupt();
            finish(); // worker finally deletes the partial APK / abandons an uncommitted session
        } else if (step == Step.INSTALLER) {
            new AlertDialog.Builder(this).setTitle("Cancel this installation?")
                    .setMessage("Cancel the pending session and check again? No automatic install will be attempted.")
                    .setPositiveButton("Cancel session", (d, w) -> { abandonPending(); check(); })
                    .setNegativeButton("Keep waiting", null).show();
        } else { discardDownload(); candidate = null; expectedSha = null; step = Step.IDLE; check(); }
    }
    private void abandonPending() {
        SharedPreferences sp = InstallResult.prefs(this);
        try { getPackageManager().getPackageInstaller().abandonSession(sp.getInt("session", -1)); }
        catch (Exception ignored) { }
        sp.edit().clear().apply();
    }
    private void check() {
        if (busy()) return;
        discardDownload(); candidate = null; expectedSha = null;
        InstallResult.prefs(this).edit().clear().apply();
        step = Step.CHECKING;
        description.setText(installedLabel() + "\n\nChecking public GitHub releases, including pre-releases. No account or token is used.");
        progressText.setText("Checking..."); controls("Checking...", false, "Cancel check");
        startWorker(() -> {
            long installed = installedCode();
            if (installed > Integer.MAX_VALUE) throw new IOException("Installed versionCode is outside the updater's supported range.");
            UpdateClient.Check result = new UpdateClient().check((int) installed, this::reportProgress);
            ui(() -> {
                candidate = result.update;
                if (candidate == null) {
                    step = Step.IDLE;
                    description.setText(installedLabel() + "\n\nNo eligible APK with a higher versionCode was found."
                            + (result.skipped > 0 ? "\n" + result.skipped + " release(s) skipped: missing/ambiguous versionCode or APK/checksum assets. You can check the releases page below." : ""));
                    progressText.setText("Nothing downloaded or installed."); controls("Check again", true, "Check again");
                } else {
                    step = Step.OFFER;
                    description.setText(installedLabel() + "\n\nAvailable: " + candidate.tag + "\nversionCode " + candidate.versionCode
                            + (candidate.prerelease ? " (PRE-RELEASE: may contain bugs)" : "")
                            + "\nDownload: " + String.format(java.util.Locale.US, "%.1f MB", candidate.apkSize / 1048576.0)
                            + "\n\nDownload only starts when you tap Download. SHA-256, package, versionCode and signing certificate are checked before installation."
                            + "\n\n" + candidate.htmlUrl);
                    progressText.setText("User confirmation is required; never a silent install.");
                    controls("Download update", true, "Check again");
                }
            });
        });
    }
    private void download() {
        step = Step.DOWNLOADING; lastProgress = 0;
        controls("Downloading...", false, "Cancel download");
        progressText.setText("Downloading checksum, then APK over HTTPS...");
        startWorker(() -> {
            File dir = new File(getCacheDir(), "updater");
            if (!dir.isDirectory() && !dir.mkdirs()) throw new IOException("Cannot create private update cache.");
            File target = File.createTempFile("download-", ".apk", dir);
            apk = target;
            String hash = new UpdateClient().download(candidate, target, this::reportProgress);
            validateApk(target, candidate.versionCode);
            ui(() -> {
                expectedSha = hash; step = Step.READY;
                description.setText("Verified " + candidate.tag + " (versionCode " + candidate.versionCode + ")"
                        + "\n\nSHA-256:\n" + hash + "\n\nAPK package, versionCode and signing certificate match."
                        + "\n\nTap Install verified APK when ready. Android's own installer will ask for confirmation.");
                progressText.setText("Download verified. Nothing has been installed.");
                controls("Install verified APK", true, "Discard / check again");
            });
        });
    }
    /** No metadata-only install: inspect the downloaded APK and re-check the installed version/signature. */
    private void validateApk(File file, int versionCode) throws Exception {
        PackageManager pm = getPackageManager();
        PackageInfo archive = pm.getPackageArchiveInfo(file.getAbsolutePath(), PackageManager.GET_SIGNING_CERTIFICATES);
        PackageInfo installed = pm.getPackageInfo(getPackageName(), PackageManager.GET_SIGNING_CERTIFICATES);
        if (archive == null || !getPackageName().equals(archive.packageName)) throw new IOException("Downloaded APK is not J3 ATV Observer.");
        if (archive.getLongVersionCode() != versionCode) throw new IOException("APK versionCode differs from the release metadata; refusing it.");
        if (archive.getLongVersionCode() <= installed.getLongVersionCode()) throw new IOException("This APK is not newer than the installed app. Check again.");
        if (archive.signingInfo == null || installed.signingInfo == null
                || !signers(archive).equals(signers(installed)))
            throw new IOException(ReleaseUpdater.describeInstallStatus(ReleaseUpdater.ST_FAILURE_CONFLICT, "APK signing certificate does not match the installed app.", InstallResult.RELEASES));
    }
    private static List<String> signers(PackageInfo info) {
        List<String> result = new ArrayList<>();
        for (Signature signature : info.signingInfo.getApkContentsSigners())
            result.add(ReleaseUpdater.hex(UpdateClient.sha256().digest(signature.toByteArray())));
        Collections.sort(result); return result;
    }
    private void stage() {
        step = Step.STAGING; lastProgress = 0;
        controls("Preparing installer...", false, "Cancel preparation");
        progressText.setText("Verifying and writing private PackageInstaller session...");
        startWorker(() -> {
            PackageInstaller installer = getPackageManager().getPackageInstaller();
            int id = -1; boolean committed = false;
            try {
                validateApk(apk, candidate.versionCode);
                PackageInstaller.SessionParams params = new PackageInstaller.SessionParams(PackageInstaller.SessionParams.MODE_FULL_INSTALL);
                params.setAppPackageName(getPackageName()); params.setSize(apk.length());
                if (Build.VERSION.SDK_INT >= 31) params.setRequireUserAction(PackageInstaller.SessionParams.USER_ACTION_REQUIRED);
                id = installer.createSession(params);
                try (PackageInstaller.Session session = installer.openSession(id)) {
                    MessageDigest digest = UpdateClient.sha256();
                    try (FileInputStream in = new FileInputStream(apk);
                         OutputStream out = session.openWrite("base.apk", 0, apk.length())) {
                        long copied = UpdateClient.copy(in, out, digest, candidate.apkSize, this::reportProgress);
                        if (copied != candidate.apkSize || !ReleaseUpdater.sameSha256(ReleaseUpdater.hex(digest.digest()), expectedSha))
                            throw new IOException("The APK changed after download. Nothing has been committed to the installer.");
                        session.fsync(out);
                    }
                    reportProgress(candidate.apkSize, candidate.apkSize); // final cancellation check before commit
                    Intent callback = new Intent(this, InstallResult.class).setAction(InstallResult.ACTION)
                            .setData(Uri.parse("atv-update://install/" + id));
                    int flags = PendingIntent.FLAG_UPDATE_CURRENT;
                    if (Build.VERSION.SDK_INT >= 31) flags |= PendingIntent.FLAG_MUTABLE;
                    PendingIntent result = PendingIntent.getBroadcast(this, id, callback, flags);
                    if (!InstallResult.prefs(this).edit().putInt("session", id).putInt("status", InstallResult.WAITING)
                            .putString("release", candidate.htmlUrl).putString("confirmation", "").putString("detail", "").commit())
                        throw new IOException("Cannot save installer session state.");
                    session.commit(result.getIntentSender());
                    committed = true;
                }
                ui(() -> { discardDownload(); step = Step.INSTALLER; renderInstaller(); });
            } finally {
                if (!committed && id >= 0) {
                    try { installer.abandonSession(id); } catch (Exception ignored) { }
                    InstallResult.prefs(this).edit().clear().commit();
                }
            }
        });
    }
    private void renderInstaller() {
        SharedPreferences sp = InstallResult.prefs(this);
        int status = sp.getInt("status", InstallResult.WAITING);
        step = Step.INSTALLER;
        if (status == PackageInstaller.STATUS_PENDING_USER_ACTION) {
            description.setText("Android needs your confirmation. Tap Continue system installer to review and approve or cancel the installation."
                    + "\n\nIf Android reports a signature/package conflict: export rides first, uninstall the old differently-signed copy in EVERY profile/user, then reinstall from " + InstallResult.RELEASES);
            progressText.setText("Waiting for your confirmation."); controls("Continue system installer", true, "Cancel session / check again");
            int session = sp.getInt("session", -1);
            if (resumed && launchedSession != session) { launchedSession = session; continueInstaller(); } // user is in the app and tapped Install
        } else if (status == InstallResult.WAITING) {
            description.setText("APK sent to PackageInstaller. Waiting for its status callback. No silent install is requested.");
            progressText.setText("If this session was interrupted, cancel it and check again."); controls("Waiting for Android...", false, "Cancel session / check again");
        } else {
            step = Step.RESULT;
            resultText = ReleaseUpdater.describeInstallStatus(status, sp.getString("detail", ""), sp.getString("release", InstallResult.RELEASES));
            description.setText(resultText); progressText.setText("Installer result: " + status);
            InstallResult.pendingConfirmation = null;
            sp.edit().clear().commit(); // shown once; "Check again" starts clean
            controls("Check again", true, "Check again");
        }
    }
    private void continueInstaller() {
        String encoded = InstallResult.prefs(this).getString("confirmation", "");
        try {
            Intent intent = InstallResult.pendingConfirmation;
            if (intent == null) {
                if (encoded.isEmpty()) throw new IOException("Missing confirmation intent.");
                intent = Intent.parseUri(encoded, Intent.URI_INTENT_SCHEME);
            }
            startActivity(intent);
        } catch (Exception e) {
            description.setText("Could not resume Android's installer. Cancel this session, then check/download again. Nothing will install without your confirmation.");
        }
    }
    private void startWorker(Work work) {
        worker = new Thread(() -> {
            try { work.run(); }
            catch (Exception e) { ui(() -> error(e.getMessage() == null ? "Update failed. Please try again." : e.getMessage())); }
        }, "ATV-updater");
        worker.start();
    }
    private interface Work { void run() throws Exception; }
    private void ui(Runnable runnable) { runOnUiThread(() -> { if (!destroyed) runnable.run(); }); }
    private void error(String text) {
        discardDownload(); step = Step.IDLE;
        description.setText(text); progressText.setText("No update installed by this operation."); controls("Try check again", true, "Check again");
    }
    private void reportProgress(long received, long total) throws IOException {
        if (destroyed || Thread.currentThread().isInterrupted()) throw new IOException("Update cancelled.");
        long now = android.os.SystemClock.elapsedRealtime();
        if (now - lastProgress < 200 && received != total) return;
        lastProgress = now;
        ui(() -> {
            if (total > 0) {
                progress.setIndeterminate(false); progress.setProgress((int) (100 * received / total));
                progressText.setText((step == Step.STAGING ? "Preparing installer: " : "Downloading: ")
                        + String.format(java.util.Locale.US, "%.1f / %.1f MB (%d%%)", received / 1048576.0, total / 1048576.0, 100 * received / total));
            }
        });
    }
}
