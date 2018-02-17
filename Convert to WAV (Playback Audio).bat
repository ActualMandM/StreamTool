@echo off
cd /d "%~dp0"
vgmstream -o "%~n1.wav" "%~1"
move "%~n1.wav" "."
ffplay -autoexit -nodisp "%~n1.wav"
del "%~n1.wav"