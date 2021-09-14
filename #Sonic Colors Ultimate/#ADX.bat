@echo off
cd /d "%~dp0"
cd ..
vgmstream -l 1 -f 0 -L -o "%~n1.wav" "%~1"
move "%~n1.wav" "."
vgaudio --keycode 1991062320101111 "%~n1.wav" "%~n1.adx"
del "%~n1.wav"