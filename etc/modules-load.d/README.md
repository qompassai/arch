<!-- /qompassai/arch/etc/modules-load.d/README.md -->
<!-- Qompass AI Arch Modules-Load.d Docs -->
<!-- Copyright (C) 2025 Qompass AI, All rights reserved -->
<!-- ---------------------------------------- -->

<h1 align="center">Dynamic Kernel Module Support (DKMS) Modules-Load.d Config</h1>

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
          <td>snd_aloop, snd_compress, snd_ctl_led, snd_hrtimer, snd_hda_codec, snd_hda_codec_generic, snd_hda_codec_hdmi, snd_hda_codec_realtek, snd_hda_core, snd_hda_ext_core, snd_hda_intel, snd_hda_scodec_component, snd_hwdep, snd_intel_dspcfg, snd_intel_sdw_acpi, snd_pcm, snd_pcm_dmaengine, snd_rawmidi, snd_seq, snd_seq_device, snd_seq_dummy, snd_soc_acpi, snd_soc_acpi_intel_match, snd_soc_acpi_intel_sdca_quirks, snd_soc_avs, snd_soc_core, snd_soc_dmic, snd_soc_hda_codec, snd_soc_intel_hda_dsp_common, snd_soc_intel_sof_board_helpers, snd_soc_sdca, snd_soc_skl_hda_dsp, snd_sof, snd_sof_intel_hda, snd_sof_intel_hda_common, snd_sof_intel_hda_generic, snd_sof_intel_hda_mlink, snd_sof_intel_hda_sdw_bpt, snd_sof_pci, snd_sof_pci_intel_cnl, snd_sof_pci_intel_tgl, snd_sof_probes, snd_sof_utils, snd_sof_xtensa_dsp, snd_timer, snd_ump, snd_usb_audio, snd_usb_audio_fasttrack, snd_usbmidi_lib, soundcore, soundwire_intel</td>
        </tr>
        <tr>
          <td>blacklist.conf</td>
          <td>Disable modules (advanced)</td>
          <td>airspy, dvb_usb_rtl28xxu, hackrf, nouveau, r8169, rtw89*, rtw_*, rtl*, rtwcore</td>
        </tr>
        <tr>
          <td>devices.conf</td>
          <td>Device specifics (Thunderbolt, USB, HDMI, NVME)</td>
          <td>btrtl, dm_mod, i2c_algo_bit, i2c_dev, loop, lz4hc_compress, mmc_core, nvme, nvme_auth, nvme_keyring, overlay, roles, rtsx_pci_sdmmc, serio_raw, sparse_keymap, thunderbolt, typec, typec_ucsi, uinput, usbip_core, usbip_host, zram</td>
        </tr>
        <tr>
          <td>drm.conf</td>
          <td>Digital Rights Management (DRM) for displays</td>
          <td>cec, drm_buddy, drm_exec, drm_gpusvm, drm_suballoc_helper, drm_ttm_helper, drm_display_helper, gpu_sched, ttm</td>
        </tr>
        <tr>
          <td>encrypt.conf</td>
          <td>Cryptography/Encryption protocols</td>
          <td>aesni_intel, algif_aead, algif_hash, algif_rng, algif_skcipher, asn1_encoder, authenc, cryptd, cryptodev, crypto_simd, crypto_user, curve25519_x86_64, encrypted_keys, ghash_clmulni_intel, libcurve25519_generic, pcrypt, pkcs8_key_parser, polyval_clmulni, sha256_ssse3, sha512_ssse3, serpent_avx2, serpent_avx_x86_64, serpent_generic, serpent_sse2_x86_64, tls, trusted, wireguard</td>
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
          <td>blackmagic, blackmagic-io, mc cec, uvcvideo, v4l2loopback, v4l2loopback_dc</td>
        </tr>
      </tbody>
    </table>
  </div>


