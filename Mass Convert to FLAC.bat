@echo off
cd /d "%~dp0"
for %%f in ("mcinput/*") do vgmstream -p "mcinput\%%f" | ffmpeg -i pipe: -compression_level 12 "mcoutput\%%~nf.flac"