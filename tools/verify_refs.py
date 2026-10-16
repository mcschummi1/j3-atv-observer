#!/usr/bin/env python3
"""Static link check for the patch.

1. Every invoke/field reference from the original smali into com/cgs/atvobserver/patch/* must
   resolve to a method/field defined in the compiled helper smali (smali_classes17).
2. Every reference made *by* the helpers into app/androidx/kotlinx classes (compiled against
   compile-only stubs in src/stubs) must resolve to a real member in the decoded APK, with the
   same invoke kind (interface vs. virtual/static) - catching stub/real signature drift.
Exits non-zero on any unresolved reference.
"""
import os, re, sys

root = sys.argv[1]
defs = {}      # class -> set(member signatures)
kinds = {}     # class -> 'interface' | 'class'
supers = {}
for dp, _, fs in os.walk(root):
    for f in fs:
        if not f.endswith('.smali'):
            continue
        cls = None
        for line in open(os.path.join(dp, f), encoding='utf-8', errors='replace'):
            if line.startswith('.class'):
                cls = line.split()[-1]
                kinds[cls] = 'interface' if ' interface ' in line else 'class'
                defs.setdefault(cls, set())
            elif line.startswith('.super'):
                supers[cls] = line.split()[-1]
            elif line.startswith('.method'):
                defs[cls].add(line.split()[-1])
            elif line.startswith('.field'):
                decl = line.split('=')[0].split()
                defs[cls].add(decl[-1])

def resolve(cls, member):
    seen = 0
    while cls and seen < 30:
        if cls not in defs:          # chain reaches a framework class (java/*, android/*): resolved at runtime
            return True
        if member in defs[cls]:
            return True
        cls = supers.get(cls); seen += 1
    return False

inv = re.compile(r'^\s*(invoke-\w+(?:/range)?|[is]get-?\w*|[is]put-?\w*)\s+\{?.*?\}?,?\s*(L[^;]+;)->([^\s]+)')
errors, checked = [], 0
for dp, _, fs in os.walk(root):
    helper_dir = 'smali_classes17' in dp
    for f in fs:
        if not f.endswith('.smali'):
            continue
        for n, line in enumerate(open(os.path.join(dp, f), encoding='utf-8', errors='replace'), 1):
            m = inv.match(line)
            if not m:
                continue
            op, cls, member = m.groups()
            if helper_dir:
                if not (cls.startswith('Lcom/cgs/') or cls.startswith('Landroidx/') or cls.startswith('Lkotlinx/') or cls.startswith('Lkotlin/')):
                    continue
            elif not cls.startswith('Lcom/cgs/atvobserver/patch/'):
                continue
            checked += 1
            member_key = member if '(' in member else member.split(':')[0] + ':' + member.split(':')[1]
            if cls not in defs:
                errors.append(f'{f}:{n}: missing class {cls}')
            elif not resolve(cls, member_key if '(' in member else member):
                errors.append(f'{f}:{n}: unresolved {cls}->{member}')
            elif op.startswith('invoke-interface') and kinds.get(cls) != 'interface':
                errors.append(f'{f}:{n}: invoke-interface on non-interface {cls}')
            elif op.startswith('invoke-virtual') and kinds.get(cls) == 'interface':
                errors.append(f'{f}:{n}: invoke-virtual on interface {cls}')
print(f'[verify_refs] checked {checked} cross-boundary references, {len(errors)} problem(s)')
for e in errors:
    print('  ' + e)
sys.exit(1 if errors else 0)
