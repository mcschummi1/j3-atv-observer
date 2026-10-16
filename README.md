# J3 ATV Observer (com.cgs.atvobserver) – binary patch project

This repository contains the original compiled APK of **J3 ATV Observer v1.1.6-Mk1**
(package `com.cgs.atvobserver`, minSdk 28, targetSdk 36) and a reproducible
apktool/smali patch pipeline that fixes and upgrades it. No original Kotlin
source is available; all changes are made at the smali/manifest level.

| Path | Content |
|---|---|
| `original/base.apk` | Unmodified input APK (sha256 `c35d7f8374bb1b210939edd2e3a195947bbd6808164f67e316931a1def769625`) |
| `reference/jadx/` | jadx 1.x decompilation of the app's own package (read-only reference) |
| `reference/smali/` | apktool 2.12.0 baksmali of the app's own package, untouched |
| `reference/AndroidManifest.decoded.xml` | Decoded original manifest |
| `docs/ANALYSIS.md` | Code map of the recording pipeline |

More sections (root cause, build, CI, signing) are added in later commits.

## Pocket-mode fix (v1.1.7)
Root cause analysis with quoted code: [`docs/ROOT_CAUSE.md`](docs/ROOT_CAUSE.md).
In short: the foreground service was declared `foregroundServiceType="location"` only, so on
Android 11+ the microphone is silenced as soon as the screen turns off; the 65 dB engine gate then
turns silence into "engine off / RPM 0", and the ride itself was only written to the database when
"End Ride" was tapped in a still-alive Activity.

## Building
```bash
./scripts/build.sh                      # throw-away key, output in ./out
KEYSTORE_FILE=... KEYSTORE_PASSWORD=... KEY_ALIAS=... KEY_PASSWORD=... ./scripts/build.sh
```
Pipeline: `apktool d` → `patch -p1 < patches/*.patch` → compile `src/java` (against
`src/stubs` + android.jar) with javac/d8 → baksmali into `smali_classes17` → `apktool b` →
`zipalign -p 4` → `apksigner` (v2+v3) → `tools/verify_refs.py` static link check.
Tools (apktool 2.12.0, build-tools 34, android-34 android.jar, baksmali 3.0.3) are downloaded to
`.tools/` on first run.

Ride journals are written to `Android/data/com.cgs.atvobserver/files/ride_journal/*.csv`
(readable over USB / `adb pull`).

## Device compatibility (step 3)
Runtime capability detection for Galaxy J3 (Android 9) / A71 (rooted) / S22 / Razr 40 (Android 16),
OEM battery-manager steps and the `capabilities.json` report: [`docs/DEVICES.md`](docs/DEVICES.md).

## Sensors + filtering (step 4)
All available motion/environment sensors (incl. proximity) feed the service journal; an adaptive
DSP engine gate and a hand-weighted (not trained) event classifier reject transient noise.
Details, test output and what a real TFLite implementation would need: [`docs/AI_FILTERING.md`](docs/AI_FILTERING.md).

## CI: manual pre-release workflow
[`.github/workflows/prerelease.yml`](.github/workflows/prerelease.yml) – trigger only via
**Actions → "Pre-release APK (manual)" → Run workflow** (`workflow_dispatch`). It checks out the
repo, runs `scripts/build.sh` (tests → decode → patch → helpers → build → zipalign → sign), signs
with the universal key from secrets, and publishes a GitHub **pre-release** `v1.1.7-Mk1-pocketfix-ci.<run>`
with the APK and its SHA-256. `versionCode = 100 + run number`, so every workflow build is newer
than the previous one.

## Universal signing key
* Keystore: PKCS12, RSA 4096, SHA384withRSA, validity 10000 days (until 2054-03-03),
  alias `atv-observer-universal`, certificate SHA-256
  `14:69:38:1E:81:B7:4E:F2:21:07:9D:04:F3:F6:3D:9F:A3:64:86:47:22:DA:93:B9:54:EB:93:14:0C:58:34:F4`.
* Stored **only** as GitHub Actions repository secrets (never in git):
  `SIGNING_KEYSTORE_BASE64`, `SIGNING_KEYSTORE_PASSWORD`, `SIGNING_KEY_ALIAS`, `SIGNING_KEY_PASSWORD`.
  `.gitignore` blocks `*.jks`, `*.keystore`, `*.p12`, `keystore.b64`, `signing.env`.
* GitHub secrets cannot be read back. Keep an offline backup of the keystore + passwords; if the
  key is lost, future builds can no longer update installed copies.

### Installing (important)
The original APK is signed with an Android **debug** certificate
(`CN=Android Debug`, SHA-256 `f182cb4a…b749f`) whose private key is not available. Android refuses
to update an app with a different signing certificate, so:

1. **First universal-key build: uninstall the old J3 ATV Observer first** (this deletes its local
   ride database – export rides via the app's CSV export before uninstalling if you need them).
2. Install the pre-release APK.
3. All later builds from the workflow are signed with the same universal key and **update in place**
   (data kept), because the certificate matches and `versionCode` increases.

## Verification status
Static checks only: the APK rebuilds, zipaligns, `apksigner verify` passes (v2+v3), `aapt2 dump
badging` parses it, `tools/verify_refs.py` resolves every cross-boundary smali reference, and the
filter's host unit tests pass. **It has not been installed or run on any physical device**
(Galaxy J3 / A71 / S22 / Razr 40) or emulator.
