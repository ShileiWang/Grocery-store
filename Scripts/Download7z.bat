@echo off
echo "Downloading 7zip"
powershell -Command "Invoke-WebRequest https://www.7-zip.org/a/7z1900-x64.exe -OutFile 7zip.exe"
echo 'Done!'
cls
pause