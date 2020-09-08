@echo off
title Hacking Facility
color 0a

:beforehome
title Welcome To C-Chat
set beforehome=1
cls
color 0a
color %color%
echo Welcome To C-Chat!!
echo _________________
echo Please Logon To Goto
echo The Chatroom, and to
echo Access More Features.
echo.
echo 1) Logon
echo.
echo 2) Create An Account
echo.
echo 3) Forgot Your Password
echo.
echo 4) Exit
echo.
set /p beforehome=Choice: 
if "%beforehome%"=="1" goto logon
if "%beforehome%"=="2" goto account
if "%beforehome%"=="3" goto forgotpass
if "%beforehome%"=="4" exit
cls
echo.
echo "%beforehome%" is not a valid number
echo Please enter a valid number
ping localhost -n 2 >nul
goto beforehome

:home
set ch=1
color 0a
color %color%
title C-Chat
cls
echo  C-Chat 0.5.3
echo        C-Corp
echo   Welcome, %un%!
echo Over 1,200 Lines of Code!!          
echo __________________
echo 1. Goto The Chat Room                                  
echo.                                               
echo 2. Create an account                                          
echo.                                                      
echo 3. Info and how to use                                 
echo.
echo 4. Change Your Password
echo.
echo 5. Change Log
echo.
echo 6. Logout
echo.
echo 7. Random Password
echo.
echo 8. Goto Menu Page 2
echo.
echo 9. Exit
echo __________________
echo.
set /p ch=Choice Number: 
if "%ch%"=="1" goto chatselect
if "%ch%"=="2" goto account
if "%ch%"=="3" goto info
if "%ch%"=="4" goto changepass
if "%ch%"=="5" goto change
if "%ch%"=="6" goto logout
if "%ch%"=="7" goto random
if "%ch%"=="8" goto menu2
if "%ch%"=="9" exit
if "%ch%"=="minecraft" goto eggmc
if "%ch%"=="cmd" goto eggcmd
if "%ch%"=="system32" goto eggsystem32
if "%ch%"=="System32" goto eggsystem32
if "%ch%"=="system 32" goto eggsystem32
if "%ch%"=="System 32" goto eggsystem32
if "%ch%"=="food" goto eggfood
if "%ch%"=="Food" goto eggfood
if "%ch%"=="stickynote" goto eggstick
if "%ch%"=="Stickynote" goto eggstick
if "%ch%"=="sticky note" goto eggstick
if "%ch%"=="Sticky note" goto eggstick
if "%ch%"=="Paint" goto eggpaint
if "%ch%"=="paint" goto eggpaint
if "%ch%"=="math" goto eggmath
if "%ch%"=="Math" goto eggmath
if "%ch%"=="time" goto eggtime
if "%ch%"=="Time" goto eggtime
if "%ch%"=="cal" goto eggcal
if "%ch%"=="Cal" goto eggcal
if "%ch%"=="people" goto eggpeople
if "%ch%"=="People" goto eggpeople
if "%ch%"=="cdrive" goto eggc
if "%ch%"=="Cdrive" goto eggc
if "%ch%"=="c Drive" goto eggc
if "%ch%"=="C Drive" goto eggc
if "%ch%"=="cDrive" goto eggc
if "%ch%"=="CDrive" goto eggc
if "%ch%"=="c drive" goto eggc
if "%ch%"=="C drive" goto eggc
if "%ch%"=="ddrive" goto eggd
if "%ch%"=="Ddrive" goto eggd
if "%ch%"=="d Drive" goto eggd
if "%ch%"=="D Drive" goto eggd
if "%ch%"=="dDrive" goto eggd
if "%ch%"=="DDrive" goto eggd
if "%ch%"=="d drive" goto eggd
if "%ch%"=="D drive" goto eggd
if "%ch%"=="fdrive" goto eggf
if "%ch%"=="Fdrive" goto eggf
if "%ch%"=="f Drive" goto eggf
if "%ch%"=="F Drive" goto eggf
if "%ch%"=="fDrive" goto eggf
if "%ch%"=="FDrive" goto eggf
if "%ch%"=="f drive" goto eggf
if "%ch%"=="F drive" goto eggf
if "%ch%"=="systemdrive" goto eggsystemdrive
if "%ch%"=="systemDrive" goto eggsystemdrive
if "%ch%"=="system drive" goto eggsystemdrive
if "%ch%"=="system Drive" goto eggsystemdrive
if "%ch%"=="Systemdrive" goto eggsystemdrive
if "%ch%"=="SystemDrive" goto eggsystemdrive
if "%ch%"=="System drive" goto eggsystemdrive
if "%ch%"=="System Drive" goto eggsystemdrive
if "%ch%"=="unicorn" goto egguni
if "%ch%"=="Unicorn" goto egguni
if "%ch%"=="youtube" goto eggu
if "%ch%"=="Youtube" goto eggu
if "%ch%"=="youTube" goto eggu
if "%ch%"=="YouTube" goto eggu
if "%ch%"=="you tube" goto eggu
if "%ch%"=="You tube" goto eggu
if "%ch%"=="you Tube" goto eggu
if "%ch%"=="You Tube" goto eggu
color 0c
echo.
echo "%ch%" is not a valid number
echo Please enter a valid number
ping localhost -n 2 >nul
goto home

:egguni
start http://media-cache-ec0.pinimg.com/236x/6b/d6/f1/6bd6f1347b72d7540a73937737763961.jpg
goto home

:eggsystemdrive
start %SystemDrive%
goto home

:eggu
start http://www.youtube.com
goto home

:eggc
start C:\
goto home

:eggd
start D:\
goto home

:eggf
start F:\
goto home

:eggpeople
start C:\Users\Christian\Contacts
goto home

:eggcal
start C:\Users\Christian\Desktop\cal.lnk
goto home

:eggtime
cls
echo %date% %time%
echo.
echo Click To Goto The Home Screen
pause >nul
goto home

:eggmath
start C:\Windows\System32\calc.exe
goto home

