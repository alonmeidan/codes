@echo off
color 6
title pinger 

echo    , ; ,   .-'"""'-.   , ; 
echo    \\/  .'         '.  \//
echo    \-;-/   ()   ()   \-;-/
echo    // ;               ; \\
echo   //__; :.         .; ;__\\
echo  `-----\'.'-.....-'.'/-----'
echo         '.'.-.-,_.'.'
echo           '(  (..-'
echo =============================
echo +++++++++++++++++++++++++++++
echo =============================

set /p IP=enter targets IP:
:top
PING -n 1 %IP% | FIND "TTL="
title ::Pinging: %IP% ::
IF ERRORLEVEL 1 (echo IP IS DOWN)
set /a num=(%Random%%%9)+1
color %num%
ping -t 1 0 10 127.0.0.1 >nul
GoTo top