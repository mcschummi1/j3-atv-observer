#!/usr/bin/env bash
# Reproducible patch build for J3 ATV Observer.
#
#   original/base.apk --apktool d--> build/decoded
#                     --patch -p1 < patches/*.patch
#                     --javac+d8+baksmali src/java --> build/decoded/smali_classes17
#                     --apktool b--> zipalign -p 4 --> apksigner sign --> out/
#
# Environment:
#   TOOLS_DIR        where apktool.jar / build-tools / android.jar live or get downloaded (default: ./.tools)
#   VERSION_CODE     versionCode to stamp (default 17)
#   VERSION_NAME     versionName to stamp (default 1.1.7-Mk1-pocketfix)
#   KEYSTORE_FILE, KEYSTORE_PASSWORD, KEY_ALIAS, KEY_PASSWORD
#                    signing key; if KEYSTORE_FILE is unset a throw-away debug key is generated
#   OUT_DIR          output directory (default ./out)
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"
TOOLS_DIR="${TOOLS_DIR:-$ROOT/.tools}"
OUT_DIR="${OUT_DIR:-$ROOT/out}"
BUILD="$ROOT/build"
VERSION_CODE="${VERSION_CODE:-17}"
VERSION_NAME="${VERSION_NAME:-1.1.7-Mk1-pocketfix}"

APKTOOL_VER=2.12.0
BT_VER=34.0.0
mkdir -p "$TOOLS_DIR" "$OUT_DIR"

# ------------------------------------------------------------------ tools
fetch() { # url dest
  [ -s "$2" ] || { echo "[tools] downloading $1"; curl -fsSL --retry 3 -o "$2.part" "$1"; mv "$2.part" "$2"; }
}
fetch "https://github.com/iBotPeaches/Apktool/releases/download/v${APKTOOL_VER}/apktool_${APKTOOL_VER}.jar" "$TOOLS_DIR/apktool.jar"
fetch "https://github.com/baksmali/smali/releases/download/3.0.3/baksmali-3.0.3-fat-release.jar" "$TOOLS_DIR/baksmali.jar"
if [ ! -x "$TOOLS_DIR/build-tools/apksigner" ]; then
  fetch "https://dl.google.com/android/repository/build-tools_r34-linux.zip" "$TOOLS_DIR/bt.zip"
  python3 - "$TOOLS_DIR" <<'PY'
