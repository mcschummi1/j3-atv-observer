# Install troubleshooting: "App not installed – conflicts with an existing package"

Package: `com.cgs.atvobserver` (note the final **r**). Release APK sha256 (v1.1.7):
`4ff2606c1eaa26684247f4c73647b920e32ccf36feec1af62ca3cac646d95680`

Static check of the released APK: package `com.cgs.atvobserver`, versionCode 17, minSdk 28,
signed v1+v2+v3 with the "J3 ATV Observer Universal Release" certificate, one declared
permission and one provider, both namespaced to the package. Nothing in the APK itself can
conflict with a different app, so this message means a copy of the app (with another
certificate, e.g. the original debug-signed one) is still registered on the phone.

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
