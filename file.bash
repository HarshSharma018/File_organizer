#!/bin/bash

TARGET_DIR="${1:-.}"

cd "$TARGET_DIR" || { echo "Directory not found: $TARGET_DIR"; exit 1; }

for file in *; do
    [ -d "$file" ] && continue

    extension="${file##*.}"

    if [ "$extension" == "$file" ]; then
        extension="no_extension"
    fi

    case "$extension" in
        jpg|jpeg|png|gif|svg)
            folder="Images"
            ;;
        pdf|doc|docx|txt|md)
            folder="Documents"
            ;;
        mp4|mkv|avi|mov)
            folder="Videos"
            ;;
        mp3|wav|flac)
            folder="Audio"
            ;;
        zip|tar|gz|rar)
            folder="Archives"
            ;;
        sh|py|js|c|cpp)
            folder="Scripts"
            ;;
        *)
            folder="Others"
            ;;
    esac

    mkdir -p "$folder"
    mv "$file" "$folder/"
    echo "Moved: $file -> $folder/"
done

echo "Done organizing $TARGET_DIR"