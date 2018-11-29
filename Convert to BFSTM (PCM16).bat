@echo off
cd /d "%~dp0"
vgmstream -l 1 -f 0 -L -o "%~n1.wav" "%~1"
move "%~n1.wav" "."
vgaudio -f PCM16 "%~n1.wav" "%~n1.bfstm"
del "%~n1.wav"