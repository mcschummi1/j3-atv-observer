#!/usr/bin/env python3
"""Tiny helper used while authoring patches: exact, count-checked replacements in smali files."""
import sys

def sub(path, old, new, count=1):
    s = open(path, encoding="utf-8").read()
    n = s.count(old)
    if n != count:
        sys.exit(f"[smali_edit] {path}: expected {count} match(es), found {n} for:\n{old}")
    s = s.replace(old, new)
    open(path, "w", encoding="utf-8").write(s)
    print(f"[smali_edit] {path}: replaced {n}")
