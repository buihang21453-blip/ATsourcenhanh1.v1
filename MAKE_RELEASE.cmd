@echo off
setlocal EnableExtensions
cd /d "%~dp0"
if not exist AT.exe (
  echo [LOI] Chua co AT.exe. Hay build truoc.
  exit /b 1
)
if not exist at.dll (
  echo [LOI] Chua co at.dll. Hay build truoc.
  exit /b 1
)
set OUT=%CD%\release
if exist "%OUT%" rmdir /s /q "%OUT%"
mkdir "%OUT%"
mkdir "%OUT%\at"
copy /y AT.exe "%OUT%\AT.exe" >nul
copy /y at.dll "%OUT%\at.dll" >nul
copy /y at.ini "%OUT%\at.ini" >nul
if exist toggle.wav copy /y toggle.wav "%OUT%\toggle.wav" >nul
if exist at\at_tracker.at copy /y at\at_tracker.at "%OUT%\at\at_tracker.at" >nul
copy /y at\set_teams.at "%OUT%\at\set_teams.at" >nul
copy /y at\set_teams.ini "%OUT%\at\set_teams.ini" >nul
> "%OUT%\HUONG_DAN.txt" echo PES ARENA AT - NHANH 1 - SET TEAM COREHOOK v1.5.1
>>"%OUT%\HUONG_DAN.txt" echo.
>>"%OUT%\HUONG_DAN.txt" echo 1. Chay AT.exe va mo PES2021.exe.
>>"%OUT%\HUONG_DAN.txt" echo 2. Sua home/away trong at\set_teams.ini neu can doi Team ID test.
>>"%OUT%\HUONG_DAN.txt" echo 3. enabled=1 de bat CoreHook; enabled=0 de tat.
>>"%OUT%\HUONG_DAN.txt" echo 4. Mo at.log va tim: SET_TEAM_CORE v1.5.1 va FORCE HOME/FORCE AWAY.
>>"%OUT%\HUONG_DAN.txt" echo 5. Lua set_teams.at v1.5.1 chi hien thi/log, khong tu ep doi.
echo [OK] Da tao %OUT%
exit /b 0
