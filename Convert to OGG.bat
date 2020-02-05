@echo off
cd /d "%~dp0"
vgmstream -o "%~n1.wav" "%~1"
ffmpeg -i "%~n1.wav" -codec:a libvorbis -qscale:a 6 "%~n1.ogg"
del "%~n1.wav"
move "%~n1.ogg" "."