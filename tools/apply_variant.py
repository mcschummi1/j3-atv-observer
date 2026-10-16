#!/usr/bin/env python3
"""Turn the decoded APK into the optional side-by-side DIAG variant (scripts/build.sh, PACKAGE_SUFFIX).

usage: apply_variant.py <decoded-dir> <original-package> <new-package> <launcher-label>

Only *identifiers that belong to the application id* are renamed. Class names stay as they are
(classes are not renamed, so android:name="com.cgs.atvobserver.MainActivity" must remain valid).

  AndroidManifest.xml  package=, custom <permission>/<uses-permission> names, provider authorities,
                       and any other attribute value "<orig>.<something>" that is not a class in the smali.
  smali*/              string literals "<orig>.<ID>" (intent actions etc.) that are not class names.
                       (Runtime-derived values - getPackageName(), ".DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION"
                       suffix, data/cache/files dirs, SharedPreferences/DB paths - follow the new id by themselves.)
  res/values/strings.xml  app_name -> launcher label
Prints every change; exits non-zero when an expected change did not happen.
"""
import os, re, sys

root, orig, new, label = sys.argv[1:5]
if orig == new:
    sys.exit("variant package equals original package")

smali_dirs = [os.path.join(root, d) for d in sorted(os.listdir(root)) if d.startswith("smali")]
classes = set()
for sd in smali_dirs:
    for dp, _, fs in os.walk(sd):
        for f in fs:
            if f.endswith(".smali"):
                classes.add(os.path.relpath(os.path.join(dp, f), sd)[:-6].replace(os.sep, "."))

def is_class(name):
    return name in classes

ID_RE = re.escape(orig) + r"(?:\.[A-Za-z0-9_\-]+)+"
changes = []

# ---------------------------------------------------------------- manifest
mpath = os.path.join(root, "AndroidManifest.xml")
m = open(mpath, encoding="utf-8").read()

def man_sub(match):
    val = match.group(0)
    if is_class(val):
        return val
    changes.append(f"AndroidManifest.xml: {val} -> {new}{val[len(orig):]}")
    return new + val[len(orig):]

# attribute values only (inside double quotes), never class names
m2 = re.sub(r'(?<=")' + ID_RE + r'(?=")', man_sub, m)
m2, n = re.subn(r'(?<=package=")' + re.escape(orig) + r'(?=")', new, m2)
if n != 1:
    sys.exit("manifest package attribute not found exactly once")
changes.append(f"AndroidManifest.xml: package {orig} -> {new}")
open(mpath, "w", encoding="utf-8").write(m2)

# ---------------------------------------------------------------- smali string literals
lit = re.compile(r'"(' + ID_RE + r')"')
for sd in smali_dirs:
    for dp, _, fs in os.walk(sd):
        for f in fs:
            if not f.endswith(".smali"):
                continue
            p = os.path.join(dp, f)
            s = open(p, encoding="utf-8").read()
            if orig not in s:
                continue
            def sub(match):
                val = match.group(1)
                if is_class(val):
                    return match.group(0)
                changes.append(f"{os.path.relpath(p, root)}: \"{val}\" -> \"{new}{val[len(orig):]}\"")
                return '"' + new + val[len(orig):] + '"'
            s2 = lit.sub(sub, s)
            if s2 != s:
                open(p, "w", encoding="utf-8").write(s2)

# ---------------------------------------------------------------- launcher label
spath = os.path.join(root, "res/values/strings.xml")
s = open(spath, encoding="utf-8").read()
s2, n = re.subn(r'(<string name="app_name">)[^<]*(</string>)', lambda mm: mm.group(1) + label + mm.group(2), s)
if n != 1:
    sys.exit("app_name string not found exactly once")
open(spath, "w", encoding="utf-8").write(s2)
changes.append(f"res/values/strings.xml: app_name -> {label}")

print(f"[variant] {orig} -> {new}, label '{label}', {len(changes)} change(s):")
for c in changes:
    print("   " + c)
