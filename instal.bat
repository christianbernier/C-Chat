@echo off
cls
title C-Chat is Being Instaled
echo C-Chat
echo.
echo Please follow the instructions given.
echo.
pause
cls
cd "Files"
xcopy "CFolder" "\\%computername%\Public" /S
echo Please Press D Twice.
pause >nul
xcopy "Chat" "\\%computername%\Public\Chat" /S
copy "C-Chat.bat" "C:\Users\%username%\Desktop"
title C-Chat has been instaled!!
cls
echo The instalation process is complete.
echo.
echo Please click any key to exit.
pause >nul
exit
