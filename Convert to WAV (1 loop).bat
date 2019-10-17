@echo off
cd /d "%~dp0"
vgmstream -l 1 -o "%~n1.wav" "%~1"
move "%~n1.wav" "."