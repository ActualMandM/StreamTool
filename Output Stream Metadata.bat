@echo off
cd /d "%~dp0"
vgmstream -m "%~1" > "%~n1.txt"
move "%~n1.txt" "."