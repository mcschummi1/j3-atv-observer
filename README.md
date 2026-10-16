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
