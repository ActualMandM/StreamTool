@echo off
cd /d "%~dp0"
for %%f in ("mcinput/*") do vgmstream -l 1 -f 0 -L -o "mcoutput\%%~nf.wav" "mcinput\%%f"
for %%f in ("mcinput/*") do vgaudio --little-endian -f PCM16 "mcoutput\%%~nf.wav" "mcoutput\%%~nf.bfstm"
for %%f in ("mcinput/*") do del "mcoutput\%%~nf.wav"