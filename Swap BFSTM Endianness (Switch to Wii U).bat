@echo off
cd /d "%~dp0"
bcfstmbcfwavconverter -format FSTM -bom 0 "%~1"