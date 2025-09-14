<!-- /qompassai/arch/etc/modprobe.d/README.md -->
<!-- Qompass AI Modprobe.d Docs -->
<!-- Copyright (C) 2025 Qompass AI, All rights reserved -->
<!-- ---------------------------------------- -->

<h1 align="center">Dynamic Kernel Module Support (DKMS)</h1>

<details>
  <summary style="font-size: 1.4em; font-weight: bold; padding: 15px; background: #667eea; color: white; border-radius: 10px; cursor: pointer; margin: 10px 0;">
    <strong>Modprobe.d Dynamic Kernel Module Support (DKMS) Overview</strong>
  </summary>
  <div style="background: #f8f9fa; padding: 15px; border-radius: 5px; margin-top: 10px; font-family: monospace;">
    <table>
      <thead>
        <tr>
          <th style="text-align:center;">Config File</th>
          <th style="text-align:center;">Purpose</th>
          <th style="text-align:center;">Modules</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>audio.conf</td>
          <td>Vendor agnostic audio (pipewire, alsa)</td>
          <td>snd_hda_intel, snd-usb-audio</td>
        </tr>
        <tr>
          <td>blacklist.conf</td>
          <td>Disable modules (advanced)</td>
          <td>airspy, dvb_usb_rtl28xxu, hackrf, nouveau, r8169, rtw89*, rtw_*, rtl*, rtwcore</td>
        </tr>
        <tr>
          <td>devices.conf</td>
          <td>Device specifics (Thunderbolt, USB, HDMI, NVME)</td>
          <td>dm_mod, loop, mmc_core, overlay, rtsx_pci, thunderbolt, zram</td>
        </tr>
        <tr>
          <td>drm.conf</td>
          <td>DRM display helpers, GPU scheduling, CEC/HDMI pipeline</td>
          <td>drm_display_helper, gpu_sched</td>
        </tr>
        <tr>
          <td>encrypt.conf</td>
          <td>Cryptography/Encryption protocols</td>
          <td>cryptodev, lkrg</td>
        </tr>
        <tr>
          <td>intel.conf</td>
          <td>Intel specifics</td>
          <td>kvm, kvm_intel, snd_sof_intel_hda, soundwire*, vfio_pci, xe</td>
        </tr>
        <tr>
          <td>network.conf</td>
          <td>Ethernet, Wifi, Bluetooth</td>
          <td>bluetooth, btusb, cfg80211, iwlwifi, mac80211, mlx4*, ib_*, ip_*, nf_conntrack, r8125, rfcomm, rtw89*, rtw89core, rtw89pci</td>
        </tr>
        <tr>
          <td>nvidia.conf</td>
          <td>NVIDIA specific</td>
          <td>nvidia, nvidia_drm, nvidia_modeset, nvidia_uvm</td>
        </tr>
        <tr>
          <td>video.conf</td>
          <td>Video specific (v4l2loopback, uvc, blackmagic)</td>
          <td>blackmagic, cec, uvcvideo, v4l2loopback, v4l2loopback_dc</td>
        </tr>
      </tbody>
    </table>
  </div>
</details>

<details>
  <summary style="font-size: 1.3em; font-weight: bold; padding: 12px; background: #4cafef; color: white; border-radius: 8px; cursor: pointer; margin: 8px 0;">
    <strong>drm_display_helper</strong>
  </summary>
  <div style="background: #f8f9fa; padding: 12px; border-radius: 5px; margin-top: 8px; font-family: monospace;">

**Description:**  
DRM core helper module for DisplayPort, HDMI, and CEC handling. Provides fine-tuning for DP AUX and CEC timings.

| Field              | Value                                                                 |
|--------------------|-----------------------------------------------------------------------|
| **Autoloaded**     | Yes                                                                   |
| **Package/Source** | linux kernel                                                          |
| **mkinitcpio.conf**| Yes                                                                   |
| **modprobe.d**     | Yes (DP AUX/CEC tuning)                                                |
| **modules-load.d** | Yes                                                                   |
| **OS Support**     | Arch, Debian, NixOS *(Linux only)*                                    |
| **Notes**          | Tuning can help with DisplayPort MST chains, EDID/CEC issues.       


/etc/modprobe.d/drm_display_helper.conf