:eggpaint
start C:\Windows\System32\mspaint.exe
goto home

:eggstick
start %SystemRoot%\system32\StikyNot.exe
goto home

:eggfood
start http://upload.wikimedia.org/wikipedia/commons/a/a5/Glazed-Donut.jpg
cls
echo Yum!
echo.
echo Please Wait...
ping localhost -n 5 >nul
goto home

:logout
set %un%=" "
goto beforehome

:changepass
cls
title Change Your Password
echo.
echo Please Enter Your Information To Change Your Password
echo.
set /p changeun=Username: 
cls
set /p changeold=Old Password: 
cls
set /p changenew=New Password:
cls
set /p changenewverifiy=Verifiy New Password: 
cls
if NOT Exist "\\MOM-PC\PUBLIC\Chat\USERS\%changeun%.user" goto newnot
echo %changeold% >"%tmp%\newchtmp.tmp"
fc %tmp%\newchtmp.tmp \\MOM-PC\PUBLIC\Chat\USERS\"%un%".user
if errorlevel==1 goto newincor
echo %changenew% >"\\MOM-PC\PUBLIC\Chat\USERS\%changeun%.userpassword"
echo %changenewverifiy% >"%tmp%\evennewchtmp.tmp"
fc %tmp%\evennewchtmp.tmp \\MOM-PC\PUBLIC\Chat\USERS\"%changeun%".userpassword
if errorlevel==1 goto newverifyincor
echo %changenew% >"\\MOM-PC\PUBLIC\Chat\USERS\%changeun%.user"
del \\MOM-PC\Public\Chat\Users\%changeun%.userpassword
cls
echo You have successfully changed your password.
ping localhost -n 4 >nul
goto home

:eggsystem32
start %SystemDrive%\Windows\system32
goto home

:adminmenu
cls
echo Welcome, Admin!
echo.
echo 1) Goto Admin Chat Room
echo.
echo 2) Go To The Regular Menu
echo.
echo 3) Go Back
echo.
set /p adminmenu=Choice: 
if "%adminmenu%"=="1" goto chatselecta
if "%adminmenu%"=="2" goto home
if "%adminmenu%"=="3" goto beforemenu
color 0c
echo.
echo "%adminmenu%" is not a valid number
echo Please enter a valid number
ping localhost -n 2 >nul
goto adminmenu

:christianadminmenu
cls
echo Welcome, Christian!
echo.
echo 1) Goto Verified Admin Chat Room
echo.
echo 2) Go To The Regular Menu
echo.
echo 3) Go Back
echo.
set /p christianadminmenu=Choice: 
if "%christianadminmenu%"=="1" goto chatselectva
if "%christianadminmenu%"=="2" goto home
if "%christianadminmenu%"=="3" goto beforemenu
color 0c
echo.
echo "%christianadminmenu%" is not a valid number
echo Please enter a valid number
ping localhost -n 2 >nul
goto christianadminmenu

:info
cls
title Information
color %color%
echo Welcome To C-Chat!
echo This was made by Christian Bernier
echo.
echo HOW TO USE
echo Login, and you will enter the chat
echo prompt. A message prompt will
echo appear. The text will show up in the
echo message box.
echo.
echo.
echo Press any key to goto the home screen
pause >nul
goto home

:eggcmd
cls
title CMD (Easter Egg)
echo Starting CMD
ping localhost -n 3 >nul
start \\MOM-PC\USERS\Christian\Desktop\cmd.lnk
goto home

:logon
cls
title Login To C-Chat
color %color%
set /p un=Username:
cls
set /p pass=Password:
if NOT Exist "\\MOM-PC\PUBLIC\Chat\USERS\%un%.user" goto not
echo %pass% >"%tmp%\chtmp.tmp"
fc %tmp%\chtmp.tmp \\MOM-PC\PUBLIC\Chat\USERS\"%un%".user
if errorlevel==1 goto incor
if "%un%"=="MasterUnlock" goto masterunlock
if "%un%"=="Admin" goto admin
if "%un%"=="Christian" goto christianadmin
cls
goto home

:masterunlock
if "%pass%"=="4651" start \\MOM-PC\USERS\CHRISTIAN\DESKTOP\C-FILES\BATCH_PROGRAM_FILES\C-CHAT\FILE-DATABANK_ACSESS.lnk
goto home

:admin
if "%pass%"=="4651" goto adminmenu
goto home

:christianadmin
if "%pass%"=="christian64" goto christianadminmenu
goto home

:rockpaperscissors
start http://www.randomhtml1234.weebly.com
goto home

:not
color 0c
cls
title Error While Logging In
color %color%
echo This username does not exsist. Please make an account.
ping localhost -n 4 >nul
goto beforehome

:newnot
cls
title Error While Changing Password
color %color%
echo This username does not exsist. Please make an account.
ping localhost -n 4 >nul
goto changepass

:account
cls
title Create A New Account
color %color%
set /p nu=New Username:
cls
set /p np=New Password:
cls
set /p em=Backup Email:
echo %np% >"\\MOM-PC\PUBLIC\Chat\USERS\%nu%.user"
echo %em% >"\\MOM-PC\PUBLIC\Chat\USERS\%nu%.email"
cls
goto beforehome

:incor
color 0c
cls
title Error While Logging In
echo You have entered the wrong username or password. (Both are case sensitive)
ping localhost -n 2 >nul
color 0a
goto beforehome

:newincor
color 0c
cls
title Error While Changing Password
echo You have entered the wrong password. (It is case sensitive)
ping localhost -n 2 >nul
color 0a
goto changepass

:newverifyincor
color 0c
cls
title Error While Changing Password
echo You have entered the wrong password. (It is case sensitive)
ping localhost -n 2 >nul
color 0a
goto changepass

