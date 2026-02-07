#!/usr/bin/env bash
# test-portals.sh
# Qompass AI – XDG Desktop Portal test helper
set -euo pipefail
busctl --user call org.freedesktop.portal.Desktop \
    /org/freedesktop/portal/desktop \
    org.freedesktop.DBus.Introspectable Introspect
PORTAL_CONF="${XDG_CONFIG_HOME:-$HOME/.config}/xdg-desktop-portal/portals.conf"
echo "Using portals.conf: $PORTAL_CONF"
echo
if [[ ! -f $PORTAL_CONF ]]; then
    echo "ERROR: $PORTAL_CONF not found."
    exit 1
fi
echo "== Preferred implementations from portals.conf =="
awk '
  /^\[preferred\]/ { in_pref=1; next }
  /^\[/ { in_pref=0 }
  in_pref && $0 !~ /^#/ && NF {
    print "  " $0
  }
' "$PORTAL_CONF"
echo
echo "== Basic environment sanity =="
echo "XDG_SESSION_TYPE=${XDG_SESSION_TYPE:-<unset>}"
echo "XDG_CURRENT_DESKTOP=${XDG_CURRENT_DESKTOP:-<unset>}"
echo "XDG_SESSION_DESKTOP=${XDG_SESSION_DESKTOP:-<unset>}"
echo "GTK_USE_PORTAL=${GTK_USE_PORTAL:-<unset>}"
echo
echo "== Check running portal services =="
systemctl --user status xdg-desktop-portal.service --no-pager --full | sed -n '1,8p' || true
systemctl --user status xdg-desktop-portal-hyprland.service --no-pager --full | sed -n '1,8p' || true
echo

echo "== D-Bus name check =="
busctl --user list | grep -E "org.freedesktop.portal.Desktop|org.freedesktop.impl.portal.desktop.hyprland|org.freedesktop.impl.portal.desktop.gtk" || true
echo

echo "== 1) ScreenCast test (hyprland) =="
echo "This will attempt a screencast session via the portal (you may see a picker)."
echo "Press Ctrl+C to skip."
sleep 1
if command -v /usr/lib/xdg-desktop-portal-hyprland &> /dev/null; then
    echo "NOTE: xdg-desktop-portal-hyprland binary found: /usr/lib/xdg-desktop-portal-hyprland"
fi

if command -v xdg-desktop-portal-hyprland &> /dev/null; then
    echo "Running xdg-desktop-portal-hyprland directly is usually not needed; it is started by xdg-desktop-portal."
fi

if command -v qdbus6 &> /dev/null; then
    echo "Trying to list available ScreenCast interfaces via qdbus6..."
    qdbus6 org.freedesktop.portal.Desktop /org/freedesktop/portal/desktop \
        org.freedesktop.portal.ScreenCast.ListMonitors || true
else
    echo "qdbus6 not found; skipping direct ScreenCast D-Bus call."
fi
echo

echo "== 2) Screenshot test (hyprland) =="
echo "If supported, a screenshot UI or prompt should appear."
if command -v grim &> /dev/null; then
    OUT=/tmp/portal-test-screenshot-$(date +%s).png
    echo "Taking a screenshot via grim (not via portal) just to confirm Wayland screenshot works..."
    grim "$OUT" && echo "grim wrote: $OUT" || echo "grim failed (this is separate from portal)."
else
    echo "grim not installed; skipping direct compositor screenshot check."
fi
echo "Now trying portal screenshot via D-Bus (if tools available)..."
if command -v qdbus6 &> /dev/null; then
    qdbus6 org.freedesktop.portal.Desktop /org/freedesktop/portal/desktop \
        org.freedesktop.portal.Screenshot.Screenshot \
        "" "" "" || echo "Portal screenshot call failed (check journalctl -xeu xdg-desktop-portal*)."
else
    echo "qdbus6 not found; skipping portal screenshot call."
fi
echo

echo "== 3) FileChooser test (gtk) =="
echo "This should open a GTK-based file chooser via the portal if everything is wired:"
echo "  - GTK_USE_PORTAL=1"
echo "  - FileChooser=gtk in portals.conf"
echo
if command -v gtk4-demo &> /dev/null; then
    echo "Launching gtk4-demo (pick a file dialog if available) – close it when done."
    GTK_USE_PORTAL=1 gtk4-demo > /dev/null 2>&1 || true
else
    echo "gtk4-demo not installed; as an alternative, run a GTK app (e.g. Firefox download dialog) and confirm file chooser is GTK-styled."
fi
echo

echo "== 4) Notification test (gtk) =="
if command -v notify-send &> /dev/null; then
    echo "Sending a notification via notify-send (should go through portal/desktop env)..."
    notify-send "Portal Test" "If you see this, notifications are working."
else
    echo "notify-send not installed; install libnotify / notify-send to test notifications."
fi
echo
echo "== 5) Settings portal test (gtk) =="
echo "Trying to query the Settings portal (if available)..."
if command -v gdbus &> /dev/null; then
    gdbus call --session \
        --dest org.freedesktop.portal.Desktop \
        --object-path /org/freedesktop/portal/desktop \
        --method org.freedesktop.portal.Settings.Read \
        "org.freedesktop.appearance" "color-scheme" || true
else
    echo "gdbus not installed; skipping Settings portal test."
fi
echo
echo "== 6) Dump portal debug info =="
echo "You can now run, in another terminal:"
echo "  journalctl --user -u xdg-desktop-portal* -f"
echo "and then retry screen sharing or file choose flows to see portal logs."
echo
echo "Done. For deeper debugging, focus on:"
echo "  - XDG_SESSION_TYPE, XDG_CURRENT_DESKTOP, XDG_SESSION_DESKTOP"
echo "  - xdg-desktop-portal-hyprland logs"
echo "  - portal selection in portals.conf (ScreenCast/RemoteDesktop/Screenshot/ FileChooser)"
