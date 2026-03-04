#!/bin/bash

echo "Updating package list..."
sudo apt update

echo "Installing FFmpeg..."
sudo apt install -y ffmpeg

echo "Installing GStreamer core..."
sudo apt install -y \
gstreamer1.0-tools \
gstreamer1.0-plugins-base \
gstreamer1.0-plugins-good \
gstreamer1.0-plugins-bad \
gstreamer1.0-plugins-ugly \
gstreamer1.0-libav \
gstreamer1.0-rtsp

echo "Installation complete."

echo ""
echo "Verifying installations..."
echo "FFmpeg version:"
ffmpeg -version | head -n 1

echo ""
echo "GStreamer version:"
gst-launch-1.0 --version | head -n 1
