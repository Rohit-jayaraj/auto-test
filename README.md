# DevOps Pipeline

This project showcases a basic pipeline using GitHub and Jenkins.

## Technologies uses:
- **GitHub** : For version control.
- **Jenkins** : For Continuous Integration ( CI ).

## Pipeline Overview:
1. Code Commit : Developer pushes code to GitHub repository.
2. Jenkins Build : Jenkins automatically triggers a build when it detects a code push.

## Steps:
1. Initialize a Git repo in your code folder.
2. Once the changes have been made, stage and commit the files.
3. Create a .bat file that automatically builds the solution.
4. On Jenkins, create a Freestyle project. Add a description if needed.
5. Under Source Code Management, select Git. Add your GitHub repo URL and the branch if required.
6. Under Triggers, select Poll SCM and specify the time intervals at which Jenkins scans the repo for commits. I've entered "H/2 * * * *", this will make Jenkins scan every 2 mins.
7. Under Build Steps, select Add build step and select Execute windows batch command.
8. Here, I've entered call "build.bat" in the Execute Windows batch command window.
9. Click on Save.

## Jenkins will automatically scan the specified repo for changes and build the solution.

## Build.bat sample:

@echo off
echo === Building SampleVCppProject ===

REM MSBuild path
set MSBUILD="C:\Program Files\Microsoft Visual Studio\2022\Preview\MSBuild\Current\Bin\amd64\MSBuild.exe"

REM solution path
%MSBUILD% "C:\Users\user\OneDrive\Desktop\DevOps rev\SampleVCppProject\SampleVCppProject.sln" /p:Configuration=Debug

echo == Build Complete ==
pause

