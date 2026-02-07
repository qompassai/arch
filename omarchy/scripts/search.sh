#!/usr/bin/env bash
QUERY="$1"
if [[ -z $QUERY ]]; then
    echo "Usage: ./search.sh <search_term>"
    echo "Examples:"
    echo "  ./search.sh 'RTX 4070'"
    echo "  ./search.sh 'vfio'"
    echo "  ./search.sh 'iommu'"
    exit 1
fi
echo "Searching for: $QUERY"
echo
grep -rn --color=always "$QUERY" new-files/ modified-files/
