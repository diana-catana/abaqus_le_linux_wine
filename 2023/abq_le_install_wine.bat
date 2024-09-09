@echo off
:: Abaqus 2024 environment setup script

:: Disable CATAppBridge
SET CATAppBridge=NO

:: Set paths to the dictionary files
SET CATDictionaryPath=%cd%\SIMULIA_Abaqus_2024.Windows64\1\inst\win_b64\code\dictionary;%cd%\SIMULIA_Abaqus_2024.Windows64\1\inst\common\code\dictionary

:: Set paths to the graphic resources
SET CATGraphicPath=%cd%\SIMULIA_Abaqus_2024.Windows64\1\inst\win_b64\resources\graphic;%cd%\SIMULIA_Abaqus_2024.Windows64\1\inst\common\resources\graphic;%cd%\SIMULIA_Abaqus_2024.Windows64\1\inst\win_b64\resources\graphic\icons;%cd%\SIMULIA_Abaqus_2024.Windows64\1\inst\common\resources\graphic\icons;%cd%\SIMULIA_Abaqus_2024.Windows64\1\inst\win_b64\resources\graphic\splashscreens;%cd%\SIMULIA_Abaqus_2024.Windows64\1\inst\common\resources\graphic\splashscreens

:: Set installation paths
SET CATInst=%cd%\SIMULIA_Abaqus_2024.Windows64\1\inst
SET CATInstallPath=%cd%\SIMULIA_Abaqus_2024.Windows64\1\inst\win_b64

:: Set message catalog paths
SET CATMsgCatalogPath=%cd%\SIMULIA_Abaqus_2024.Windows64\1\inst\win_b64\resources\msgcatalog;%cd%\SIMULIA_Abaqus_2024.Windows64\1\inst\common\resources\msgcatalog

:: Set reference files paths
SET CATReffilesPath=%cd%\SIMULIA_Abaqus_2024.Windows64\1\inst\win_b64\reffiles;%cd%\SIMULIA_Abaqus_2024.Windows64\1\inst\common\reffiles

:: Set installation parameters
SET DSYAdmInstCurrentMediaDir=%cd%\SIMULIA_Abaqus_2024.Windows64\1
SET DSYAdmInstDebugAction=f
SET DSYAdmInstDebugEnv=f
SET DSYAdmInstDebugError=1
SET DSYAdmInstDebugEverything=1
SET DSYAdmInstDebugIndexes=f
SET DSYAdmInstDebugSummary=f
SET DSYIns_HasElevatedPrivileges=1
SET DSYIns_IsInteractiveSession=1

:: Disable IR Management Activation
SET DSYSysIRManagementActivation=NO

:: Set operating system version
SET DSY_OS=win_b64

:: Set Java Home (JRE)
SET JAVA_HOME=c:\jre

:: Run the Abaqus installer application
%CATInstallPath%\code\bin\DSYInsAppliTUI.exe -CDpath %DSYAdmInstCurrentMediaDir%
