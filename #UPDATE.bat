@echo off
echo Deleting vgmstream...
del avcodec-vgmstream-*.dll
del avformat-vgmstream-*.dll
del avutil-vgmstream-*.dll
del jansson.dll
del libatrac9.dll
del libcelt-0061.dll
del libcelt-0110.dll
del libg719_decode.dll
del libmpg123-*.dll
del libspeex*.dll
del libvorbis.dll
del swresample-vgmstream-*.dll
del vgmstream.exe
echo Deleting ffmpeg...
del avcodec-*.dll
del avdevice-*.dll
del avfilter-*.dll
del avformat-*.dll
del avutil-*.dll
del ffmpeg.exe
del ffplay.exe
del postproc-*.dll
del swresample-*.dll
del swscale-*.dll
echo Deleting vgaudio...
del vgaudio.exe
echo Updating vgmstream...
powershell "($WebClient = New-Object System.Net.WebClient).DownloadFile('https://github.com/vgmstream/vgmstream-releases/releases/download/nightly/vgmstream-win.zip', 'vgmstream.zip')"
echo Updating vgaudio...
powershell "($WebClient = New-Object System.Net.WebClient).DownloadFile('https://github.com/ActualMandM/VGAudio/releases/download/appveyor/VGAudioCli.exe', 'vgaudio.exe')"
echo Extracting vgmstream...
7za x "vgmstream.zip"
echo Updating ffmpeg...
powershell "($WebClient = New-Object System.Net.WebClient).DownloadFile('https://www.gyan.dev/ffmpeg/builds/ffmpeg-git-essentials.7z', 'ffmpeg.7z')"
echo Extracting ffmpeg...
7za e "ffmpeg.7z" -y
ren vgmstream-cli.exe vgmstream.exe
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