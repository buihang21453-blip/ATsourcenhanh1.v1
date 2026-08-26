#define MyAppName "PES Arena AT"
#define MyAppVersion "1.2.0"
#define MyAppPublisher "PES Arena"
#define MyAppExeName "AT.exe"

[Setup]
AppId={{E4D0A3D7-7B26-4D5B-94B3-A71000000001}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={localappdata}\PES Arena AT
DefaultGroupName=PES Arena AT
OutputDir=output
OutputBaseFilename=PES_Arena_AT_v1.2.0_MenuPreselect_Setup
Compression=lzma2
SolidCompression=yes
WizardStyle=modern
SetupIconFile=..\at.ico
UninstallDisplayIcon={app}\AT.exe
PrivilegesRequired=lowest
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible

[Files]
Source: "..\release\AT.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\release\at.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\release\at.ini"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\release\toggle.wav"; DestDir: "{app}"; Flags: ignoreversion skipifsourcedoesntexist
Source: "..\release\at\*"; DestDir: "{app}\at"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist
Source: "..\release\HUONG_DAN.txt"; DestDir: "{app}"; Flags: ignoreversion skipifsourcedoesntexist

[Icons]
Name: "{group}\PES Arena AT"; Filename: "{app}\AT.exe"; WorkingDir: "{app}"
Name: "{autodesktop}\PES Arena AT"; Filename: "{app}\AT.exe"; WorkingDir: "{app}"; Tasks: desktopicon

[Tasks]
Name: "desktopicon"; Description: "Tạo shortcut PES Arena AT trên Desktop"; GroupDescription: "Shortcut:"; Flags: unchecked

[Run]
Filename: "{app}\AT.exe"; Description: "Mở PES Arena AT"; Flags: nowait postinstall skipifsilent
