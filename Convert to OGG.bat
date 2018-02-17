@echo off
cd /d "%~dp0"
vgmstream -o "%~n1.wav" "%~1"
oggenc "%~n1.wav"
del "%~n1.wav"
move "%~n1.ogg" "."