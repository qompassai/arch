#!/usr/bin/env bash
# /qompassai/Arch/omarchy/4200-nvidia/install/first-run/modprobe.sh
# Qompass AI Omarchy Modprobe Script
# Copyright (C) 2026 Qompass AI, All rights reserved
# ----------------------------------------
set -euo pipefail
BLACKLIST="/etc/modprobe.d/blacklist.conf"
sudo tee "$BLACKLIST" > /dev/null << 'EOF'
blacklist airspy
blacklist dvb_usb_rtl28xxu
blacklist hackrf
blacklist nouveau
blacklist rivafb
blacklist nvidiafb
blacklist rivatv
blacklist nv
blacklist snd_soc_dmic
blacklist snd_acp_legacy_mach
blacklist snd_acp_mac
EOF

sudo chmod 644 "$BLACKLIST"
