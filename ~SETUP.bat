@echo off
echo Downloading vgmstream...
powershell "($WebClient = New-Object System.Net.WebClient).DownloadFile('https://ci.appveyor.com/api/projects/kode54/vgmstream/artifacts/Release/test.zip?branch=master&job=Image:+Visual+Studio+2017', 'vgmstream.zip')"
echo Downloading vgaudio...
powershell "($WebClient = New-Object System.Net.WebClient).DownloadFile('https://ci.appveyor.com/api/projects/Thealexbarney/VGAudio/artifacts/VGAudioCli.exe?branch=master', 'vgaudio.exe')"
echo Downloading oggenc...
powershell "($WebClient = New-Object System.Net.WebClient).DownloadFile('http://www.rarewares.org/files/ogg/oggenc2.88-1.3.5-generic.zip', 'oggenc.zip')"
echo Updating ffmpeg...
powershell "($WebClient = New-Object System.Net.WebClient).DownloadFile('https://www.gyan.dev/ffmpeg/builds/ffmpeg-git-essentials.zip', 'ffmpeg.zip')"
echo Renaming 7zip...
ren 7za 7za.exe
echo Extracting vgmstream...
7za x "vgmstream.zip" -y
ren test.exe vgmstream.exe
echo Extracting oggenc...
7za x "oggenc.zip" -y
ren oggenc2.exe oggenc.exe
echo Extracting ffmpeg...
7za e "ffmpeg.zip" -y
echo Making mass convert folders...
if not exist mcinput mkdir mcinput
if not exist mcoutput mkdir mcoutput
echo Deleting unnecessary files...
del COPYING
del README.md
del ffplay.exe
del ffprobe.exe
del in_vgmstream.dll
del oggenc.zip
del vgmstream.zip
del xmp-vgmstream.dll
rmdir bin
rmdir doc
rmdir presets
del LICENSE.txt
del README.txt
del bootstrap.min.css
del default.css
del developer.html
del faq.html
del fate.html
del ffmpeg-all.html
del ffmpeg-bitstream-filters.html
del ffmpeg-codecs.html
del ffmpeg-devices.html
del ffmpeg-filters.html
del ffmpeg-formats.html
del ffmpeg-protocols.html
del ffmpeg-resampler.html
del ffmpeg-scaler.html
del ffmpeg-utils.html
del ffmpeg.html
del ffplay-all.html
del ffplay.html
del ffprobe-all.html
del ffprobe.html
del general.html
del git-howto.html
del libavcodec.html
del libavdevice.html
del libavfilter.html
del libavformat.html
del libavutil.html
del libswresample.html
del libswscale.html
del mailing-list-faq.html
del nut.html
del platform.html
del style.min.css
del ffprobe.xsd
del libvpx-1080p.ffpreset
del libvpx-1080p50_60.ffpreset
del libvpx-360p.ffpreset
del libvpx-720p.ffpreset
del libvpx-720p50_60.ffpreset
del "~SETUP.bat"
