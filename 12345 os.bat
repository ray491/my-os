@echo off
color 1b
cls

:bootscreen
cls
set /p password= password: 
if %password% == yt goto desktop
if not %password% == yt goto bootscreentwo

:desktop
cls
color 0a
cls
echo Welcome User
echo.
echo Date: %date% Time: %time%
echo hello this is a os!!:

echo 1) Calculator version 1
echo 2) Browser...
echo 3) Calculator version 2
echo 4) Browse your files
echo 5) text writer
echo 6) Quiz game...
echo 7) clock beta
echo 8) Open Notepad
echo 9) Windows Calculator
set /p menuselect=

if %menuselect% == 1 goto calculator
if %menuselect% == 2 goto browser
if %menuselect% == 3 goto calculatorGUI
if %menuselect% == 4 goto browse
if %menuselect% == 5 goto textwriter
if %menuselect% == 6 goto quiz
if %menuselect% == 7 goto clock
if %menuselect% == 8 goto Notepad
if %menuselect% == 8 goto WinCalc

:calculator
@echo off
title Batch Calculator By Ray 
color 1f

:top
echo -------------------------------------------
echo Welcome to ray Calculator
echo -------------------------------------------
echo.
set /p sum=
set /a ans=%sum%
echo.
echo = %ans%
echo -------------------------------------------
pause
cls
echo Previous Answer: %ans%
pause
goto desktop

:browse
cls
echo 1)%writeone%
echo 2)%writetwo%
echo 3)%writethree%
set /p browse= 
if %browse% == 1 goto textone
if %browse% == 2 goto texttwo
if %browse% == 3 goto textthree

:textone
cls
echo %writeone%
echo %textone%
echo %textone%
pause
goto desktop

:texttwo
cls
echo %writetwo%
echo %texttwo%
pause
goto desktop

:textthree
cls
echo %writethree%
echo %textthree%
pause
goto desktop

:browser
@echo off
:loop
color 7
cls
echo Welcome to the webbrowser.
echo.
echo Type in a URL below.
echo 

set /p sitename=

start %sitename%
pause
goto desktop

:clock
@echo off
title clock
@mode con cols=35lines=7
color 0f
goto destkop

:main
cls
echo
echo time: %time%
echo.
echo date: %date%
echo.
ping -n 2 0.0.0.0 >nul
goto main
pause
goto desktop

:quiz
echo off
echo ++++++++++++++++++++++++++++++++++++++++++++++
echo +           DIT IS EERSTE GAME VAN RAY GO    +
echo ++++++++++++++++++++++++++++++++++++++++++++++
pause
cls
echo wil je een quiz spelen?
echo 1) ja
echo 2) nee
echo.

set /p antwoord=Kies optie 1 of 2 
echo.

if %antwoord%==1  goto startgame
if %antwoord%==2 goto endgame

:endgame
echo Je hebt NEE gekozen. Game sluit nu!
pause
goto desktop

:startgame 
echo Geef antwoord op deze vraag...
echo.
echo Hoe heet de cartoon character met die spons?
echo.
echo 1) lisa
echo 2) spongbob
echo 3) Ray

set /p avr1=Kies 1, 2 of 3 ...  

if %avr1%==1 goto FouteAntwoord
if %avr1%==2 goto GoedeAntwoord
if %avr1%==3 goto FouteAntwoord

:FouteAntwoord
echo Jouw antwoord is fout. Probeer opnieuw
pause
goto startgame

:GoedeAntwoord
echo Jouw antwoord is GOED! Gefeliciteerd.
echo Je hebt deze level gehaald. Je gaat naar de volgende level!
goto startlevel2

:startlevel2
echo Geef antwoord op deze vraag...
echo.
echo Wat is de hoofdstad van USA?
echo.
echo 1) New York?
echo 2) Washington D.C.?
echo 3) California

set /p avr2=Kies 1, 2 of 3 ...  

if %avr2%==1 goto FouteAntwoord
if %avr2%==2 goto GoedeAntwoord
if %avr3%==3 goto FouteAntwoord
goto level 3

:startlevel3
echo Geef antwoord op deze vraag...
echo.
echo In welke land worde de autos Mercedes en BMW gemaakt?
echo.
echo 1) Japan?
echo 2) Italie?
echo 3) Duitsland

set /p avr3=Kies 1, 2 of 3 ...  

if %avr2%==1 goto FouteAntwoord
if %avr2%==2 goto FouteAntwoord
if %avr3%==3 goto GoedeAntwoord

:bootscreentwo
cls
echo ~That was the wrong password~
echo 1)Admin Login!
echo 2)Guest login!
set /p logintype=
if %logintype% == 1 goto bootscreen
if %logintype% == 2 goto ltddesktop

:ltddesktop
cls
echo Hello there, you are logged in as a guest, you do not have permission to create or browse through text files...
echo.
echo You can use the standard tools such as: The calculator and the clock...
echo.
echo Have fun!
pause
cls
echo 1)Calculator!
echo 2)Clock
set /p ltdmenu=
if %ltdmenu% == 1 goto ltdcalculator
if %ltdmenu% == 2 goto clock

:clock 
cls
echo %date% %time%
pause
goto ltddesktop
pause
goto ltddesktop

:ltdcalculator
cls
set /p equ=
set /a equ=%equ%
cls
echo %equ%
pause
goto ltddesktop

:textwriter
cls
echo Welcome to Write, an application which let's you write text files...
echo What will be the name of your text?
set /p writeone= Name:
cls
echo Ok, your file has been created. Have fun!
pause
cls
set /p textone=
set /p textone=
set /p textone=
set /p textone=
set /p textone=
set /p textone=
pause
echo Ok, now your done, you will be redirected to the desktop...
pause
goto desktop

:calculator
cls
set /p equ=
set /a equ=%equ%
cls
echo %equ%
pause
goto desktop

:Notepad
notepad
pause
goto desktop

:WinCalc
calc
pause
goto desktop




