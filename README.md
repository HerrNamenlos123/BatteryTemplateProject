# BatteryTemplateProject

This is a template to be used for the https://github.com/HerrNamenlos123/BatteryEngine

## Requirements

 - [git](https://git-scm.com/downloads) - For cloning, obviously
 - [Microsoft Visual Studio 2019](https://visualstudio.microsoft.com/de/downloads/) - Other IDEs can be used by altering `generate-win.bat`
 - [BatteryEngine](https://github.com/HerrNamenlos123/BatteryEngine) -> Must be compiled and installed before continuing

## How to use

 - Create a folder with the name of your project
 - Open a command prompt within that folder and paste: `git clone https://github.com/HerrNamenlos123/BatteryTemplateProject.git .`
 - Optionally: Use the green button at the top of this page to generate your derived repository and then clone that instead
 - Now clone the BatteryEngine: `mkdir modules/BatteryEngine && cd modules/BatteryEngine && git clone https://github.com/HerrNamenlos123/BatteryEngine.git . --recursive`
 - Close the command prompt
 - In the file explorer double-click `generate-win.bat`, enter a project name and start developing :P
