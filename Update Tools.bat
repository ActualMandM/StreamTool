@echo off
echo Thanks PTKickass for help with this updater!
echo Deleting vgmstream...
del vgmstream.exe
del swresample-vgmstream-*.dll
del libvorbis.dll
del libmpg123-*.dll
del libg7221_decode.dll
del libg719_decode.dll
del libatrac9.dll
del avutil-vgmstream-*.dll
del avformat-vgmstream-*.dll
del avcodec-vgmstream-*.dll
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
echo Deleting BCFSTM-BCFWAV-Converter...
del bcfstmbcfwavconverter.exe
echo Updating vgmstream...
powershell "($WebClient = New-Object System.Net.WebClient).DownloadFile('https://ci.appveyor.com/api/projects/kode54/vgmstream/artifacts/Release/test.zip', 'vgmstream.zip')"
echo Updating vgaudio...
powershell "($WebClient = New-Object System.Net.WebClient).DownloadFile('https://ci.appveyor.com/api/projects/Thealexbarney/VGAudio/artifacts/VGAudioCli.exe', 'vgaudio.exe')"
echo Updating BCFSTM-BCFWAV-Converter...
powershell "($WebClient = New-Object System.Net.WebClient).DownloadFile('https://github.com/slashiee/BCFSTM-BCFWAV-Converter/releases/download/execompile/bcfstmbcfwavconverter.exe', 'bcfstmbcfwavconverter.exe')"
echo Extracting vgmstream...
7za x "vgmstream.zip"
ren test.exe vgmstream.exe
echo Deleting unnecessary files...
del vgmstream.zip
del COPYING
del README.md
del in_vgmstream.dll
del xmp-vgmstream.dll
REM del ffprobe.exe