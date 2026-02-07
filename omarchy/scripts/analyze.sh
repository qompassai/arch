#!/usr/bin/env bash
echo "📊 File Statistics:"
echo "  New files:"
wc -l new-files/* 2> /dev/null | tail -1 | awk '{print "    Total lines: " $1}'
echo "  Modified files:"
wc -l modified-files/* 2> /dev/null | tail -1 | awk '{print "    Total lines: " $1}'
echo
echo "🔍 Key References:"
echo "  VFIO mentions:"
grep -c "vfio" new-files/* 2> /dev/null | grep -v ":0$" || echo "    None found"
echo
echo "  IOMMU mentions:"
grep -c "iommu" new-files/* 2> /dev/null | grep -v ":0$" || echo "    None found"
echo
echo "  Looking Glass mentions:"
grep -c "looking.glass\|looking_glass\|LookingGlass" new-files/* 2> /dev/null | grep -v ":0$" || echo "    None found"
echo
echo "  GPU mentions:"
grep -c -i "gpu\|nvidia\|rtx" new-files/* 2> /dev/null | grep -v ":0$" || echo "    None found"
echo
echo "⚠️  Potential Issues to Check:"
echo "  Hardcoded paths:"
grep -n "/usr/local\|/opt" new-files/* 2> /dev/null | head -5
echo
echo "  Root requirements:"
grep -n "sudo\|root" new-files/* 2> /dev/null | head -5
echo