:chatselect
cls
title Which Chatroom Would You Like To Be In?
echo Pick a chatroom.
echo.
echo a) Chatroom A
echo.
echo b) Chatroom B
echo.
echo c) Chatroom C
echo.
echo d) Chatroom D
echo.
set /p chatroomch=Which Room Would You Like To Be In?
if "%chatroomch%"=="a" goto chat
if "%chatroomch%"=="A" goto chat
if "%chatroomch%"=="b" goto chatB
if "%chatroomch%"=="B" goto chatB
if "%chatroomch%"=="c" goto chatC
if "%chatroomch%"=="C" goto chatC
if "%chatroomch%"=="d" goto chatD
if "%chatroomch%"=="D" goto chatD
cls
color 0c
echo Invalid Choice.
pause >nul
goto chatslect

:chatselecta
cls
title Which Chatroom Would You Like To Be In?
echo Pick a chatroom.
echo.
echo a) Chatroom A
echo.
echo b) Chatroom B
echo.
echo c) Chatroom C
echo.
echo d) Chatroom D
echo.
set /p chatroomcha=Which Room Would You Like To Be In?
if "%chatroomcha%"=="a" goto adminchat
if "%chatroomcha%"=="A" goto adminchat
if "%chatroomcha%"=="b" goto adminchatB
if "%chatroomcha%"=="B" goto adminchatB
if "%chatroomcha%"=="c" goto adminchatC
if "%chatroomcha%"=="C" goto adminchatC
if "%chatroomcha%"=="d" goto adminchatD
if "%chatroomcha%"=="D" goto adminchatD
cls
color 0c
echo Invalid Choice.
pause >nul
goto chatslecta

:chatselectva
cls
title Which Chatroom Would You Like To Be In?
echo Pick a chatroom.
echo.
echo a) Chatroom A
echo.
echo b) Chatroom B
echo.
echo c) Chatroom C
echo.
echo d) Chatroom D
echo.
set /p chatroomchva=Which Room Would You Like To Be In?
if "%chatroomchva%"=="a" goto verifiedadminchat
if "%chatroomchva%"=="A" goto verifiedadminchat
if "%chatroomchva%"=="b" goto verifiedadminchatB
if "%chatroomchva%"=="B" goto verifiedadminchatB
if "%chatroomchva%"=="c" goto verifiedadminchatC
if "%chatroomchva%"=="C" goto verifiedadminchatC
if "%chatroomchva%"=="d" goto verifiedadminchatD
if "%chatroomchva%"=="D" goto verifiedadminchatD
cls
color 0c
echo Invalid Choice.
pause >nul
goto chatslectva

:chat
cls
title Opening Chat Room
echo Please wait while the chat room opens
ping localhost -n 3 >nul
start \\MOM-PC\PUBLIC\Chat\PROGRAM_FILES\msgbox.bat
echo %un% joined the chatroom at %time%. >>\\MOM-PC\Public\Chat\Program_Files\chatroom.chatfile
goto chat1

:chat1
set %com%=kfjaslfjslgnslgslgfjls
set name=%un%
cls
title Chat Room
color %color%
set /p text=Text: 
echo.
set /p com=Command: 
echo %name% : %text% >>\\MOM-PC\Public\Chat\Program_Files\chatroom.chatfile
ping localhost -n 1 >nul
if "%com%"=="exit" goto exit
goto chat1

:exit
cls
echo %name% has left the chatroom at %time%. >>\\MOM-PC\Public\Chat\Program_Files\chatroom.chatfile
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
pause >nul
exit

:clear
cls
echo__________CHAT ROOM___________

goto chat1

:echo
echo "%name%" : "%text%" >>"\\MOM-PC\PUBLIC\Chat\PROGRAM_FILES\chatroom.chatfile"
pinglocalhost -n 1 >nul
goto chat1

:chatexit
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
pause >nul
exit

:adminchat
title Opening Admin Chat Room
echo Please wait while the chat room opens
ping localhost -n 3 >nul
start \\MOM-PC\PUBLIC\Chat\PROGRAM_FILES\msgbox.bat
echo %un% joined the chatroom at %time%. >>\\MOM-PC\Public\Chat\Program_Files\chatroom.chatfile
goto adminchat1

:adminchat1
set %com%=kfjaslfjslgnslgslgfjls
set name=[Admin] %un%
cls
title Admin Chat Room
color %color%
set /p text=Text: 
echo.
set /p com=Command: 
echo %name% : %text% >>\\MOM-PC\Public\Chat\Program_Files\chatroom.chatfile
ping localhost -n 1 >nul
if "%com%"=="exit" goto adminchatexit
goto adminchat1

:adminexit
cls
echo %name% has left the chatroom. >>\\MOM-PC\Public\Chat\Program_Files\chatroom.chatfile
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
pause >nul
exit

:adminclear
cls
echo__________CHAT ROOM___________

goto chat1

:adminecho
echo "%name%" : "%text%" >>"\\MOM-PC\PUBLIC\Chat\PROGRAM_FILES\chatroom.chatfile"
pinglocalhost -n 1 >nul
goto chat1

:adminchatexit
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
pause >nul
exit

:verifiedadminchat
title Opening Verified Admin Chat Room
echo Please wait while the chat room opens
ping localhost -n 3 >nul
start \\MOM-PC\PUBLIC\Chat\PROGRAM_FILES\msgbox.bat
echo %un% joined the chatroom at %time%. >>\\MOM-PC\Public\Chat\Program_Files\chatroom.chatfile
goto verifiedadminchat1

:verifiedadminchat1
set %com%=kfjaslfjslgnslgslgfjls
set name=[Admin] [Verified] %un%
cls
title Verified Admin Chat Room
color %color%
set /p text=Text: 
echo.
set /p com=Command: 
echo %name% : %text% >>\\MOM-PC\Public\Chat\Program_Files\chatroom.chatfile
ping localhost -n 1 >nul
if "%com%"=="exit" goto verifiedadminchatexit
goto verifiedadminchat1

:verifiedadminexit
cls
echo %name% has left the chatroom. >>\\MOM-PC\Public\Chat\Program_Files\chatroom.chatfile
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
pause >nul
exit

:verifiedadminclear
cls
echo__________CHAT ROOM___________

