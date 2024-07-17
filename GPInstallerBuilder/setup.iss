[Setup]
AppName=RectifyGadgets ESR
AppVerName=RectifyGadgets ESR
AppId=RectifyGadgets ESR
AppVersion=1.0
AppPublisher=Rectify11 Team
AppPublisherURL=http://rectify11.net/
AppSupportURL=http://rectify11.net/
AppUpdatesURL=http://rectify11.net/
DefaultDirName={win}\RectifyGadgets
UninstallDisplayIcon=C:\GPInstallerBuilder\icon.ico
UninstallDisplayName=RectifyGadgets ESR 
OutputBaseFilename=RectifyGadgetsESR_Setup
Compression=lzma2
ArchitecturesAllowed=x86 x64
ArchitecturesInstallIn64BitMode=x64
Uninstallable=true
DisableDirPage=yes
DisableProgramGroupPage=yes
ChangesAssociations=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "C:\GPInstallerBuilder\icon.ico"; DestDir: "{app}"; MinVersion: 0.0,6.01; Flags: ignoreversion uninsremovereadonly 
Source: "C:\GPInstallerBuilder\Files32\*"; DestDir: "{pf32}\Windows Sidebar"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\GPInstallerBuilder\Files64\*"; DestDir: "{pf64}\Windows Sidebar"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\GPInstallerBuilder\SbTasks.xml"; DestDir: "{app}"; MinVersion: 0.0,6.01; Flags: ignoreversion uninsremovereadonly 

