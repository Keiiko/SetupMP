unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, IniFiles;

type
  TForm8 = class(TForm)
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    Memo1: TMemo;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses Unit4, Unit1;

{$R *.dfm}

procedure TForm8.BitBtn1Click(Sender: TObject);
var
  exportfile: TIniFile;
  i: Integer;
begin
  if DataModule4.SaveDialog1.Execute then
    begin
      //save inis
      Form1.SaveGlobalSetValues(Sender);
      //create ini file
      DeleteFile(DataModule4.SaveDialog1.FileName);
      exportfile:=TIniFile.Create(DataModule4.SaveDialog1.FileName);
      //saving vars
      exportfile.WriteString('General','Version',ver);
      if CheckBox1.Checked=true then
        exportfile.WriteString('General','Name','Anonymous')
      else
        exportfile.WriteString('General','Name',Edit1.Text);
      exportfile.WriteString('General','AdditionalInfo',Edit2.Text);
      exportfile.WriteString('General','Description',Memo1.Text);
      for i := 0 to GlobalSet.Count-1 do
        exportfile.WriteString('NFS'+nfs,GlobalSet.Names[i],GlobalSet.ValueFromIndex[i]);
      //cleanup
      exportfile.free;
      Form8.Close;
    end;
end;

procedure TForm8.FormShow(Sender: TObject);
begin
  Form1.Enabled:=false;
  CheckBox1.Checked:=Boolean(StrToInt(SetupSet.values['Anonymous']));
  Edit1.Text:=SetupSet.values['Nick'];
  Edit2.Text:=SetupSet.values['AdditinalInfo'];
end;

procedure TForm8.FormHide(Sender: TObject);
begin
  Memo1.Clear;
  Form1.Enabled:=true;
end;

end.
