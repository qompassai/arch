#!/usr/bin/env bash
# xdg-desktop.sh
# Qompass AI - [ ]
# Copyright (C) 2026 Qompass AI, All rights reserved
# ----------------------------------------

XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
PORTAL_DIR="$XDG_CONFIG_HOME/xdg-desktop-portal"
PORTAL_CONF="$PORTAL_DIR/portals.conf"
mkdir -p "$PORTAL_DIR"
cat > "$PORTAL_CONF" <<'EOF'
[preferred]
default=hyprland;gtk
org.freedesktop.impl.portal.Access=gtk
org.freedesktop.impl.portal.Account=gtk
org.freedesktop.impl.portal.Bluetooth=gtk
org.freedesktop.impl.portal.Camera=gtk
org.freedesktop.impl.portal.Email=gtk
org.freedesktop.impl.portal.FileChooser=gtk
org.freedesktop.impl.portal.GlobalShortcuts=hyprland
org.freedesktop.impl.portal.Inhibit=gtk
org.freedesktop.impl.portal.Location=gtk
org.freedesktop.impl.portal.Notification=gtk
org.freedesktop.impl.portal.OpenURI=gtk
org.freedesktop.impl.portal.PowerProfile=gtk
org.freedesktop.impl.portal.Print=gtk
org.freedesktop.impl.portal.ProxyResolver=gtk
org.freedesktop.impl.portal.Screenshot=hyprland
org.freedesktop.impl.portal.ScreenCast=hyprland
org.freedesktop.impl.portal.RemoteDesktop=hyprland
org.freedesktop.impl.portal.Settings=gtk
org.freedesktop.impl.portal.Speech=gtk
org.freedesktop.impl.portal.Trash=gtk
EOF