[Registry]
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\Sidebar\Compatibility"; MinVersion: 0.0,6.01; Flags: uninsdeletekeyifempty 
Root: HKCR; Subkey: "DesktopBackground\Shell\Gadgets"; ValueName: "MUIVerb"; ValueType: ExpandSZ; ValueData: "@%ProgramFiles%\Windows Sidebar\sidebar.exe,-11100"; MinVersion: 0.0,6.01; Flags: uninsdeletevalue noerror 
Root: HKCR; Subkey: "DesktopBackground\Shell\Gadgets"; ValueName: "Position"; ValueType: String; ValueData: "Bottom"; MinVersion: 0.0,6.01; Flags: uninsdeletevalue noerror 
Root: HKCR; Subkey: "DesktopBackground\Shell\Gadgets"; ValueName: "Icon"; ValueType: String; ValueData: "{pf64}\Windows Sidebar\sidebar.exe,-100"; Check: "IsWin64"; MinVersion: 0.0,6.01; Flags: uninsdeletekey deletevalue 
Root: HKCR; Subkey: "DesktopBackground\Shell\Gadgets\command"; ValueType: String; ValueData: "{pf64}\Windows Sidebar\sidebar.exe /showGadgets"; Check: "IsWin64"; MinVersion: 0.0,6.01; Flags: uninsdeletekey deletevalue 
Root: HKCR; Subkey: "DesktopBackground\Shell\Gadgets"; ValueName: "Icon"; ValueType: String; ValueData: "{pf}\Windows Sidebar\sidebar.exe,-100"; Check: "not IsWin64"; MinVersion: 0.0,6.01; Flags: uninsdeletekey deletevalue 
Root: HKCR; Subkey: "DesktopBackground\Shell\Gadgets\command"; ValueType: String; ValueData: "{pf}\Windows Sidebar\sidebar.exe /showGadgets"; Check: "not IsWin64"; MinVersion: 0.0,6.01; Flags: uninsdeletekey deletevalue 
Root: HKCR; Subkey: "Directory\Background\shellex\ContextMenuHandlers\Gadgets"; ValueType: String; ValueData: "{{6B9228DA-9C15-419e-856C-19E768A13BDC}"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKCR; Subkey: "CLSID\{{6B9228DA-9C15-419e-856C-19E768A13BDC}"; ValueType: String; ValueData: "Windows Desktop Gadgets"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKCR; Subkey: "CLSID\{{6B9228DA-9C15-419e-856C-19E768A13BDC}\InprocServer32"; ValueType: ExpandSZ; ValueData: "%ProgramFiles%\Windows Sidebar\sbdrop.dll"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKCR; Subkey: "CLSID\{{6B9228DA-9C15-419e-856C-19E768A13BDC}\InprocServer32"; ValueName: "ThreadingModel"; ValueType: String; ValueData: "both"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKLM; Subkey: "SOFTWARE\Classes\CLSID\{{6B9228DA-9C15-419e-856C-19E768A13BDC}"; ValueType: String; ValueData: "Windows Desktop Gadgets"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKLM; Subkey: "SOFTWARE\Classes\CLSID\{{6B9228DA-9C15-419e-856C-19E768A13BDC}\InprocServer32"; ValueType: ExpandSZ; ValueData: "%ProgramFiles%\Windows Sidebar\sbdrop.dll"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKLM; Subkey: "SOFTWARE\Classes\CLSID\{{6B9228DA-9C15-419e-856C-19E768A13BDC}\InprocServer32"; ValueName: "ThreadingModel"; ValueType: String; ValueData: "both"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKCR; Subkey: "CLSID\{{924ccc1b-6562-4c85-8657-d177925222b6}"; ValueType: String; ValueData: "Desktop Gadget Helper API"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKCR; Subkey: "CLSID\{{924ccc1b-6562-4c85-8657-d177925222b6}\InprocServer32"; ValueType: ExpandSZ; ValueData: "%ProgramFiles%\Windows Sidebar\sbdrop.dll"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKCR; Subkey: "CLSID\{{924ccc1b-6562-4c85-8657-d177925222b6}\InprocServer32"; ValueName: "ThreadingModel"; ValueType: String; ValueData: "both"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKCR; Subkey: ".gadget"; ValueType: String; ValueData: "Windows.gadget"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKCR; Subkey: ".gadget\shell\open\DropTarget"; ValueName: "CLSID"; ValueType: String; ValueData: "{{6B9228DA-9C15-419e-856C-19E768A13BDC}"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKCR; Subkey: "Windows.gadget"; ValueType: String; ValueData: "Windows Gadget"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKCR; Subkey: "Windows.gadget"; ValueName: "EditFlags"; ValueType: Dword; ValueData: "$110000"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKCR; Subkey: "Windows.gadget"; ValueName: "FriendlyTypeName"; ValueType: ExpandSZ; ValueData: "@""%ProgramFiles%\Windows Sidebar\sbdrop.dll"",-100"; MinVersion: 0.0,6.01; Flags: uninsdeletekey deletevalue noerror 
Root: HKCR; Subkey: "Windows.gadget\CLSID"; ValueType: String; ValueData: "{{6B9228DA-9C15-419e-856C-19E768A13BDC}"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKCR; Subkey: "Windows.gadget\CurVer"; ValueType: String; ValueData: "SidebarDroptarget.GadgetDropTarget.1"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKCR; Subkey: "Windows.gadget\DefaultIcon"; ValueType: ExpandSZ; ValueData: "%ProgramFiles%\Windows Sidebar\sbdrop.dll,-1"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKCR; Subkey: "Windows.gadget\shell\open\command"; ValueType: ExpandSZ; ValueData: "%ProgramFiles%\Windows Sidebar\Sidebar.exe"; MinVersion: 0.0,6.01; Flags: uninsdeletekey deletevalue noerror 
Root: HKCR; Subkey: "Windows.gadget\shell\open\DropTarget"; ValueName: "CLSID"; ValueType: String; ValueData: "{{6B9228DA-9C15-419e-856C-19E768A13BDC}"; MinVersion: 0.0,6.01; Flags: uninsdeletekey deletevalue noerror 
Root: HKCR; Subkey: "Windows.Gadget.1"; ValueType: String; ValueData: "Windows Gadget"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKCR; Subkey: "Windows.Gadget.1\CLSID"; ValueType: String; ValueData: "{{6B9228DA-9C15-419e-856C-19E768A13BDC}"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKLM; Subkey: "SOFTWARE\Classes\CLSID\{{924ccc1b-6562-4c85-8657-d177925222b6}"; ValueType: String; ValueData: "Desktop Gadget Helper API"; Check: "not IsWin64"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKLM; Subkey: "SOFTWARE\Classes\CLSID\{{924ccc1b-6562-4c85-8657-d177925222b6}\InprocServer32"; ValueType: ExpandSZ; ValueData: "%ProgramFiles%\Windows Sidebar\sbdrop.dll"; Check: "not IsWin64"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKLM; Subkey: "SOFTWARE\Classes\CLSID\{{924ccc1b-6562-4c85-8657-d177925222b6}\InprocServer32"; ValueName: "ThreadingModel"; ValueType: String; ValueData: "both"; Check: "not IsWin64"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKCR; Subkey: "CLSID\{{924ccc1b-6562-4c85-8657-d177925222b6}"; ValueType: String; ValueData: "Desktop Gadget Helper API"; Check: "IsWin64"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKCR; Subkey: "CLSID\{{924ccc1b-6562-4c85-8657-d177925222b6}\InprocServer32"; ValueType: ExpandSZ; ValueData: "%ProgramFiles%\Windows Sidebar\sbdrop.dll"; Check: "IsWin64"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKCR; Subkey: "CLSID\{{924ccc1b-6562-4c85-8657-d177925222b6}\InprocServer32"; ValueName: "ThreadingModel"; ValueType: String; ValueData: "both"; Check: "IsWin64"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKCR; Subkey: "Wow6432Node\CLSID\{{6B9228DA-9C15-419e-856C-19E768A13BDC}"; ValueType: String; ValueData: "Windows Desktop Gadgets"; Check: "IsWin64"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKCR; Subkey: "Wow6432Node\CLSID\{{6B9228DA-9C15-419e-856C-19E768A13BDC}\InprocServer32"; ValueType: ExpandSZ; ValueData: "%ProgramFiles%\Windows Sidebar\sbdrop.dll"; Check: "IsWin64"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKCR; Subkey: "Wow6432Node\CLSID\{{6B9228DA-9C15-419e-856C-19E768A13BDC}\InprocServer32"; ValueName: "ThreadingModel"; ValueType: String; ValueData: "both"; Check: "IsWin64"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKCR; Subkey: "Wow6432Node\CLSID\{{924ccc1b-6562-4c85-8657-d177925222b6}"; ValueType: String; ValueData: "Desktop Gadget Helper API"; Check: "IsWin64"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKCR; Subkey: "Wow6432Node\CLSID\{{924ccc1b-6562-4c85-8657-d177925222b6}\InprocServer32"; ValueType: ExpandSZ; ValueData: "%ProgramFiles%\Windows Sidebar\sbdrop.dll"; Check: "IsWin64"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKCR; Subkey: "Wow6432Node\CLSID\{{924ccc1b-6562-4c85-8657-d177925222b6}\InprocServer32"; ValueName: "ThreadingModel"; ValueType: String; ValueData: "both"; Check: "IsWin64"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKLM; Subkey: "SOFTWARE\Classes\Wow6432Node\CLSID\{{6B9228DA-9C15-419e-856C-19E768A13BDC}"; ValueType: String; ValueData: "Windows Desktop Gadgets"; Check: "IsWin64"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKLM; Subkey: "SOFTWARE\Classes\Wow6432Node\CLSID\{{6B9228DA-9C15-419e-856C-19E768A13BDC}\InprocServer32"; ValueType: ExpandSZ; ValueData: "%ProgramFiles%\Windows Sidebar\sbdrop.dll"; Check: "IsWin64"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKLM; Subkey: "SOFTWARE\Classes\Wow6432Node\CLSID\{{6B9228DA-9C15-419e-856C-19E768A13BDC}\InprocServer32"; ValueName: "ThreadingModel"; ValueType: String; ValueData: "both"; Check: "IsWin64"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKLM; Subkey: "SOFTWARE\Classes\Wow6432Node\CLSID\{{924ccc1b-6562-4c85-8657-d177925222b6}"; ValueType: String; ValueData: "Desktop Gadget Helper API"; Check: "IsWin64"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKLM; Subkey: "SOFTWARE\Classes\Wow6432Node\CLSID\{{924ccc1b-6562-4c85-8657-d177925222b6}\InprocServer32"; ValueType: ExpandSZ; ValueData: "%ProgramFiles%\Windows Sidebar\sbdrop.dll"; Check: "IsWin64"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKLM; Subkey: "SOFTWARE\Classes\Wow6432Node\CLSID\{{924ccc1b-6562-4c85-8657-d177925222b6}\InprocServer32"; ValueName: "ThreadingModel"; ValueType: String; ValueData: "both"; Check: "IsWin64"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKLM; Subkey: "SOFTWARE\Wow6432Node\Classes\CLSID\{{6B9228DA-9C15-419e-856C-19E768A13BDC}"; ValueType: String; ValueData: "Windows Desktop Gadgets"; Check: "IsWin64"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKLM; Subkey: "SOFTWARE\Wow6432Node\Classes\CLSID\{{6B9228DA-9C15-419e-856C-19E768A13BDC}\InprocServer32"; ValueType: ExpandSZ; ValueData: "%ProgramFiles%\Windows Sidebar\sbdrop.dll"; Check: "IsWin64"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKLM; Subkey: "SOFTWARE\Wow6432Node\Classes\CLSID\{{6B9228DA-9C15-419e-856C-19E768A13BDC}\InprocServer32"; ValueName: "ThreadingModel"; ValueType: String; ValueData: "both"; Check: "IsWin64"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKLM; Subkey: "SOFTWARE\Wow6432Node\Classes\CLSID\{{924ccc1b-6562-4c85-8657-d177925222b6}"; ValueType: String; ValueData: "Desktop Gadget Helper API"; Check: "IsWin64"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKLM; Subkey: "SOFTWARE\Wow6432Node\Classes\CLSID\{{924ccc1b-6562-4c85-8657-d177925222b6}\InprocServer32"; ValueType: ExpandSZ; ValueData: "%ProgramFiles%\Windows Sidebar\sbdrop.dll"; Check: "IsWin64"; MinVersion: 0.0,6.01; Flags: uninsdeletekey deletevalue noerror 
Root: HKLM; Subkey: "SOFTWARE\Wow6432Node\Classes\CLSID\{{924ccc1b-6562-4c85-8657-d177925222b6}\InprocServer32"; ValueName: "ThreadingModel"; ValueType: String; ValueData: "both"; Check: "IsWin64"; MinVersion: 0.0,6.01; Flags: uninsdeletekey deletevalue noerror 
Root: HKCU64; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\Run"; ValueName: "Sidebar"; ValueType: String; ValueData: """{pf64}\Windows Sidebar\sidebar.exe"" /autoRun"; Check: "IsWin64"; MinVersion: 0.0,6.01; Flags: uninsdeletevalue noerror 
Root: HKCU; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\Run"; ValueName: "Sidebar"; ValueType: String; ValueData: """{pf}\Windows Sidebar\sidebar.exe"" /autoRun"; Check: "not IsWin64"; MinVersion: 0.0,6.01; Flags: uninsdeletevalue noerror 
Root: HKCR; Subkey: "CLSID\{{0CA792AE-AB31-4A61-AC12-2C66AA1BA26C}"; ValueType: String; ValueData: "Windows Sidebar Properties"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 
Root: HKCR; Subkey: "CLSID\{{0CA792AE-AB31-4A61-AC12-2C66AA1BA26C}"; ValueName: "InfoTip"; ValueType: ExpandSZ; ValueData: "@%ProgramFiles%\Windows Sidebar\sidebar.exe,-11002"; MinVersion: 0.0,6.01; Flags: uninsdeletevalue noerror 
Root: HKCR; Subkey: "CLSID\{{0CA792AE-AB31-4A61-AC12-2C66AA1BA26C}"; ValueName: "LocalizedString"; ValueType: ExpandSZ; ValueData: "@%ProgramFiles%\Windows Sidebar\sidebar.exe,-11003"; MinVersion: 0.0,6.01; Flags: uninsdeletevalue noerror 
Root: HKCR; Subkey: "CLSID\{{0CA792AE-AB31-4A61-AC12-2C66AA1BA26C}"; ValueName: "System.ApplicationName"; ValueType: String; ValueData: "Microsoft.DesktopGadgets"; MinVersion: 0.0,6.01; Flags: uninsdeletevalue noerror 
Root: HKCR; Subkey: "CLSID\{{0CA792AE-AB31-4A61-AC12-2C66AA1BA26C}"; ValueName: "System.ControlPanel.Category"; ValueType: String; ValueData: "1,8"; MinVersion: 0.0,6.01; Flags: uninsdeletevalue noerror 
Root: HKCR; Subkey: "CLSID\{{0CA792AE-AB31-4A61-AC12-2C66AA1BA26C}"; ValueName: "System.Software.TasksFileUrl"; ValueType: String; ValueData: "{app}\SbTasks.xml"; MinVersion: 0.0,6.01; Flags: uninsdeletevalue noerror 
Root: HKCR; Subkey: "CLSID\{{0CA792AE-AB31-4A61-AC12-2C66AA1BA26C}\DefaultIcon"; ValueType: ExpandSZ; ValueData: "%ProgramFiles%\Windows Sidebar\Sidebar.exe,-100"; MinVersion: 0.0,6.01; Flags: uninsdeletevalue noerror 
Root: HKCR; Subkey: "CLSID\{{0CA792AE-AB31-4A61-AC12-2C66AA1BA26C}\Shell\Open\Command"; ValueType: ExpandSZ; ValueData: "%ProgramFiles%\Windows Sidebar\sidebar.exe /showGadgets"; MinVersion: 0.0,6.01; Flags: uninsdeletevalue noerror 
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel\NameSpace\{{0CA792AE-AB31-4A61-AC12-2C66AA1BA26C}"; ValueType: String; ValueData: "Windows Sidebar Properties"; MinVersion: 0.0,6.01; Flags: uninsdeletekey noerror 

[Run]
Filename: "{pf32}\Windows Sidebar\sidebar.exe"; Parameters: "/RegServer"; WorkingDir: "{pf32}\Windows Sidebar\"; Check: "IsWin64"; MinVersion: 0.0,6.01; Flags: 32bit 
Filename: "{pf64}\Windows Sidebar\sidebar.exe"; Parameters: "/RegServer"; WorkingDir: "{pf64}\Windows Sidebar\"; Check: "IsWin64"; MinVersion: 0.0,6.01; Flags: 64bit 
Filename: "{pf}\Windows Sidebar\sidebar.exe"; Parameters: "/RegServer"; WorkingDir: "{pf}\Windows Sidebar\"; Check: "not IsWin64"; MinVersion: 0.0,6.01; 
Filename: "{sys}\attrib.exe"; Parameters: """{pf64}\Windows Sidebar"" -s -h"; Check: "IsWin64"; MinVersion: 0.0,6.01; Flags: 64bit 
Filename: "{sys}\attrib.exe"; Parameters: """{pf32}\Windows Sidebar"" -s -h"; Check: "IsWin64"; MinVersion: 0.0,6.01; Flags: 32bit 
Filename: "{sys}\attrib.exe"; Parameters: """{pf}\Windows Sidebar"" -s -h"; Check: "not IsWin64"; MinVersion: 0.0,6.01; 
Filename: "{sys}\reg.exe"; Parameters: "add HKCR\Windows.gadget /v FriendlyTypeName /t REG_EXPAND_SZ /d @""%ProgramFiles%\Windows Sidebar\sbdrop.dll"",-100 /f"; Check: "IsWin64"; MinVersion: 0.0,6.01; Flags: 64bit 
Filename: "{sys}\reg.exe"; Parameters: "add HKCR\Windows.gadget /v FriendlyTypeName /t REG_EXPAND_SZ /d @""%ProgramFiles%\Windows Sidebar\sbdrop.dll"",-100 /f"; Check: "not IsWin64"; MinVersion: 0.0,6.01; 
Filename: "{pf}\Windows Sidebar\sidebar.exe"; Parameters: "/autoRun"; WorkingDir: "{pf}\Windows Sidebar\"; MinVersion: 0.0,6.01; Flags: nowait
Filename: "{pf}\Windows Sidebar\sidebar.exe"; Parameters: "/showGadgets"; WorkingDir: "{pf}\Windows Sidebar\"; MinVersion: 0.0,6.01; Flags: nowait

[UninstallRun]
Filename: "{sys}\taskkill.exe"; Parameters: "/f /t /im sidebar.exe"; WorkingDir: "{sys}"; Check: "IsWin64"; MinVersion: 0.0,6.01; Flags: 64bit 
Filename: "{sys}\taskkill.exe"; Parameters: "/f /t /im sidebar.exe"; WorkingDir: "{sys}"; Check: "not IsWin64"; MinVersion: 0.0,6.01; 
Filename: "{pf32}\Windows Sidebar\sidebar.exe"; Parameters: "/UnregServer"; WorkingDir: "{pf32}\Windows Sidebar\"; Check: "IsWin64"; MinVersion: 0.0,6.01; Flags: 32bit 
Filename: "{pf64}\Windows Sidebar\sidebar.exe"; Parameters: "/UnregServer"; WorkingDir: "{pf64}\Windows Sidebar\"; Check: "IsWin64"; MinVersion: 0.0,6.01; Flags: 64bit 
Filename: "{pf}\Windows Sidebar\sidebar.exe"; Parameters: "/UnregServer"; WorkingDir: "{pf}\Windows Sidebar\"; Check: "not IsWin64"; MinVersion: 0.0,6.01; 
Filename: "{sys}\attrib.exe"; Parameters: """{pf64}\Windows Sidebar"" +s +h"; Check: "IsWin64"; MinVersion: 0.0,6.01; Flags: 64bit 
Filename: "{sys}\attrib.exe"; Parameters: """{pf32}\Windows Sidebar"" +s +h"; Check: "IsWin64"; MinVersion: 0.0,6.01; Flags: 32bit 
Filename: "{sys}\attrib.exe"; Parameters: """{pf}\Windows Sidebar"" +s +h"; Check: "not IsWin64"; MinVersion: 0.0,6.01; 

[UninstallDelete]
Type: filesandordirs; Name: "{localappdata}\Microsoft\Windows Sidebar\Gadgets"; 
Type: files; Name: "{localappdata}\Microsoft\Windows Sidebar\Gadgets\settings.ini"; 
