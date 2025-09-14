<!-- /qompassai/arch/etc/modprobe.d/README.md -->
<!-- Qompass AI Modprobe.d Docs -->
<!-- Copyright (C) 2025 Qompass AI, All rights reserved -->
<!-- ---------------------------------------- -->

<h1 align="center">Dynamic Kernel Module Support (DKMS)</h1>

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


