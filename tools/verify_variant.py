#!/usr/bin/env python3
"""Check a decoded DIAG variant: nothing package-derived still carries the original application id.

usage: verify_variant.py <decoded-dir> <original-package> <new-package>
Fails when
  * the manifest package is not <new-package>,
  * any manifest attribute value mentions <original-package> as an identifier that is not a class that
    exists in the smali (class references such as android:name=...MainActivity are required to stay),
  * a permission / authority / action name still starts with the original id,
  * a smali string literal "<orig>.<ID>" that is not a class name is left (cross-app intent actions etc.).
"""
import os, re, sys
root, orig, new = sys.argv[1:4]
classes = set()
for d in os.listdir(root):
    if d.startswith("smali"):
        for dp, _, fs in os.walk(os.path.join(root, d)):
            for f in fs:
                if f.endswith(".smali"):
                    classes.add(os.path.relpath(os.path.join(dp, f), os.path.join(root, d))[:-6].replace(os.sep, "."))
errors = []
def renamed(hit):  # the new id usually extends the old one (com.cgs.atvobserver -> com.cgs.atvobserver.diag)
    return hit == new or hit.startswith(new + ".")
m = open(os.path.join(root, "AndroidManifest.xml"), encoding="utf-8").read()
if f'package="{new}"' not in m:
    errors.append(f"manifest package is not {new}")
ident = re.compile(re.escape(orig) + r"(?:\.[A-Za-z0-9_\-$]+)*")
for attr, val in re.findall(r'([\w:]+)="([^"]*)"', m):
    for hit in ident.findall(val):
        if renamed(hit) and hit not in classes:
            continue
        if hit == orig:
            errors.append(f"manifest {attr}=\"{val}\" still has the bare original id")
        elif hit not in classes:
            errors.append(f"manifest {attr}=\"{val}\" is not an existing class and still uses the original id")
        elif attr not in ("android:name", "android:targetActivity", "android:parentActivityName", "android:value"):
            errors.append(f"manifest {attr}=\"{val}\" is a class reference in an unexpected attribute")
for must in ("DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION", "androidx-startup"):
    if not re.search(re.escape(new) + r"\." + must, m):
        errors.append(f"expected {new}.{must} in the manifest")
lit = re.compile(r'"(' + re.escape(orig) + r'(?:\.[A-Za-z0-9_\-]+)+)"')
for d in os.listdir(root):
    if not d.startswith("smali"):
        continue
    for dp, _, fs in os.walk(os.path.join(root, d)):
        for f in fs:
            if f.endswith(".smali"):
                for n, line in enumerate(open(os.path.join(dp, f), encoding="utf-8"), 1):
                    for hit in lit.findall(line):
                        if hit not in classes and not renamed(hit):
                            errors.append(f"{os.path.relpath(os.path.join(dp, f), root)}:{n}: literal \"{hit}\" is not a class")
print(f"[verify_variant] {orig} -> {new}: {len(errors)} problem(s)")
for e in errors:
    print("  " + e)
sys.exit(1 if errors else 0)
