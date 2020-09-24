@echo off
cd /d "%~dp0"
for %%f in ("mcinput/*") do vgmstream -m "mcinput\%%f" > "mcoutput\%%~nf.txt"