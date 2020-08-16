@echo off
cd /d "%~dp0"
vgmstream -l 1 -o "%~n1.wav" "%~1"
ffmpeg -i "%~n1.wav" -compression_level 12 "%~n1.flac"
del "%~n1.wav"
move "%~n1.flac" "."