; �ű��� Inno Setup �ű��� ���ɣ�
; �йش��� Inno Setup �ű��ļ�����ϸ��������İ����ĵ���

#define MyAppName "efwplus Studio"
#define MyAppVersion "1.6"
#define MyAppPublisher "efwplus"
#define MyAppURL "http://www.efwplus.cn/"
#define MyAppExeName "PluginManageTool.exe"
#define EFWWinAppExeName "EFWWin.exe"
#define wcfhostAppExeName "WCF��������.exe"

[Setup]
; ע: AppId��ֵΪ������ʶ��Ӧ�ó���
; ��ҪΪ������װ����ʹ����ͬ��AppIdֵ��
; (�����µ�GUID����� ����|��IDE������GUID��)
AppId={{49FAFBEA-8D3B-45B1-9404-8EBDF574204D}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName=D:\efwplusStudio
DefaultGroupName=efwplus Studio
OutputBaseFilename=efwplusStudio_setup
SetupIconFile=D:\����̨\efwplus���\efwplus����ƽ̨\PluginManageTool\pm.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "chinesesimp"; MessagesFile: "compiler:Default.isl"

;[Tasks];Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1
;Name: "desktopicon"; Description: "���������ݷ�ʽ(&D)"; GroupDescription: "��ӿ�ݷ�ʽ:"; Components: main 

[Files]
;Source: "D:\����̨\efwplus���\efwplus����ƽ̨\PluginManageTool\PluginManageTool.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\����̨\efwplus���\efwplus����ƽ̨\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; ע��: ��Ҫ���κι���ϵͳ�ļ���ʹ�á�Flags: ignoreversion��

[Icons]
Name: "{group}\efwplus Studio {#MyAppVersion}"; Filename: "{app}\PluginManageTool\{#MyAppExeName}"
Name: "{group}\Win�ͻ���"; Filename: "{app}\WinformPlatform\{#EFWWinAppExeName}"
Name: "{group}\Wcf��������"; Filename: "{app}\WinformPlatform\{#wcfhostAppExeName}"
Name: "{group}\Uninstall"; Filename: "{uninstallexe}"
Name: "{commondesktop}\efwplus Studio {#MyAppVersion}"; Filename: "{app}\PluginManageTool\{#MyAppExeName}"

[Run]
Filename: "{app}\PluginManageTool\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

