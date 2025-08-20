<!-- README.md -->
<!-- Qompass AI - [Add description here] -->
<!-- Copyright (C) 2025 Qompass AI, All rights reserved -->
<!-- ---------------------------------------- -->

<h1 style="font-size: 1.6em; font-weight: bold; padding: 14px; background: #334155; color: white; border-radius: 10px; margin: 10px 0;">
  Omarchy Hyprland Debug Config
</h1>


<details>
  <summary>gtk_debug.conf</summary>

/qompassai/hyprland/hypr/hypr.d/debug/gtk_debug.conf
Reference: https://docs.gtk.org/gtk4/running.html

env = GDK_DEBUG,vulkan,dmabuf
env = GSK_DEBUG,renderer,vulkan,shaders,fallback,cache,verbose
env = GTK_DEBUG,vulkan,touchui

</details>

<details>
  <summary>intel_debug.conf</summary>

Reference: https://intel.github.io/llvm/EnvironmentVariables.html

env = SYCL_DEVICELIB_INHIBIT_NATIVE,
env = SYCL_DEVICELIB_NO_FALLBACK,1
env = INTEL_ENABLE_OFFLOAD_ANNOTATIONS,1
env = SYCL_CACHE_TRACE,0x03
env = SYCL_JIT_COMPILER_DEBUG,sycl-spec-const-materializer
env = SYCL_PI_LEVEL_ZERO_COPY_BATCH_SIZE,0
env = SYCL_PI_LEVEL_ZERO_DISABLE_USM_ALLOCATOR,0
env = SYCL_PI_LEVEL_ZERO_FILTER_EVENT_WAIT_LIST,0
env = SYCL_PI_LEVEL_ZERO_SINGLE_THREAD_MODE,1
env = SYCL_PI_LEVEL_ZERO_USE_COMPUTE_ENGINE,0
env = SYCL_PI_LEVEL_ZERO_USE_COPY_ENGINE,1
env = SYCL_RT_WARNING_LEVEL,2
env = SYCL_UR_TRACE,-1
env = XPTI_TRACE_ENABLE,1

</details>

<details>
  <summary>mesa_debug.conf</summary>

Reference: https://docs.mesa3d.org/envvars.html

env = LIBGL_NO_DRAWARRAYS,true
env = LIBGL_DEBUG,verbose
env = INTEL_DEBUG,ann,bat,blit,blorp,buf,bt,capture-all,color,cs,do32,draw_bkp,fall,fs,gs,heaps,hex,l3,mesh,no16,no32,no8,no-oaconfig,nocompact,nodualobj,nofc,noccs,optimizer,pc,perf,perf-symbol-names,perfmon,reemit,rt,rt_notrace,sf,shader-print,soft64,sparse,spill_fs,spill_vec4,stall,submit,sync,swsb-stall,task,tcs,tcs8,tes,tex,urb,vs,wm
env = INTEL_EXTENDED_METRICS,1
env = MESA_DEBUG,silent,flush,incomplete_tex,incomplete_fba,context
env = MESA_GLSL,dump,source,log,cache_info,cache_fb,uniform,nopvert,nopfrag,useprog,errors
env = MESA_EGL_NO_DRI2,1
env = MESA_SHADER_CACHE_SHOW_STATS,true
env = MESA_SHADER_CAPTURE_PATH,/home/phaedrus/.cache/mesa-shader-capture
env = MESA_SHADER_DUMP_PATH,/home/phaedrus/.cache/mesa-shader-dump
env = MESA_SHADER_READ_PATH,/home/phaedrus/.cache/mesa-shader-replace
env = MESA_VERBOSE,1
env = MESA_VK_DEVICE_SELECT_DEBUG
env = MESA_VK_TRACE,rmv,rgp,rra,ctxroll
env = RUSTICL_DEBUG,allow_invalid_spirv,clc,nir,no_reuse_context,no_variants,perf,perfspam,program,sync,validate
env = ZINK_DEBUG,none
env = ZINK_DESCRIPTORS,lazy
env = ZINK_NO_CACHE,0

</details>

<details>
  <summary>nvidia_debug.conf</summary>

env = __GL_SHADER_DISK_CACHE_SKIP_CLEANUP,1
env = DRI_PRIME_DEBUG,1

</details>

<details>
  <summary>vulkan_debug.conf</summary>

Reference: https://chromium.googlesource.com/angle/angle/+/6430e5e0035bf43695662784b9a2aec726f25cd7/doc/CaptureAndReplay.md

env = ANGLE_BACKEND_INFO,1
env = ANGLE_GL_VENDOR,Intel
env = ANGLE_GL_VERSION,4.6 (Vulkan 1.4.321.1)
env = ANGLE_GL_RENDERER,"Mesa Intel(R) Xe Graphics"
env = ANGLE_CAPTURE_ENABLED,1
env = ANGLE_CAPTURE_OUT_DIR,/home/phaedrus/.cache/angle-capture
env = ANGLE_CAPTURE_FRAME_START,0
env = ANGLE_CAPTURE_COMPRESSION,1
env = ANGLE_CAPTURE_FRAME_END,4
env = ANGLE_ENABLE_DEBUG_MARKERS,1
env = OCL_ICD_ENABLE_TRACE,1
env = VK_LOADER_DEBUG,all

</details>

---

> **Tip:**  
> These debug configs can be sourced directly or turned into [environment.d](https://man.archlinux.org/man/environment.d.5) drop-in files (with the `KEY=VALUE` format, one per line) to make targets reproducible in different sessions or scripts.

---

