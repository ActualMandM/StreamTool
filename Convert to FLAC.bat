@echo off
echo This script will only convert the first set of stereo channels.
echo Please downmix via TXTP if you want to hear more channels.
cd /d "%~dp0"
vgmstream -2 0 -o "%~n1.wav" "%~1"
ffmpeg -i "%~n1.wav" -compression_level 12 "%~n1.flac"
del "%~n1.wav"
move "%~n1.flac" "."