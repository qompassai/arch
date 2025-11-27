## /qompassai/arch/etc/modules-load.d/modcheck.sh
# Qompass AI Kernel Module Check
# Copyright (C) 2025 Qompass AI, All rights reserved
####################################################
for mod in $(lsmod | awk '{print $1}'); do
        echo "$mod:"
        modinfo "$mod" | grep '^parm'
done
