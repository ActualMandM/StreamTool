@echo off
echo This script will only convert the first set of stereo channels.
echo Please downmix via TXTP if you want to hear more channels.
cd /d "%~dp0"
for %%f in ("mcinput/*") do vgmstream -2 0 -p "mcinput\%%f" | ffmpeg -i pipe: -codec:a libmp3lame -b:a 320k "mcoutput\%%~nf.mp3"