options drm_display_helper dp_aux_i2c_transfer_size=16
options drm_display_helper dp_aux_i2c_speed_khz=100
options drm_display_helper drm_dp_cec_unregister_delay=3

  </div>
</details>

<details>
  <summary style="font-size: 1.4em; font-weight: bold; padding: 15px; background: #667eea; color: white; border-radius: 10px; cursor: pointer; margin: 10px 0;">
    <strong>nvidia</strong>
  </summary>
  <div style="background: #f8f9fa; padding: 15px; border-radius: 5px; margin-top: 10px; font-family: monospace;">

Parameter                                     | Type   | Possible Values                       | Description                                             | Documentation
----------------------------------------------|--------|---------------------------------------|---------------------------------------------------------|--------------
NvSwitchRegDwords                             | charp  | comma-separated key-value string       | Register settings for NvSwitch device.                  | NVIDIA NvSwitch UG
NvSwitchBlacklist                             | charp  | uuid[,uuid...] (list of UUIDs)        | UUIDs of NvSwitches to blacklist.                       | NVIDIA Driver UG
NVreg_ResmanDebugLevel                        | int    | 0-10                                  | Debug verbosity for RM.                                 | NVIDIA Driver UG, RM params
NVreg_RmLogonRC                               | int    | 0,1                                   | Resource Manager logon RC.                              | NVIDIA Driver UG
NVreg_ModifyDeviceFiles                       | int    | 0,1                                   | Whether to modify device file permissions.              | NVIDIA Kernel Module PG
NVreg_DeviceFileUID                           | int    | UID integer (e.g. 0-65535)            | UID for nvidia device files.                            | NVIDIA Kernel Module PG
NVreg_DeviceFileGID                           | int    | GID integer (e.g. 0-65535)            | GID for nvidia device files.                            | NVIDIA Kernel Module PG
NVreg_DeviceFileMode                          | int    | Octal int (e.g. 0660, 0777)           | Permissions mask for nvidia files.                      | NVIDIA Kernel Module PG
NVreg_InitializeSystemMemoryAllocations       | int    | 0,1                                   | Enable system memory allocation init.                   | NVIDIA Driver UG
NVreg_UsePageAttributeTable                   | int    | 0,1                                   | Use PAT for memory mappings.                            | NVIDIA Driver UG
NVreg_EnablePCIeGen3                          | int    | 0,1                                   | Enable PCIe Gen3 link speed.                            | NVIDIA Driver UG
NVreg_EnableMSI                               | int    | 0,1                                   | Enable MSI interrupts.                                  | NVIDIA Driver UG
NVreg_EnableStreamMemOPs                      | int    | 0,1                                   | Enable streaming memory ops.                            | NVIDIA Driver UG
NVreg_RestrictProfilingToAdminUsers           | int    | 0,1                                   | If profiling is admin-only.                             | NVIDIA Driver UG
NVreg_PreserveVideoMemoryAllocations          | int    | 0,1                                   | If video RAM preserved after reset.                     | NVIDIA Driver UG
NVreg_EnableS0ixPowerManagement               | int    | 0,1                                   | Enable S0ix power mgmt.                                 | NVIDIA Power Mgmt Docs
NVreg_S0ixPowerManagementVideoMemoryThreshold | int    | MB integer value (e.g. 256)           | S0ix PM VRAM threshold.                                 | NVIDIA Power Mgmt Docs
NVreg_DynamicPowerManagement                  | int    | 0,1                                   | Enable dynamic power mgmt.                              | NVIDIA Power Mgmt Docs
NVreg_DynamicPowerManagementVideoMemoryThreshold | int | MB integer value (e.g. 512)           | Dyn. PM VRAM threshold.                                 | NVIDIA Power Mgmt Docs
NVreg_EnableGpuFirmware                       | int    | 0,1                                   | Enable firmware loading.                                | NVIDIA Firmware UG
NVreg_EnableGpuFirmwareLogs                   | int    | 0,1                                   | Enable firmware logs.                                   | NVIDIA Firmware UG
NVreg_OpenRmEnableUnsupportedGpus             | int    | 0,1                                   | Enable RM for unsupported GPUs.                         | NVIDIA Driver UG
NVreg_EnableUserNUMAManagement                | int    | 0,1                                   | Enable NUMA mgmt for user.                              | NVIDIA Driver UG
NVreg_MemoryPoolSize                          | int    | MB integer (e.g. 1024)                | Size of memory pool.                                    | NVIDIA Driver UG
NVreg_KMallocHeapMaxSize                      | int    | MB integer (e.g. 512)                 | Max kernel malloc heap.                                 | NVIDIA Driver UG
NVreg_VMallocHeapMaxSize                      | int    | MB integer (e.g. 2048)                | Max vmalloc heap.                                       | NVIDIA Driver UG
NVreg_IgnoreMMIOCheck                         | int    | 0,1                                   | Ignore MMIO checks.                                     | NVIDIA Driver UG
NVreg_NvLinkDisable                           | int    | 0,1                                   | Disable NvLink feature.                                 | NVIDIA NvLink UG
NVreg_EnablePCIERelaxedOrderingMode           | int    | 0,1                                   | Enable PCIe relaxed ordering.                           | PCIe Spec, NVIDIA Driver UG
NVreg_RegisterPCIDriver                       | int    | 0,1                                   | Register PCI driver.                                    | NVIDIA Driver UG
NVreg_RegisterPlatformDeviceDriver            | int    | 0,1                                   | Register platform dev driver.                           | NVIDIA Driver UG
NVreg_EnableResizableBar                      | int    | 0,1                                   | Enable resizable BAR.                                   | PCIE Spec, NVIDIA Driver PG
NVreg_EnableDbgBreakpoint                     | int    | 0,1                                   | Enable RM debug breakpoint.                             | NVIDIA Debug Docs
NVreg_EnableNonblockingOpen                   | int    | 0,1                                   | Enable non-blocking open.                               | NVIDIA Driver UG
NVreg_CoherentGPUMemoryMode                   | charp  | "enabled", "disabled"                 | Set coherent GPU memory mode.                           | NVIDIA Driver UG
NVreg_RegistryDwords                          | charp  | "Key1=Value1,Key2=Value2"             | Override reg DWORD values.                              | NVIDIA Registry Docs
NVreg_RegistryDwordsPerDevice                 | charp  | "dev0:Key=Val"                        | DWORD per-device overrides.                             | NVIDIA Registry Docs
NVreg_RmMsg                                   | charp  | Any string                            | Custom RM message.                                      | NVIDIA Driver UG
NVreg_GpuBlacklist                            | charp  | "gpu0,gpu1" (device ids)              | Blacklisted GPUs.                                       | NVIDIA Driver UG
NVreg_TemporaryFilePath                       | charp  | "/tmp/nvidia" (any path)              | Temp file path for driver.                              | NVIDIA Driver UG
NVreg_ExcludedGpus                            | charp  | "uuid1,uuid2"                         | GPUs excluded from use.                                 | NVIDIA Driver UG
NVreg_DmaRemapPeerMmio                        | int    | 0,1                                   | Enable DMA remap for peer MMIO.                         | NVIDIA Driver UG
NVreg_RmNvlinkBandwidth                       | charp  | "bandwidth=25GBps" (key=val)          | Set NVLink bandwidth.                                   | NVIDIA NvLink UG
NVreg_RmNvlinkBandwidthLinkCount              | int    | 1,2,4                                 | Number NVLink bandwidth links.                          | NVIDIA NvLink UG
NVreg_ImexChannelCount                        | int    | 1-8                                   | IMEX channel count.                                     | NVIDIA IMEX Docs
NVreg_CreateImexChannel0                      | int    | 0,1                                   | Create IMEX channel 0.                                  | NVIDIA IMEX Docs
NVreg_GrdmaPciTopoCheckOverride               | int    | 0,1                                   | Override PCI topo GRDMA.                                | NVIDIA Driver UG
rm_firmware_active                            | charp  | "active","inactive","standby"         | RM firmware status.                                     | NVIDIA Firmware UG