goto verifiedchat1

:verifiedadminecho
echo "%name%" : "%text%" >>"\\MOM-PC\PUBLIC\Chat\PROGRAM_FILES\chatroom.chatfile"
pinglocalhost -n 1 >nul
goto verifiedchat1B

:verifiedadminchatexitB
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
pause >nul
exit

:chatB
cls
title Opening Chat Room
echo Please wait while the chat room opens
ping localhost -n 3 >nul
start \\MOM-PC\PUBLIC\Chat\PROGRAM_FILES\msgbox2.bat
echo %un% joined the chatroom at %time%. >>\\MOM-PC\Public\Chat\Program_Files\chatroom2.chatfile
goto chat1B

:chat1B
set %com%=kfjaslfjslgnslgslgfjls
set name=%un%
cls
title Chat Room B
color %color%
set /p text=Text: 
echo.
set /p com=Command: 
echo %name% : %text% >>\\MOM-PC\Public\Chat\Program_Files\chatroom2.chatfile
ping localhost -n 1 >nul
if "%com%"=="exit" goto exit
goto chat1B

:exitB
cls
echo %name% has left the chatroom at %time%. >>\\MOM-PC\Public\Chat\Program_Files\chatroom2.chatfile
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
pause >nul
exit

:clearB
cls
echo__________CHAT ROOM___________

goto chat1B

:echoB
echo "%name%" : "%text%" >>"\\MOM-PC\PUBLIC\Chat\PROGRAM_FILES\chatroom2.chatfile"
pinglocalhost -n 1 >nul
goto chat1B

:chatexitB
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
pause >nul
exit

:adminchatB
title Opening Admin Chat Room
echo Please wait while the chat room opens
ping localhost -n 3 >nul
start \\MOM-PC\PUBLIC\Chat\PROGRAM_FILES\msgbox2.bat
echo %un% joined the chatroom at %time%. >>\\MOM-PC\Public\Chat\Program_Files\chatroom2.chatfile
goto adminchat1B

:adminchat1B
set %com%=kfjaslfjslgnslgslgfjls
set name=[Admin] %un%
cls
title Admin Chat Room B
color %color%
set /p text=Text: 
echo.
set /p com=Command: 
echo %name% : %text% >>\\MOM-PC\Public\Chat\Program_Files\chatroom2.chatfile
ping localhost -n 1 >nul
if "%com%"=="exit" goto adminchatexit
goto adminchat1B

:adminexitB
cls
echo %name% has left the chatroom. >>\\MOM-PC\Public\Chat\Program_Files\chatroom2.chatfile
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
pause >nul
exit

:adminclearB
cls
echo__________CHAT ROOM___________

goto chat1B

:adminechoB
echo "%name%" : "%text%" >>"\\MOM-PC\PUBLIC\Chat\PROGRAM_FILES\chatroom2.chatfile"
pinglocalhost -n 1 >nul
goto chat1B

:adminchatexitB
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
pause >nul
exit

:verifiedadminchatB
title Opening Verified Admin Chat Room B
echo Please wait while the chat room opens
ping localhost -n 3 >nul
start \\MOM-PC\PUBLIC\Chat\PROGRAM_FILES\msgbox2.bat
echo %un% joined the chatroom at %time%. >>\\MOM-PC\Public\Chat\Program_Files\chatroom2.chatfile
goto verifiedadminchat1B

:verifiedadminchat1B
set %com%=kfjaslfjslgnslgslgfjls
set name=[Admin] [Verified] %un%
cls
title Verified Admin Chat Room B
color %color%
set /p text=Text: 
echo.
set /p com=Command: 
echo %name% : %text% >>\\MOM-PC\Public\Chat\Program_Files\chatroom2.chatfile
ping localhost -n 1 >nul
if "%com%"=="exit" goto verifiedadminchatexit
goto verifiedadminchat1B

:verifiedadminexitB
cls
echo %name% has left the chatroom. >>\\MOM-PC\Public\Chat\Program_Files\chatroom2.chatfile
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
pause >nul
exit

:verifiedadminclearB
cls
echo__________CHAT ROOM___________

goto verifiedchat1B

:verifiedadminechoB
echo "%name%" : "%text%" >>"\\MOM-PC\PUBLIC\Chat\PROGRAM_FILES\chatroom2.chatfile"
pinglocalhost -n 1 >nul
goto verifiedchat1B

:verifiedadminchatexitB
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
pause >nul
exit

:chatC
cls
title Opening Chat Room
echo Please wait while the chat room opens
ping localhost -n 3 >nul
start \\MOM-PC\PUBLIC\Chat\PROGRAM_FILES\msgbox3.bat
echo %un% joined the chatroom at %time%. >>\\MOM-PC\Public\Chat\Program_Files\chatroom3.chatfile
goto chat1C

:chat1C
set %com%=kfjaslfjslgnslgslgfjls
set name=%un%
cls
title Chat Room C
color %color%
set /p text=Text: 
echo.
set /p com=Command: 
echo %name% : %text% >>\\MOM-PC\Public\Chat\Program_Files\chatroom3.chatfile
ping localhost -n 1 >nul
if "%com%"=="exit" goto exit
goto chat1C

:exitC
cls
echo %name% has left the chatroom at %time%. >>\\MOM-PC\Public\Chat\Program_Files\chatroom3.chatfile
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
pause >nul
exit

:clearC
cls
echo__________CHAT ROOM___________

goto chat1C

:echoC
echo "%name%" : "%text%" >>"\\MOM-PC\PUBLIC\Chat\PROGRAM_FILES\chatroom3.chatfile"
pinglocalhost -n 1 >nul
goto chat1C

:chatexitC
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
pause >nul
exit

:adminchatC
title Opening Admin Chat Room
echo Please wait while the chat room opens
ping localhost -n 3 >nul
start \\MOM-PC\PUBLIC\Chat\PROGRAM_FILES\msgbox3.bat
echo %un% joined the chatroom at %time%. >>\\MOM-PC\Public\Chat\Program_Files\chatroom3.chatfile
goto adminchat1C

