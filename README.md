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
