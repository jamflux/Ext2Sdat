@echo off
setlocal
title Image Ext4 to sparse DAT converter v1.0 [by JamFlux]
color 06
mode con: cols=60 lines=10
set "image=%~dsp1%~nx1"
echo.
echo   -Converting system-ext4 image into system.new.dat...
if not exist temp mkdir temp >nul
bins\ext2simg -v %image% temp\system.img >nul
TIMEOUT /T 3 /nobreak >nul
bins\simg2sdat temp\system.img %~dp0 >nul
if exist temp rmdir /q /s temp >nul
::if exist %image% del %image%
echo   -Done
echo.
TIMEOUT /T 3 /nobreak >nul & exit
