unit UMainThread;

interface

uses
  System.Classes, IdHTTP, IdGlobal, IdTCPConnection, IdTCPClient, System.SysUtils;

type
  MainThread = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  public
   procedure UpdateUI;
  var txt:string;
  SL:TStringList;
  warnings:string;
  end;

implementation
uses UHighVoltage;
{
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure MainThread.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end;

    or

    Synchronize(
      procedure
      begin
        Form1.Caption := 'Updated in thread via an anonymous method'
      end
      )
    );

  where an anonymous method is passed.

  Similarly, the developer can call the Queue method with similar parameters as
  above, instead passing another TThread class as the first parameter, putting
  the calling thread in a queue with the other thread.

}

{ MainThread }

procedure MainThread.Execute;
var
i,j:Integer;
MS:TMemoryStream;
ClientPanel:TIdTCPClient;
//SL:TStringList;
begin
  warnings := '';
  ClientPanel := TIdTCPClient.Create(nil);
  ClientPanel.Host := '192.168.0.25';
  ClientPanel.Port := 5005;
  ClientPanel.IPVersion := Id_IPv4;
//  SL := TStringList.Create;
  MS := TMemoryStream.Create;
  ClientPanel.ReadTimeout := 250;
//  ListFileDir(ExtractFilePath(Application.ExeName)+ txt,SL);
//  memoPanel.Lines.add(ExtractFilePath(Application.ExeName)+ txt);
  if SL.Count >0 then
    begin
//     ShowMessage('Host: ' + ClientPanel.Host + ' Port: ' +IntToStr(ClientPanel.Port));
     try
       ClientPanel.Connect;
       for I := 0 to SL.Count -1 do
        begin
         MS.LoadFromFile(txt +'\'+SL[i]);
         ClientPanel.Socket.Write(MS);
  //        FrmDebug.MemSend.Lines.Add('(' + txt +') ' + SL[i]);
         Sleep(250);
        end;


       ClientPanel.Socket.Close;
       ClientPanel.Disconnect;
     except
       ClientPanel.Socket.Close;
       ClientPanel.Disconnect;
       warnings:= 'not connection';
     end;
    end
    else warnings := '��� ������ � �����';


   MS.Free;
   ClientPanel.Free;
 Synchronize(UpdateUI);
end;

procedure MainThread.UpdateUI;
begin
 MainForm.memoPanel.Clear;
 MainForm.memoPanel.Lines.Text := txt;
 if warnings <> '' then MainForm.memoPanel.Lines.add(warnings);

 MainForm.memoPanel.Lines.add('Send complected. Count file send : ' + IntToStr(SL.Count));
 SL.Free;
end;

end.
