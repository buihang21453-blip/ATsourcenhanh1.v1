@echo off
setlocal EnableExtensions
cd /d "%~dp0"
if not exist AT.exe (
  echo [LOI] Chua co AT.exe. Hay chay BUILD_AT.cmd truoc.
  exit /b 1
)
if not exist at.dll (
  echo [LOI] Chua co at.dll. Hay chay BUILD_AT.cmd truoc.
  exit /b 1
)

set OUT=%CD%\release
if exist "%OUT%" rmdir /s /q "%OUT%"
mkdir "%OUT%"
mkdir "%OUT%\at"
copy /y AT.exe "%OUT%\AT.exe" >nul
copy /y at.dll "%OUT%\at.dll" >nul
copy /y at.ini "%OUT%\at.ini" >nul
copy /y toggle.wav "%OUT%\toggle.wav" >nul
copy /y at\at_tracker.at "%OUT%\at\at_tracker.at" >nul
copy /y at\set_teams.at "%OUT%\at\set_teams.at" >nul
copy /y at\set_teams.ini "%OUT%\at\set_teams.ini" >nul
copy /y HUONG_DAN_TEST_SET_TEAMS_v1.1.0.txt "%OUT%\HUONG_DAN_TEST_SET_TEAMS_v1.1.0.txt" >nul

> "%OUT%\HUONG_DAN.txt" echo PES ARENA AT v1.1.0 - SetTeams Native Test
>>"%OUT%\HUONG_DAN.txt" echo.
>>"%OUT%\HUONG_DAN.txt" echo 1. Dat thu muc AT o noi co quyen ghi file.
>>"%OUT%\HUONG_DAN.txt" echo 2. Chay AT.exe.
>>"%OUT%\HUONG_DAN.txt" echo 3. Mo PES2021.exe neu AT chua tu mo game.
>>"%OUT%\HUONG_DAN.txt" echo 4. Ket qua tracker duoc luu tai at\auto_score_state.txt.
>>"%OUT%\HUONG_DAN.txt" echo 5. Sua at\set_teams.ini de dat Home va Away Team ID.
>>"%OUT%\HUONG_DAN.txt" echo 6. enabled=1 de ep doi; enabled=0 de chi doc Team ID.
>>"%OUT%\HUONG_DAN.txt" echo.
>>"%OUT%\HUONG_DAN.txt" echo Trang thai: MATCH_END, MATCH_ABORT, TEAM_RESELECT; GAME_EXIT se duoc them o watcher desktop.

echo [OK] Da tao %OUT%
exit /b 0
