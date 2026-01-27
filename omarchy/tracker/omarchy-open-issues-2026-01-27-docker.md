# Open issues for basecamp/omarchy

_Filtered by search keyword: `docker`_

## Summary (newest first)

| # | Title | Opened | Comments | Labels | Link |
|---|-------|--------|----------|--------|------|
| #4056 | Hard System Freeze on Nvidia [RTX 2060]: "i2c timeout" errors & "perf interrupt took too long" | 2026-01-02T10:19:41Z | 3 | bug | [link](https://github.com/basecamp/omarchy/issues/4056) |
| #3550 | Remove Tool doesent find self created TUI Apps | 2025-11-22T17:48:09Z | 0 | bug | [link](https://github.com/basecamp/omarchy/issues/3550) |
| #2990 | WiFi stuck in dormant state on normal boot due to UFW/network race condition | 2025-10-30T05:39:30Z | 5 | bug | [link](https://github.com/basecamp/omarchy/issues/2990) |
| #2903 | Chromium Freezes When Pasting Clipboard Data From Windows | 2025-10-27T15:10:47Z | 15 | bug | [link](https://github.com/basecamp/omarchy/issues/2903) |
| #2827 | elephant-files consumes high CPU and RAM | 2025-10-24T22:45:02Z | 12 | bug | [link](https://github.com/basecamp/omarchy/issues/2827) |
| #2599 | Windows VM: RDP connects too early, “Connection reset by peer”, VM auto-stops | 2025-10-20T07:44:21Z | 17 | bug | [link](https://github.com/basecamp/omarchy/issues/2599) |
| #2589 | On install, provide option to install/configure an RDP with GUI | 2025-10-19T22:32:56Z | 1 | enhancement | [link](https://github.com/basecamp/omarchy/issues/2589) |
| #1769 | After recent updates, there's unwanted STARSHIP_START_TIME text printed on every command | 2025-09-18T13:42:01Z | 4 | bug | [link](https://github.com/basecamp/omarchy/issues/1769) |
| #1656 | Ideas for first class support for Windows applications | 2025-09-13T21:34:58Z | 14 | enhancement | [link](https://github.com/basecamp/omarchy/issues/1656) |
| #1624 | Improve docker daemon.conf defaults to work better for containers using resources over tailscale tunnel on host | 2025-09-12T05:55:30Z | 4 | enhancement | [link](https://github.com/basecamp/omarchy/issues/1624) |
| #394 | suspend on BeeLink SER9 (and new Framework 13 AMD Ryzen AI 9 HX 370) | 2025-07-29T11:55:05Z | 29 |  | [link](https://github.com/basecamp/omarchy/issues/394) |


## Full issue details (newest first)

### Issue #4056: Hard System Freeze on Nvidia [RTX 2060]: "i2c timeout" errors & "perf interrupt took too long"

- Opened: 2026-01-02T10:19:41Z
- Comments: 3
- Labels: bug
- Link: https://github.com/basecamp/omarchy/issues/4056

### System details
CPU: Intel Core i5-8600
GPU: NVIDIA GeForce RTX 2060
RAM: 16GB
Kernel: 6.17.9-arch1-1

### Issue #3550: Remove Tool doesent find self created TUI Apps

- Opened: 2025-11-22T17:48:09Z
- Comments: 0
- Labels: bug
- Link: https://github.com/basecamp/omarchy/issues/3550

### System details

Omarchy 3.2

### What's wrong?

### Issue #2990: WiFi stuck in dormant state on normal boot due to UFW/network race condition

- Opened: 2025-10-30T05:39:30Z
- Comments: 5
- Labels: bug
- Link: https://github.com/basecamp/omarchy/issues/2990

### System details

Framework Laptop 13 (AMD Ryzen AI 300 Series), Mediatek MT7925 Wi-Fi 7, Omarchy version 3.1.4

### What's wrong?

