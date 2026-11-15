#!/bin/bash
set -e

DIR_A="${1:-dirA}"
DIR_B="${2:-dirB}"
OUTPUT_FILE="${3:-extra_files.txt}"

for d in "$DIR_A" "$DIR_B"; do
    if [ ! -d "$d" ]; then
        echo "Error: Directory '$d' does not exist." >&2
        exit 1
    fi
done

TEMP_A=$(mktemp)
TEMP_B=$(mktemp)
trap 'rm -f "$TEMP_A" "$TEMP_B"' EXIT

echo "Scanning directories..."
(cd "$DIR_A" && find . -type f | sed 's|^\./||' | sort) > "$TEMP_A"
(cd "$DIR_B" && find . -type f | sed 's|^\./||' | sort) > "$TEMP_B"

comm -13 "$TEMP_A" "$TEMP_B" > "$OUTPUT_FILE"

echo "List generated successfully: $OUTPUT_FILE"
echo "Total files to remove: $(wc -l < "$OUTPUT_FILE")"