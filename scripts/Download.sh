#!/bin/bash

# Input
address=$1

video_filename="$(youtube-dl --get-filename -o '%(title)s.%(ext)s' --restrict-filenames $address)"
echo $video_filename
video_url="$(youtube-dl --get-url $address)"
echo $video_url

axel -n 10 -o $video_filename $video_url
# modify aria2c options as needed
#aria2c -x16 -s20 -k1M --out=$video_filename $video_url
