#!/usr/bin/env bash
# /qompassai/Arch/modules-load.sh
# Qompass AI Omarchy First-Run Install Modules-Load Script
# Copyright (C) 2026 Qompass AI, All rights reserved
# ----------------------------------------
set -euo pipefail
if [[ $EUID -ne 0 ]]; then
  echo "This script must be run as root (use: sudo $0)" >&2
  exit 1
fi
MLD_DIR="/etc/modules-load.d"
HAS_NVIDIA=0
if lspci | grep -iE 'vga|3d|display' | grep -qi 'nvidia'; then
  HAS_NVIDIA=1
fi
HAS_INTEL=0
INTEL_FAMILY=""
if INTEL_GPU=$(lspci | grep -iE 'vga|3d|display' | grep -i 'intel'); then
  HAS_INTEL=1
  INTEL_GPU_LOWER=${INTEL_GPU,,}
  if [[ "$INTEL_GPU_LOWER" == *"xe"* ]]; then
    INTEL_FAMILY="xe"
  elif [[ "$INTEL_GPU_LOWER" == *"iris"* || "$INTEL_GPU_LOWER" == *"hd graphics"* ]]; then
    INTEL_FAMILY="i915"
  elif [[ "$INTEL_GPU_LOWER" == *"gma"* ]]; then
    INTEL_FAMILY="gma"
  else
    INTEL_FAMILY="i915"
  fi
fi
if [[ $HAS_NVIDIA -eq 1 ]]; then
  cat >"$MLD_DIR/nvidia.conf" <<'EOF'
# NVIDIA kernel modules (proprietary stack)
nvidia
nvidia_drm
nvidia_modeset
nvidia_uvm
EOF
  sudo chmod 644 "$MLD_DIR/nvidia.conf"
fi

if [[ $HAS_INTEL -eq 1 ]]; then
  {
    echo "# Intel GPU / platform modules"
    echo "acpi_thermal_rel"
    echo "btintel"
    echo "haxm"
    echo "idma64"
    echo "int3400_thermal"
    echo "intel_cstate"
    echo "intel_hid"
    echo "intel_lpss"
    echo "intel_rapl_common"
    echo "intel_powerclamp"
    echo "intel_qat"
    echo "intel_uncore"
    echo "intel_vsec"
    echo "kvm"
    echo "kvm_intel"
    echo "mei"
    echo "mei_hdcp"
    echo "pinctrl_tigerlake"
    echo "soundwire_intel"
    echo "snd_sof_intel_hda"
    echo "snd_sof_pci_intel_tgl"
    echo "spi_intel"
    echo "spi_intel_pci"
    echo "vfio_pci"
    echo "vmd"
    echo "vmw_vmci"
    case "$INTEL_FAMILY" in
      xe)
        echo ""
        echo "xe"
        ;;
      i915|gma|*)
        echo ""
        echo "i915"
        ;;
    esac
  } >"$MLD_DIR/intel.conf"
  sudo chmod 644 "$MLD_DIR/intel.conf"
fi
