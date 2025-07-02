#!/usr/bin/env bash
set -e
echo "[bootstrap] installing GitHub labels & secrets ..."
gh api -X POST repos/:owner/:repo/labels -f name="kai-log" -f color="0E8A16" >/dev/null 2>&1 || true
gh secret set OPENAI_API_KEY -b "dummy" >/dev/null 2>&1 || true
echo "[bootstrap] done."
