@echo off
cd /d "%~dp0"
vgmstream -l 1 -f 0 -o "%~n1.wav" "%~1" > "%~n1.txt"
ffmpeg -i "%~n1.wav" -codec:a libvorbis -qscale:a 5 -ar 44100 "%~n1.ogg"
del "%~n1.wav"
move "%~n1.ogg" "."