# RTSP Simulator

RTSP Simulator generates an RTSP stream from a local MP4 file.
It simulates an IP camera by converting a video file into a live RTSP feed.

## ⚙️ How to Use

### Open a Terminal

```bash
chmod +x setup.sh run.sh
./setup.sh
./run.sh <mp4 file>
```

Once running, your RTSP stream will be available at:

`rtsp://localhost:8554/cam1`

You can also check by running Consumer.sh
