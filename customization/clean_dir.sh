#!/bin/bash
set -e

LIST_FILE="${1:-extra_files.txt}"
TARGET_DIR="${2:-dirC}"

if [ ! -f "$LIST_FILE" ]; then
    echo "Error: List file '$LIST_FILE' does not exist." >&2
    exit 1
fi

if [ ! -d "$TARGET_DIR" ]; then
    echo "Error: Target directory '$TARGET_DIR' does not exist." >&2
    exit 1
fi

echo "Preparing to clean '$TARGET_DIR' using '$LIST_FILE'..."

read -p "Do you want to proceed with deleting these files from $TARGET_DIR? (y/N) " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Operation cancelled."
    exit 0
fi

while IFS= read -r file; do
    [ -z "$file" ] && continue
    
    target="$TARGET_DIR/$file"
    if [ -f "$target" ]; then
        rm "$target"
        echo "Deleted: $target"
    else
        echo "Warning: File not found (skipped): $target"
    fi
done < "$LIST_FILE"

# Clean up empty directories left behind
# find "$TARGET_DIR" -type d -empty -delete 2>/dev/null || true

echo "Cleanup complete!"