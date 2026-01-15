# modprobe.sh
# Qompass AI Omarchy DKMS Module Setup
# Copyright (C) 2026 Qompass AI, All rights reserved
# ----------------------------------------
set -euo pipefail
BLACKLIST_FILE="/etc/modprobe.d/blacklist.conf"
cat >"$BLACKLIST_FILE" <<'EOF'
blacklist airspy
blacklist dvb_usb_rtl28xxu
blacklist hackrf
blacklist nouveau # See: https://wiki.archlinux.org/title/NVIDIA
blacklist rivafb
blacklist nvidiafb
blacklist rivatv
blacklist nv
# Optional: sometimes suggested with nouveau issues; comment if you need it
# blacklist uvcvideo
blacklist snd_soc_dmic
blacklist snd_acp_legacy_mach
blacklist snd_acp_mac
EOF