</details>



</details>

<details>
  <summary style="font-size: 1.4em; font-weight: bold; padding: 15px; background: #667eea; color: white; border-radius: 10px; cursor: pointer; margin: 10px 0;">
    <strong>nvidia_uvm</strong>
  </summary>
  <div style="background: #f8f9fa; padding: 15px; border-radius: 5px; margin-top: 10px; font-family: monospace;">


m:           uvm_conf_computing_channel_iv_rotation_limit:ulong
parm:           uvm_ats_mode:Set to 0 to disable ATS (Address Translation Services). Any other value is ignored. Has no effect unless the platform supports ATS. (int)
parm:           uvm_perf_prefetch_enable:uint
parm:           uvm_perf_prefetch_threshold:uint
parm:           uvm_perf_prefetch_min_faults:uint
parm:           uvm_perf_thrashing_enable:uint
parm:           uvm_perf_thrashing_threshold:uint
parm:           uvm_perf_thrashing_pin_threshold:uint
parm:           uvm_perf_thrashing_lapse_usec:uint
parm:           uvm_perf_thrashing_nap:uint
parm:           uvm_perf_thrashing_epoch:uint
parm:           uvm_perf_thrashing_pin:uint
parm:           uvm_perf_thrashing_max_resets:uint
parm:           uvm_perf_map_remote_on_native_atomics_fault:uint
parm:           uvm_disable_hmm:Force-disable HMM functionality in the UVM driver. Default: false (HMM is enabled if possible). However, even with uvm_disable_hmm=false, HMM will not be enabled if is not supported in this driver build configuration, or if ATS settings conflict with HMM. (bool)
parm:           uvm_perf_migrate_cpu_preunmap_enable:int
parm:           uvm_perf_migrate_cpu_preunmap_block_order:uint
parm:           uvm_global_oversubscription:Enable (1) or disable (0) global oversubscription support. (int)
parm:           uvm_perf_pma_batch_nonpinned_order:uint
parm:           uvm_cpu_chunk_allocation_sizes:OR'ed value of all CPU chunk allocation sizes. (uint)
parm:           uvm_leak_checker:Enable uvm memory leak checking. 0 = disabled, 1 = count total bytes allocated and freed, 2 = per-allocation origin tracking. (int)
parm:           uvm_force_prefetch_fault_support:uint
parm:           uvm_debug_enable_push_desc:Enable push description tracking (uint)
parm:           uvm_debug_enable_push_acquire_info:Enable push acquire information tracking (uint)
parm:           uvm_page_table_location:Set the location for UVM-allocated page tables. Choices are: vid, sys. (charp)
parm:           uvm_perf_access_counter_migration_enable:Whether access counters will trigger migrations.Valid values: <= -1 (default policy), 0 (off), >= 1 (on) (int)
parm:           uvm_perf_access_counter_batch_count:uint
parm:           uvm_perf_access_counter_threshold:Number of remote accesses on a region required to trigger a notification.Valid values: [1, 65535] (uint)
parm:           uvm_perf_reenable_prefetch_faults_lapse_msec:uint
parm:           uvm_perf_fault_batch_count:uint
parm:           uvm_perf_fault_replay_policy:uint
parm:           uvm_perf_fault_replay_update_put_ratio:uint
parm:           uvm_perf_fault_max_batches_per_service:uint
parm:           uvm_perf_fault_max_throttle_per_service:uint
parm:           uvm_perf_fault_coalesce:uint
parm:           uvm_fault_force_sysmem:Force (1) using sysmem storage for pages that faulted. Default: 0. (int)
parm:           uvm_perf_map_remote_on_eviction:int
parm:           uvm_block_cpu_to_cpu_copy_with_ce:Use GPU CEs for CPU-to-CPU migrations. (int)
parm:           uvm_exp_gpu_cache_peermem:Force caching for mappings to peer memory. This is an experimental parameter that may cause correctness issues if used. (uint)
parm:           uvm_exp_gpu_cache_sysmem:Force caching for mappings to system memory. This is an experimental parameter that may cause correctness issues if used. (uint)
parm:           uvm_downgrade_force_membar_sys:Force all TLB invalidation downgrades to use MEMBAR_SYS (uint)
parm:           uvm_channel_num_gpfifo_entries:uint
parm:           uvm_channel_gpfifo_loc:charp
parm:           uvm_channel_gpput_loc:charp
parm:           uvm_channel_pushbuffer_loc:charp
parm:           uvm_enable_va_space_mm:Set to 0 to disable UVM from using mmu_notifiers to create an association between a UVM VA space and a process. This will also disable pageable memory access via either ATS or HMM. (int)
parm:           uvm_enable_debug_procfs:Enable debug procfs entries in /proc/driver/nvidia-uvm (int)
parm:           uvm_peer_copy:Choose the addressing mode for peer copying, options: phys [default] or virt. Valid for Ampere+ GPUs. (charp)
parm:           uvm_debug_prints:Enable uvm debug prints. (int)
parm:           uvm_enable_builtin_tests:Enable the UVM built-in tests. (This is a security risk) (int)
parm:           uvm_release_asserts:Enable uvm asserts included in release builds. (int)
parm:           uvm_release_asserts_dump_stack:dump_stack() on failed UVM release asserts. (int)
parm:           uvm_release_asserts_set_global_error:Set UVM global fatal error on failed release asserts. (int)


