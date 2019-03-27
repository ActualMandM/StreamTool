@echo off
echo Deleting vgmstream...
del avcodec-vgmstream-*.dll
del avformat-vgmstream-*.dll
del avutil-vgmstream-*.dll
del libatrac9.dll
del libcelt-0061.dll
del libcelt-0110.dll
del libg719_decode.dll
del libg7221_decode.dll
del libmpg123-*.dll
del libvorbis.dll
del swresample-vgmstream-*.dll
del vgmstream.exe
REM echo Deleting ffmpeg...
REM del avcodec-*.dll
REM del avdevice-*.dll
REM del avfilter-*.dll
REM del avformat-*.dll
REM del avutil-*.dll
REM del ffmpeg.exe
REM del ffplay.exe
REM del postproc-*.dll
REM del swresample-*.dll
REM del swscale-*.dll
echo Deleting vgaudio...
del vgaudio.exe
echo Updating vgmstream...
powershell "($WebClient = New-Object System.Net.WebClient).DownloadFile('https://ci.appveyor.com/api/projects/kode54/vgmstream/artifacts/Release/test.zip?branch=master', 'vgmstream.zip')"
echo Updating vgaudio...
powershell "($WebClient = New-Object System.Net.WebClient).DownloadFile('https://ci.appveyor.com/api/projects/Thealexbarney/VGAudio/artifacts/VGAudioCli.exe?branch=master', 'vgaudio.exe')"
echo Extracting vgmstream...
7za x "vgmstream.zip"
ren test.exe vgmstream.exe
echo Deleting unnecessary files...
del COPYING
del README.md
REM del ffprobe.exe
del in_vgmstream.dll
del vgmstream.zip
del xmp-vgmstream.dll
