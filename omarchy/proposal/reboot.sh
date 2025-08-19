# reboot.sh
# Qompass AI - [Add description here]
# Copyright (C) 2025 Qompass AI, All rights reserved
# ----------------------------------------
#!/bin/bash

# Get running kernel version (normalize to Arch string)
running_kernel="$(uname -r | sed 's/-arch/\.arch/')"
# Get installed kernel version via pacman
installed_kernel="$(pacman -Q linux | awk '{print $2}')"

reboot_needed=false

# Check if a new kernel has been installed but not booted
if [ "$running_kernel" != "$installed_kernel" ]; then
        reboot_needed=true
fi

# Or check omarchy's custom state file
if [ -f "$HOME/.local/state/omarchy/reboot-required" ]; then
        reboot_needed=true
fi

# Only prompt if reboot is actually required
if $reboot_needed; then
        gum confirm "System update requires reboot. Proceed?" &&
                omarchy-state clear re*-required &&
                sudo reboot now
fi

# OPTIONAL: You can still separately handle Hyprland relaunches if desired
if [ -f "$HOME/.local/state/omarchy/relaunch-required" ]; then
        gum confirm "Updates require Hyprland relaunch. Proceed?" &&
                omarchy-state clear relaunch-required &&
                uwsm stop
fi
