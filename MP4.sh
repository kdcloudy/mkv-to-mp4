#!/bin/sh

echo "MKV to MP4 repacking"
echo "Developed by @kdcloudy"
echo "Enter the file name to be muxed: "
read filepath
if [! -d $filepath]
then
exit $err
fi

mkvextract $filepath tracks 0:video.hvc
mkvextract tenet.mkv tracks 1:atmos.eac3

mp4box -add video.hvc -add atmos.eac3 Pass1.mp4
