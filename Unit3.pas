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
    Label3: TLabel;
    ComboBox2: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure DisplayThrashValues(prefix: String);
    procedure SaveThrashValues(prefix: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  lastTD: string;

implementation

uses Unit1, Unit6;

{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
begin
  SpeedButton1.Caption:='Open'+#13+'dgVoodoo'+#13+'Config';
  CheckBox2.Hint:='Enables "DXPrimaryEmulation -DisableMaxWindowedMode"'+#13#10+'compatibility mode, may fix performance problems on'+#13#10+'Windows 8+.';
  CheckBox3.Hint:='Prevents turning off of the DWM when the'+#13#10+'game is started in the windowed mode, but'+#13#10+'in this case the screenshoter will not work.';
  //delete dx5
  if nfs='4' then ComboBox2.Items.Delete(ComboBox2.Items.IndexOf('DirectX5'));
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
  lastTD:=ComboBox2.Text;
end;

procedure TForm3.FormHide(Sender: TObject);
begin
  //nglide
  if ComboBox2.Text='nGlide' then
    Form1.RadioButton11.Checked:=true;
  //dgvoodoo
  if ComboBox2.Text='dgVoodoo' then
    Form1.RadioButton12.Checked:=true;
  //dx6
  if ComboBox2.Text='DirectX6' then
    Form1.RadioButton13.Checked:=true;
  //dx7
  if ComboBox2.Text='DirectX7' then
    Form1.RadioButton14.Checked:=true;
  //dx8
  if ComboBox2.Text='DirectX8' then
    Form1.RadioButton15.Checked:=true;
  //dx5
  if ComboBox2.Text='DirectX5' then
    Form1.RadioButton16.Checked:=true;
  //softtri
  if ComboBox2.Text='SoftTri' then
    Form1.RadioButton17.Checked:=true;
  //glide3x
  if ComboBox2.Text='Glide3x' then
    Form1.RadioButton18.Checked:=true;
  SaveThrashValues(ComboBox2.Text);
  Form1.Enabled:=true;
end;

procedure TForm3.ComboBox2Change(Sender: TObject);
begin
  SaveThrashValues(lastTD);
  DisplayThrashValues(ComboBox2.Text);
  lastTD:=ComboBox2.Text;
end;

procedure TForm3.DisplayThrashValues(prefix: String);
begin
  SpeedButton1.Visible:=false;
  CheckBox1.Checked:=false;
  CheckBox2.Checked:=false;
  CheckBox3.Checked:=false;
  CheckBox4.Checked:=false;
  CheckBox1.Enabled:=true;
  CheckBox2.Enabled:=false;
  CheckBox3.Enabled:=false;
  CheckBox4.Enabled:=false;
  if prefix='dgVoodoo' then
    SpeedButton1.Visible:=true;
  if ((prefix='DirectX6') or (prefix='DirectX7') or (prefix='DirectX5') or (prefix='SoftTri')) and (nfs='3') then
    begin
      CheckBox2.Enabled:=true;
      CheckBox3.Enabled:=true;
    end;
  if ((prefix='DirectX6') or (prefix='DirectX7') or (prefix='SoftTri')) and (nfs='4') then
    CheckBox4.Enabled:=true;
  if (prefix='DirectX5') or (prefix='SoftTri') then
    CheckBox1.Enabled:=false;
  Edit1.Text:=GlobalSet.values[prefix+'_File'];
  ComboBox1.ItemIndex:=ComboBox1.Items.IndexOf(GlobalSet.values[prefix+'_Type']);
  ComboBox2.ItemIndex:=ComboBox2.Items.IndexOf(prefix);
  if not (GlobalSet.values[prefix+'_FogSupport']='') then
    CheckBox1.Checked:=Boolean(StrToInt(GlobalSet.values[prefix+'_FogSupport']));
  if not (GlobalSet.values[prefix+'_DisableMaxWindowedMode']='') then
    CheckBox2.Checked:=Boolean(StrToInt(GlobalSet.values[prefix+'_DisableMaxWindowedMode']));
  if not (GlobalSet.values[prefix+'_NoDwmOffForPrimaryLock']='') then
    CheckBox3.Checked:=Boolean(StrToInt(GlobalSet.values[prefix+'_NoDwmOffForPrimaryLock']));
  if not (GlobalSet.values[prefix+'_DirectDrawLagFix']='') then
    CheckBox4.Checked:=Boolean(StrToInt(GlobalSet.values[prefix+'_DirectDrawLagFix']));
end;

procedure TForm3.SaveThrashValues(prefix: String);
begin
  if Form6.CheckBox3.Checked=true then
    begin
      GlobalSet.values[prefix+'_File']:=Form3.Edit1.Text;
      GlobalSet.values[prefix+'_Type']:=Form3.ComboBox1.Text;
      if not (GlobalSet.values[prefix+'_FogSupport']='') then
      GlobalSet.values[prefix+'_FogSupport']:=IntToStr(Integer(Form3.CheckBox1.Checked));
      if not (GlobalSet.values[prefix+'_DisableMaxWindowedMode']='') then
        GlobalSet.values[prefix+'_DisableMaxWindowedMode']:=IntToStr(Integer(Form3.CheckBox2.Checked));
      if not (GlobalSet.values[prefix+'_NoDwmOffForPrimaryLock']='') then
        GlobalSet.values[prefix+'_NoDwmOffForPrimaryLock']:=IntToStr(Integer(Form3.CheckBox3.Checked));
      if not (GlobalSet.values[prefix+'_DirectDrawLagFix']='') then
        GlobalSet.values[prefix+'_DirectDrawLagFix']:=IntToStr(Integer(Form3.CheckBox4.Checked));
    end;
end;

end.
