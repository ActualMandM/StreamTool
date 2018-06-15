@echo off
cd /d "%~dp0"
for %%f in ("mcinput/*") do vgmstream -l 1 -f 0 -L -o "mcoutput\%%~nf.lwav" "mcinput\%%f"
for %%f in ("mcinput/*") do vgaudio --little-endian "mcoutput\%%~nf.lwav" "mcoutput\%%~nf.bfstm"
for %%f in ("mcinput/*") do del "mcoutput\%%~nf.lwav"