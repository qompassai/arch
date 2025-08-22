<!-- Qompass AI Omarchy Debug Config -->
<!-- Copyright (C) 2025 Qompass AI, All rights reserved -->
<!-- ---------------------------------------- -->
<h1 style="font-size: 1.6em; font-weight: bold; padding: 14px; background: #334155; color: white; border-radius: 10px; margin: 10px 0;">
  Omarchy Hupr-debug Config
</h1>

 <strong>author:</strong> <a href="https://github.com/phaedrusflow" target="_blank" style="color: #1d4ed8;">@phaedrusflow</a><br>
  <strong>TLDR:</strong><br>
  Base Hyprland Debug Config.<br>
</div>


  <details>
    <summary><b>Option Reference</b></summary>

| Variable                  | Description                                                                                                                | Example Command                                        | Reference                                                                                      |
|---------------------------|----------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------|------------------------------------------------------------------------------------------------|
| [`overlay`](https://wiki.hyprland.org/Configuring/Variables/#overlay)               | Enables or disables debug overlay visuals.                                      |                                                        | [Hyprland Config Vars][1]                                                                      |
| [`damage_blink`](https://wiki.hyprland.org/Configuring/Variables/#damage_blink)     | Toggles blinking on damaged regions. Requires damage tracking enabled.          |                                                        | [Hyprland Config Vars][1]                                                                      |
| [`damage_tracking`](https://wiki.hyprland.org/Configuring/Variables/#damage_tracking)| Sets the damage tracking mode (higher value = more accurate, slower).           |                                                        | [Hyprland Config Vars][1]                                                                      |
| [`enable_stdout_logs`](https://wiki.hyprland.org/Configuring/Variables/#enable_stdout_logs)| Outputs logs to stdout, useful for terminals and debugging.             | `HYPRLAND_TRACE=1 Hyprland > hyprland.log 2>&1`         | [Hyprland Debugging][2]                                                                        |
| [`disable_time`](https://wiki.hyprland.org/Configuring/Variables/#disable_time)     | Disables time-based features during debug sessions.                             |                                                        | [Hyprland Config Vars][1]                                                                      |
| [`disable_logs`](https://wiki.hyprland.org/Configuring/Variables/#disable_logs)     | Turns off all logging if set to true.                                           |                                                        | [Hyprland Config Vars][1]                                                                      |
| [`suppress_errors`](https://wiki.hyprland.org/Configuring/Variables/#suppress_errors)| Completely hides error output if true.                                          |                                                        | [Hyprland Config Vars][1]                                                                      |
| [`watchdog_timeout`](https://wiki.hyprland.org/Configuring/Variables/#watchdog_timeout)| Sets the timeout in seconds for the watchdog.                             |                                                        | [Hyprland Config Vars][1]                                                                      |
| [`disable_scale_checks`](https://wiki.hyprland.org/Configuring/Variables/#disable_scale_checks)| Disables scale checks for easier debugging.                        |                                                        | [Hyprland Config Vars][1]                                                                      |
| [`error_limit`](https://wiki.hyprland.org/Configuring/Variables/#error_limit)       | Maximum number of errors before shutdown or action.                             |                                                        | [Hyprland Config Vars][1]                                                                      |
| [`colored_stdout_logs`](https://wiki.hyprland.org/Configuring/Variables/#colored_stdout_logs)| Makes stdout logs colored for readability.                        | `HYPRLAND_TRACE=1`                                      | [Hyprland Debugging][2]                                                                        |
| [`pass`](https://wiki.hyprland.org/Configuring/Variables/#pass)                     | If set to true, passes through selected debug configs (reserved for future use).|                                                        | [Hyprland Config Vars][1]                                                                      |

[1]: https://wiki.hyprland.org/Configuring/Variables/
[2]: https://wiki.hyprland.org/Debugging/

  </details>

  <details>
    <summary><b>Debug Environment Variable Reference</b></summary>

| Env Variable                          | Description                                                        | Example Command                                     | Reference                                        |
|----------------------------------------|--------------------------------------------------------------------|-----------------------------------------------------|--------------------------------------------------|
| [`AQ_TRACE`](https://wiki.hyprland.org/Debugging/#aq_trace)           | Enables detailed tracing for AQ components.         | `export AQ_TRACE=1`                                | [Hyprland Debugging][2]                          |
| [`HYPRLAND_NO_RT`](https://wiki.hyprland.org/Debugging/#hyprland_no_rt)              | Disables real-time thread priority for Hyprland.    | `export HYPRLAND_NO_RT=1`                          | [Hyprland Debugging][2]                          |
| [`HYPRLAND_NO_SD_NOTIFY`](https://wiki.hyprland.org/Debugging/#hyprland_no_sd_notify)| Disables systemd notify integration.                | `export HYPRLAND_NO_SD_NOTIFY=1`                   | [Hyprland Debugging][2]                          |
| [`HYPRLAND_NO_SD_VARS`](https://wiki.hyprland.org/Debugging/#hyprland_no_sd_vars)    | Prevents reading environment variables from systemd.| `export HYPRLAND_NO_SD_VARS=1`                     | [Hyprland Debugging][2]                          |
| [`HYPRLAND_TRACE`](https://wiki.hyprland.org/Debugging/#hyprland_trace)              | Enables in-depth trace logging.                     | `export HYPRLAND_TRACE=1`                          | [Hyprland Debugging][2]                          |
| [`WAYLAND_DEBUG`](https://wayland.freedesktop.org/debug.html)                        | Enables Wayland protocol debug output.              | `WAYLAND_DEBUG=1 Hyprland`                         | [Wayland Debug][3]                               |

[3]: https://wayland.freedesktop.org/debug.html

  </details>

  <details>
    <summary>❓ <b>Debugging in Hyprland: Example Commands</b></summary>

- **Start Hyprland with all debug/tracing enabled:**

AQ_TRACE=1 HYPRLAND_TRACE=1 HYPRLAND_NO_RT=1 HYPRLAND_NO_SD_NOTIFY=1 HYPRLAND_NO_SD_VARS=1 WAYLAND_DEBUG=1 Hyprland > hyprland.log 2>&1

text
- **View colored logs in real-time (with `colored_stdout_logs=true`):**

tail -f hyprland.log


</details>

<details>
  <summary>🚨 <b>Where to Find Crash and Log Reports</b></summary>

- **STDOUT/STDERR Log:**  
If you started Hyprland as above, logs are in `hyprland.log`.
- **Systemd Journal:**  
If running as a service:  

journalctl --user -u hyprland -xe

text
- **Wayland Debug Log:**  
Output is included inline with Hyprland logs if `WAYLAND_DEBUG=1`.

</details>

