#!/bin/bash

set -e

find "assets/" -type f \( -iname "*.png" -o -iname "*.jpg" \) | while read -r file; do
    mod_time_before=$(stat -c %Y "$file")
    exiftool -q -all= "$file" -overwrite_original
    mod_time_after=$(stat -c %Y "$file")
    if [ "$mod_time_before" != "$mod_time_after" ]; then
        echo "Removed EXIF data from $file"
    fi
done
