@echo off
cd /d "%~dp0"
for %%f in ("mcinput/*") do vgmstream -l 1 -f 0 -L -o "mcoutput\%%~nf.wav" "mcinput\%%f"
for %%f in ("mcinput/*") do vgaudio "mcoutput\%%~nf.wav" "mcoutput\%%~nf.idsp"
for %%f in ("mcinput/*") do del "mcoutput\%%~nf.wav"