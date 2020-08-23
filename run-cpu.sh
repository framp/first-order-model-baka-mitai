#!/bin/bash
cat > picture.png
python3 demo.py  --config config/vox-256.yaml --driving_video bakamitai_template.mp4 --source_image picture.png --checkpoint vox-cpk.pth.tar --relative --adapt_scale --cpu
ffmpeg -i result.mp4 -i bakamitai_template.mp4 -c:v copy -c:a aac result-with-audio.mp4
cat result-with-audio.mp4