:adminchat1C
set %com%=kfjaslfjslgnslgslgfjls
set name=[Admin] %un%
cls
title Admin Chat Room C
color %color%
set /p text=Text: 
echo.
set /p com=Command: 
echo %name% : %text% >>\\MOM-PC\Public\Chat\Program_Files\chatroom3.chatfile
ping localhost -n 1 >nul
if "%com%"=="exit" goto adminchatexit
goto adminchat1C

:adminexitC
cls
echo %name% has left the chatroom. >>\\MOM-PC\Public\Chat\Program_Files\chatroom3.chatfile
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
pause >nul
exit

:adminclearC
cls
echo__________CHAT ROOM___________

goto chat1C

:adminechoC
echo "%name%" : "%text%" >>"\\MOM-PC\PUBLIC\Chat\PROGRAM_FILES\chatroom3.chatfile"
pinglocalhost -n 1 >nul
goto chat1C

:adminchatexitC
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
pause >nul
exit

:verifiedadminchatC
title Opening Verified Admin Chat Room C
echo Please wait while the chat room opens
ping localhost -n 3 >nul
start \\MOM-PC\PUBLIC\Chat\PROGRAM_FILES\msgbox3.bat
echo %un% joined the chatroom at %time%. >>\\MOM-PC\Public\Chat\Program_Files\chatroom3.chatfile
goto verifiedadminchat1C

:verifiedadminchat1C
set %com%=kfjaslfjslgnslgslgfjls
set name=[Admin] [Verified] %un%
cls
title Verified Admin Chat Room C
color %color%
set /p text=Text: 
echo.
set /p com=Command: 
echo %name% : %text% >>\\MOM-PC\Public\Chat\Program_Files\chatroom3.chatfile
ping localhost -n 1 >nul
if "%com%"=="exit" goto verifiedadminchatexit
goto verifiedadminchat1C

:verifiedadminexitC
cls
echo %name% has left the chatroom. >>\\MOM-PC\Public\Chat\Program_Files\chatroom3.chatfile
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
pause >nul
exit

:verifiedadminclearC
cls
echo__________CHAT ROOM___________

goto verifiedchat1C

:verifiedadminechoC
echo "%name%" : "%text%" >>"\\MOM-PC\PUBLIC\Chat\PROGRAM_FILES\chatroom3.chatfile"
pinglocalhost -n 1 >nul
goto verifiedchat1C

:verifiedadminchatexitC
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
pause >nul
exit

:chatD
cls
title Opening Chat Room
echo Please wait while the chat room opens
ping localhost -n 3 >nul
start \\MOM-PC\PUBLIC\Chat\PROGRAM_FILES\msgbox4.bat
echo %un% joined the chatroom at %time%. >>\\MOM-PC\Public\Chat\Program_Files\chatroom4.chatfile
goto chat1D

:chat1D
set %com%=kfjaslfjslgnslgslgfjls
set name=%un%
cls
title Chat Room D
color %color%
set /p text=Text: 
echo.
set /p com=Command: 
echo %name% : %text% >>\\MOM-PC\Public\Chat\Program_Files\chatroom4.chatfile
ping localhost -n 1 >nul
if "%com%"=="exit" goto exit
goto chat1D

:exitD
cls
echo %name% has left the chatroom at %time%. >>\\MOM-PC\Public\Chat\Program_Files\chatroom4.chatfile
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
pause >nul
exit

:clearD
cls
echo__________CHAT ROOM___________

goto chat1D

:echoD
echo "%name%" : "%text%" >>"\\MOM-PC\PUBLIC\Chat\PROGRAM_FILES\chatroom4.chatfile"
pinglocalhost -n 1 >nul
goto chat1D

:chatexitD
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
pause >nul
exit

:adminchatD
title Opening Admin Chat Room
echo Please wait while the chat room opens
ping localhost -n 3 >nul
start \\MOM-PC\PUBLIC\Chat\PROGRAM_FILES\msgbox4.bat
echo %un% joined the chatroom at %time%. >>\\MOM-PC\Public\Chat\Program_Files\chatroom4.chatfile
goto adminchat1D

:adminchat1D
set %com%=kfjaslfjslgnslgslgfjls
set name=[Admin] %un%
cls
title Admin Chat Room D
color %color%
set /p text=Text: 
echo.
set /p com=Command: 
echo %name% : %text% >>\\MOM-PC\Public\Chat\Program_Files\chatroom4.chatfile
ping localhost -n 1 >nul
if "%com%"=="exit" goto adminchatexit
goto adminchat1D

:adminexitD
cls
echo %name% has left the chatroom. >>\\MOM-PC\Public\Chat\Program_Files\chatroom4.chatfile
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
pause >nul
exit

:adminclearD
cls
echo__________CHAT ROOM___________

goto chat1D

:adminechoD
echo "%name%" : "%text%" >>"\\MOM-PC\PUBLIC\Chat\PROGRAM_FILES\chatroom4.chatfile"
pinglocalhost -n 1 >nul
goto chat1D

:adminchatexitD
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
pause >nul
exit

:verifiedadminchatD
title Opening Verified Admin Chat Room D
echo Please wait while the chat room opens
ping localhost -n 3 >nul
start \\MOM-PC\PUBLIC\Chat\PROGRAM_FILES\msgbox4.bat
echo %un% joined the chatroom at %time%. >>\\MOM-PC\Public\Chat\Program_Files\chatroom4.chatfile
goto verifiedadminchat1D

:verifiedadminchat1D
set %com%=kfjaslfjslgnslgslgfjls
set name=[Admin] [Verified] %un%
cls
title Verified Admin Chat Room D
color %color%
set /p text=Text: 
echo.
set /p com=Command: 
echo %name% : %text% >>\\MOM-PC\Public\Chat\Program_Files\chatroom4.chatfile
ping localhost -n 1 >nul
if "%com%"=="exit" goto verifiedadminchatexit
goto verifiedadminchat1D

