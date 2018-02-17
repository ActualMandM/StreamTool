@echo off
cd /d "%~dp0"
for %%f in ("mcinput/*") do vgmstream -l 1 -f 0 -L -o "mcoutput\%%~nf.lwav" "mcinput\%%f"
for %%f in ("mcinput/*") do vgaudio -f PCM16 "mcoutput\%%~nf.lwav" "mcoutput\%%~nf.bcstm"
for %%f in ("mcinput/*") do del "mcoutput\%%~nf.lwav"