@echo off
setlocal EnableExtensions
cd /d "%~dp0"
if not exist release\AT.exe (
  echo [LOI] Chua co Release. Hay chay BUILD_AT.cmd truoc.
  pause
  exit /b 1
)
set ISCC=%ProgramFiles(x86)%\Inno Setup 6\ISCC.exe
if not exist "%ISCC%" (
  echo [LOI] Chua cai Inno Setup 6.
  echo Cai Inno Setup 6, sau do chay lai file nay.
  pause
  exit /b 1
)
"%ISCC%" installer\AT_Setup.iss
if errorlevel 1 (
  echo [LOI] Tao bo cai that bai.
  pause
  exit /b 1
)
echo [OK] Bo cai nam trong installer\output\
pause
