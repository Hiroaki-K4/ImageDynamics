#!/bin/bash

# Check if the folder is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <input_folder> <output_folder>"
    exit 1
fi

input_folder=$1
output_folder=$2

if [ ! -d "$output_folder" ]; then
    echo "Creating output folder: $output_folder"
    mkdir -p "$output_folder"
fi

# ffmpeg -i original_videos/856968-hd_1920_1080_25fps.mp4 -t 5 -vf scale=1920:1080 -c:v libx264 -crf 23 -preset fast -c:a aac output_final.mp4

for file in "$input_folder"/*.mp4; do
    if [ -f "$file" ]; then
        echo "Processing $file..."

        # Extract a 5-second clip starting at 00:00:10 and resize to 1920x1080
        ffmpeg -i "$file" -t 5 -vf scale=1920:1080 -c:v libx264 -crf 23 -preset fast -c:a aac "$output_folder/$(basename "${file%.mp4}.mp4")"

        echo "Finished processing $file"
    else
        echo "No MP4 files found in $input_folder."
    fi
done
