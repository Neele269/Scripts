#!/bin/bash
readonly IMGPATH="/home/ford/Daten/Screenshots/"
readonly IMGNAME=`date +"%Y:%m:%d_%H:%M:%S:%N".png`
readonly FULLPATH=$IMGPATH$IMGNAME
scrot "$@" "$FULLPATH"
readonly OUTPUT="$(fb "$FULLPATH")"
notify-send "Screenshot uploaded" "$OUTPUT"
