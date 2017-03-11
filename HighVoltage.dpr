program HighVoltage;

uses
  Vcl.Forms,
  UHighVoltage in 'UHighVoltage.pas' {MainForm},
  UHostName in 'UHostName.pas' {FrmHostName},
  UDebug in 'UDebug.pas' {FrmDebug},
  UArdEmul in 'UArdEmul.pas' {FrmEmul},
  UThreadConnect in 'UThreadConnect.pas',
  UMainThread in 'UMainThread.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'High Voltage';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TFrmHostName, FrmHostName);
  Application.CreateForm(TFrmDebug, FrmDebug);
  Application.CreateForm(TFrmEmul, FrmEmul);
  Application.Run;
end.
