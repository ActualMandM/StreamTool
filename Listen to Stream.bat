@echo off
cd /d "%~dp0"
vgmstream -p "%~1" | ffplay -i pipe: