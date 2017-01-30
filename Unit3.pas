unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ShellAPI;

type
  TForm3 = class(TForm)
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    CheckBox4: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
begin
  SpeedButton1.Caption:='Open'+#13+'dgVoodoo'+#13+'Config';
  CheckBox2.Hint:='Enables "DXPrimaryEmulation -DisableMaxWindowedMode"'+#13#10+'compatibility mode, may fix performance problems on'+#13#10+'Windows 8+.';
  CheckBox3.Hint:='Prevents turning off of the DWM when the'+#13#10+'game is started in the windowed mode, but'+#13#10+'in this case the screenshoter will not work.';
end;

procedure TForm3.SpeedButton1Click(Sender: TObject);
var
  path: string;
begin
  Try
    path:=ExtractFilePath(Application.ExeName);
    ShellExecute(handle, nil, PChar(path+'\drivers\dgvoodoo\dgvoodooconf.exe'), nil, nil, SW_SHOWNORMAL);
  except
    on E: Exception do
      begin
        messagebeep(MB_ICONERROR);
        MessageDlg(E.ClassName+' error raised, with message: '+E.Message, mtError, [mbOK], 0);
      end;
  end;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
  Form1.Enabled:=false;
  if Form1.RadioButton12.Checked=true then
    SpeedButton1.Visible:=true;
  if ((Form1.RadioButton13.Checked=true) or
     (Form1.RadioButton14.Checked=true) or
     (Form1.RadioButton16.Checked=true) or
     (Form1.RadioButton17.Checked=true)) and (nfs='3') then
       begin
         CheckBox2.Enabled:=true;
         CheckBox3.Enabled:=true;
       end
     else
       begin
         CheckBox2.Enabled:=false;
         CheckBox3.Enabled:=false;
       end;
  if ((Form1.RadioButton13.Checked=true) or
     (Form1.RadioButton14.Checked=true) or
     (Form1.RadioButton17.Checked=true)) and (nfs='4') then
       CheckBox4.Enabled:=true
     else
       CheckBox4.Enabled:=false;
  if (Form1.RadioButton16.Checked=true) or
     (Form1.RadioButton17.Checked=true) then
       CheckBox1.Enabled:=false
     else
       CheckBox1.Enabled:=true;
end;

procedure TForm3.FormHide(Sender: TObject);
begin
  //nglide
  if Form1.RadioButton11.Checked=true then
    SaveThrashValues('nGlide');
  //dgvoodoo
  if Form1.RadioButton12.Checked=true then
    SaveThrashValues('dgVoodoo');
  //dx6
  if Form1.RadioButton13.Checked=true then
    SaveThrashValues('DirectX6');
  //dx7
  if Form1.RadioButton14.Checked=true then
    SaveThrashValues('DirectX7');
  //dx8
  if Form1.RadioButton15.Checked=true then
    SaveThrashValues('DirectX8');
  //dx5
  if Form1.RadioButton16.Checked=true then
    SaveThrashValues('DirectX5');
  //softtri
  if Form1.RadioButton17.Checked=true then
    SaveThrashValues('SoftTri');
  //glide3x
  if Form1.RadioButton18.Checked=true then
    SaveThrashValues('Glide3x');
  Form1.Enabled:=true;
  SpeedButton1.Visible:=false;
  CheckBox1.Checked:=false;
  CheckBox2.Checked:=false;
  CheckBox3.Checked:=false;
  CheckBox4.Checked:=false;
end;

end.