### Issue #2903: Chromium Freezes When Pasting Clipboard Data From Windows

- Opened: 2025-10-27T15:10:47Z
- Comments: 15
- Labels: bug
- Link: https://github.com/basecamp/omarchy/issues/2903

### System details

11th Gen Intel(R) Core(TM) i5-1135G7 (8) @ 4.20 GHz,  Omarchy 3.1.3

### What's wrong?

### Issue #2827: elephant-files consumes high CPU and RAM

- Opened: 2025-10-24T22:45:02Z
- Comments: 12
- Labels: bug
- Link: https://github.com/basecamp/omarchy/issues/2827

### System details

Thankpad X1 Carbon

### What's wrong?

### Issue #2599: Windows VM: RDP connects too early, “Connection reset by peer”, VM auto-stops

- Opened: 2025-10-20T07:44:21Z
- Comments: 17
- Labels: bug
- Link: https://github.com/basecamp/omarchy/issues/2599

### System details

i5 8350u, Intel UHD 620, Omarchy 3.10

### What's wrong?

### Issue #2589: On install, provide option to install/configure an RDP with GUI

- Opened: 2025-10-19T22:32:56Z
- Comments: 1
- Labels: enhancement
- Link: https://github.com/basecamp/omarchy/issues/2589

### What do you need?

First, thanks for a great out-of-box arch experience, mainly been dabbling, but its been fun! Here's an idea I wanted to do as a home project

Take a mini-pc such as https://www.bee-link.com/products/beelink-ser8-8845hs?_pos=1&_fid=90f0072bc&_ss=c. This PC would live in my networking closet, and then be primarily accessed remotely, for me from MSTSC but really any remote-desktop client. I started down the road of installing and configuring xrdp/Xorg and making some progress, but its been a slog, I wanted to offer the idea up here in case I'm going down a bad path or there is a more elegant (Omarchy worthy) solution. I'll keep tooling around and update this if I find anything good.

### Issue #1769: After recent updates, there's unwanted STARSHIP_START_TIME text printed on every command

- Opened: 2025-09-18T13:42:01Z
- Comments: 4
- Labels: bug
- Link: https://github.com/basecamp/omarchy/issues/1769

### System details

Omarchy 3.0.1

### What's wrong?

### Issue #1656: Ideas for first class support for Windows applications

- Opened: 2025-09-13T21:34:58Z
- Comments: 14
- Labels: enhancement
- Link: https://github.com/basecamp/omarchy/issues/1656

### What do you need?

(Some) Windows applications work quite well once you install [Wine](https://www.winehq.org/) (menu -> install -> package -> wine).
`.exe` files are automatically associated with Wine and execute when you double click them in the file browser. I did have to fiddle with `winecfg` and scale the DPI under the _Graphics_ tab way up to make applications readable, but this may be display hardware dependent.


### Issue #1624: Improve docker daemon.conf defaults to work better for containers using resources over tailscale tunnel on host

- Opened: 2025-09-12T05:55:30Z
- Comments: 4
- Labels: enhancement
- Link: https://github.com/basecamp/omarchy/issues/1624

### What do you need?

# Docker MTU Optimization for Tailscale Networks

## Problem Statement

### Issue #394: suspend on BeeLink SER9 (and new Framework 13 AMD Ryzen AI 9 HX 370)

- Opened: 2025-07-29T11:55:05Z
- Comments: 29
- Labels: 
- Link: https://github.com/basecamp/omarchy/issues/394

When using the "Suspend" on BeeLink SER9, after issuing "suspend" Beelink device fans spin up and what I see immediately is a lock screen (so looks like it is not suspending). After unlocking, `WLAN0` interface is gone. Running `lspci -knnd ::0280` shows:

```bash
c3:00.0 Network controller [0280]: Intel Corporation Wi-Fi 6 AX200 [8086:2723] (rev 1a)
	Subsystem: Intel Corporation Wi-Fi 6 AX200NGW [8086:0084]

