#!/bin/zsh

i=0
for video in ./Videos/*.avi; do
((i++))
ffmpeg -i "$video" -vf fps=1/30,scale=256:256 -loglevel error "data/episode_${i}_%d.jpg"
echo "Processed: $video"
done