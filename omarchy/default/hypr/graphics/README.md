<!-- README.md -->
<!-- Qompass AI - [Add description here] -->
<!-- Copyright (C) 2025 Qompass AI, All rights reserved -->
<!-- ---------------------------------------- -->
# Omarchy Hyprland Graphics Configs
**Qompass AI — Graphics Environment Configuration**  
© 2025 Qompass AI, All rights reserved

This directory contains graphics configuration environment presets for various frameworks and drivers (ANGLE, GTK, Mesa, NVIDIA, Vulkan, Unreal, X11). Use these to adjust runtime graphics behavior for debugging, tuning, or compatibility in Hyprland and Omarchy environments.

---

<details>
  <summary>angle.conf</summary>

~/.config/hypr/hypr.d/graphics/angle.conf

env = ANGLE_DEFAULT_PLATFORM,vulkan
env = ANGLE_CAPTURE_SERIALIZE_STATE,1
env = ANGLE_FEATURE_OVERRIDES_ENABLED,prefer_vulkan
env = ANGLE_PLATFORM,vulkan
env = ANGLE_PLATFORM_FEATURES,vulkan_synchronization2

text
</details>

<details>
  <summary>gtk.conf</summary>

~/.config/hypr/hypr.d/graphics/gtk.conf

#env = GDK_DISABLE,gl,gl-api,gles-api,egl,vulkan,dmabuf,offload,threads
#env = GDK_GL_DISABLE,
env = GDK_BACKEND,wayland,x11
env = GDK_PIXBUF_MODULE_FILE,/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache
env = GDK_SCALE,1
env = GSK_CACHE_TIMEOUT,15
env = GSK_RENDERER,opengl,vulkan
env = GTK_USE_PORTAL,1
env = GTK_THEME,Adwaita:dark
env = GTK_A11Y,test
env = GTK_CSD,1
env = GTK_MEDIA,gstreamer
#env = GDK_VULKAN_DISABLE,dmabuf,ycbr,sempahore-export,sempahore-import,incremental-present,swapchain-maintenance
env = EGL_DRIVER,iris
env = __EGL_VENDOR_LIBRARY_FILENAMES,/home/phaedrus/.local/share/glvnd/egl_vendor.d/50_mesa.json:/home/phaedrus/.local/share/glvnd/egl_vendor.d/10_nvidia.json

text
</details>

<details>
  <summary>mesa.conf</summary>

See also: https://docs.mesa3d.org/envvars.html

env = GST_VAAPI_ALL_DRIVERS,1
env = LIBGL_ALWAYS_SOFTWARE,0
env = LIBVA_DRIVERS_PATH,/usr/lib/dri
env = LP_NUM_THREADS,8
env = MESA_DISK_CACHE_DATABASE,1
env = MESA_DISK_CACHE_SINGLE_FILE,0
env = MESA_GLSL_CACHE_ENABLE,true
env = MESA_GLSL_CACHE_DIR,/home/phaedrus/.cache/mesa_shader_cache
env = MESA_GLSL_CACHE_MAX_SIZE,32G
env = MESA_SHADER_CACHE_MAX_SIZE,32G
env = MESA_LOADER_DRIVER_OVERRIDE,iris
env = MESA_DISK_CACHE_MULTI_FILE,1
env = MESA_NO_ERRORS,1
env = MESA_SHADER_CACHE_DIR,/home/phaedrus/.cache/mesa_shader_cache_db
env = MESA_VK_WSI_DISPLAY,wayland
env = MESA_VK_WSI_LIST,wayland
env = VK_WSI_MODE,wayland
env = OCL_ICD_VENDORS,/home/phaedrus/.local/etc/OpenCL/vendors
env = ONEAPI_DEVICE_SELECTOR,opencl:cpu
env = OPENCV_OPENCL_DEVICE,NVIDIA CUDA:GPU:0
env = OPENCV_OPENCL_DEVICE,Intel:GPU:0
env = RUSTICL_DEVICE_TYPE,gpu
env = RUSTICL_ENABLE,iris,llvmpipe
env = RUSTICL_FEATURES=fp16,fp64
env = RUSTICL_MAX_WORK_GROUPS,128
env = VAAPI_COMPAT,1
env = VAAPI_MPEG4_ENABLED,1
env = VDPAU_DRIVER,va_gl
env = ZINK_BATCH_COUNT,8
env = ZINK_SHADER_CACHE_DIR,/home/phaedrus/.cache/zink_shader_cache_db

