@echo off
echo Downloading vgmstream...
powershell "($WebClient = New-Object System.Net.WebClient).DownloadFile('https://ci.appveyor.com/api/projects/kode54/vgmstream/artifacts/Release/test.zip?branch=master', 'vgmstream.zip')"
echo Downloading vgaudio...
powershell "($WebClient = New-Object System.Net.WebClient).DownloadFile('https://ci.appveyor.com/api/projects/Thealexbarney/VGAudio/artifacts/VGAudioCli.exe?branch=master', 'vgaudio.exe')"
echo Downloading oggenc...
powershell "($WebClient = New-Object System.Net.WebClient).DownloadFile('http://www.rarewares.org/files/ogg/oggenc2.88-1.3.5-generic.zip', 'oggenc.zip')"
echo Renaming 7zip...
ren 7za 7za.exe
echo Extracting vgmstream...
7za x "vgmstream.zip" -y
ren test.exe vgmstream.exe
echo Extracting oggenc...
7za x "oggenc.zip" -y
ren oggenc2.exe oggenc.exe
echo Opening ffmpeg site...
echo Download the nightly 32-bit shared version, and extract the contents of the bin folder into this directory.
ffmpeg.url
pause
echo Making mass convert folders...
if not exist mcinput mkdir mcinput
if not exist mcoutput mkdir mcoutput
echo Deleting unnecessary files...
del "appveyor.yml"
del COPYING
del README.md
del ffmpeg.url
del ffplay.exe
del ffprobe.exe
del in_vgmstream.dll
del oggenc.zip
del vgmstream.zip
del xmp-vgmstream.dll
del "~SETUP.bat"
