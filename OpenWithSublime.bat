#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

@echo off
SET st3Path=C:\Program Files\Sublime Text\sublime_text.exe
 
rem add it for all file types
@reg add "HKEY_CLASSES_ROOT\*\shell\Open with Sublime Text"         /t REG_SZ /v "" /d "Open with Sublime Text"   /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Open with Sublime Text"         /t REG_EXPAND_SZ /v "Icon" /d "%st3Path%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Open with Sublime Text\command" /t REG_SZ /v "" /d "%st3Path% \"%%1\"" /f
 
rem add it for folders
@reg add "HKEY_CLASSES_ROOT\Folder\shell\Open with Sublime Text"         /t REG_SZ /v "" /d "Open with Sublime Text"   /f
@reg add "HKEY_CLASSES_ROOT\Folder\shell\Open with Sublime Text"         /t REG_EXPAND_SZ /v "Icon" /d "%st3Path%,0" /f
@reg add "HKEY_CLASSES_ROOT\Folder\shell\Open with Sublime Text\command" /t REG_SZ /v "" /d "%st3Path% \"%%1\"" /f
pause

rem add it for right click on explorer
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Sublime"         /t REG_SZ /v "" /d "Open with Sublime Text"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Sublime"         /t REG_SZ /v "Icon" /d "%st3Path%" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Sublime\command" /t REG_SZ /v "" /d "%st3Path% \"%%V\"" /f
pause