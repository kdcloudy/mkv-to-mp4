#!/bin/sh

echo "MKV to MP4 repacking"
echo "Developed by @kdcloudy"
echo "Enter the file name to be muxed: "
read filepath
if [! -d $filepath]
then
exit $err
fi

ffmpeg -i $filepath -c:v copy -c:a copy -tag:v hvc1 output.mp4

