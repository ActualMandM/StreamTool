@echo off
echo This script will only convert the first set of stereo channels.
echo Please downmix via TXTP if you want to hear more channels.
cd /d "%~dp0"
vgmstream -2 0 -p "%~1" | ffmpeg -i pipe: -codec:a libmp3lame -b:a 320k "%~n1.mp3"