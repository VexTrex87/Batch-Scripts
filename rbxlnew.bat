@echo off 

set /p NewProjectName=Enter the project name: 

echo Cloning template
cd C:\Users\Andre\Documents\Projects\Roblox
mkdir %NewProjectName%
xcopy C:\Users\Andre\Documents\Projects\Roblox %.template% /E
powershell write-host -fore Green Template created

echo Opening project in Visual Studio Code
call code %NewProjectName%
cd %NewProjectName%
powershell write-host -fore Green VSC successfully opened

echo Opening project in Roblox Studio
call start NewProject.rbxl
powershell write-host -fore Green Project successfully opened in Roblox Studio

echo Initializing a repository
call git init
powershell write-host -fore Green Successfully initialized a repository

echo Starting Rojo in Visual Studio Code
call rojo serve
powershell write-host -fore Green Rojo started