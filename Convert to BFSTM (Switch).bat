@echo off
cd /d "%~dp0"
vgmstream -l 1 -f 0 -L -o "%~n1.lwav" "%~1"
move "%~n1.lwav" "."
vgaudio --little-endian "%~n1.lwav" "%~n1.bfstm"
del "%~n1.lwav"