Parameter                                         | Type   | Possible Values / Format          | Description                                                                              | Documentation Reference
--------------------------------------------------|--------|-----------------------------------|------------------------------------------------------------------------------------------|---------------------------
uvm_conf_computing_channel_iv_rotation_limit       | ulong  | Numeric value                    | IV rotation limit for UVM computing channel                                              | NVIDIA UVM Docs
uvm_ats_mode                                      | int    | 0 (disable), [any other = ignored]| Enable/disable Address Translation Services (ATS) if platform supports                   | NVIDIA UVM "ATS"
uvm_perf_prefetch_enable                          | uint   | 0,1                              | Enable UVM prefetch performance optimizations                                            | UVM Performance
uvm_perf_prefetch_threshold                       | uint   | Integer                          | Prefetch fault threshold to trigger prefetch                                             | UVM Performance
uvm_perf_prefetch_min_faults                      | uint   | Integer                          | Minimum faults before enabling prefetch                                                  | UVM Performance
uvm_perf_thrashing_enable                         | uint   | 0,1                              | Enable fault thrashing detection/mitigation                                              | UVM Performance
uvm_perf_thrashing_threshold                      | uint   | Integer                          | Thrashing event threshold                                                                | UVM Performance
uvm_perf_thrashing_pin_threshold                  | uint   | Integer                          | Pin threshold for thrashing mitigation actions                                           | UVM Performance
uvm_perf_thrashing_lapse_usec                     | uint   | Microseconds                     | Thrashing event lapse duration in microseconds                                           | UVM Performance
uvm_perf_thrashing_nap                            | uint   | Integer                          | Nap duration after thrashing detection                                                   | UVM Performance
uvm_perf_thrashing_epoch                          | uint   | Integer                          | Epoch duration for thrashing monitoring                                                  | UVM Performance
uvm_perf_thrashing_pin                            | uint   | 0,1                              | Pin memory on thrashing event                                                            | UVM Performance
uvm_perf_thrashing_max_resets                     | uint   | Integer                          | Maximum number of resets on thrashing                                                    | UVM Performance
uvm_perf_map_remote_on_native_atomics_fault       | uint   | 0,1                              | Map remote memory upon native atomics fault                                              | UVM Fault Handling
uvm_disable_hmm                                   | bool   | true/false (0/1)                 | Force-disable Heterogeneous Memory Management (HMM)                                      | UVM HMM Docs
uvm_perf_migrate_cpu_preunmap_enable              | int    | 0,1                              | Enable CPU pre-unmap migration performance                                               | UVM Migration
uvm_perf_migrate_cpu_preunmap_block_order         | uint   | Integer                          | Block order for CPU pre-unmap migration                                                  | UVM Migration
uvm_global_oversubscription                       | int    | 0,1                              | Enable/disable global oversubscription                                                   | UVM Oversubscription
uvm_perf_pma_batch_nonpinned_order                | uint   | Integer                          | PMA batch non-pinned order                                                              | UVM Performance
uvm_cpu_chunk_allocation_sizes                    | uint   | Bitwise OR'ed sizes              | CPU chunk allocation size mask                                                           | UVM Memory Management
uvm_leak_checker                                 | int    | 0 (off), 1 (bytes), 2 (origin)   | Enable memory leak checker: 0=off, 1=track bytes, 2=track origin                        | UVM Leak Checker
uvm_force_prefetch_fault_support                  | uint   | 0,1                              | Force enabling prefetch fault support                                                    | UVM Prefetch Docs
uvm_debug_enable_push_desc                        | uint   | 0,1                              | Enable push description debug tracking                                                   | UVM Debugging
uvm_debug_enable_push_acquire_info                | uint   | 0,1                              | Enable push acquire info debug tracking                                                  | UVM Debugging
uvm_page_table_location                           | charp  | "vid", "sys"                     | Location for UVM-allocated page tables (video/sys memory)                                | UVM Memory Management
uvm_perf_access_counter_migration_enable          | int    | ≤-1 (default), 0 (off), ≥1 (on)  | Access counter-triggered migrations policy                                               | UVM Migration
uvm_perf_access_counter_batch_count               | uint   | Integer                          | Access counter batching count                                                            | UVM Migration
uvm_perf_access_counter_threshold                 | uint   | 1..65535                         | Remote access threshold to notify                                                        | UVM Migration
uvm_perf_reenable_prefetch_faults_lapse_msec      | uint   | Milliseconds                     | Lapse before reenabling prefetch faults                                                  | UVM Prefetch Docs
uvm_perf_fault_batch_count                        | uint   | Integer                          | Batch count for fault servicing                                                          | UVM Fault Handling
uvm_perf_fault_replay_policy                      | uint   | Integer (policy code)             | Fault replay policy                                                                      | UVM Fault Handling
uvm_perf_fault_replay_update_put_ratio            | uint   | Integer                          | Ratio for fault replay put updates                                                       | UVM Fault Handling
uvm_perf_fault_max_batches_per_service            | uint   | Integer                          | Max fault batches per service                                                            | UVM Fault Handling
uvm_perf_fault_max_throttle_per_service           | uint   | Integer                          | Max fault throttle per service                                                           | UVM Fault Handling
uvm_perf_fault_coalesce                          | uint   | 0,1                              | Coalesce faults                                                                         | UVM Fault Handling
uvm_fault_force_sysmem                           | int    | 0,1                              | Force faulted pages to sysmem storage                                                    | UVM Fault Handling
uvm_perf_map_remote_on_eviction                   | int    | 0,1                              | Map remote memory on eviction                                                            | UVM Eviction Docs
uvm_block_cpu_to_cpu_copy_with_ce                 | int    | 0,1                              | Use GPU copy engines for CPU-CPU migrations                                              | UVM Migration
uvm_exp_gpu_cache_peermem                        | uint   | 0,1                              | (Experimental) Enable cache for peer memory mappings                                     | UVM Experimental
uvm_exp_gpu_cache_sysmem                         | uint   | 0,1                              | (Experimental) Enable cache for sysmem mappings                                          | UVM Experimental
uvm_downgrade_force_membar_sys                   | uint   | 0,1                              | Force TLB invalidations to use MEMBAR_SYS                                                | UVM Memory Mgmt
uvm_channel_num_gpfifo_entries                   | uint   | Integer                          | Number of channel GPFIFO entries                                                         | UVM Channel Mgmt
uvm_channel_gpfifo_loc                           | charp  | Path/String                      | Location for GPFIFO                                                                      | UVM Channel Mgmt
uvm_channel_gpput_loc                            | charp  | Path/String                      | Location for GPPUT                                                                       | UVM Channel Mgmt
uvm_channel_pushbuffer_loc                       | charp  | Path/String                      | Location for pushbuffer                                                                  | UVM Channel Mgmt
uvm_enable_va_space_mm                           | int    | 0,1                              | Enable mmu_notifier for VA space association                                             | UVM MMU Docs
uvm_enable_debug_procfs                          | int    | 0,1                              | Enable UVM procfs debug entries                                                          | UVM Debugging
uvm_peer_copy                                    | charp  | "phys", "virt"                   | Addressing mode for peer copying (Ampere+ GPUs)                                          | UVM Peer Copy Docs
uvm_debug_prints                                 | int    | 0,1                              | Enable UVM debug prints                                                                  | UVM Debugging
uvm_enable_builtin_tests                         | int    | 0,1                              | Enable built-in tests (security risk!)                                                   | UVM Testing
uvm_release_asserts                              | int    | 0,1                              | Enable release assert checks                                                             | UVM Debugging
uvm_release_asserts_dump_stack                   | int    | 0,1                              | Dump stack on failed release assert                                                      | UVM Debugging
uvm_release_asserts_set_global_error             | int    | 0,1                              | Set global error on failed release assert                                                | UVM Debugging




