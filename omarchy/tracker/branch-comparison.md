# Omarchy Branch Comparison

## Branch Overview
- **master**: Stable release branch
- **dev**: Development branch with latest features
- **rc**: Release candidate branch

---

## Master → Dev Changes

### Commits
5ff76df5 Ensure default routes don't overwrite the ffix
bab0004d Fix volume controls on Asus G14
93079858 Extract shared swayosd helper
4287472e Simplify
291786d3 Set brightness in a more broadly compatible way
05b82cbe Add headset icon to pulseaudio module in waybar (#4244)
1ff31cfe Automatic fallback to Alacritty for legacy GPUs when install Omarchy (#3711)
cd995319 Add img2jpg-medium
281f0b86 Add new default wallpaper for Tokyo Night
55668f4c Use just a single capture menu instead
9c71962a Add Super + Ctrl + P (and friends) as alternative keybinds for captures on keyboards without a printscr key
7d77500c Eliminate rdp check causing black screen
fb1d9ccf Merge pull request #4217 from arcangelo7/fix/windows-vm-clipboard-sharing
2f75e9c7 Merge pull request #3958 from felixzsh/fix-windows-vm-lauch-sleep
b22ed844 fix: dynamic windows-vm boot detection
a0d2f007 Specialize waybar to match the backgrounds better
955844cb feat(windows-vm): enable clipboard sharing in RDP session
295c7c91 Fix concatenation
bc1a5315 fix: skill name must match case of skill directory exactly (#4162)
4cec214a Replace yq with pure bash for TOML parsing (#4171)
0b5ba427 Merge branch 'master' into dev
dcb95277 Ensure we reset the DBs with the Omarchy versions
6c35e840 Version bump
da984ce2 Fix infinite waiting
f5a35a1a Bump

### File Changes

 bin/omarchy-cmd-apple-display-brightness           |  12 +++----
 bin/omarchy-cmd-brightness                         |  21 ++++++++++++
 bin/omarchy-cmd-screenrecord                       |  15 ++-------
 bin/omarchy-menu                                   |  33 ++----------------
 bin/omarchy-swayosd-brightness                     |  12 +++++++
 bin/omarchy-theme-set-templates                    |  21 ++++++------
 bin/omarchy-windows-vm                             |  37 ++++++++-------------
 config/waybar/config.jsonc                         |   1 +
 .../wireplumber.conf.d/alsa-soft-mixer.conf        |  18 ++++++++++
 default/bash/functions                             |  11 ++++--
 default/hypr/bindings/media.conf                   |   8 ++---
 default/hypr/bindings/utilities.conf               |   1 +
 default/limine/default.conf                        |   2 +-
 default/omarchy-skill/SKILL.md                     |   2 +-
 install/config/all.sh                              |   1 +
 install/config/hardware/legacy-gpu-terminal.sh     |  17 ++++++++++
 install/omarchy-base.packages                      |   1 -
 migrations/1767306902.sh                           |   2 --
 migrations/1768270644.sh                           |  14 ++++++++
 migrations/1768429270.sh                           |   6 ++++
 themes/catppuccin/waybar.css                       |   2 ++
 themes/tokyo-night/backgrounds/0-swirl-buck.jpg    | Bin 0 -> 2941090 bytes
 version                                            |   2 +-
 23 files changed, 140 insertions(+), 99 deletions(-)

---

## Master → RC Changes

### Commits

d9c5df29 DRY
7c9708d6 Respect rc too
5a9f0318 Respect rc
ab4694e3 Introduce rc channel
bebf14a1 In order of appearance
ff2a47c6 feat: allow overloading for the about menu action via the ~/.config/omarchy/extensions/menu.sh file. Example included (#4311)
d9bd4a8d Open Nautilus in cwd of terminal (#4331)
8fc5b6e3 Add nautilus-python package for 'Open in Ghostty' shortcut in Nautilus (#4345)
7265c227 Update opacity rule for Steam window class (#4386)
32d187ea Add window rules for Bitwarden Chrome Extension (#4389)
c19fc159 Just make a separate browser ready for the authentication
7ffdfdbd Only idleinhibit
161fa3f3 Fix up the installer
d6c28f31 Force fullscreen
4348ab6e Let the done screen time out in 7 seconds
9d07cc88 Add installer and windowrule configuration for NVIDIA GeForce Now
ba31e307 Ensure master volume isn't muted either
2df5f231 Add x11 fallback to SDL_VIDEODRIVER for compatibility
26afde34 fix echo comment in powerprofile migration (#4388)
3b94207b Fix: Jetbrains rules were not working properly anymore (#4150)
e567020e Use the new helper
f78f5b2c Automatically switch power profile when plugged in (balanced) and unplugged (power saver) (#4375)
ec305459 Prevent Telegram from stealing focus on every message receipt
55231e97 Add new Miasma theme
a8e0762f Open directories in file manager
bb91f908 Merge branch 'master' into dev
a7995efa Ensure master is used instead of dev as a default
5b534de6 Rebooting is needed for hibernation to be available
4fe35797 We didn't get this working
7015601d No need to start on the first install
532f4310 Fix audio mixing on ROG in migration as well
56b02f62 Switch back to mainline chromium
83628ab3 Merge pull request #4314 from jmargeta/fix-legacy-mobile-nvidia-cards
d8961424 auto toggle scratchpad on switching workspace (#4250)
77a57aa8 Add kb_variant to input.conf (#4330)
e455d1bd Enable auto-pasting for the emoji picker (#4344)
adfe1829 Use subshell for open() to avoid job control output (#4366)
febd18ce Replace yq with pure bash for TOML parsing (#4171)
768c553c Add missing icons to Development remove menus (#4339)
bf99a2dd Merge branch 'master' into dev
09305835 Fix sourcing
4a6baafd Move all fixes for Asus ROGs to install time
c1bf6c46 Fix the mic on Asus ROG laptops
66daacb3 Now available on OPR
5b2c0daf Fix drivers for older NVIDIA MXxxx mobile GPUs
988418ae Make purpose clearer
25451f4a Compensate for swayosd not liking a 0.00 progress meter
d884265d Add keyboard brightness controls
5e1ce163 Centralize all brightness commands
713b6e3a Expose audio soft mixer as a tweak
2c7b283a Toggle hybrid GPU mode via supergfxctl (#4277)
4701726c Split out removing orphan packages as well
bfc3c69c Update AUR packages after system pkgs + migrate
21514dc5 Turn audio soft mixing into an opt-in toggle
5ff76df5 Ensure default routes don't overwrite the ffix
bab0004d Fix volume controls on Asus G14
93079858 Extract shared swayosd helper
4287472e Simplify
291786d3 Set brightness in a more broadly compatible way
05b82cbe Add headset icon to pulseaudio module in waybar (#4244)
1ff31cfe Automatic fallback to Alacritty for legacy GPUs when install Omarchy (#3711)
cd995319 Add img2jpg-medium
281f0b86 Add new default wallpaper for Tokyo Night
55668f4c Use just a single capture menu instead
9c71962a Add Super + Ctrl + P (and friends) as alternative keybinds for captures on keyboards without a printscr key
7d77500c Eliminate rdp check causing black screen
fb1d9ccf Merge pull request #4217 from arcangelo7/fix/windows-vm-clipboard-sharing
2f75e9c7 Merge pull request #3958 from felixzsh/fix-windows-vm-lauch-sleep
b22ed844 fix: dynamic windows-vm boot detection
a0d2f007 Specialize waybar to match the backgrounds better
955844cb feat(windows-vm): enable clipboard sharing in RDP session
295c7c91 Fix concatenation
bc1a5315 fix: skill name must match case of skill directory exactly (#4162)
4cec214a Replace yq with pure bash for TOML parsing (#4171)
0b5ba427 Merge branch 'master' into dev
dcb95277 Ensure we reset the DBs with the Omarchy versions
6c35e840 Version bump
da984ce2 Fix infinite waiting
f5a35a1a Bump

### File Changes

 bin/omarchy-battery-present                        |  10 +++
 bin/omarchy-branch-set                             |  13 +--
 bin/omarchy-brightness-display                     |  21 +++++
 bin/omarchy-brightness-display-apple               |  12 +++
 bin/omarchy-brightness-keyboard                    |  40 ++++++++++
 bin/omarchy-channel-set                            |   3 +-
 bin/omarchy-cmd-apple-display-brightness           |  16 ----
 bin/omarchy-hibernation-setup                      |   6 +-
 bin/omarchy-install-geforce-now                    |  17 ++++
 bin/omarchy-menu                                   |  31 ++++++--
 bin/omarchy-refresh-pacman                         |  17 ++--
 bin/omarchy-show-done                              |   2 +-
 bin/omarchy-swayosd-brightness                     |  15 ++++
 bin/omarchy-theme-set-browser                      |  12 +--
 bin/omarchy-theme-set-templates                    |  21 +++--
 bin/omarchy-toggle-hybrid-gpu                      |  53 +++++++++++++
 bin/omarchy-update-aur-pkgs                        |  13 +++
 bin/omarchy-update-orphan-pkgs                     |  10 +++
 bin/omarchy-update-perform                         |   2 +
 bin/omarchy-update-system-pkgs                     |  21 -----
 bin/omarchy-version-channel                        |   4 +
 bin/omarchy-windows-vm                             |  37 +++------
 boot.sh                                            |  10 +--
 config/elephant/symbols.toml                       |   1 +
 config/hypr/bindings.conf                          |   1 +
 config/hypr/input.conf                             |   4 +
 config/omarchy/extensions/menu.sh                  |   6 ++
 config/waybar/config.jsonc                         |   1 +
 default/bash/aliases                               |   4 +-
 default/bash/functions                             |  11 ++-
 default/hypr/apps.conf                             |   2 +
 default/hypr/apps/bitwarden.conf                   |   4 +
 default/hypr/apps/geforce.conf                     |   5 ++
 default/hypr/apps/jetbrains.conf                   |  49 ++++++++----
 default/hypr/apps/steam.conf                       |   2 +-
 default/hypr/apps/telegram.conf                    |   2 +
 default/hypr/bindings/media.conf                   |  10 ++-
 default/hypr/bindings/utilities.conf               |   7 +-
 default/hypr/envs.conf                             |   2 +-
 default/hypr/looknfeel.conf                        |   5 ++
 default/limine/default.conf                        |   2 +-
 default/omarchy-skill/SKILL.md                     |   2 +-
 default/pacman/mirrorlist-rc                       |   1 +
 default/pacman/pacman-rc.conf                      |  30 +++++++
 default/systemd/system-sleep/force-igpu            |  18 +++++
 .../system/supergfxd.service.d/delay-start.conf    |   6 ++
 .../wireplumber.conf.d/alsa-soft-mixer.conf        |  18 +++++
 install/config/all.sh                              |   4 +
 .../config/hardware/fix-asus-rog-audio-mixer.sh    |  15 ++++
 install/config/hardware/fix-asus-rog-mic.sh        |  17 ++++
 install/config/hardware/legacy-gpu-terminal.sh     |  17 ++++
 install/config/hardware/nvidia.sh                  |   4 +-
 install/config/mimetypes.sh                        |   3 +
 install/config/powerprofilesctl-rules.sh           |  26 ++++++
 install/first-run/battery-monitor.sh               |   4 +-
 install/omarchy-base.packages                      |   5 +-
 migrations/1767306902.sh                           |   2 -
 migrations/1768270644.sh                           |  14 ++++
 migrations/1768906440.sh                           |  19 +++++
 migrations/1768916735.sh                           |   9 +++
 migrations/1769182209.sh                           |   4 +
 migrations/1769183359.sh                           |   3 +
 migrations/1769510847.sh                           |   5 ++
 migrations/1769543550.sh                           |   6 ++
 migrations/1769566732.sh                           |   3 +
 migrations/1769619823.sh                           |   3 +
 themes/catppuccin/waybar.css                       |   2 +
 themes/miasma/backgrounds/01-miasma.jpg            | Bin 0 -> 668987 bytes
 themes/miasma/backgrounds/02-miasma.jpg            | Bin 0 -> 1006235 bytes
 themes/miasma/btop.theme                           |  70 ++++++++++++++++
 themes/miasma/colors.toml                          |  23 ++++++
 themes/miasma/icons.theme                          |   1 +
 themes/miasma/neovim.lua                           |  88 +++++++++++++++++++++
 themes/miasma/preview.png                          | Bin 0 -> 517801 bytes
 themes/miasma/vscode.json                          |   4 +
 themes/tokyo-night/backgrounds/0-swirl-buck.jpg    | Bin 0 -> 2941090 bytes
 version                                            |   2 +-
 77 files changed, 780 insertions(+), 152 deletions(-)

---

## Dev → RC Changes

### Commits

d9c5df29 DRY
7c9708d6 Respect rc too
5a9f0318 Respect rc
ab4694e3 Introduce rc channel
bebf14a1 In order of appearance
ff2a47c6 feat: allow overloading for the about menu action via the ~/.config/omarchy/extensions/menu.sh file. Example included (#4311)
d9bd4a8d Open Nautilus in cwd of terminal (#4331)
8fc5b6e3 Add nautilus-python package for 'Open in Ghostty' shortcut in Nautilus (#4345)
7265c227 Update opacity rule for Steam window class (#4386)
32d187ea Add window rules for Bitwarden Chrome Extension (#4389)
c19fc159 Just make a separate browser ready for the authentication
7ffdfdbd Only idleinhibit
161fa3f3 Fix up the installer
d6c28f31 Force fullscreen
4348ab6e Let the done screen time out in 7 seconds
9d07cc88 Add installer and windowrule configuration for NVIDIA GeForce Now
ba31e307 Ensure master volume isn't muted either
2df5f231 Add x11 fallback to SDL_VIDEODRIVER for compatibility
26afde34 fix echo comment in powerprofile migration (#4388)
3b94207b Fix: Jetbrains rules were not working properly anymore (#4150)
e567020e Use the new helper
f78f5b2c Automatically switch power profile when plugged in (balanced) and unplugged (power saver) (#4375)
ec305459 Prevent Telegram from stealing focus on every message receipt
55231e97 Add new Miasma theme
a8e0762f Open directories in file manager
bb91f908 Merge branch 'master' into dev
a7995efa Ensure master is used instead of dev as a default
5b534de6 Rebooting is needed for hibernation to be available
4fe35797 We didn't get this working
7015601d No need to start on the first install
532f4310 Fix audio mixing on ROG in migration as well
56b02f62 Switch back to mainline chromium
83628ab3 Merge pull request #4314 from jmargeta/fix-legacy-mobile-nvidia-cards
d8961424 auto toggle scratchpad on switching workspace (#4250)
77a57aa8 Add kb_variant to input.conf (#4330)
e455d1bd Enable auto-pasting for the emoji picker (#4344)
adfe1829 Use subshell for open() to avoid job control output (#4366)
febd18ce Replace yq with pure bash for TOML parsing (#4171)
768c553c Add missing icons to Development remove menus (#4339)
bf99a2dd Merge branch 'master' into dev
09305835 Fix sourcing
4a6baafd Move all fixes for Asus ROGs to install time
c1bf6c46 Fix the mic on Asus ROG laptops
66daacb3 Now available on OPR
5b2c0daf Fix drivers for older NVIDIA MXxxx mobile GPUs
988418ae Make purpose clearer
25451f4a Compensate for swayosd not liking a 0.00 progress meter
d884265d Add keyboard brightness controls
5e1ce163 Centralize all brightness commands
713b6e3a Expose audio soft mixer as a tweak
2c7b283a Toggle hybrid GPU mode via supergfxctl (#4277)
4701726c Split out removing orphan packages as well
bfc3c69c Update AUR packages after system pkgs + migrate
21514dc5 Turn audio soft mixing into an opt-in toggle
ed9a4a45 Merge pull request #4247 from incpo/feat/webcam-source-selection
697d0902 Add webcam source selection for screen recording

### File Changes

 bin/omarchy-battery-present                        |  10 +++
 bin/omarchy-branch-set                             |  13 +--
 ...y-cmd-brightness => omarchy-brightness-display} |   2 +-
 ...brightness => omarchy-brightness-display-apple} |   0
 bin/omarchy-brightness-keyboard                    |  40 ++++++++++
 bin/omarchy-channel-set                            |   3 +-
 bin/omarchy-cmd-screenrecord                       |  15 +++-
 bin/omarchy-hibernation-setup                      |   6 +-
 bin/omarchy-install-geforce-now                    |  17 ++++
 bin/omarchy-menu                                   |  62 ++++++++++++---
 bin/omarchy-refresh-pacman                         |  17 ++--
 bin/omarchy-show-done                              |   2 +-
 bin/omarchy-swayosd-brightness                     |   5 +-
 bin/omarchy-theme-set-browser                      |  12 +--
 bin/omarchy-toggle-hybrid-gpu                      |  53 +++++++++++++
 bin/omarchy-update-aur-pkgs                        |  13 +++
 bin/omarchy-update-orphan-pkgs                     |  10 +++
 bin/omarchy-update-perform                         |   2 +
 bin/omarchy-update-system-pkgs                     |  21 -----
 bin/omarchy-version-channel                        |   4 +
 boot.sh                                            |  10 +--
 config/elephant/symbols.toml                       |   1 +
 config/hypr/bindings.conf                          |   1 +
 config/hypr/input.conf                             |   4 +
 config/omarchy/extensions/menu.sh                  |   6 ++
 default/bash/aliases                               |   4 +-
 default/hypr/apps.conf                             |   2 +
 default/hypr/apps/bitwarden.conf                   |   4 +
 default/hypr/apps/geforce.conf                     |   5 ++
 default/hypr/apps/jetbrains.conf                   |  49 ++++++++----
 default/hypr/apps/steam.conf                       |   2 +-
 default/hypr/apps/telegram.conf                    |   2 +
 default/hypr/bindings/media.conf                   |  10 ++-
 default/hypr/bindings/utilities.conf               |   6 +-
 default/hypr/envs.conf                             |   2 +-
 default/hypr/looknfeel.conf                        |   5 ++
 default/pacman/mirrorlist-rc                       |   1 +
 default/pacman/pacman-rc.conf                      |  30 +++++++
 default/systemd/system-sleep/force-igpu            |  18 +++++
 .../system/supergfxd.service.d/delay-start.conf    |   6 ++
 .../wireplumber.conf.d/alsa-soft-mixer.conf        |   0
 install/config/all.sh                              |   3 +
 .../config/hardware/fix-asus-rog-audio-mixer.sh    |  15 ++++
 install/config/hardware/fix-asus-rog-mic.sh        |  17 ++++
 install/config/hardware/nvidia.sh                  |   4 +-
 install/config/mimetypes.sh                        |   3 +
 install/config/powerprofilesctl-rules.sh           |  26 ++++++
 install/first-run/battery-monitor.sh               |   4 +-
 install/omarchy-base.packages                      |   4 +-
 migrations/1768429270.sh                           |   6 --
 migrations/1768906440.sh                           |  19 +++++
 migrations/1768916735.sh                           |   9 +++
 migrations/1769182209.sh                           |   4 +
 migrations/1769183359.sh                           |   3 +
 migrations/1769510847.sh                           |   5 ++
 migrations/1769543550.sh                           |   6 ++
 migrations/1769566732.sh                           |   3 +
 migrations/1769619823.sh                           |   3 +
 themes/miasma/backgrounds/01-miasma.jpg            | Bin 0 -> 668987 bytes
 themes/miasma/backgrounds/02-miasma.jpg            | Bin 0 -> 1006235 bytes
 themes/miasma/btop.theme                           |  70 ++++++++++++++++
 themes/miasma/colors.toml                          |  23 ++++++
 themes/miasma/icons.theme                          |   1 +
 themes/miasma/neovim.lua                           |  88 +++++++++++++++++++++
 themes/miasma/preview.png                          | Bin 0 -> 517801 bytes
 themes/miasma/vscode.json                          |   4 +
 66 files changed, 691 insertions(+), 104 deletions(-)

Comparison generated: Thu Feb  5 12:15:00 PM PST 2026
