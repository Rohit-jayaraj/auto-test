@echo off
echo == Building Project ==

set MSBUILD="C:\Program Files\Microsoft Visual Studio\2022\Preview\MSBuild\Current\Bin\amd64\MSBuild.exe"
%MSBUILD% "C:\Users\rohit\OneDrive\Desktop\automation\sampleCode\sampleCode.sln" /p:Configuration=Debug

echo == Build Complete ==
pause