</details>

<details>
  <summary style="font-size: 1.4em; font-weight: bold; padding: 15px; background: #667eea; color: white; border-radius: 10px; cursor: pointer; margin: 10px 0;">
    <strong>nvidia_modeset</strong>
  </summary>
  <div style="background: #f8f9fa; padding: 15px; border-radius: 5px; margin-top: 10px; font-family: monospace;">


Parameter                        | Type   | Possible Values                  | Description
----------------------------------|--------|----------------------------------|----------------------------------------------------------
output_rounding_fix               | bool   | 0 (off), 1 (on)                  | Enable output rounding fix for output position.
disable_hdmi_frl                  | bool   | 0 (off), 1 (on)                  | Disable HDMI Fixed Rate Link (FRL) output mode.
disable_vrr_memclk_switch         | bool   | 0 (off), 1 (on)                  | Disable memory clock switch during VRR.
hdmi_deepcolor                    | bool   | 0 (off), 1 (on)                  | Enable support for HDMI deep color modes.
vblank_sem_control                | bool   | 0 (off), 1 (on)                  | Control VBLANK semaphore usage.
opportunistic_display_sync        | bool   | 0 (off), 1 (on)                  | Opportunistic display pipeline sync.
debug_force_color_space           | uint   | 0 (off), 1, 2, ...               | Force particular color space for debugging.
enable_overlay_layers             | bool   | 0 (off), 1 (on)                  | Enable hardware overlay layers.
fail_malloc                       | int    | Integer (N>=1)                   | Fail the Nth call to nvkms_alloc (for stress testing).
malloc_verbose                    | bool   | 0 (off), 1 (on)                  | Report malloc calls on module unload.
conceal_vrr_caps                  | bool   | 0 (show), 1 (conceal)            | Conceal all display VRR (variable refresh rate) caps.
fail_alloc_core_channel           | int    | Integer (N>=1)                   | Control testing for HW core channel alloc failure.
config_file                       | charp  | path string (e.g. "/etc/nvidia-modeset.conf") | Path to nvidia-modeset config file (default: disabled).


  <details>
    <summary style="padding: 8px; background: #4a5568; color: #fff; border-radius: 6px; cursor: pointer;">
      Show <em>modinfo nvidia_modeset</em> Output
    </summary>


