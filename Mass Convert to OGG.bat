@echo off
cd /d "%~dp0"
for %%f in ("mcinput/*") do vgmstream -2 0 -p "mcinput\%%f" | ffmpeg -i pipe: -codec:a libvorbis -qscale:a 6 "mcoutput\%%~nf.ogg"