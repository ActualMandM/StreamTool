@echo off
cd /d "%~dp0"
for %%f in ("mcinput/*") do vgmstream -o "mcoutput\%%~nf.wav" "mcinput\%%f"