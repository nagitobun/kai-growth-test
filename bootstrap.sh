#!/usr/bin/env bash
set -e
echo "[bootstrap] add label & dummy secret"
gh label create kai-log --color 0E8A16 -d "auto log" 2>/dev/null || true
gh secret set DUMMY_SECRET -b "placeholder" >/dev/null
echo "[bootstrap] done."
