@echo off
setlocal EnableExtensions
cd /d "%~dp0"
title PES Arena AT v1.0.0 - Build

echo ===============================================
echo   PES ARENA AT v1.0.0 - BUILD
echo ===============================================

where cl >nul 2>nul
if errorlevel 1 (
  echo [LOI] Chua co moi truong Visual C++ x64.
  echo Hay mo "x64 Native Tools Command Prompt for VS 2022"
  echo roi chay lai BUILD_AT.cmd.
  pause
  exit /b 1
)

where nmake >nul 2>nul
if errorlevel 1 (
  echo [LOI] Khong tim thay nmake.
  pause
  exit /b 1
)

echo [1/3] Don file build cu...
nmake clean >nul 2>nul

echo [2/3] Build AT.exe + at.dll...
nmake all
if errorlevel 1 (
  echo.
  echo [LOI] Build that bai. Xem dong loi o tren.
  pause
  exit /b 1
)

echo [3/3] Tao Release...
call MAKE_RELEASE.cmd
if errorlevel 1 exit /b 1

echo.
echo [OK] Build hoan tat.
echo Release: release\
if exist "%ProgramFiles(x86)%\Inno Setup 6\ISCC.exe" (
  echo Inno Setup da co. Ban co the chay MAKE_INSTALLER.cmd.
)
pause
