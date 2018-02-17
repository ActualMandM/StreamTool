@echo off
cd /d "%~dp0"
vgmstream -g -l 1 -f 0 -L -o "%~n1.wav" "%~1" > "%~n1.bat"
call "%~n1.bat"
move "%~n1.ogg" "."
ren "%~n1.ogg" "%~n1.logg"
del "%~n1.bat"
del "%~n1.wav"