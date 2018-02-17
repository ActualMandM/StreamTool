@echo off
cd /d "%~dp0"
vgmstream -l 1 -f 0 -o "%~n1.wav" "%~1" > "%~n1.txt"
move "%~n1.wav" "."
move "%~n1.txt" "."