PES ARENA AT v1.0.0 - AUTOSCORE CORE
=====================================

MUC TIEU BAN NAY
- AT.exe / at.dll duoc build tu Sider 7.4.1 core da rebrand.
- Module at\at_tracker.at doc ty so bang match.stats().
- Luu Home/Away score, penalty, period, clock.
- Trang thai: MATCH_END, MATCH_ABORT, TEAM_RESELECT.
- GAME_EXIT se duoc hoan thien bang native watcher sau khi test ty so.

BUILD MOT LAN TREN WINDOWS
1. Cai Visual Studio 2022 -> Desktop development with C++.
2. Mo "x64 Native Tools Command Prompt for VS 2022".
3. cd vao thu muc source.
4. Chay BUILD_AT.cmd.
5. Thu muc release se duoc tao tu dong.

TAO BO CAI
1. Cai Inno Setup 6.
2. Chay MAKE_INSTALLER.cmd.
3. File Setup nam trong installer\output.

LUU Y
Môi truong tao goi hien tai khong co Microsoft Windows SDK/Visual C++ compiler,
nen AT.exe va bo cai Setup.exe phai duoc build tren Windows. Khong nen dung
binary gia/doi ten tu ban goc vi core da doi ten at.dll, at.ini va loader path.
