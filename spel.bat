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
exit

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
if %avr2%==2 goto GoedeAntoord
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
if %avr3%==3 goto GoedeAntoord
