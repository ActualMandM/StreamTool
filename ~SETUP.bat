@echo off
echo Downloading vgmstream...
powershell "($WebClient = New-Object System.Net.WebClient).DownloadFile('https://ci.appveyor.com/api/projects/kode54/vgmstream/artifacts/Release/test.zip', 'vgmstream.zip')"
echo Downloading vgaudio...
powershell "($WebClient = New-Object System.Net.WebClient).DownloadFile('https://ci.appveyor.com/api/projects/Thealexbarney/VGAudio/artifacts/VGAudioCli.exe', 'vgaudio.exe')"
echo Downloading BCFSTM-BCFWAV-Converter...
powershell "($WebClient = New-Object System.Net.WebClient).DownloadFile('https://github.com/slashiee/BCFSTM-BCFWAV-Converter/releases/download/execompile/bcfstmbcfwavconverter.exe', 'bcfstmbcfwavconverter.exe')"
echo Downloading 7zip...
powershell "($WebClient = New-Object System.Net.WebClient).DownloadFile('https://github.com/PTKickass/ManiaModUpdater/blob/master/Dependencies/7z.exe?raw=true', '7za.exe')"
echo Extracting vgmstream...
7za x "vgmstream.zip"
echo Opening FFMPEG site...
echo Download the nightly 32-bit shared version, and extract the contents of the bin folder into this directory.
ffmpeg.url
pause
echo Deleting unnecessary files...
del vgmstream.zip
del COPYING
del README.md
del in_vgmstream.dll
del xmp-vgmstream.dll
del ffprobe.exe
del ffmpeg.url
del "~SETUP.bat"