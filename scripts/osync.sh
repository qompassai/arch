#!/usr/bin/env bash
# /qompassai/arch/scripts/osync.sh
# Qompass AI Omarchy Sync Script
# Copyright (C) 2026 Qompass AI, All rights reserved
# ----------------------------------------
set -euo pipefail
ARCH_REPO="$HOME/.GH/Qompass/Arch/omarchy"
OMARCHY_REPO="$HOME/.GH/Forks/omarchy"
git -C "$ARCH_REPO" status --short
git -C "$OMARCHY_REPO" status --short
rsync -av \
  "$ARCH_REPO/install/" \
  "$OMARCHY_REPO/install/"
rsync -av \
  "$ARCH_REPO/config/" \
  "$OMARCHY_REPO/config/"
git -C "$OMARCHY_REPO" add install config
if ! git -C "$OMARCHY_REPO" diff --cached --quiet; then
  git -C "$OMARCHY_REPO" commit -m "Sync install/ and config/ from qompassai/arch"
  git -C "$OMARCHY_REPO" push
else
  echo "No changes to sync."
fi
