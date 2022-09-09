@echo off
cd /d "%~dp0"
vgmstream -p "%~1" | ffmpeg -i pipe: -compression_level 12 "%~n1.flac"