text
</details>

<details>
  <summary>nvidia.conf</summary>

Qompass AI Hyprland Graphics NVIDIA Config

opengl {
nvidia_anti_flicker = true
}
env = CUDA_VISIBLE_DEVICES,0,1,2,3,4
env = DRI_PRIME,1
env = DRI_PRIME_RENDER_OFFLOAD,1
env = GBM_BACKEND,nvidia-drm
env = __GL_ALLOW_FLIPPING,1
env = __GL_ALLOW_UNOFFICIAL_PROTOCOL,1
#env = __GL_CACHE_MAX_SIZE,#Not setting lets it be unlimited
env = __GL_MAX_FRAME_AGE,3
env = __GL_MaxFramesAllowed,1
env = __GL_GSYNC_ALLOWED,1
env = __GL_SYNC_TO_VBLANK,1
env = __GL_SHADER_DISK_CACHE_PATH,/home/youruser/.cache/nvidia/GLCache
env = __GL_SHADER_DISK_CACHE,1
env = __GL_SHADER_DISK_CACHE_SKIP_CLEANUP,1
env = __GL_THREADED_OPTIMIZATIONS,1
env = __GL_VRR_ALLOWED,1
env = __GLX_VENDOR_LIBRARY_NAME,nvidia
env = LIBVA_DRIVER_NAME,nvidia
env = __NV_PRIME_RENDER_OFFLOAD,1
env = __NV_PRIME_RENDER_OFFLOAD_PROVIDER,NVIDIA-G0
env = NVD_BACKEND,direct
env = VK_LAYER_NV_optimus,1

text
</details>

<details>
  <summary>unreal.conf</summary>

~/.config/hypr/hypr.d/graphics/unreal.conf

env = UNREAL_FORCE_WAYLAND,1

text
</details>

<details>
  <summary>vulkan.conf</summary>

~/.config/hypr/hypr.d/graphics/vulkan.conf

env = DISABLE_LAYER_AMD_SWITCHABLE_GRAPHICS_1,1
env = VK_ICD_FILENAMES,home/phaedrus/.local/share/vulkan/icd.d
env = VK_KHR_PRESENT_WAIT_ENABLED,1
#env = __VK_LAYER_NV_optimus,NVIDIA_only
env = VK_LAYER_PATH,/home/phaedrus/.local/share/vulkan/explicit_layer.d
env = VK_PRESENT_MODE,mailbox
env = VK_LOADER_LAYERS_DISABLE,VK_LAYER_MESA_overlay:VK_LAYER_MESA_device_select:VK_LAYER_LUNARG_api_dump:VK_LAYER_LUNARG_monitor
env = VK_WSI_MODE,wayland
env = MESA_VK_WSI_LIST,wayland
#env = VK_DEVICE_FILTER,intel
#env = VK_LAYER_PATH,/home/phaedrus/.local/share/vulkan/implicit_layer.d
env = VK_LOADER_DISABLE_LAYER_MESA,1

text
</details>

<details>
  <summary>x11.conf</summary>

/qompassai/arch/omarchy/default/hypr/graphics/x11.conf

env = SDL_VIDEODRIVER,wayland,x11
env = QT_QPA_PLATFORM,wayland;xcb
env = WLR_EGL_NO_X11,1
env = WLR_X11_NO_ATOMS,1
env = XCURSOR_SIZE,32
env = XWAYLAND_NO_GLAMOR,1
xwayland {
enabled = true
force_zero_scaling = true
use_nearest_neighbor = true
create_abstract_socket = false
}

text
</details>

---

**Tip:**  
- All `env = ...` variables can be adapted for `environment.d` drop-in files by removing `env = ` and using `KEY=VALUE` syntax per line.
- Files containing blocks (`opengl { ... }`, `xwayland { ... }`) are for Hyprland’s `.conf` syntax and not environment variables—adjust as needed for your actual configuration engine.

---


