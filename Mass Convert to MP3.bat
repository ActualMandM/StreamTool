@echo off
echo This script will only convert the first set of stereo channels.
echo Please downmix via TXTP if you want to hear more channels.
cd /d "%~dp0"
for %%f in ("mcinput/*") do vgmstream -2 0 -o "mcoutput\%%~nf.wav" "mcinput\%%f"
for %%f in ("mcinput/*") do ffmpeg -i "mcoutput\%%~nf.wav" -q:a 0 "mcoutput\%%~nf.mp3"
for %%f in ("mcinput/*") do del "mcoutput\%%~nf.wav"