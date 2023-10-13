@echo off
echo Downloading vgmstream...
powershell "($WebClient = New-Object System.Net.WebClient).DownloadFile('https://github.com/vgmstream/vgmstream-releases/releases/download/nightly/vgmstream-win.zip', 'vgmstream.zip')"
echo Downloading vgaudio...
powershell "($WebClient = New-Object System.Net.WebClient).DownloadFile('https://github.com/ActualMandM/VGAudio/releases/download/appveyor/VGAudioCli.exe', 'vgaudio.exe')"
echo Updating ffmpeg...
powershell "($WebClient = New-Object System.Net.WebClient).DownloadFile('https://www.gyan.dev/ffmpeg/builds/ffmpeg-git-essentials.7z', 'ffmpeg.7z')"
echo Renaming 7zip...
ren 7za 7za.exe
echo Extracting vgmstream...
7za x "vgmstream.zip" -y
ren vgmstream-cli.exe vgmstream.exe
echo Extracting ffmpeg...
7za e "ffmpeg.7z" -y
echo Making mass convert folders...
if not exist mcinput mkdir mcinput
if not exist mcoutput mkdir mcoutput
echo Deleting unnecessary files...
del COPYING
del USAGE.md
del README.md
del ffprobe.exe
del in_vgmstream.dll
del vgmstream.zip
del ffmpeg.7z
del xmp-vgmstream.dll
rmdir bin
rmdir doc
rmdir presets
del LICENSE.txt
del README.txt
del *.html
del *.css
del ffprobe.xsd
del *.ffpreset
del "#SETUP.bat"
