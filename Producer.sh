VIDEO_FILE=$1
echo $VIDEO_FILE
ffmpeg -re -stream_loop -1 -i $VIDEO_FILE -map 0:v -map 0:a -c:v libx264 -preset ultrafast -tune zerolatency -c:a aac -f rtsp rtsp://localhost:8554/cam1
