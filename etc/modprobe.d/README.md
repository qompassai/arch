<!-- /qompassai/arch/etc/modprobe.d/README.md -->
<!-- Qompass AI Modprobe.d Docs -->
<!-- Copyright (C) 2025 Qompass AI, All rights reserved -->
<!-- ---------------------------------------- -->

<h1 align="center">Dynamic Kernel Module Support (DKMS) Modprobe.d Config</h1>

<div align="center" style="margin-top: 16px;">

  <a href="https://wiki.archlinux.org/title/Kernel_module">
    Kernel modules (ArchWiki)
  </a> ·

  <a href="https://wiki.archlinux.org/title/Sound_system">
    Audio / sound system
  </a> ·

  <a href="https://wiki.archlinux.org/title/Kernel_module#Blacklisting">
    Blacklisting modules
  </a> ·

  <a href="https://wiki.archlinux.org/title/Thunderbolt">
    Thunderbolt devices
  </a> ·

  <a href="https://wiki.archlinux.org/title/Intel_graphics">
    Intel graphics
  </a> ·

  <a href="https://wiki.archlinux.org/title/Network_configuration">
    Network configuration
  </a> ·

  <a href="https://wiki.archlinux.org/title/NVIDIA">
    NVIDIA drivers
  </a> ·

  <a href="https://wiki.archlinux.org/title/Webcam_setup">
    Webcam / v4l2loopback
  </a>

  <div align="center" style="margin-top: 10px;">
  <a href="https://github.com/qompassai/dotfiles/blob/main/.config/dkms/dkms.sh">
    <img
      src="https://img.shields.io/badge/DKMS%20Script-dotfiles-0A0A0A?style=for-the-badge&logo=gnu-bash&logoColor=white"
      alt="DKMS Dotfile Script"
      title="DKMS modules script ($XDG_CONFIG_HOME/dkms/dkms.sh)"
    />
  </a>
</div>

</div>
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
          <td>Digital Rights Management (DRM) for displays</td>
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
          <td>i915, kvm, kvm_intel, snd_sof_intel_hda, soundwire*, vfio_pci, xe</td>
        </tr>
        <tr>
          <td>network.conf</td>
          <td>Ethernet, Wifi, Bluetooth</td>
          <td>bluetooth, btusb, cfg80211, iwlwifi, mac80211, mlx4_(core, en, ib), ib_(ipoib, iser, isert, srp, srpt, set, qib), ip_(ipoib, set), nf_conntrack, r8125, rfcomm, rtw89core_git, rtw89pci_git, rtw89_usb_git</td>
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


