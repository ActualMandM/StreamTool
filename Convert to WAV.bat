@echo off
cd /d "%~dp0"
vgmstream -o "%~n1.wav" "%~1"
move "%~n1.wav" "."