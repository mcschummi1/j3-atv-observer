# Install troubleshooting: "App not installed – conflicts with an existing package"

Package: `com.cgs.atvobserver` (note the final **r**). Release APK sha256 (v1.1.7):
`4ff2606c1eaa26684247f4c73647b920e32ccf36feec1af62ca3cac646d95680`

Static check of the released APK: package `com.cgs.atvobserver`, versionCode 17, minSdk 28,
signed v1+v2+v3 with the "J3 ATV Observer Universal Release" certificate, one declared
permission and one provider, both namespaced to the package. Nothing in the APK itself can
conflict with a different app, so this message means a copy of the app (with another
certificate, e.g. the original debug-signed one) is still registered on the phone.

## 0. DIAG build: tell "ghost copy of the same package" apart from "something else"
Android's dialog answers *"App not installed as package conflicts with an existing package"* for several
different causes and hides the real error code. The optional **DIAG** build is the same app under a
different application id, so it cannot collide with any copy of `com.cgs.atvobserver`:

| | normal build | DIAG build |
|---|---|---|
| application id | `com.cgs.atvobserver` | `com.cgs.atvobserver.diag` |
| launcher label | J3 ATV Observer | **J3 ATV Observer DIAG** |
| custom permission / provider authority | `com.cgs.atvobserver.*` | `com.cgs.atvobserver.diag.*` |
| in-app updater | active | **disabled** (cannot cross-update, ignores normal releases) |
| signing key, minSdk, versionCode scheme | universal key, 28, `100 + run` | identical |
| release | `v1.1.7-Mk1-pocketfix-ci.<run>` | `v1.1.7-Mk1-pocketfix-ci.<run>-diag`, title starts with **DIAG** |

Classes are not renamed (they stay `com.cgs.atvobserver.*`); only identifiers derived from the package are.
Data, ride journals and settings of the DIAG build live in its own app directories
(`Android/data/com.cgs.atvobserver.diag/...`); it shares nothing with the normal app. Both can be installed together.

### How to read the result
1. Install the DIAG APK from the release whose title starts with **DIAG** (never install it "over" the normal app; it is a separate app).
2. Try the normal APK again, if needed.

| DIAG APK | normal APK | Meaning |
|---|---|---|
| installs | does **not** install | **Ghost copy of `com.cgs.atvobserver` is still registered on the device** (another user/profile, Private Space, dual-app clone, old debug-signed install kept as "uninstalled for user 0"). Remove it everywhere, see sections 1 and 2 (`pm list packages -u`, `pm uninstall --user N`). |
| installs | installs | Nothing wrong anymore (the old copy is gone). |
| **also fails** with the same message | fails | **Not a package-name conflict.** Device, installer or policy issue (installer app, Play Protect, work/Family policy, storage, an `INSTALL_FAILED_*` the dialog hides). Run `adb install` (section 2) and read the exact code, e.g. `adb install -r j3-atv-observer-<version>-diag.apk` and `adb logcat -d | grep -i -E "PackageManager|installd"`. |

The DIAG result says nothing about the normal app's *runtime* behaviour; it only separates the install-time causes.
After the test, uninstall the DIAG app (Settings > Apps > J3 ATV Observer DIAG, or `adb shell pm uninstall com.cgs.atvobserver.diag`).

### Producing the DIAG build
* GitHub: **Actions > "Pre-release APK (manual)" > Run workflow**, field `package_suffix` = `.diag`
  (empty = the normal build). The pre-release has no `J3ATV-VersionCode:` marker and a `-diag` tag, so the
  normal app's in-app updater never offers it.
* Locally: `PACKAGE_SUFFIX=.diag ./scripts/build.sh` (default label via `PACKAGE_LABEL`). The build fails if the
  APK's package or label is not the expected one, or if `tools/verify_variant.py` finds a package-derived
  identifier (permission, authority, intent action) that still carries the original id.
  Without `PACKAGE_SUFFIX` the output is the normal build (verified: manifest, resources and all dex files except the
  helper `classes17.dex` are byte-identical; `classes17.dex` only gains the tiny `Variant` class and the DIAG gate).

### Verification status (honest)
Everything above was verified **statically** (aapt2 / androguard / apksigner on the built APK, host unit tests,
`tools/verify_refs.py`, `tools/verify_variant.py`). **Nothing was installed or run on a physical device or an emulator**,
neither the DIAG nor the normal build. Whether the DIAG build installs on the Razr 40 is exactly what this test is for.

## 1. Where the old copy hides
* Other profiles: Moto Family Space / second user, work profile, Private Space (Android 15+).
  Settings > Apps > (filter: all apps) > J3 ATV Observer > Uninstall for all users.
* Clone / dual-app copies.
* Corrupt or old download: in Termux run `sha256sum ~/storage/downloads/j3-atv-observer-1.1.7.apk`
  and compare with the hash above.

## 2. Termux + on-device adb (no PC)
Termux alone cannot see or remove other apps. It can, however, talk to the phone's own
Wireless debugging service. Wi-Fi must be connected.
```bash
pkg update && pkg install android-tools
```
Settings > Developer options > Wireless debugging > ON > "Pair device with pairing code".
Use the numbers on that screen (not the placeholders from docs):
```bash
adb pair localhost:PAIRING_PORT      # enter the 6-digit code
```
Back on the main Wireless debugging screen, note the other "IP address & Port":
```bash
adb connect localhost:CONNECT_PORT
adb devices                          # must list one device
adb shell pm list users
adb shell pm list packages -u | grep cgs     # -u also shows uninstalled-but-kept data
adb shell pm uninstall com.cgs.atvobserver                # user 0
adb shell pm uninstall --user 10 com.cgs.atvobserver      # repeat for each user id from list users
adb install ~/storage/downloads/j3-atv-observer-1.1.7.apk # prints the exact failure reason if any
```
`adb install` reports the precise code (for example `INSTALL_FAILED_UPDATE_INCOMPATIBLE`,
`INSTALL_FAILED_DUPLICATE_PERMISSION`, `INSTALL_FAILED_USER_RESTRICTED`) which the system
dialog hides behind the generic message.
