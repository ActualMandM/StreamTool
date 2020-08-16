@echo off
cd /d "%~dp0"
for %%f in ("mcinput/*") do vgmstream -o "mcoutput\%%~nf.wav" "mcinput\%%f"
for %%f in ("mcinput/*") do ffmpeg -i "mcoutput\%%~nf.wav" -compression_level 12 "mcoutput\%%~nf.flac"
for %%f in ("mcinput/*") do del "mcoutput\%%~nf.wav"