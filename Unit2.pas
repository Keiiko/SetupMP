unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ShellAPI;

type
  TForm2 = class(TForm)
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    ComboBox3: TComboBox;
    Label1: TLabel;
    ComboBox2: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    GroupBox2: TGroupBox;
    CheckBox1: TCheckBox;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure ComboBox5Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.FormShow(Sender: TObject);
begin
  Form1.Enabled:=false;
end;

procedure TForm2.FormHide(Sender: TObject);
begin
  Form1.Enabled:=true;
end;

function GetWindowsDir(): String;
var
  vlBuff: Array[0..MAX_PATH-1] of Char;
begin
  getSystemDirectory(vlBuff, MAX_PATH);
  Result := vlBuff;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Try
    ShellExecute(handle, nil, PChar(GetWindowsDir+'\nglide_config.exe'), nil, nil, SW_SHOWNORMAL);
  except
    on E: Exception do
      begin
        messagebeep(MB_ICONERROR);
        MessageDlg(E.ClassName+' error raised, with message: '+E.Message, mtError, [mbOK], 0);
      end;
  end;
end;

procedure TForm2.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked=true then
    Form1.Panel2.Caption:='Global nGlide settings are used'
  else
    Form1.Panel2.Caption:='';
end;

procedure TForm2.ComboBox1Change(Sender: TObject);
begin
  if ComboBox1.ItemIndex=1 then
    Form1.CheckBox4.Checked:=true
  else
    Form1.CheckBox4.Checked:=false;
end;

procedure TForm2.ComboBox2Change(Sender: TObject);
begin
  if ComboBox2.ItemIndex=1 then
    Form1.CheckBox5.Checked:=true
  else
    Form1.CheckBox5.Checked:=false;
end;

procedure TForm2.ComboBox4Change(Sender: TObject);
begin
  if ComboBox4.ItemIndex=1 then
    Form1.CheckBox6.Checked:=true
  else
    Form1.CheckBox6.Checked:=false;
end;

procedure TForm2.ComboBox5Change(Sender: TObject);
begin
  Form1.TrackBar1.Position:=ComboBox5.ItemIndex;
  Form1.ComboBox1.ItemIndex:=ComboBox5.ItemIndex;
end;

end.
 