:verifiedadminexitD
cls
echo %name% has left the chatroom. >>\\MOM-PC\Public\Chat\Program_Files\chatroom4.chatfile
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
pause >nul
exit

:verifiedadminclearD
cls
echo__________CHAT ROOM___________

goto verifiedchat1D

:verifiedadminechoD
echo "%name%" : "%text%" >>"\\MOM-PC\PUBLIC\Chat\PROGRAM_FILES\chatroom4.chatfile"
pinglocalhost -n 1 >nul
goto verifiedchat1D

:verifiedadminchatexitD
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
taskkill /im cmd.exe
pause >nul
exit

:cbook
start C:\Users\Christian\Desktop\C-Files\Batch_Program_Files\C-Book.exe
goto home

:sm
start C:\Users\Christian\Desktop\Game.exe
goto home

:quiz
start C:\Users\Christian\Desktop\C-Files\Batch_Program_Files\Quizzle.exe
goto home

:sc
start C:\Users\Christian\Desktop\C-Files\Batch_Program_Files\super_color.bat
goto home

:cboard
start http://www.c-board.weebly.com/
goto home

:change
cls
title Change Log [ 0.5._ ]
echo VERSION 0.5.3
echo Made By: Christian Bernier
echo COO of C-Corp.
echo (c) 2014 by Christian Bernier of C-Corp
echo.
echo 0.5.3
echo Edited at 8:18 PM 4/26/2014
echo Added Menu Navigator
echo Added Bug Reporter
echo Added Account Deleter (Menu Page 5)
echo Menus Reworked
echo.
echo 0.5.2
echo Edited at 1:27 PM 4/10/2014
echo Added Debug Mode
echo Chatroom Fixed
echo New Ability To Minimize all winows.
echo New Ability To Switch Between Windows.
echo Now Displays "Welcome, %un%!" on the home screen.
echo Tons of new "Easter Eggs" Added.
echo New time incorporations to the Chatroom
echo Fixed bug where the message "%un% has left the chatroom" would not appear.
echo.
echo 0.5.1
echo Edited at 8:20 PM 4/5/2014
echo Now Requires the user to logon before entering the menu.
echo New User Files
echo Users are not allowed from previous versions.
echo New Ability To Change Your Password.
echo.
echo Click any key to goto the next page
pause >nul
cls
title Change Log [ 0.4._ ]
echo 0.4.2
echo Edited at 8:42 PM 3/24/2014
echo.
echo New Option: Random Passwords
echo Error fixed where it said "CEO" instead of "COO"
echo Minor bug fixes
echo New announcments for C-Festivle
echo New Times displayed on the change log
echo [Note:] Only avalible for 0.4.2 or newer
echo Accounts can now have spaces
echo New Verified Admin Accounts
echo Removed unnssary lines of code.
echo.
echo Click any key to goto the next page
pause >nul
cls
title Change Log [ 0.4.1 ]
echo 0.4.1
echo HUGE UPDATE!!
echo Now displays code when opened.
echo Now loads program quicker.
echo New "Admin Chat"
echo New admins
echo [Note] Please contact Christian of C-Corp
echo If you want to become an admin.
echo Bug fixed when you enter an invalid
echo number on the home menu.
echo Inproved titles
echo Bug fixed when the program is
echo launched.
echo Fixed bug where Quizzle wouldn't start.
echo New "C-Chat Launcher"
echo Now instead of displaying "Press any key to continute..."
echo it displays "Click any key to..."
echo.
echo Click any key to go to the next page.
pause >nul
title Change Log [ 0.3._ ]
cls	
echo.
echo 0.3.3
echo New Master Unlock Account, for
echo retriving passwords (Not avalible To Public).
echo New UI (user interface) for the Change Log
echo New UI (user interface) for the Login Screen
echo More Descriptive Titles
echo.
echo 0.3.2
echo Bug Fixes
echo [Note] Major Releace of Code When
echo Logging In
echo [Note] Developers Only
echo.
echo 0.3.1
echo Bug Fixes
echo New "Backup Email" Option
echo.
echo Click any key to go to the next page.
pause >nul
title Change Log [ 0.2._ ]
cls

:change-0.2._
echo.
echo 0.2.4
echo Many Bug Fixes
echo [Note: Developers Only]
echo.
echo 0.2.3
echo More Menu Options
echo.
echo 0.2.2:
echo Menu Bug Fixes
echo New Menu Option: "Open another C-Chat"
echo New Menu Option: "Change the theme"
echo More customizable design
echo.
echo 0.2.1 INCLUDED:
echo Menu Bug Fixes
echo.
echo 0.2.0 INCLUDED:
echo Less menu options
echo Changing menu options
echo Menu Upgrades
echo.
echo Click any key to go to the next page.
pause >nul
title Change Log [ 0.1._ ]
cls

:change-0.1._
echo 0.1.3 INCLUDED:
echo More menu options
echo.
echo 0.1.2 INCLUDED:
echo Rock Paper Scissors
echo.
echo 0.1.1 INCLUDED:
echo New Login Sucurity
echo.
echo 0.1.0 INCLUDED:
echo New Program
echo Many lines of code were rewriten.
echo.
echo Click any key to go to the next page.
pause >nul
title Change Log [ Beta ]
cls

:changeBeta
echo BETA VERSION 3 INCLUDED:
echo New UI (user interface)
echo.
echo BETA VERSION 2 INCLUDED:
echo The ability to exit while in chat
echo.
echo BETA VERSION 1 INCLUDED:
echo New support with .exe instead of .bat
echo Now imposobile to edit the file!
echo The Databank is more sucure!
echo User files have unopenable file types
echo.
echo Click any key to go to the next page.
pause >nul
title Change Log [ Pre-Beta ]
cls

:changePreBeta
echo C-CHAT PRE-BETA (ALL UPDATES) INCLUDED:
echo New program
echo New colors
echo New info tab
echo New exit menu
echo New Create an account
echo Now opens properly
echo Now log ins proporly
echo Can now chat!!
echo.
echo Click any key to go to the home screen.
pause >nul
cls
goto home

