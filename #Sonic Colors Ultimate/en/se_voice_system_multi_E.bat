@echo off
cd /d "%~dp0"
cd ..
cd ..
vgmstream -l 1 -f 0 -L -o "%~n1.wav" "%~1"
move "%~n1.wav" "."
vgaudio --hcaquality High --keycode 15748141288907254812 "%~n1.wav" "%~n1.hca"
del "%~n1.wav"