@echo off
cd /d "%~dp0"
vgmstream -l 1 -f 0 -L -o "%~n1.lwav" "%~1"
move "%~n1.lwav" "."
vgaudio -f PCM16 "%~n1.lwav" "%~n1.bcstm"
del "%~n1.lwav"