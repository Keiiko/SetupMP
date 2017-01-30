unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, IniFiles;

type
  TForm9 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Memo1: TMemo;
    Label5: TLabel;
    Label4: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses Unit4, Unit1;

var
  loadFile: TIniFile;

{$R *.dfm}

procedure TForm9.FormShow(Sender: TObject);
begin
  loadFile:=TIniFile.Create(DataModule4.OpenDialog1.FileName);
  if (loadFile.SectionExists('NFS'+nfs)=true) and (loadFile.SectionExists('General')=true) then
    begin
      Label4.Caption:=loadFile.ReadString('General','Nick','Anonymous');
      Label5.Caption:=loadFile.ReadString('General','AdditinalInfo','None');
      Memo1.Text:=loadFile.ReadString('General','Description','None');
    end
  else
    begin
      messagebeep(MB_ICONERROR);
      MessageDlg('Invalid file!', mtError, [mbOK], 0);
      PostMessage(Handle, WM_CLOSE, 0, 0);
    end;
end;

procedure TForm9.FormHide(Sender: TObject);
begin
  loadFile.Free;
  Form1.Enabled:=true;
end;

procedure TForm9.BitBtn1Click(Sender: TObject);
begin
  loadFile.ReadSectionValues('NFS'+nfs, GlobalSet);
  Form1.LoadFromGlobalSetValues(Sender);
  Form9.Close;
end;

end.
