# audio.sh
# Qompass AI - [ ]
# Copyright (C) 2026 Qompass AI, All rights reserved
# ----------------------------------------
mkdir -p ~/.config/pipewire/pipewire.conf.d

# Create the config file
cat << 'EOF' > ~/.config/pipewire/pipewire.conf.d/99-arctis.conf
context.properties = {
    default.clock.rate = 44100
    default.clock.quantum = 1024
    default.clock.min-quantum = 256
}
EOF

# Restart services (no sudo needed)
systemctl --user restart pipewire wireplumber
systemctl --user enable pipewire pipewire-pulse wireplumber --now

