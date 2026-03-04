#!/bin/bash

VIDEO_FILE="$1"

# Validate arguments
if [ -z "$VIDEO_FILE" ]; then
    echo "Usage: $0 <video_file.mp4>"
    exit 1
fi

# Remove accidental quotes
VIDEO_FILE=$(echo "$VIDEO_FILE" | sed "s/^['\"]//;s/['\"]$//")

# Validate file exists
if [ ! -f "$VIDEO_FILE" ]; then
    echo "File not found: $VIDEO_FILE"
    exit 1
fi

echo "Starting MediaMTX..."
gnome-terminal --tab --title="RTSP Server" \
--command="bash -c './mediamtx; exec bash'"

sleep 5

STREAM_NAME="cam"
gnome-terminal --tab --title="Producer" \
--command="bash -c './Producer.sh \"$VIDEO_FILE\" \"$STREAM_NAME\"; exec bash'"

# sleep 1

# gnome-terminal --tab --title="Consumer" \
# --command="bash -c './Consumer.sh; exec bash'"
