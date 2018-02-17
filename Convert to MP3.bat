@echo off
set S_C=0
echo Please input the set of stereo channels that you want. Be aware that first set of stereo channels is 0, not 1.
set /P S_C="Please input your number (Default is 0): "
cd /d "%~dp0"
vgmstream -2 %S_C% -o "%~n1.wav" "%~1"
ffmpeg -i "%~n1.wav" "%~n1.mp3"
del "%~n1.wav"
move "%~n1.mp3" "."