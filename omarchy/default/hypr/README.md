<!-- /qompassai/arc/omarchy/default/hypr/README.md -->
<!-- Qompass AI Omarchy Graphics README.md -->
<!-- Copyright (C) 2025 Qompass AI, All rights reserved -->
<!-- ---------------------------------------- -->

| Variable                   | Values / Examples                                                   | Effect / Usage                                                                   | Reference / Notes                                                     |
|----------------------------|---------------------------------------------------------------------|----------------------------------------------------------------------------------|-----------------------------------------------------------------------|
| AQ_DRM_DEVICES             | /dev/dri/card0:/dev/dri/card1                                       | Lists GPU device nodes for AQ (OpenGL, media, etc.)                              | [AQEMU docs/Arch Wiki] |
| AQ_MGPU_NO_EXPLICIT        | 1 (on), 0 (off)                                                     | Disables explicit multi-GPU setup                                                | [AQEMU docs] |
| AQ_NO_MODIFIERS            | 1 (on), 0 (off)                                                     | Disables DRM format modifiers                                                    | [AQEMU docs] |
| AQ_RENDER_BACKEND          | gl, vk, d3d11, d3d9                                                 | Rendering backend for AQ                                                         | (AQEMU/ANGLE) |
| CLUTTER_BACKEND            | wayland, x11                                                        | Backend for Clutter-based apps                                                    | [Clutter docs](https://www.clutter-project.org/) |
| DISCORD_ENABLE_WAYLAND     | 1                                                                   | Enables Wayland support in Discord                                               | [Discord issue](https://github.com/discord/discord-api-docs/issues/793) |
| EGL_PLATFORM               | wayland, x11, surfaceless, angle, gbm                               | Platform for EGL client (Wayland, X11, Surface-less, etc.)                        | [EGL docs](https://www.khronos.org/registry/EGL/sdk/docs/man/html/eglGetPlatformDisplayEXT.html) |
| EGL_PLATFORM_ANGLE_TYPE    | 0x3207,0x3208,0x320d,0x320e,0x3450,0x3489                           | ANGLE renderer backend (d3d9, d3d11, OpenGL, GLES, Vulkan, Metal)                 | [ANGLE docs](https://chromium.googlesource.com/angle/angle/+/HEAD/doc/DebuggingTips.md) |
| ELECTRON_ENABLE_LOGGING    | 1                                                                   | Enables logging for Electron apps                                                | [Electron docs](https://www.electronjs.org/docs/latest/api/environment-variables) |
| ELECTRON_ENABLE_WAYLAND    | 1                                                                   | Enables Wayland backend                                                          | [Electron Wayland](https://www.electronjs.org/blog/wayland) |
| ELECTRON_FLAGS             | --enable-wayland-ime --wayland-text-input-version=3 (space separated)| Chromium/Wayland flags                                                           | [Electron CLI flags](https://www.electronjs.org/docs/latest/api/process#processtype) |
| ELECTRON_OZONE_PLATFORM    | wayland, x11                                                        | Ozone platform backend for Electron                                              | [Electron Ozone](https://www.electronjs.org/docs/latest/tutorial/wayland) |
| ELECTRON_ENABLE_FEATURES   | UseOzonePlatform,WaylandWindowDecorations (comma-separated)         | Enable specific Chromium/Ozone/Wayland features                                   | (see Electron docs above) |
| ELECTRON_OZONE_PLATFORM_HINT | auto                                                               | Lets Electron auto-pick platform                                                 | (Electron) |
| GST_PLUGIN_PATH            | /usr/lib/gstreamer-1.0                                              | GStreamer plugin directory                                                        | [GStreamer docs](https://gstreamer.freedesktop.org/documentation/gstreamer/using-plugins.html) |
| ILLOGICAL_IMPULSE_VIRTUAL_ENV | absolute path                                                     | Python venv to use for a specific application                                     | (app-specific) |
| HYPRCURSOR_FORCE_SOFTWARE  | 1                                                                   | Force software-rendered cursors in Hyprland                                       | [Hyprland docs](https://wiki.hyprland.org/) |
| HYPRCURSOR_THEME           | Bibata-Modern-Ice (any theme name)                                  | Cursor theme for Hyprland                                                        | (Hyprland) |
| HYPRCURSOR_SIZE            | 24 (integer, pixels)                                                | Cursor size for Hyprland                                                         | (Hyprland) |
| MOZ_DBUS_REMOTE            | 1                                                                   | Enables remote DBus control in Mozilla Firefox/Thunderbird                        | [Mozilla env](https://wiki.archlinux.org/title/firefox#Configuration) |
| MOZ_ENABLE_WAYLAND         | 1                                                                   | Enable Wayland backend for Mozilla apps                                          | [Mozilla Wayland](https://wiki.mozilla.org/Wayland) |
| MOZ_WEBRENDER              | 1                                                                   | Enables WebRender GPU renderer                                                   | [Mozilla WebRender](https://wiki.mozilla.org/Platform/GFX/WebRender) |
| NIXOS_OZONE_WL             | 1                                                                   | Enable Ozone/Wayland on NixOS                                                    | [NixOS docs] |
| OZONE_PLATFORM             | auto, wayland, x11                                                  | Ozone (Chromium/Electron) backend platform                                       | [Chromium Ozone](https://www.chromium.org/developers/how-tos/run-chromium-with-ozone/) |
| QT_AUTO_SCREEN_SCALE_FACTOR| 1, 0                                                                | Automatic screen scaling in Qt                                                    | [Qt docs](https://doc.qt.io/qt-5/highdpi.html) |
| QT_QPA_PLATFORMTHEME       | qt6ct, kvantum, gtk2, etc.                                          | Sets Qt platform theme                                                           | [Qt docs](https://doc.qt.io/qt-5/qpa.html) |
| QT_SCALE_FACTOR            | 1 (float), e.g., 1.5                                                | Qt scaling factor                                                                | (Qt) |
| QT_QPA_PLATFORM            | wayland;xcb, wayland, xcb                                           | Qt platform plugins to use                                                       | [Qt QPA](https://doc.qt.io/qt-5/qpa.html) |
| QT_STYLE_OVERRIDE          | kvantum, any Qt style                                               | Override Qt widget style                                                         | (Qt) |
| QML2_IMPORT_PATH           | /usr/lib/qt6/qml                                                    | Additional import path for QML engine                                            | (Qt) |
| QT_WAYLAND_DISABLE_WINDOWDECORATION | 1                                                          | Disable Qt window decorations in Wayland backend                                 | (Qt Wayland) |
| SDL_VIDEO_YUV_HWACCEL      | 1                                                                   | Enable SDL YUV hardware acceleration                                            | [SDL wiki](https://wiki.libsdl.org/SDL_HINT_VIDEO_YUV_HWACCEL) |
| SDL_VIDEO_X11_DGAMOUSE     | 0, 1                                                                | Direct Graphics Access mouse input for SDL X11                                   | [SDL wiki](https://wiki.libsdl.org/SDL_HINT_VIDEO_X11_DGAMOUSE) |
| SDL_DYNAMIC_API_ALL        | 1                                                                   | Use all dynamic SDL APIs                                                         | (SDL3 only) |
| SDL_DYNAMIC_API            | /usr/local/lib/libSDL3.so.0                                         | Path to dynamic SDL library                                                      | (SDL3) |
| UE_WAYLAND_EGL_FORWARD     | 1                                                                   | Forward EGL/Wayland for Unreal Engine                                            | (Unreal Linux) |
| WEBKIT_FORCE_WAYLAND       | 1                                                                   | WebKitGTK: use Wayland                                                          | [WebKitGTK docs](https://webkitgtk.org/) |
| WEBVIEW_FORCE_WAYLAND      | 1                                                                   | WebView: use Wayland                                                            | (WebViewGTK) |
| WLR_DRM_DEVICES            | /dev/dri/card0:/dev/dri/card1                                       | Explicitly set which DRM nodes wlroots uses                                     | [Wlroots Arch Wiki](https://wiki.archlinux.org/title/Wlroots) |
| WLR_USE_LIBINPUT           | 1, 0                                                                | Use libinput for input in wlroots compositors                                   | (wlroots) |
| WLR_RENDERER               | gles2, vulkan, pixman                                               | Renderer for wlroots (GLES2, Vulkan, fallback to pixman)                        | (wlroots) |
| WLR_RENDERER_ALLOW_SOFTWARE| 1, 0                                                                | Allow wlroots to fall back to software rendering                                | (wlroots) |


| Option Name                              | Value (hex) | Rendering Backend     | Shorthand |
|------------------------------------------|-------------|----------------------|-----------|
| EGL_PLATFORM_ANGLE_TYPE_D3D9_ANGLE       | 0x3207      | Direct3D 9           | d3d9      |
| EGL_PLATFORM_ANGLE_TYPE_D3D11_ANGLE      | 0x3208      | Direct3D 11          | d3d11     |
| EGL_PLATFORM_ANGLE_TYPE_OPENGL_ANGLE     | 0x320d      | OpenGL               | gl        |
| EGL_PLATFORM_ANGLE_TYPE_OPENGLES_ANGLE   | 0x320e      | OpenGL ES            | es        |
| EGL_PLATFORM_ANGLE_TYPE_VULKAN_ANGLE     | 0x3450      | Vulkan               | vk        |
| EGL_PLATFORM_ANGLE_TYPE_METAL_ANGLE      | 0x3489      | Metal (macOS/iOS)    | mtl       |

