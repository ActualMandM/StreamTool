@echo off
cd /d "%~dp0"
vgmstream -l 1 -p "%~1" | ffmpeg -i pipe: -codec:a libvorbis -qscale:a 6 "%~n1.ogg"