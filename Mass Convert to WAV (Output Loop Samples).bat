@echo off
cd /d "%~dp0"
for %%f in ("mcinput/*") do vgmstream -l 1 -f 0 -o "mcoutput\%%~nf.wav" "mcinput\%%f" > "mcoutput\%%~nf.txt"