# mirrors.sh
# Qompass AI - [Add description here]
# Copyright (C) 2025 Qompass AI, All rights reserved
# ----------------------------------------
rate-mirrors --protocol=ipv6 --entry-country=US arch | sudo tee /etc/pacman.d/mirrorlist
