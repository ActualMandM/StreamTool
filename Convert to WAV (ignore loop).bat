@echo off
cd /d "%~dp0"
vgmstream -i -o "%~n1.wav" "%~1"
move "%~n1.wav" "."