:newchat
start C:\Users\Christian\Desktop\C-Files\Batch_Program_Files\app\C-Chat.bat
goto home

:yt
start http://www.youtube.com
goto home

:command
start cmd.exe
goto home

:menu2
cls
title Menu Page 2
color %color%
echo.
echo Menu Page 2
echo.
echo Type "Navigate" to go to the menu navigator
echo.
echo 1. Start YouTube.com
echo.
echo 2. Start Quizzle
echo.
echo 3. Start Super Color
echo.
echo 4. Start C-Book
echo.
echo 5. Start CMD
echo.
echo 6. Minimize C-Chat
echo.
echo 7. Change Your Theme
echo.
echo 8. Goto Menu Page 3
echo.
set /p newchoice=Choice Number: 
if "%newchoice%"=="1" goto yt
if "%newchoice%"=="2" goto quiz
if "%newchoice%"=="3" goto sc
if "%newchoice%"=="4" goto cbook
if "%newchoice%"=="5" goto command
if "%newchoice%"=="6" goto desktop
if "%newchoice%"=="7" goto color
if "%newchoice%"=="8" goto menu3
if "%newchoice%"=="navigate" goto menunav
color 0c
echo.
echo "%newchoice%" is not a valid number
echo Please enter a valid number
ping localhost -n 2 >nul
color 0a
color %color%
goto menu2

:menu3
cls
title Menu Page 3
color %color%
echo.
echo Menu Page 3
echo.
echo Type "Navigate" to go to the menu navigator
echo.
echo 1. Goto the C-Website (C-Board)
echo.
echo 2. Play a V-Sauce Video
echo on YouTube
echo.
echo 3. Goto Google.com
echo.
echo 4. Open Gmail.com
echo.
echo 5. Switch Between Windows
echo.
echo 6. Open another C-Chat
echo.
echo 7. Goto Menu Page 4
echo.
set /p moc=Choice Number: 
if "%moc%"=="1" goto cboard
if "%moc%"=="2" goto vsauce
if "%moc%"=="3" goto google
if "%moc%"=="4" goto gmail
if "%moc%"=="5" goto windows
if "%moc%"=="6" goto newchat
if "%moc%"=="7" goto menu4
if "%moc%"=="navigate" goto menunav
color 0c
echo.
echo "%moc%" is not a valid number
echo Please enter a valid number
ping localhost -n 2 >nul
color 0a
color %color%
goto menu3

:menu4
cls
title Menu Page 4
color %color%
echo Menu Page 4
echo.
echo Type "Navigate" to go to the menu navigator
echo.
echo 1. Read Notes By The Owner
echo.
echo 2. Open C-Book
echo.
echo 3. Start Debug Mode
echo.
echo 4. Exit Debug Mode 
echo.
echo 5. Start Task Manager
echo.
echo 6. Start Your User Folder
echo.
echo 7. Goto Menu Page 5
echo.
set /p m4=Choice Number: 
if "%m4%"=="1" goto notesbyme
if "%m4%"=="2" goto cbook
if "%m4%"=="3" goto debug
if "%m4%"=="4" goto undodebug
if "%m4%"=="5" goto taskmanage
if "%m4%"=="6" goto userfolder
if "%m4%"=="7" goto menu5
if "%m4%"=="navigate" goto menunav
color 0c
echo.
echo "%m4%" is not a valid number
echo Please enter a valid number
ping localhost -n 2 >nul
color 0a
color %color%
goto menu4

:menu5
cls
title Menu Page 5
color %color%
echo Menu Page 5
echo.
echo Type "Navigate" to go to the menu navigator
echo.
echo 1. Start Sidebar
echo.
echo 2. Report a bug
echo.
echo 3. Delete Your Account
echo.
echo 4. 
echo.
echo 5. 
echo.
echo 6. 
echo.
set /p m5=Choice Number: 
if "%m5%"=="1" goto sidebar
if "%m5%"=="2" goto bugreport
if "%m5%"=="3" goto deleteaccount
if "%m5%"=="4" goto 
if "%m5%"=="5" goto 
if "%m5%"=="6" goto 
if "%m5%"=="navigate" goto menunav
color 0c
echo.
echo "%m5%" is not a valid number
echo Please enter a valid number
ping localhost -n 2 >nul
color 0a
color %color%
goto menu5

:deleteaccount
cls
title WARNING!!
echo Warning!!
echo.
echo Are you sure you would like to
echo delete your account. This cannot
echo be undone.
echo.
echo You may only delete your own
echo account. Deletion of someone
echo else's account may result in
echo perminate loss of account.
echo.
set /p deletech=Are you sure? 
if "%deletech%"=="no" goto menu5
if "%deletech%"=="No" goto menu5
if "%deletech%"=="yes" goto delete
if "%deletech%"=="Yes" goto delete
cls
color 0c
echo This is not a valid choice.
pause
goto deleteaccount

:delete
del \\MOM-PC\Public\Chat\Users\%un%.user
del \\MOM-PC\Public\Chat\Users\%un%.email
goto delete2

:delete2
cls
title Delete Sucess
echo You account has been deleted.
pause >nul
goto beforehome

:bugreport
cls
title Bug Reporter
echo Please Type A Bug Below
echo.
set /p bug=Bug: 
echo "%bug%" >"C:\Users\Christian\Desktop\Bug.bugfile"
pause >nul
goto menu5

