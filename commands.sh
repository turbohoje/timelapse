#!/bin/bash
#image magick
#ffmpeg

for FILE in `ls *.JPG`; do \
  mogrify -resize 1280x720^ -gravity center -crop 1280x720+0+0 +repage -write out/$FILE $FILE; \
done

ffmpeg -start_number 60473 -i G%07d.JPG -c:v libx264 -pix_fmt yuv420p video.mp4
