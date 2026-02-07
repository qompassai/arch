#!/usr/bin/env bash
# pr.sh
# Qompass AI - [ ]
# Copyright (C) 2026 Qompass AI, All rights reserved
# ----------------------------------------
set -euo pipefail
if [[ $# -lt 1 ]]; then
  printf 'Usage: %s <issue-number>\n' "${0##*/}"
  exit 1
fi
ISSUE_NUMBER="$1"
GHII_REPO=basecamp/omarchy \
GHII_ROOT="$HOME/.GH/Qompass/Arch/omarchy" \
ghii2 pr-template "$ISSUE_NUMBER"
