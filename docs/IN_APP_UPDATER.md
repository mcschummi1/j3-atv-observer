# In-app updater

**Status: implemented and statically verified only. Nothing has been installed or run on any physical
device (Galaxy J3 / A71 / S22 / Razr 40) or emulator.** The updater's pure logic is covered by host unit
tests and the real HTTPS download/verify path was exercised once from a desktop JVM against GitHub; the
Android parts (UI, `PackageInstaller` session, permission flow, status callback) are compiled, patched into
the APK and statically linked (`tools/verify_refs.py`) but have never executed on Android.

## What the user sees
* **Entry point:** the small version line at the top of the main menu (formerly the hard-coded text
  `Catalin Garage Standard (CGS) v1.1.6-Mk.I (Build 16)`) now shows the *installed* version read from
  `PackageManager` plus "Tap here to check for updates". It is clickable (48 dp minimum height). Patch:
  `patches/04-in-app-updater.patch` (one `MainMenuScreenKt` hunk + a hook in the existing
  `MainActivity.onResume`).
* **Nothing happens automatically.** There is no check at start-up, no background job and no service. A
  network request is made only after the user opens the update screen (this is deliberate: an automatic
  once-per-24 h check was considered and left out to keep the patch small and avoid surprise traffic).
* **Update screen** (`UpdateActivity`, not exported): checks the public GitHub Releases API (no token,
  pre-releases included), shows the newest higher version and asks before downloading. Download shows a
  progress bar; after a verified download the user taps *Install verified APK*, confirms a second dialog and
  finally confirms in Android's own installer. It is never a silent install.

## Which release is "newer": the versionCode rule
GitHub does not expose an APK's `versionCode`, and tags are not reliable (the pinned manual release is
`v1.1.7` = versionCode **17**; workflow builds are `...-ci.<run>` with versionCode **100 + run**). Rule,
first match wins (`ReleaseUpdater.versionCodeOf`, unit-tested):
1. A line `J3ATV-VersionCode: <n>` in the **release body** (written by `prerelease.yml` for every build since this
   phase; authoritative).
2. The legacy body line of the previous workflow: ``- versionName: `1.1.7`, versionCode: `17` `` (this is how the
   existing v1.1.7 release is understood as 17).
3. The legacy tag form `...-ci.<run>` = 100 + run.
4. Otherwise the release is **ignored** - the version is never guessed from semver or tag text.

The updater picks the release with the **highest** versionCode strictly greater than the installed one
(not the newest upload; ties go to the later `published_at`). Drafts, releases without exactly one `.apk` and
the matching `<apk>.sha256` asset, assets above 300 MB, and non-`github.com`/`*.githubusercontent.com` HTTPS
URLs are skipped. The release list is read with `per_page=100` and further pages until a page is not full.
The versionCode from the release page is only a claim, so after the download it is compared with the APK
itself (see below).

## Verification before anything reaches PackageInstaller
1. `<apk>.sha256` is downloaded first; it must contain exactly one SHA-256 (`sha256sum` format or a bare hash;
   a file name, if present, must be the APK's - the path prefix written by the old CI run is tolerated).
   If GitHub also reports an asset `digest`, the two must agree.
2. The APK is streamed (HTTPS only, every redirect hop re-checked against the host allow-list, length must
   equal the asset size, 10 minute cap) into the app's **private cache** while hashing. Mismatch, truncation,
   oversize or cancel deletes the file.
3. `PackageManager.getPackageArchiveInfo` must report package `com.cgs.atvobserver`, the advertised
   versionCode, a versionCode higher than the installed one, and the **same signing certificate(s)** as the
   installed app.
4. The file is streamed into the `PackageInstaller` session and hashed *again* during that copy; the digest
   must still equal the expected one before `commit()`.

## Android mechanics
* `REQUEST_INSTALL_PACKAGES` is declared. The screen asks for "Allow from this source"
  (`ACTION_MANAGE_UNKNOWN_APP_SOURCES`) **before** the download, because Android may restart the app after
  that toggle. Returning without the permission leaves everything untouched.
* `PackageInstaller.SessionParams.MODE_FULL_INSTALL`, `setAppPackageName`, `setSize`, and on API 31+
  `USER_ACTION_REQUIRED`. No `FileProvider`, no storage permission, no `content://`/`file://` hand-off.
* The status callback is a **mutable explicit** `PendingIntent` broadcast to the non-exported
  `InstallResult` receiver (mutable is required: the platform adds the status extras; explicit is required
  for mutable on target 34+). It ignores any session id other than the one this app committed.
* `STATUS_PENDING_USER_ACTION`: the confirmation Intent is launched when the user is in the update screen,
  otherwise a notification (if POST_NOTIFICATIONS is granted) or the next visit to the screen continues it.
  The result survives process death in private preferences and is shown once.
* Result texts are `ReleaseUpdater.describeInstallStatus` (unit-tested).

## Signature mismatch / conflict (what the app tells the user)
`STATUS_FAILURE_CONFLICT`, or a platform message containing `INSTALL_FAILED_UPDATE_INCOMPATIBLE`,
"signatures do not match" and similar, produces a dialog explaining that the installed copy is signed with a
different key (e.g. the original debug-signed app) or that another copy exists in a different profile/user.
It tells the user to uninstall the old copy in **every profile and user** (work profile, Private Space,
second user / Family Space, dual-app clones; "Uninstall for all users"), warns that uninstalling deletes the
ride database (export CSV first), and to install the new APK again from the release page. The command-line
variant is in `docs/INSTALL_TROUBLESHOOTING.md`.

## CI
`prerelease.yml` now uses `versionCode = 100 + run number` and tag `v1.1.7-Mk1-pocketfix-ci.<run>` (the
owner-pinned `v1.1.7` / 17 release is untouched), writes the `J3ATV-VersionCode:` marker into the release
body, refuses to publish if the APK's `versionCode` differs from it, and `scripts/build.sh` writes the
`.sha256` with the bare file name. The universal signing key setup is unchanged (GitHub secrets only).

## DIAG variant
The optional side-by-side diagnostic build (`PACKAGE_SUFFIX=.diag`, application id `com.cgs.atvobserver.diag`)
has the updater disabled (`Variant.isDiag(getPackageName())`: no network, no download, no install). Its
pre-release carries no `J3ATV-VersionCode:` marker, no legacy `- versionName:` line and a `-diag` tag, so
`ReleaseUpdater` skips it for the normal app (`tests/UpdaterTest.java`). The updater's package and
signature checks use `getPackageName()` and need no patching.

## Limitations / not verified
* Never run on Android: layout of the 12 sp clickable menu line, the dialogs, the settings round-trip, the
  `PackageInstaller` callback on API 28-36, notification behaviour and the OEM install UIs (Samsung, Motorola)
  are untested. Compose click wiring is a hand-written smali call into `ClickableKt.clickable-XHw0xAI` (names
  checked against the decoded APK, not executed).
* Updating to a build signed by another key is impossible by design; the first install of the universal-key
  build over the old debug-signed app still needs the manual uninstall.
* The update check is anonymous (60 requests/hour per IP); the rate-limit case is reported to the user.
* No automatic/background check, no delta updates, no downgrade, no resume of a partial download.
* Trust is rooted in GitHub account/repo control and Android's signature check on update; the SHA-256 file
  lives next to the APK, so it detects corruption and mixed-up assets, not a compromised release.
* The footer previously showed the hard-coded `AppVersion` text; other screens (App diagnostics) still show
  `v1.1.6-Mk.I (Build 16)` from the original `AppVersion` class.