# /etc/modprobe.d/xe.conf

# Enable display C-states (power savings, recommended for modern Intel laptops)
options xe enable_dc=3

# Enable System Agent Voltage/Frequency Scaling (SAGV, reduces power use/fan noise)
options xe enable_sagv=1

# Enable Display Panel Self Refresh (PSR2, saves power with eDP/modern panels)
options xe enable_psr=2
options xe enable_psr2_sel_fetch=1

# Enable Framebuffer Compression (FBC, further reduces memory/power on integrated displays)
options xe enable_fbc=1

# Enable Display Multi-Stream Transport (MST, needed for multiple displays over single DP port)
options xe enable_dp_mst=1

# Enable Display Page Table and State Buffer (default: true, needed for modern GPU firmware)
options xe enable_dpt=1
options xe enable_dsb=1

# Enable IPS (Intel Power Saving, helpful for CPU/iGPU turbo)
options xe enable_ips=1

# Enable SAGV (power-efficient, ok for mixed high-res displays)
options xe enable_sagv=1

# Disable power wells when possible (reduce idle power)
options xe disable_power_well=1

# Don't invert brightness (assume panel works normally)
options xe invert_brightness=0

# Enable verbose logs for hardware state checks (for diagnostics, disable if not debugging)
#options xe verbose_state_checks=1

# Enable atomic pageflip forcibly if required for dev/testing with Hyprland (Wayland compositors)
#options xe nuclear_pageflip=1

# Enable/expose firmware logging at normal verbosity (dev/debug)
#options xe guc_log_level=2

# Enable DMC wakelock management for power optimized sleep/wake
options xe enable_dmc_wl=1

# Probe display; useful for dynamic hotplug or some Wayland compositors
options xe probe_display=1

# Set VRAM BAR size to default/max unless using explicit passthrough for VMs
options xe vram_bar_size=0

# Set Display Channel Mode (LVDS: autodetect, safe for modern machines)
options xe lvds_channel_mode=0

# Enable Hybrid Graphics, Multi-GPU offload/detail (if applicable—NVIDIA present)
# Most configs do not need explicit XE settings for offloading; use DRI_PRIME/xrandr for Wayland/X11.

# Avoid developer/test flags unless debugging:
#options xe load_detect_test=0
#options xe force_reset_modeset_test=0
#options xe disable_display=0

# Set default "wedged mode" policy (GPU hang handling: 1 = only critical errors trigger reset)
options xe wedged_mode=1