:menunav
cls
title Menu Navigator
echo Menu Navigator
echo.
echo Type "Home" to goto the home menu
echo Type "Menu2" to goto menu page 2
echo Type "Menu3" to goto menu page 3
echo Type "Menu4" to goto menu page 4
echo Type "Menu5" to goto menu page 5
echo.
set /p menunav=Menu Page: 
if "%menunav%"=="home" goto home
if "%menunav%"=="Home" goto home
if "%menunav%"=="menu2" goto menu2
if "%menunav%"=="menu 2" goto menu2
if "%menunav%"=="Menu2" goto menu2
if "%menunav%"=="Menu 2" goto menu2
if "%menunav%"=="menu3" goto menu3
if "%menunav%"=="menu 3" goto menu3
if "%menunav%"=="Menu3" goto menu3
if "%menunav%"=="Menu 3" goto menu3
if "%menunav%"=="menu4" goto menu4
if "%menunav%"=="menu 4" goto menu4
if "%menunav%"=="Menu4" goto menu4
if "%menunav%"=="Menu 4" goto menu4
if "%menunav%"=="menu5" goto menu5
if "%menunav%"=="menu 5" goto menu5
if "%menunav%"=="Menu5" goto menu5
if "%menunav%"=="Menu 5" goto menu5
cls
color 0c
echo This is not an option!!!
pause >nul
goto menunav

:sidebar
start C:\Users\Christian\Desktop\side.lnk
goto menu4

:userfolder
start C:\Users\%username%
goto menu4

:taskmanage
start C:\Windows\System32\taskmgr.exe\
goto menu4

:debug
cls
echo.
echo Are you sure you'd like to go into debug mode?
echo This is reversible.
echo Echo will turn on.
echo.
set /p debugchoice=Choice: 
if "%debugchoice%"=="yes" goto debuger
if "%debugchoice%"=="Yes" goto debuger
if "%debugchoice%"=="no" goto menu4
if "%debugchoice%"=="No" goto menu4
cls
color 0c
echo Invalid Choice.
ping localhost -n 4 >nul
color 0a
color %color%
goto debug

:debuger
@echo on
goto menu4

:undodebug
@echo off
goto menu4

:notesbyme
cls
echo (c) 2014 by Christian Bernier of C-Corp
echo.
echo Hello, this is Christian (Verified Admin). I am
echo the COO of C-Corp. C-Chat is one of the
echo C-Corp Subbussinesess. Thank you for
echo using C-Chat. The new chat room includes 
echo a new timing feature. Now it displays the time
echo you joined, and the time you left. To give feedback,
echo please contact me at:
echo ccorp64@gmail.com
echo Thank You,
echo Christian Bernier
echo.
echo Sent By: [Verified] [Admin] Christian
pause >nul
goto home

:desktop
start C:\Users\Christian\Desktop\ShowDesktop.lnk
goto home

:vsauce
start http://www.youtube.com/vsauce
goto menu3

:windows
start C:\Users\Christian\Desktop\WindowSwitch.lnk
goto home

:eggmc
start \\MOM-PC\Users\Christian\Desktop\Minecraft.exe
goto home

:mc
start \\MOM-PC\Users\Christian\Desktop\Minecraft.exe
goto menu3

:google
start http://www.google.com/
goto menu3

:gmail
start http://www.gmail.com
goto menu3

:forgotpass
cls
title Forgot Your Password
echo.
set /p backupun=Username: 
cls
echo.
set /p backupemail=Backup Email: 
echo %backupemail% >"%tmp%\backuptmp.tmp"
fc "%tmp%\backuptmp.tmp" "\\MOM-PC\PUBLIC\Chat\USERS\%backupun%.email"
if errorlevel==1 goto emailwrong
set %backupun%=%un%
cls
echo We have retrived your password!
echo.
echo You have 2 options.
echo.
echo 1. Get password
echo.
echo 2. Goto home
echo.
set /p optionchoice=What would you like to do? 
if %optionchoice%==1 goto retrive
if %optionchoice%==2 goto beforehome

:notcorrectusername
cls
title Error
echo We're sorry, we don't reconize this username. Please make an account
echo Your acount may have been spelt wrong, or curupted.
ping localhost -n 2 >nul
goto home

:emailwrong
cls
title Error
color 0c
echo This backup email is incorect. Please retry.
ping localhost -n 2 >nul
cls
color 0a
goto forgotpass

:retrive
cls
echo This is the 500th line of code!
ping localhost -n 4 >nul
title Sucsess
echo "%backupemail%">"\\MOM-PC\USERS\CHRISTIAN\DESKTOP\USER_BACKUP\%backupun%.txt"
cls
echo We will get your password back to you as soon as possible!!
echo.
echo Please Wait.
ping localhost -n 5 >nul
goto home

:random
title Random Password(s)
color 0a
cls
echo How many passwords would you like?
echo.
echo 1) 1 password
echo 2) 5 passwords
echo 3) 10 passowrds
echo 4) 15 passwords
echo 5) Random Number Genorator
echo.
set /p randomchoice=Choice:
if "%randomchoice%"=="1" goto random1
if "%randomchoice%"=="2" goto random5
if "%randomchoice%"=="3" goto random10
if "%randomchoice%"=="4" goto random15
if "%randomchoice%"=="5" goto rangen
color 0c
echo This is an invalid choice.
ping localhost -n 3 >nul

:rangen
cls
start C:\Users\Christian\Desktop\RandomNumberGenorator.bat
goto random

:random1
title 1 Random Password
cls
echo %random%
pause >nul
goto home

:random5
title 5 Random Passwords
cls
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
pause >nul
goto home

:random10
title 10 Random Passwords
cls
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
pause >nul
goto home

:random15
title 15 Random Passwords
cls
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
echo %random%
pause >nul
goto home

:color
cls
title Color Menu
echo Type 2 characters the 1st hex-digit is the color of the backround
echo the 2nd hex-digit is the color of the foreground.
echo Use the chart below to make a choice.
echo.
echo  0 = Black        A = Light Green
echo  1 = Blue         B = Light Aqua
echo  2 = Green        C = Light Red
echo  3 = Aqua         D = Light Purple
echo  4 = Red          E = Light Yellow
echo  5 = Purple      F = Bright White
echo  6 = Yellow
echo  7 = White
echo  8 = Gray
echo  9 = Light Blue
echo.
set /p color=What would you like the color to be?
if "%color%"=="exit" goto home
color %color%
goto home