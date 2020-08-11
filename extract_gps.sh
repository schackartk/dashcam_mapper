#!/bin/bash
for filename in videos/8-9-2020/*.MP4; do
	[ -e "$filename" ] || continue
	exiftool.exe -n -ExtractEmbedded -gpsdatetime -gpslongitude -gpslatitude $filename > "data/$(basename "$filename" .MP4)_data.txt"
done
