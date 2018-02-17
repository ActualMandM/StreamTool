@echo off
echo Downloading vgmstream...
powershell "($WebClient = New-Object System.Net.WebClient).DownloadFile('https://ci.appveyor.com/api/projects/kode54/vgmstream/artifacts/Release/test.zip', 'vgmstream.zip')"
echo Downloading vgaudio...
powershell "($WebClient = New-Object System.Net.WebClient).DownloadFile('https://ci.appveyor.com/api/projects/Thealexbarney/VGAudio/artifacts/VGAudioCli.exe', 'vgaudio.exe')"
echo Downloading BCFSTM-BCFWAV-Converter...
powershell "($WebClient = New-Object System.Net.WebClient).DownloadFile('https://github.com/slashiee/BCFSTM-BCFWAV-Converter/releases/download/execompile/bcfstmbcfwavconverter.exe', 'bcfstmbcfwavconverter.exe')"
echo Downloading 7zip...
powershell "($WebClient = New-Object System.Net.WebClient).DownloadFile('https://github.com/PTKickass/ManiaModUpdater/blob/master/Dependencies/7z.exe?raw=true', '7za.exe')"
echo Downloading oggenc...
powershell "($WebClient = New-Object System.Net.WebClient).DownloadFile('http://www.rarewares.org/files/ogg/oggenc2.88-1.3.5-generic.zip', 'oggenc.zip')"
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
del vgmstream.zip
del oggenc.zip
del COPYING
del README.md
del in_vgmstream.dll
del xmp-vgmstream.dll
del ffprobe.exe
del ffmpeg.url
del "~SETUP.bat"