import sys, zipfile, os, shutil
d = sys.argv[1]
zipfile.ZipFile(os.path.join(d, "bt.zip")).extractall(d)
src = os.path.join(d, "android-14")
dst = os.path.join(d, "build-tools")
if os.path.exists(dst): shutil.rmtree(dst)
os.rename(src, dst)
PY
  chmod +x "$TOOLS_DIR"/build-tools/* || true
fi
if [ ! -s "$TOOLS_DIR/android.jar" ]; then
  fetch "https://dl.google.com/android/repository/platform-34-ext7_r03.zip" "$TOOLS_DIR/platform.zip"
  python3 - "$TOOLS_DIR" <<'PY'
import sys, zipfile, os
d = sys.argv[1]
z = zipfile.ZipFile(os.path.join(d, "platform.zip"))
open(os.path.join(d, "android.jar"), "wb").write(z.read("android-34/android.jar"))
PY
fi
BT="$TOOLS_DIR/build-tools"
APKTOOL=(java -Xmx3g -jar "$TOOLS_DIR/apktool.jar")

# ------------------------------------------------------------------ decode + patch
rm -rf "$BUILD"
mkdir -p "$BUILD"
echo "[1/6] apktool decode"
"${APKTOOL[@]}" d -f -o "$BUILD/decoded" original/base.apk >"$BUILD/apktool_decode.log"

echo "[2/6] apply smali/manifest patches"
for p in patches/*.patch; do
  [ -e "$p" ] || continue
  echo "      $p"
  patch -p1 -d "$BUILD/decoded" --no-backup-if-mismatch -s < "$p"
done
python3 - "$BUILD/decoded/apktool.yml" "$VERSION_CODE" "$VERSION_NAME" <<'PY'
import sys, re
p, code, name = sys.argv[1:]
s = open(p).read()
s = re.sub(r"versionCode: .*", f"versionCode: {code}", s)
s = re.sub(r"versionName: .*", f"versionName: {name}", s)
open(p, "w").write(s)
PY

# ------------------------------------------------------------------ helper classes
echo "[3/6] compile patch helpers (src/java) -> smali_classes17"
mkdir -p "$BUILD/stubs" "$BUILD/classes" "$BUILD/dex"
find src/stubs -name '*.java' > "$BUILD/stubs.txt"
javac -nowarn --release 11 -cp "$TOOLS_DIR/android.jar" -d "$BUILD/stubs" @"$BUILD/stubs.txt"
find src/java -name '*.java' > "$BUILD/sources.txt"
javac -nowarn --release 11 -cp "$TOOLS_DIR/android.jar:$BUILD/stubs" -d "$BUILD/classes" @"$BUILD/sources.txt"
java -cp "$BT/lib/d8.jar" com.android.tools.r8.D8 --release --min-api 28 \
  --lib "$TOOLS_DIR/android.jar" --classpath "$BUILD/stubs" \
  --output "$BUILD/dex" $(find "$BUILD/classes" -name '*.class')
java -jar "$TOOLS_DIR/baksmali.jar" d -o "$BUILD/decoded/smali_classes17" "$BUILD/dex/classes.dex"

# ------------------------------------------------------------------ build, align, sign
echo "[4/6] apktool build"
"${APKTOOL[@]}" b -o "$BUILD/unsigned.apk" "$BUILD/decoded" >"$BUILD/apktool_build.log"

echo "[5/6] zipalign"
"$BT/zipalign" -f -p 4 "$BUILD/unsigned.apk" "$BUILD/aligned.apk"

echo "[6/6] apksigner"
if [ -z "${KEYSTORE_FILE:-}" ]; then
  KEYSTORE_FILE="$BUILD/throwaway-debug.jks"; KEYSTORE_PASSWORD=android; KEY_ALIAS=debug; KEY_PASSWORD=android
  keytool -genkeypair -keystore "$KEYSTORE_FILE" -storepass "$KEYSTORE_PASSWORD" -keypass "$KEY_PASSWORD" \
    -alias "$KEY_ALIAS" -keyalg RSA -keysize 2048 -validity 365 -dname "CN=throwaway debug" >/dev/null 2>&1
  echo "      WARNING: no KEYSTORE_FILE given - signed with a throw-away key (cannot update over other builds)"
fi
export KEYSTORE_PASSWORD KEY_PASSWORD
OUT_APK="$OUT_DIR/j3-atv-observer-${VERSION_NAME}.apk"
"$BT/apksigner" sign --ks "$KEYSTORE_FILE" --ks-pass "env:KEYSTORE_PASSWORD" \
  --ks-key-alias "$KEY_ALIAS" --key-pass "env:KEY_PASSWORD" \
  --min-sdk-version 28 --v2-signing-enabled true --v3-signing-enabled true --v4-signing-enabled false --out "$OUT_APK" "$BUILD/aligned.apk"
"$BT/apksigner" verify --verbose --print-certs "$OUT_APK" > "$BUILD/verify.txt"
grep -E "^Verifies|v2 scheme|v3 scheme|certificate DN|SHA-256" "$BUILD/verify.txt"
"$BT/aapt2" dump badging "$OUT_APK" > "$BUILD/badging.txt"
head -3 "$BUILD/badging.txt"
python3 "$ROOT/tools/verify_refs.py" "$BUILD/decoded"
sha256sum "$OUT_APK" | tee "$OUT_APK.sha256"
echo "OK -> $OUT_APK"
