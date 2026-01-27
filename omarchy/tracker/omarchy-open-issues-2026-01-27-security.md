# Open issues for basecamp/omarchy

_Filtered by search keyword: `security`_

## Summary (newest first)

| # | Title | Opened | Comments | Labels | Link |
|---|-------|--------|----------|--------|------|
| #4284 | systemd-stub prints “Failed to read *.cred, Volume corrupt” on boot (Limine + UKI) | 2026-01-16T12:57:44Z | 12 | bug | [link](https://github.com/basecamp/omarchy/issues/4284) |
| #4184 | Suspend not working in Omarchy 3.3 | 2026-01-09T12:11:11Z | 10 | bug | [link](https://github.com/basecamp/omarchy/issues/4184) |
| #3899 | Chromium GPU/Ozone errors after update to 3.2.3 | 2025-12-16T13:39:31Z | 76 | bug | [link](https://github.com/basecamp/omarchy/issues/3899) |
| #3413 | RDSEED32 is broken. Disabling the corresponding CPUID bit - after today's last update | 2025-11-15T12:11:28Z | 15 | bug | [link](https://github.com/basecamp/omarchy/issues/3413) |
| #3059 | Increase default memlock hard/soft limits | 2025-11-02T01:28:43Z | 2 | enhancement | [link](https://github.com/basecamp/omarchy/issues/3059) |
| #2846 | Can't enable secure DNS option in Brave because of policy | 2025-10-25T14:49:25Z | 10 | bug | [link](https://github.com/basecamp/omarchy/issues/2846) |
| #2800 | google-chrome flickers | 2025-10-24T10:52:24Z | 17 | bug | [link](https://github.com/basecamp/omarchy/issues/2800) |
| #2712 | Enhance [omarchy] Repo Security: Switch SigLevel to `Required DatabaseOptional` and Update Security Docs | 2025-10-22T09:24:28Z | 13 | enhancement | [link](https://github.com/basecamp/omarchy/issues/2712) |
| #2541 | omarchy-lock-screen - compatibility with BitWarden | 2025-10-19T10:21:13Z | 1 | enhancement | [link](https://github.com/basecamp/omarchy/issues/2541) |
| #1818 | Bluetooth Audio Devices Doesn't Work | 2025-09-19T21:43:48Z | 13 | bug | [link](https://github.com/basecamp/omarchy/issues/1818) |
| #1622 | The sudo tries config does not seem to work - some suggestions for improvements | 2025-09-12T05:48:43Z | 0 | enhancement | [link](https://github.com/basecamp/omarchy/issues/1622) |
| #1414 | Use NetworkManager instead of systemd-networkd | 2025-09-02T15:44:54Z | 93 |  | [link](https://github.com/basecamp/omarchy/issues/1414) |
| #1022 | 2016 MacBook Pro bizarre WiFi behavior | 2025-08-24T04:20:45Z | 37 |  | [link](https://github.com/basecamp/omarchy/issues/1022) |


## Full issue details (newest first)

### Issue #4284: systemd-stub prints “Failed to read *.cred, Volume corrupt” on boot (Limine + UKI)

- Opened: 2026-01-16T12:57:44Z
- Comments: 12
- Labels: bug
- Link: https://github.com/basecamp/omarchy/issues/4284

### System details

Omarchy 3.3.3 (stable, master), Linux 6.18.3-arch1-1, Limine 10.6.2 with systemd-stub (UKI), systemd init, btrfs (encrypted) root, vfat ESP mounted at /boot, Dell Inspiron 5502 (11th-gen Intel i5), dual-boot with Windows, Secure Boot disabled.

### What's wrong?

### Issue #4184: Suspend not working in Omarchy 3.3

- Opened: 2026-01-09T12:11:11Z
- Comments: 10
- Labels: bug
- Link: https://github.com/basecamp/omarchy/issues/4184

### System details

Framework 13 AI 370

### What's wrong?

### Issue #3899: Chromium GPU/Ozone errors after update to 3.2.3

- Opened: 2025-12-16T13:39:31Z
- Comments: 76
- Labels: bug
- Link: https://github.com/basecamp/omarchy/issues/3899

### System details

Omarchy 3.2.3, 13th Gen Intel(R) Core, NVIDIA GeForce RTX 3050 6, Intel Raptor Lake-S UHD G

