@echo off
cd /d "%~dp0"
for %%f in ("mcinput/*") do vgmstream -2 0 -o "mcoutput\%%~nf.wav" "mcinput\%%f"
for %%f in ("mcinput/*") do ffmpeg -i "mcoutput\%%~nf.wav" -codec:a libvorbis -qscale:a 6 "mcoutput\%%~nf.ogg"
for %%f in ("mcinput/*") do del "mcoutput\%%~nf.wav"