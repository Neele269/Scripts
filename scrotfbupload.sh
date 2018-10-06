#!/bin/bash
readonly img_path="${HOME}/Daten/Screenshots"
readonly img_name="$(date +"%Y-%m-%d_%H-%M-%S-%N").png"
readonly full_path="${img_path}/${img_name}"

case $1 in
	"-s") maim -s --hidecursor "${full_path}"
		;;
	*) maim --hidecursor "${full_path}"
		;;
esac


readonly output="$(fb "${full_path}")"
notify-send "Screenshot uploaded" "${output}"