### What's wrong?

### Issue #3413: RDSEED32 is broken. Disabling the corresponding CPUID bit - after today's last update

- Opened: 2025-11-15T12:11:28Z
- Comments: 15
- Labels: bug
- Link: https://github.com/basecamp/omarchy/issues/3413

### System details

Omarchy 3.1.7 / Linux 6.17.8-arch1-1

### What's wrong?

### Issue #3059: Increase default memlock hard/soft limits

- Opened: 2025-11-02T01:28:43Z
- Comments: 2
- Labels: enhancement
- Link: https://github.com/basecamp/omarchy/issues/3059

### What do you need?

Is this something that can get a reasonable default in Omarchy installations? See this tweet for more information:

https://x.com/rpcs3/status/1330818231527944194

### Issue #2846: Can't enable secure DNS option in Brave because of policy

- Opened: 2025-10-25T14:49:25Z
- Comments: 10
- Labels: bug
- Link: https://github.com/basecamp/omarchy/issues/2846

### System details

Thinkpad X1 Nano

### What's wrong?

### Issue #2800: google-chrome flickers

- Opened: 2025-10-24T10:52:24Z
- Comments: 17
- Labels: bug
- Link: https://github.com/basecamp/omarchy/issues/2800

### System details

Model: HP Pavilion Gaming Laptop 15-dk1xxx OS: Omarchy 3.1.1 (Arch-based) Kernel: Linux 6.17.3-arch2-1 WM/Compositor: Hyprland 0.51.1 (Wayland) Terminal: Alacritty 0.16.1 (font size 9pt) Packages: 1040 (pacman)

### What's wrong?

### Issue #2712: Enhance [omarchy] Repo Security: Switch SigLevel to `Required DatabaseOptional` and Update Security Docs

- Opened: 2025-10-22T09:24:28Z
- Comments: 13
- Labels: enhancement
- Link: https://github.com/basecamp/omarchy/issues/2712

### What do you need?

## Disclaimer
This issue was drafted with assistance from Grok, an AI tool created by xAI, to help articulate the proposal and ensure technical accuracy. The ideas and intent are my own, with Grok aiding in structuring and refining the content.


### Issue #2541: omarchy-lock-screen - compatibility with BitWarden

- Opened: 2025-10-19T10:21:13Z
- Comments: 1
- Labels: enhancement
- Link: https://github.com/basecamp/omarchy/issues/2541

### What do you need?

Hello, I would like to suggest to include bitwarden lock into the lock screen script in order to increase security for bitwarden users.

I am not versed on how to program, please excuse me.

### Issue #1818: Bluetooth Audio Devices Doesn't Work

- Opened: 2025-09-19T21:43:48Z
- Comments: 13
- Labels: bug
- Link: https://github.com/basecamp/omarchy/issues/1818

### System details

AMD Ryzen 9 PRO 7940HS, AMD Radeon RX 6550M, Omarchy 3.0.1, Hyprland 0.51.0, 

### What's wrong?

### Issue #1622: The sudo tries config does not seem to work - some suggestions for improvements

- Opened: 2025-09-12T05:48:43Z
- Comments: 0
- Labels: enhancement
- Link: https://github.com/basecamp/omarchy/issues/1622

### What do you need?

## Issue
The current faillock configuration scripts use deprecated inline parameters in PAM files, which is no longer the recommended approach according to Arch documentation.


### Issue #1414: Use NetworkManager instead of systemd-networkd

- Opened: 2025-09-02T15:44:54Z
- Comments: 93
- Labels: 
- Link: https://github.com/basecamp/omarchy/issues/1414

edit: this PR solves this: https://github.com/basecamp/omarchy/pull/2909

It is has become basically the standard in the Linux Desktop space. it has by far the best support and a lot of apps (such as VPNs) need it to work.

I have really like Omarchy so far, but I think systemd-networkd is not a viable option for a complete desktop system. Have already bumped into a lot of issues were

### Issue #1022: 2016 MacBook Pro bizarre WiFi behavior

- Opened: 2025-08-24T04:20:45Z
- Comments: 37
- Labels: 
- Link: https://github.com/basecamp/omarchy/issues/1022

I attempted to install arch on an old MBP and ran into some interesting challenges.

This is relevant here now because I just attempted to install the iso and had similarly strange issues.

## Arch

