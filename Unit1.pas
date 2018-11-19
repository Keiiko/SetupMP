unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, TabNotBk, ExtCtrls, StdCtrls, Buttons, Spin, IniFiles,
  ShellAPI, Mask, Menus, Grids, ValEdit, MMSystem;

type
  TForm1 = class(TForm)
    Image1: TImage;
    TabbedNotebook1: TTabbedNotebook;
    Image2: TImage;
    StatusBar1: TStatusBar;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    BitBtn2: TBitBtn;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    SpinEdit1: TSpinEdit;
    CheckBox3: TCheckBox;
    RadioGroup1: TRadioGroup;
    SpinEdit2: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    GroupBox1: TGroupBox;
    RadioButton11: TRadioButton;
    RadioButton12: TRadioButton;
    RadioButton13: TRadioButton;
    RadioButton14: TRadioButton;
    RadioButton15: TRadioButton;
    RadioButton16: TRadioButton;
    RadioButton17: TRadioButton;
    RadioButton18: TRadioButton;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    Label4: TLabel;
    SpinEdit4: TSpinEdit;
    CheckBox10: TCheckBox;
    RadioGroup2: TRadioGroup;
    RadioButton19: TRadioButton;
    RadioButton20: TRadioButton;
    RadioButton21: TRadioButton;
    SpinEdit5: TSpinEdit;
    BitBtn3: TBitBtn;
    Panel1: TPanel;
    Button1: TButton;
    TrackBar1: TTrackBar;
    BitBtn4: TBitBtn;
    TrackBar2: TTrackBar;
    ComboBox1: TComboBox;
    Panel2: TPanel;
    TrackBar3: TTrackBar;
    Image3: TImage;
    GroupBox4: TGroupBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    GroupBox3: TGroupBox;
    Button3: TButton;
    RadioButton22: TRadioButton;
    ComboBox2: TComboBox;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    SpinEdit3: TSpinEdit;
    CheckBox14: TCheckBox;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    ComboBox4: TComboBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    Label6: TLabel;
    ComboBox3: TComboBox;
    SpinEdit6: TSpinEdit;
    SpinEdit7: TSpinEdit;
    Label5: TLabel;
    CheckBox15: TCheckBox;
    CheckBox20: TCheckBox;
    CheckBox21: TCheckBox;
    CheckBox22: TCheckBox;
    SpinEdit8: TSpinEdit;
    SpinEdit9: TSpinEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    ComboBox5: TComboBox;
    CheckBox23: TCheckBox;
    CheckBox24: TCheckBox;
    GroupBox5: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure CheckBox10Click(Sender: TObject);
    procedure SpinEdit5Change(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Save(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure TrackBar3Change(Sender: TObject);
    procedure SpinEdit4Change(Sender: TObject);
    procedure SaveGlobalSetValues(Sender: TObject);
    procedure LoadFromGlobalSetValues(Sender: TObject);
    procedure SaveDefaultGlobalSetValues(Sender: TObject);
    procedure SaveOptions(Sender: TObject);
    procedure LoadMainIcon(Sender: TObject);
    procedure RadioButton22Click(Sender: TObject);
    procedure RadioButton11Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SetConfig2PropertyValue(Key, Value: string);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox23Click(Sender: TObject);
    procedure CheckBox14Click(Sender: TObject);
    procedure CheckBox19Click(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure GetBuildInfo(var V1, V2, V3, V4: word);
    function GetBuildInfoAsString: string;
    function RetunDefValueIfNone(value, default: string): string;
    procedure SaveNfs2SeWrapperInstallWin(lang: string);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  ver, nfs, path, path2se, driverdir: string;
  nfsini, setupini, nglide, dgvoodoo, dx5, dx6, dx7, dx8, glide3x, softtri: TIniFile;
  GlobalSet, SetupSet, Conf2, Lang2: TStringList;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit10, Unit11;

{$R intro.RES}
{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  dxl, dxt, n, i: Integer;
  lang, intro, loading, textures, gamma, heap, format, vsync, msaa, wsize, bcast, tcp, udp: string;
begin
  //path
  path:=ExtractFilePath(Application.ExeName);
  path2se:=SysUtils.GetEnvironmentVariable('APPDATA')+'\.nfs2se\nfs2se.conf';
  //check for exes
  nfs:='none';
  n:=0;
  if fileexists('nfs2se.exe') or fileexists('nfs2se-gl1.exe') then
    begin
      if not fileexists(path2se) then
        begin
          messagebeep(MB_ICONERROR);
          MessageDlg('Config file not found, please, run NFS2SE wrapper for the first time if not already.', mtError, [mbOK], 0);
          Application.ShowMainForm:=false;
          Application.Terminate;
        end;
      nfs:='2';
      n:=n+1;
    end;
  if fileexists('nfs3.exe') then
    begin
      nfs:='3';
      n:=n+1;
    end;
  if fileexists('nfs4.exe') then
    begin
      nfs:='4';
      n:=n+1;
    end;
  if (n<>1) then
    begin
      messagebeep(MB_ICONERROR);
      if (n>1) then
        MessageDlg('You must have only one NFS Modern Patch or'+#13#10+'Wrapper installed in this folder, I see more!', mtError, [mbOK], 0)
      else
        MessageDlg('This setup must be in NFS3 or NFS4 folder with Modern Patch'+#13#10+'or NFS2SE with Cross-platform wrapper installed!', mtError, [mbOK], 0);
      Application.ShowMainForm:=false;
      Application.Terminate;
    end;
  //ver
  ver:=GetBuildInfoAsString();
  StatusBar1.Panels.Items[3].Text:='v'+ver;
  Application.HintHidePause:=10000;
  //nfs2se switch
  if (nfs='2') then
    begin
      for i := 1 to 5 do begin
        TabbedNotebook1.Pages.Delete(1);
        DataModule4.MainMenu1.Items[2].Delete(1);
      end;
      Panel1.Caption:='Used install.win file is created automatically if it doesn''t exist.';
      lang:='Language which is officially supported by NFS2SE.';
      CheckBox14.Hint:='VSync disabled, enabled (default), don''t change (grayed ok).';
      vsync:='Limit framerate';
      CheckBox18.Hint:=vsync;
      SpinEdit3.Hint:=vsync;
      msaa:='MSAA disabled, enabled, don''t change (default, grayed ok).'+#13#10+'If enabled and not supported, the game probably won''t run.';
      CheckBox19.Hint:=msaa;
      ComboBox4.Hint:=msaa;
      wsize:='Window size (default: 640x480)';
      ComboBox3.Hint:=wsize;
      SpinEdit6.Hint:=wsize;
      SpinEdit7.Hint:=wsize;
      Label6.Hint:=wsize;
      Label5.Hint:=wsize;
      CheckBox15.Hint:='Use only the first CPU (stable, default). Unchecked might be unstable.';
      CheckBox16.Hint:='Use screen size from WindowSize for fullscreen. (default is off)';
      CheckBox17.Hint:='Keeps the original aspect ratio (4:3, default). Unchecked fills the entire window.';
      CheckBox20.Hint:='Run in full screen (default). Unchecked run game windowed.';
      CheckBox21.Hint:='Linear interpolated sound to 44100Hz (artificial highs).'+#13#10+'Default if off, original samplerate - 22050Hz.';
      CheckBox22.Hint:='Use glBegin(), glEnd() instead of glDrawArrays()'+#13#10+'can be slower, disabled by default.';
      CheckBox24.Hint:='Use OpenGL 1.1 instead of OpenGL 2.'+#13#10+'This setting only swith between exesutables to run.';
      tcp:='TCP and UDP port (default: 1030)';
      Label7.Hint:=tcp;
      SpinEdit8.Hint:=tcp;
      udp:='Second UDP port for host (default: 1029)';
      Label8.Hint:=udp;
      SpinEdit9.Hint:=udp;
      bcast:='Broadcast address for UDP connection (default: 255.255.255.255)';
      Label9.Hint:=bcast;
      Edit1.Hint:=bcast;
      Edit2.Hint:=bcast;
      Edit3.Hint:=bcast;
      Edit4.Hint:=bcast;
      Label10.Hint:=bcast;
      Label11.Hint:=bcast;
      Label12.Hint:=bcast;
    end
  else
    begin
      //tabs for nfs3 and 4
      for i := 1 to 3 do begin
        TabbedNotebook1.Pages.Delete(6);
        DataModule4.MainMenu1.Items[2].Delete(6);
      end;
      //hints
      lang:='Language which is officially supported by NFS3.'+#13#10+'Language files have to be already installed.';
      CheckBox1.Hint:='Don''t display opening movie and demo movies when idle in the menu.';
      CheckBox2.Hint:='Hides 16 bit resolutions if similar 32 bit resolutions are available.';
      CheckBox3.Hint:='Enables 32-bit rendering in the menu. But movies can''t be rendered'+#13#10+'in the 32-bit modes, so it is recommended to use NoMovie setting also.';
      intro:='Time of displaying of the intro splash'+#13#10+'image before main menu (in seconds).'+#13#10+'Use 0 to disable it.';
      Label1.Hint:=intro;
      SpinEdit1.Hint:=intro;
      loading:='Gameplay starts too quickly on modern computers,'+#13#10+'so you can set desired time of loading in seconds.'+#13#10+'Use 0 to get maximum possible speed.'+#13#10+'It can be skipped by pressing any key.';
      Label2.Hint:=loading;
      SpinEdit2.Hint:=loading;
      textures:='Experimental setting which enables huge texture'+#13#10+'support for track elements and cars during gameplay.';
      RadioButton7.Hint:=textures;
      RadioButton8.Hint:=textures;
      RadioButton9.Hint:=textures;
      RadioButton10.Hint:=textures;
      RadioButton11.Hint:='nGlide (Glide 3x API emulator) supports fog effect, renders sharp fonts in the menu,'+#13#10+'uses DirectX 9, supports minimizing and windowed mode (Alt+Enter to switch).'+#13#10+'Recommended for modern computers with Windows XP/7+.';
      RadioButton12.Hint:='dgVoodoo (Glide 3x API emulator) supports fog effect, renders sharp fonts'+#13#10+'in the menu, supports minimizing and windowed mode (Alt+Enter to switch),'+#13#10+'uses DirectX 11, but requires very powerful GPU.';
      RadioButton13.Hint:='DX6 supports fog effect, but doesn''t support minimizing, and FPS may be'+#13#10+'a little lower than with nGlide or DX8 on the Windows 7+ because of limited'+#13#10+'DirectX 6 support. Recommended for old computers with Windows 98/Me/XP.';
      RadioButton14.Hint:='DX7 supports fog effect, but doesn''t support minimizing, works not very'+#13#10+'smooth on the modern systems. Also you will see a huge black polygon near'+#13#10+'the Old Church on the Hometown track. Just for a collection :)';
      RadioButton15.Hint:='DX8 works smoothly, but doesn''t support fog effect, can''t display intro video,'+#13#10+'and on some systems doesn''t render dashboard on “In Car” camera view.';
      RadioButton16.Hint:='DX5 is based on the original thrash driver of the NFS3. However, it doesn''t support'+#13#10+'fog effect, it may not work in the Windows 8+, looks worse than others in some details'+#13#10+'(e.g. artifacts when a large number of spray or dust from under the wheels).';
      RadioButton17.Hint:='SoftTri doesn''t use hardware acceleration and predictably it looks worst.'+#13#10+'May not work on Windows 8+. Useful for running the game on virtual machines.';
      RadioButton18.Hint:='Glide3x is intended for using with the real'+#13#10+'3dfx Voodoo hardware through the Glide 3x API.';
      CheckBox4.Hint:='Always use desktop resolution instead of game''s resolution.';
      CheckBox5.Hint:='Preserve aspect ratio when desktop resolution is used.';
      CheckBox6.Hint:='Enable vertical synchronization.';
      gamma:='Gamma setting (from 0.5 to 1.5, 1.0 by default)';
      Label3.Hint:=gamma;
      ComboBox1.Hint:=gamma;
      TrackBar1.Hint:=gamma;
      Panel2.Hint:=gamma;  
      CheckBox7.Hint:='Bind game''s process to one core, disabled by default, not recommended.';
      CheckBox8.Hint:='Enables suppressing of Windows Error Reporting'+#13#10+'dialog on fatal errors. It isn''t recommended.';
      CheckBox9.Hint:='Disables Win key, Alt+Tab, Alt+Esc, and Ctrl+Esc for preventing accidental minimizing of the game.'+#13#10+'Useful for renderers which don''t support restoring after minimizing. Disabled by default.';
      heap:='Heap size limit in megabytes. Might be from 16 to 512, 32 by default,'+#13#10+'in the original version it was 16. Helps to get rid of “Out Of Memory” error.';
      Label4.Hint:=heap;
      SpinEdit4.Hint:=heap;
      TrackBar3.Hint:=heap;
      CheckBox10.Hint:='Enables built-in screenshoter feature on Print Screen key.';
      format:='Format of screenshots. PNG and JPG require GDI+ (included in'+#13#10+'Windows XP and newer, for older systems the gdiplus.dll is needed).';
      RadioButton19.Hint:=format;
      RadioButton20.Hint:=format;
      RadioButton21.Hint:=format;
      SpinEdit5.Hint:=format;
      TrackBar2.Hint:=format;
      //nfs4 setup corrections
      if nfs='4' then
        begin
          //change dx6 and dx7
          dxl:=RadioButton13.Left;
          dxt:=RadioButton13.Top;
          RadioButton13.Left:=RadioButton14.Left;
          RadioButton13.Top:=RadioButton14.Top;
          RadioButton14.Left:=dxl;
          RadioButton14.Top:=dxt;
          //disable/enable checkboxes
          CheckBox2.Enabled:=false; //16b modes
          CheckBox3.Enabled:=false; //32b menu
          Label1.Enabled:=false; //intro splash text
          SpinEdit1.Enabled:=false; //intro splash
          Label2.Enabled:=false; //load splash text
          SpinEdit2.Enabled:=false; //load splash
          RadioButton7.Enabled:=false; //textures d
          RadioButton8.Enabled:=false; //textures 5
          RadioButton9.Enabled:=false; //textures 1
          RadioButton10.Enabled:=false; //textures 2
          RadioButton16.Enabled:=false; //dx5
          CheckBox9.Enabled:=false; //minimize
          CheckBox11.Enabled:=true; //variant
          TrackBar3.Min:=32; //heap
          SpinEdit4.MinValue:=32; //heap
          CheckBox10.Enabled:=false; //screenshot
          CheckBox10.Checked:=false; //screenshot
          RadioButton19.Enabled:=false; //png
          RadioButton20.Enabled:=false; //jpg
          RadioButton21.Enabled:=false; //bmp
          SpinEdit5.Enabled:=false; //jpgq
          TrackBar2.Enabled:=false; //jpgq
        end;
    end;
    RadioButton1.Hint:=lang;
    RadioButton2.Hint:=lang;
    RadioButton3.Hint:=lang;
    RadioButton4.Hint:=lang;
    RadioButton5.Hint:=lang;
    RadioButton6.Hint:=lang;
end;

procedure TForm1.LoadMainIcon(Sender: TObject);
begin
  Image1.Picture:=nil;
  if SetupSet.values['IconSet']='0' then
    Image1.Picture.LoadFromFile(Form6.Label6.Caption)
  else
    DataModule4.ImageList1.GetBitmap(StrToInt(nfs)+(3*StrToInt(SetupSet.values['IconSet'])-5),Image1.Picture.Bitmap);
end;

procedure TForm1.FormShow(Sender: TObject);
var
  nGlist: TStringList;
  langstr, langfile: string;
  sr: TSearchRec;
begin
  //initiate string lists
  GlobalSet:=TStringList.Create;
  SetupSet:=TStringList.Create;
  //load setup ini
  setupini:=TIniFile.Create(SysUtils.ChangeFileExt(Application.ExeName,'.ini'));
  //load setup options
  SetupSet.values['Language']:=setupini.ReadString('Options','Language','Default');
  SetupSet.values['IntroSound']:=setupini.ReadString('Options','IntroSound','1');
  SetupSet.values['Nick']:=setupini.ReadString('Options','Nick','');
  SetupSet.values['AdditinalInfo']:=setupini.ReadString('Options','AdditinalInfo','');
  SetupSet.values['Anonymous']:=setupini.ReadString('Options','Anonymous','0');
  SetupSet.values['IconSet']:=setupini.ReadString('Options','IconSet','1');
  SetupSet.values['CustomIcon']:=setupini.ReadString('Options','CustomIcon','');
  SetupSet.values['SaveAdvancedThrash']:=setupini.ReadString('Options','SaveAdvancedThrash','0');
  //load setup options internally
  Form6.ComboBox1.ItemIndex:=Form6.ComboBox1.Items.IndexOf(SetupSet.values['Language']);
  Form6.CheckBox2.Checked:=Boolean(StrToInt(SetupSet.values['IntroSound']));
  Form6.Edit1.Text:=SetupSet.values['Nick'];
  Form6.Edit2.Text:=SetupSet.values['AdditinalInfo'];
  Form6.CheckBox1.Checked:=Boolean(StrToInt(SetupSet.values['Anonymous']));
  Form6.RadioButton1.Checked:=true;
  if SetupSet.values['IconSet']='2' then
    Form6.RadioButton2.Checked:=true;
  if SetupSet.values['IconSet']='0' then
    Form6.RadioButton3.Checked:=true;
  if not (SetupSet.values['CustomIcon']='') then
    Form6.Label6.Caption:=SetupSet.values['CustomIcon'];
  Form6.CheckBox3.Checked:=Boolean(StrToInt(SetupSet.values['SaveAdvancedThrash']));
  //choose nfs 3 or 4 image
  LoadMainIcon(Sender);
  DataModule4.ImageList2.GetBitmap(StrToInt(nfs)-2,Form1.Image2.Picture.Bitmap);
  DataModule4.ImageList2.GetBitmap(StrToInt(nfs)+1,Form1.Image3.Picture.Bitmap);
  SaveDefaultGlobalSetValues(Sender);
  if (nfs='2') then
    begin
      //load properties of nfs2
      Lang2:=TStringList.Create;
      langfile:='install.win';
      if not fileexists(langfile) then SaveNfs2SeWrapperInstallWin('english');
      Lang2.LoadFromFile(langfile);
      langstr:=Lang2[0];
      Delete(langstr,1,3);
      GlobalSet.values['Language']:=RetunDefValueIfNone(langstr,GlobalSet.values['Language']);
      Conf2:=TStringList.Create;
      Conf2.LoadFromFile(path2se);
      GlobalSet.values['UseOnlyOneCPU']:=RetunDefValueIfNone(Conf2.values['UseOnlyOneCPU'],GlobalSet.values['UseOnlyOneCPU']);
      GlobalSet.values['StartInFullScreen']:=RetunDefValueIfNone(Conf2.values['StartInFullScreen'],GlobalSet.values['StartInFullScreen']);
      GlobalSet.values['VSync']:=RetunDefValueIfNone(Conf2.values['VSync'],GlobalSet.values['VSync']);
      GlobalSet.values['MSAA']:=RetunDefValueIfNone(Conf2.values['MSAA'],GlobalSet.values['MSAA']);
      GlobalSet.values['UseWindowSizeForFullScreen']:=RetunDefValueIfNone(Conf2.values['UseWindowSizeForFullScreen'],GlobalSet.values['UseWindowSizeForFullScreen']);
      GlobalSet.values['WindowSize']:=RetunDefValueIfNone(Conf2.values['WindowSize'],GlobalSet.values['WindowSize']);
      GlobalSet.values['KeepAspectRatio']:=RetunDefValueIfNone(Conf2.values['KeepAspectRatio'],GlobalSet.values['KeepAspectRatio']);
      GlobalSet.values['Joystick0AxisValueShift']:=RetunDefValueIfNone(Conf2.values['Joystick0AxisValueShift'],GlobalSet.values['Joystick0AxisValueShift']);
      GlobalSet.values['Joystick1AxisValueShift']:=RetunDefValueIfNone(Conf2.values['Joystick1AxisValueShift'],GlobalSet.values['Joystick1AxisValueShift']);
      GlobalSet.values['Joystick0Axes']:=RetunDefValueIfNone(Conf2.values['Joystick0Axes'],GlobalSet.values['Joystick0Axes']);
      GlobalSet.values['Joystick1Axes']:=RetunDefValueIfNone(Conf2.values['Joystick1Axes'],GlobalSet.values['Joystick1Axes']);
      GlobalSet.values['Joystick0Buttons']:=RetunDefValueIfNone(Conf2.values['Joystick0Buttons'],GlobalSet.values['Joystick0Buttons']);
      GlobalSet.values['Joystick1Buttons']:=RetunDefValueIfNone(Conf2.values['Joystick1Buttons'],GlobalSet.values['Joystick1Buttons']);
      GlobalSet.values['Joystick0EscButton']:=RetunDefValueIfNone(Conf2.values['Joystick0EscButton'],GlobalSet.values['Joystick0EscButton']);
      GlobalSet.values['UseSpringForceFeedbackEffect']:=RetunDefValueIfNone(Conf2.values['UseSpringForceFeedbackEffect'],GlobalSet.values['UseSpringForceFeedbackEffect']);
      GlobalSet.values['WindowsForceFeedbackDevice']:=RetunDefValueIfNone(Conf2.values['WindowsForceFeedbackDevice'],GlobalSet.values['WindowsForceFeedbackDevice']);
      GlobalSet.values['LinearSoundInterpolation']:=RetunDefValueIfNone(Conf2.values['LinearSoundInterpolation'],GlobalSet.values['LinearSoundInterpolation']);
      GlobalSet.values['UseGlBleginGlEnd']:=RetunDefValueIfNone(Conf2.values['UseGlBleginGlEnd'],GlobalSet.values['UseGlBleginGlEnd']);
      GlobalSet.values['Port1']:=RetunDefValueIfNone(Conf2.values['Port1'],GlobalSet.values['Port1']);
      GlobalSet.values['Port2']:=RetunDefValueIfNone(Conf2.values['Port2'],GlobalSet.values['Port2']);
      GlobalSet.values['Bcast']:=RetunDefValueIfNone(Conf2.values['Bcast'],GlobalSet.values['Bcast']);
      GlobalSet.values['OpenGL1']:=RetunDefValueIfNone(Conf2.values['OpenGL1'],GlobalSet.values['OpenGL1']);
    end
  else
    begin
      //load inis (3,4)
      nfsini:=TIniFile.Create(path+'nfs'+nfs+'.ini');
      //load driverinis
      driverdir:=path+'drivers';
      if not DirectoryExists(driverdir) then CreateDir(driverdir);
      if not DirectoryExists(driverdir+'\nglide') then CreateDir(driverdir+'\nglide');
      nglide:=TIniFile.Create(driverdir+'\nglide\thrash.ini');
      if not DirectoryExists(driverdir+'\dgvoodoo') then CreateDir(driverdir+'\dgvoodoo');
      dgvoodoo:=TIniFile.Create(driverdir+'\dgvoodoo\thrash.ini');
      if not DirectoryExists(driverdir+'\dx6') then CreateDir(driverdir+'\dx6');
      dx6:=TIniFile.Create(driverdir+'\dx6\thrash.ini');
      if not DirectoryExists(driverdir+'\dx7') then CreateDir(driverdir+'\dx7');
      dx7:=TIniFile.Create(driverdir+'\dx7\thrash.ini');
      if not DirectoryExists(driverdir+'\dx8') then CreateDir(driverdir+'\dx8');
      dx8:=TIniFile.Create(driverdir+'\dx8\thrash.ini');
      if not DirectoryExists(driverdir+'\glide3x') then CreateDir(driverdir+'\glide3x');
      glide3x:=TIniFile.Create(driverdir+'\glide3x\thrash.ini');
      if not DirectoryExists(driverdir+'\softtri') then CreateDir(driverdir+'\softtri');
      softtri:=TIniFile.Create(driverdir+'\softtri\thrash.ini');
      //customdrivers
      FindFirst(driverdir+'\*',faDirectory,sr);
      if (
        ((sr.Attr and faDirectory)=faDirectory) and (sr.Name<>'.') and (sr.Name<>'..') and
        (sr.Name<>'nglide') and (sr.Name<>'dgvoodoo') and (sr.Name<>'dx6') and
        (sr.Name<>'dx7') and (sr.Name<>'dx8') and (sr.Name<>'glide3x') and
        (sr.Name<>'softtri') and ((sr.Name<>'dx5') or (nfs<>'3'))
      ) then
        begin
          ComboBox2.Items.Add(sr.Name);
          Form10.ListBox1.Items.Add(sr.Name);
        end;
      while FindNext(sr) = 0 do
        begin
          if (
            ((sr.Attr and faDirectory)=faDirectory) and (sr.Name<>'.') and (sr.Name<>'..') and
            (sr.Name<>'nglide') and (sr.Name<>'dgvoodoo') and (sr.Name<>'dx6') and
            (sr.Name<>'dx7') and (sr.Name<>'dx8') and (sr.Name<>'glide3x') and
            (sr.Name<>'softtri') and ((sr.Name<>'dx5') or (nfs<>'3'))
          ) then
            begin
              ComboBox2.Items.Add(sr.Name);
              Form10.ListBox1.Items.Add(sr.Name);
            end;
        end;
      //language
      GlobalSet.values['Language']:=nfsini.ReadString('NFS'+nfs,'Language',GlobalSet.values['Language']);
      //graphic
      GlobalSet.values['NoMovies']:=nfsini.ReadString('NFS'+nfs,'NoMovies',GlobalSet.values['NoMovies']);
      //nglide - thrash
      GlobalSet.values['nGlide_File']:=nglide.ReadString('THRASH','File',GlobalSet.values['nGlide_File']);
      GlobalSet.values['nGlide_Type']:=nglide.ReadString('THRASH','Type',GlobalSet.values['nGlide_Type']);
      GlobalSet.values['nGlide_FogSupport']:=nglide.ReadString('THRASH','FogSupport',GlobalSet.values['nGlide_FogSupport']);
      //dgvoodoo - thrash
      GlobalSet.values['dgVoodoo_File']:=dgvoodoo.ReadString('THRASH','File',GlobalSet.values['dgVoodoo_File']);
      GlobalSet.values['dgVoodoo_Type']:=dgvoodoo.ReadString('THRASH','Type',GlobalSet.values['dgVoodoo_Type']);
      GlobalSet.values['dgVoodoo_FogSupport']:=dgvoodoo.ReadString('THRASH','FogSupport',GlobalSet.values['dgVoodoo_FogSupport']);
      //dx6 - thrash
      GlobalSet.values['DirectX6_File']:=dx6.ReadString('THRASH','File',GlobalSet.values['DirectX6_File']);
      GlobalSet.values['DirectX6_Type']:=dx6.ReadString('THRASH','Type',GlobalSet.values['DirectX6_Type']);
      GlobalSet.values['DirectX6_FogSupport']:=dx6.ReadString('THRASH','FogSupport',GlobalSet.values['DirectX6_FogSupport']);
      //dx7 - thrash
      GlobalSet.values['DirectX7_File']:=dx7.ReadString('THRASH','File',GlobalSet.values['DirectX7_File']);
      GlobalSet.values['DirectX7_Type']:=dx7.ReadString('THRASH','Type',GlobalSet.values['DirectX7_Type']);
      GlobalSet.values['DirectX7_FogSupport']:=dx7.ReadString('THRASH','FogSupport',GlobalSet.values['DirectX7_FogSupport']);
      //dx8 - thrash
      GlobalSet.values['DirectX8_File']:=dx8.ReadString('THRASH','File',GlobalSet.values['DirectX8_File']);
      GlobalSet.values['DirectX8_Type']:=dx8.ReadString('THRASH','Type',GlobalSet.values['DirectX8_Type']);
      GlobalSet.values['DirectX8_FogSupport']:=dx8.ReadString('THRASH','FogSupport',GlobalSet.values['DirectX8_FogSupport']);
      //softtri - thrash
      GlobalSet.values['SoftTri_File']:=softtri.ReadString('THRASH','File',GlobalSet.values['SoftTri_File']);
      GlobalSet.values['SoftTri_Type']:=softtri.ReadString('THRASH','Type',GlobalSet.values['SoftTri_Type']);
      //glide3x - thrash
      GlobalSet.values['Glide3x_File']:=glide3x.ReadString('THRASH','File',GlobalSet.values['Glide3x_File']);
      GlobalSet.values['Glide3x_Type']:=glide3x.ReadString('THRASH','Type',GlobalSet.values['Glide3x_Type']);
      GlobalSet.values['Glide3x_FogSupport']:=glide3x.ReadString('THRASH','FogSupport',GlobalSet.values['Glide3x_FogSupport']);
      GlobalSet.values['Glide3x_FX_GLIDE_NO_SPLASH']:=glide3x.ReadString('ENV','FX_GLIDE_NO_SPLASH',GlobalSet.values['Glide3x_FX_GLIDE_NO_SPLASH']);
      //nglide
      nGlist:=TStringList.Create;
      nglide.ReadSection('ENV',nGlist);
      if nGlist.Count=0 then
        GlobalSet.values['globalNGlide']:='1'
      else
        GlobalSet.values['globalNGlide']:='0';
      GlobalSet.values['NGLIDE_RESOLUTION']:=nglide.ReadString('ENV','NGLIDE_RESOLUTION',GlobalSet.values['NGLIDE_RESOLUTION']);
      GlobalSet.values['NGLIDE_ASPECT']:=nglide.ReadString('ENV','NGLIDE_ASPECT',GlobalSet.values['NGLIDE_ASPECT']);
      GlobalSet.values['NGLIDE_REFRESH']:=nglide.ReadString('ENV','NGLIDE_REFRESH',GlobalSet.values['NGLIDE_REFRESH']);
      GlobalSet.values['NGLIDE_VSYNC']:=nglide.ReadString('ENV','NGLIDE_VSYNC',GlobalSet.values['NGLIDE_VSYNC']);
      GlobalSet.values['NGLIDE_GAMMA']:=nglide.ReadString('ENV','NGLIDE_GAMMA',GlobalSet.values['NGLIDE_GAMMA']);
      GlobalSet.values['NGLIDE_SPLASH']:=nglide.ReadString('ENV','NGLIDE_SPLASH',GlobalSet.values['NGLIDE_SPLASH']);
      //program
      GlobalSet.values['NoErrorReporting']:=nfsini.ReadString('NFS'+nfs,'NoErrorReporting',GlobalSet.values['NoErrorReporting']);
      GlobalSet.values['Prefer32bitModes']:=nfsini.ReadString('NFS'+nfs,'Prefer32bitModes',GlobalSet.values['Prefer32bitModes']);
      GlobalSet.values['WindowedMode']:=nfsini.ReadString('NFS'+nfs,'WindowedMode',GlobalSet.values['WindowedMode']);
      //thrashdriver
      GlobalSet.values['ThrashDriver']:=nfsini.ReadString('NFS'+nfs,'ThrashDriver',GlobalSet.values['ThrashDriver']);
      //only in nfs3
      if nfs='3' then
        begin
          //load driverinis
          if not DirectoryExists(driverdir+'\dx5') then CreateDir(driverdir+'\dx5');
          dx5:=TIniFile.Create(driverdir+'\dx5\thrash.ini');
          //graphic
          GlobalSet.values['Hide16bitModes']:=nfsini.ReadString('NFS'+nfs,'Hide16bitModes',GlobalSet.values['Hide16bitModes']);
          GlobalSet.values['Use32bitModeInMenu']:=nfsini.ReadString('NFS'+nfs,'Use32bitModeInMenu',GlobalSet.values['Use32bitModeInMenu']);
          GlobalSet.values['IntroSplashTime']:=nfsini.ReadString('NFS'+nfs,'IntroSplashTime',GlobalSet.values['IntroSplashTime']);
          GlobalSet.values['LoadingSplashTime']:=nfsini.ReadString('NFS'+nfs,'LoadingSplashTime',GlobalSet.values['LoadingSplashTime']);
          GlobalSet.values['AllowHugeTextures']:=nfsini.ReadString('NFS'+nfs,'AllowHugeTextures',GlobalSet.values['AllowHugeTextures']);
          //dx5 - thrash
          GlobalSet.values['DirectX5_File']:=dx5.ReadString('THRASH','File',GlobalSet.values['DirectX5_File']);
          GlobalSet.values['DirectX5_Type']:=dx5.ReadString('THRASH','Type',GlobalSet.values['DirectX5_Type']);
          GlobalSet.values['DirectX5_DisableMaxWindowedMode']:=dx5.ReadString('DDRAW','DisableMaxWindowedMode',GlobalSet.values['DirectX5_DisableMaxWindowedMode']);
          GlobalSet.values['DirectX5_NoDwmOffForPrimaryLock']:=dx5.ReadString('DDRAW','NoDwmOffForPrimaryLock',GlobalSet.values['DirectX5_NoDwmOffForPrimaryLock']);
          //dx6 - thrash
          GlobalSet.values['DirectX6_DisableMaxWindowedMode']:=dx6.ReadString('DDRAW','DisableMaxWindowedMode',GlobalSet.values['DirectX6_DisableMaxWindowedMode']);
          GlobalSet.values['DirectX6_NoDwmOffForPrimaryLock']:=dx6.ReadString('DDRAW','NoDwmOffForPrimaryLock',GlobalSet.values['DirectX6_NoDwmOffForPrimaryLock']);
          //dx7 - thrash
          GlobalSet.values['DirectX7_DisableMaxWindowedMode']:=dx7.ReadString('DDRAW','DisableMaxWindowedMode',GlobalSet.values['DirectX7_DisableMaxWindowedMode']);
          GlobalSet.values['DirectX7_NoDwmOffForPrimaryLock']:=dx7.ReadString('DDRAW','NoDwmOffForPrimaryLock',GlobalSet.values['DirectX7_NoDwmOffForPrimaryLock']);
          //softtri - thrash
          GlobalSet.values['SoftTri_DisableMaxWindowedMode']:=softtri.ReadString('DDRAW','DisableMaxWindowedMode',GlobalSet.values['SoftTri_DisableMaxWindowedMode']);
          GlobalSet.values['SoftTri_NoDwmOffForPrimaryLock']:=softtri.ReadString('DDRAW','NoDwmOffForPrimaryLock',GlobalSet.values['SoftTri_NoDwmOffForPrimaryLock']);
          //program
          GlobalSet.values['OwnHeapLimitMb']:=nfsini.ReadString('NFS'+nfs,'OwnHeapLimitMb',GlobalSet.values['OwnHeapLimitMb']);
          GlobalSet.values['SingleProcAffinity']:=nfsini.ReadString('NFS'+nfs,'SingleProcAffinity',GlobalSet.values['SingleProcAffinity']);
          GlobalSet.values['PreventMinimize']:=nfsini.ReadString('NFS'+nfs,'PreventMinimize',GlobalSet.values['PreventMinimize']);
          //screenshoter
          GlobalSet.values['ScreenshoterEnabled']:=nfsini.ReadString('NFS'+nfs,'ScreenshoterEnabled',GlobalSet.values['ScreenshoterEnabled']);
          GlobalSet.values['ScreenshoterFormat']:=nfsini.ReadString('NFS'+nfs,'ScreenshoterFormat',GlobalSet.values['ScreenshoterFormat']);
        end;
      //only in nfs4
      if nfs='4' then
        begin
          //program
          GlobalSet.values['Variant']:=nfsini.ReadString('NFS'+nfs,'Variant',GlobalSet.values['Variant']);
          GlobalSet.values['OwnHeapLimitMb']:=nfsini.ReadString('NFS'+nfs,'OwnHeapLimitMb',GlobalSet.values['OwnHeapLimitMb']);
          GlobalSet.values['SingleProcAffinity']:=nfsini.ReadString('NFS'+nfs,'SingleProcAffinity',GlobalSet.values['SingleProcAffinity']);
          //dx6 - thrash
          GlobalSet.values['DirectX6_DirectDrawLagFix']:=dx6.ReadString('THRASH','DirectDrawLagFix',GlobalSet.values['DirectX6_DirectDrawLagFix']);
          //dx7 - thrash
          GlobalSet.values['DirectX7_DirectDrawLagFix']:=dx7.ReadString('THRASH','DirectDrawLagFix',GlobalSet.values['DirectX7_DirectDrawLagFix']);
          //softtri - thrash
          GlobalSet.values['SoftTri_DirectDrawLagFix']:=softtri.ReadString('THRASH','DirectDrawLagFix',GlobalSet.values['SoftTri_DirectDrawLagFix']);
        end;
    end;
  //display int var
  GlobalSet.Sort;
  LoadFromGlobalSetValues(Sender);
  //check if have option ini saved, if not show option form
  if FileExists(SysUtils.ChangeFileExt(Application.ExeName,'.ini'))=false then
    begin
      messagebeep(MB_ICONINFORMATION);
      if MessageDlg('Set options for SetupMP?',mtConfirmation,[mbYes,mbNO], 0)=MrYes then
        Form6.Show;
    end;
  //play sound
  if Form6.CheckBox2.Checked=true then
    PlaySound(PChar('NFS'+nfs), hInstance, SND_RESOURCE or SND_ASYNC);
end;

procedure TForm1.Save(Sender: TObject);
begin
  //save inis
  SaveGlobalSetValues(Sender);
  //nfs2
  if (nfs='2') then
    begin
      SaveNfs2SeWrapperInstallWin(GlobalSet.values['Language']);
      SetConfig2PropertyValue('UseOnlyOneCPU',GlobalSet.values['UseOnlyOneCPU']);
      SetConfig2PropertyValue('StartInFullScreen',GlobalSet.values['StartInFullScreen']);
      SetConfig2PropertyValue('VSync',GlobalSet.values['VSync']);
      SetConfig2PropertyValue('MSAA',GlobalSet.values['MSAA']);
      SetConfig2PropertyValue('UseWindowSizeForFullScreen',GlobalSet.values['UseWindowSizeForFullScreen']);
      SetConfig2PropertyValue('WindowSize',GlobalSet.values['WindowSize']);
      SetConfig2PropertyValue('KeepAspectRatio',GlobalSet.values['KeepAspectRatio']);
      if (CheckBox23.Checked) then
        begin
          SetConfig2PropertyValue('Joystick0AxisValueShift',GlobalSet.values['Joystick0AxisValueShift']);
          SetConfig2PropertyValue('Joystick1AxisValueShift',GlobalSet.values['Joystick1AxisValueShift']);
          SetConfig2PropertyValue('Joystick0Axes',GlobalSet.values['Joystick0Axes']);
          SetConfig2PropertyValue('Joystick1Axes',GlobalSet.values['Joystick1Axes']);
          SetConfig2PropertyValue('Joystick0Buttons',GlobalSet.values['Joystick0Buttons']);
          SetConfig2PropertyValue('Joystick1Buttons',GlobalSet.values['Joystick1Buttons']);
          SetConfig2PropertyValue('Joystick0EscButton',GlobalSet.values['Joystick0EscButton']);
          SetConfig2PropertyValue('UseSpringForceFeedbackEffect',GlobalSet.values['UseSpringForceFeedbackEffect']);
          SetConfig2PropertyValue('WindowsForceFeedbackDevice',GlobalSet.values['WindowsForceFeedbackDevice']);
        end;
      SetConfig2PropertyValue('LinearSoundInterpolation',GlobalSet.values['LinearSoundInterpolation']);
      SetConfig2PropertyValue('UseGlBleginGlEnd',GlobalSet.values['UseGlBleginGlEnd']);
      SetConfig2PropertyValue('Port1',GlobalSet.values['Port1']);
      SetConfig2PropertyValue('Port2',GlobalSet.values['Port2']);
      SetConfig2PropertyValue('Bcast',GlobalSet.values['Bcast']);
      SetConfig2PropertyValue('OpenGL1',GlobalSet.values['OpenGL1']);
      Conf2.SaveToFile(path2se);
    end
  else
    begin
      //language
      nfsini.WriteString('NFS'+nfs,'Language',GlobalSet.values['Language']);
      //graphic
      nfsini.WriteString('NFS'+nfs,'NoMovies',GlobalSet.values['NoMovies']);
      //thrashdriver
      nfsini.WriteString('NFS'+nfs,'ThrashDriver',GlobalSet.values['ThrashDriver']);
      if Form6.CheckBox3.Checked=true then
        begin
          //nglide - thrash
          nglide.WriteString('THRASH','File',GlobalSet.values['nGlide_File']);
          nglide.WriteString('THRASH','Type',GlobalSet.values['nGlide_Type']);
          nglide.WriteString('THRASH','FogSupport',GlobalSet.values['nGlide_FogSupport']);
          //dgvoodoo - thrash
          dgvoodoo.WriteString('THRASH','File',GlobalSet.values['dgVoodoo_File']);
          dgvoodoo.WriteString('THRASH','Type',GlobalSet.values['dgVoodoo_Type']);
          dgvoodoo.WriteString('THRASH','FogSupport',GlobalSet.values['dgVoodoo_FogSupport']);
          //dx6 - thrash
          dx6.WriteString('THRASH','File',GlobalSet.values['DirectX6_File']);
          dx6.WriteString('THRASH','Type',GlobalSet.values['DirectX6_Type']);
          dx6.WriteString('THRASH','FogSupport',GlobalSet.values['DirectX6_FogSupport']);
          //dx7 - thrash
          dx7.WriteString('THRASH','File',GlobalSet.values['DirectX7_File']);
          dx7.WriteString('THRASH','Type',GlobalSet.values['DirectX7_Type']);
          dx7.WriteString('THRASH','FogSupport',GlobalSet.values['DirectX7_FogSupport']);
          //dx8 - thrash
          dx8.WriteString('THRASH','File',GlobalSet.values['DirectX8_File']);
          dx8.WriteString('THRASH','Type',GlobalSet.values['DirectX8_Type']);
          dx8.WriteString('THRASH','FogSupport',GlobalSet.values['DirectX8_FogSupport']);
          //softtri - thrash
          softtri.WriteString('THRASH','File',GlobalSet.values['SoftTri_File']);
          softtri.WriteString('THRASH','Type',GlobalSet.values['SoftTri_Type']);
          //glide3x - thrash
          glide3x.WriteString('THRASH','File',GlobalSet.values['Glide3x_File']);
          glide3x.WriteString('THRASH','Type',GlobalSet.values['Glide3x_Type']);
          glide3x.WriteString('THRASH','FogSupport',GlobalSet.values['Glide3x_FogSupport']);
          glide3x.WriteString('ENV','FX_GLIDE_NO_SPLASH',GlobalSet.values['Glide3x_FX_GLIDE_NO_SPLASH']);
        end;
      //nglide
      if GlobalSet.values['globalNGlide']='1' then
        nglide.EraseSection('ENV')
      else
        begin
          nglide.WriteString('ENV','NGLIDE_RESOLUTION',GlobalSet.values['NGLIDE_RESOLUTION']);
          nglide.WriteString('ENV','NGLIDE_ASPECT',GlobalSet.values['NGLIDE_ASPECT']);
          nglide.WriteString('ENV','NGLIDE_REFRESH',GlobalSet.values['NGLIDE_REFRESH']);
          nglide.WriteString('ENV','NGLIDE_VSYNC',GlobalSet.values['NGLIDE_VSYNC']);
          nglide.WriteString('ENV','NGLIDE_GAMMA',GlobalSet.values['NGLIDE_GAMMA']);
          nglide.WriteString('ENV','NGLIDE_SPLASH',GlobalSet.values['NGLIDE_SPLASH']);
        end;
      //program
      nfsini.WriteString('NFS'+nfs,'OwnHeapLimitMb',GlobalSet.values['OwnHeapLimitMb']);
      nfsini.WriteString('NFS'+nfs,'SingleProcAffinity',GlobalSet.values['SingleProcAffinity']);
      nfsini.WriteString('NFS'+nfs,'NoErrorReporting',GlobalSet.values['NoErrorReporting']);
      nfsini.WriteString('NFS'+nfs,'Prefer32bitModes',GlobalSet.values['Prefer32bitModes']);
      nfsini.WriteString('NFS'+nfs,'WindowedMode',GlobalSet.values['WindowedMode']);
      //only in nfs3
      if nfs='3' then
        begin
          //graphic
          nfsini.WriteString('NFS'+nfs,'Hide16bitModes',GlobalSet.values['Hide16bitModes']);
          nfsini.WriteString('NFS'+nfs,'Use32bitModeInMenu',GlobalSet.values['Use32bitModeInMenu']);
          nfsini.WriteString('NFS'+nfs,'IntroSplashTime',GlobalSet.values['IntroSplashTime']);
          nfsini.WriteString('NFS'+nfs,'LoadingSplashTime',GlobalSet.values['LoadingSplashTime']);
          nfsini.WriteString('NFS'+nfs,'AllowHugeTextures',GlobalSet.values['AllowHugeTextures']);
          if Form6.CheckBox3.Checked=true then
            begin
              //dx5 - thrash
              dx5.WriteString('THRASH','File',GlobalSet.values['DirectX5_File']);
              dx5.WriteString('THRASH','Type',GlobalSet.values['DirectX5_Type']);
              dx5.WriteString('DDRAW','DisableMaxWindowedMode',GlobalSet.values['DirectX5_DisableMaxWindowedMode']);
              dx5.WriteString('DDRAW','NoDwmOffForPrimaryLock',GlobalSet.values['DirectX5_NoDwmOffForPrimaryLock']);
              //dx6 - thrash
              dx6.WriteString('DDRAW','DisableMaxWindowedMode',GlobalSet.values['DirectX6_DisableMaxWindowedMode']);
              dx6.WriteString('DDRAW','NoDwmOffForPrimaryLock',GlobalSet.values['DirectX6_NoDwmOffForPrimaryLock']);
              //dx7 - thrash
              dx7.WriteString('DDRAW','DisableMaxWindowedMode',GlobalSet.values['DirectX7_DisableMaxWindowedMode']);
              dx7.WriteString('DDRAW','NoDwmOffForPrimaryLock',GlobalSet.values['DirectX7_NoDwmOffForPrimaryLock']);
              //softtri - thrash
              softtri.WriteString('DDRAW','DisableMaxWindowedMode',GlobalSet.values['SoftTri_DisableMaxWindowedMode']);
              softtri.WriteString('DDRAW','NoDwmOffForPrimaryLock',GlobalSet.values['SoftTri_NoDwmOffForPrimaryLock']);
            end;
          //program
          nfsini.WriteString('NFS'+nfs,'PreventMinimize',GlobalSet.values['PreventMinimize']);
          //screenshoter
          nfsini.WriteString('NFS'+nfs,'ScreenshoterEnabled',GlobalSet.values['ScreenshoterEnabled']);
          nfsini.WriteString('NFS'+nfs,'ScreenshoterFormat',GlobalSet.values['ScreenshoterFormat']);
        end;
      //only in nfs4
      if nfs='4' then
        begin
          //program
          nfsini.WriteString('NFS'+nfs,'Variant',GlobalSet.values['Variant']);
          if Form6.CheckBox3.Checked=true then
            begin
              //dx6 - thrash
              dx6.WriteString('THRASH','DirectDrawLagFix',GlobalSet.values['DirectX6_DirectDrawLagFix']);
              //dx7 - thrash
              dx7.WriteString('THRASH','DirectDrawLagFix',GlobalSet.values['DirectX7_DirectDrawLagFix']);
              //softtri - thrash
              softtri.WriteString('THRASH','DirectDrawLagFix',GlobalSet.values['SoftTri_DirectDrawLagFix']);
            end;
        end;
    end;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  //nfs2
  if (nfs='2') then
    begin
    end
  else
    begin
      nfsini.Free;
      nglide.Free;
      dgvoodoo.Free;
      dx5.Free;
      dx6.Free;
      dx7.Free;
      dx8.Free;
      softtri.Free;
      glide3x.Free;
    end;
  setupini.Free;
  Form1.Close;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
var
  gl: string;
begin
  Save(Sender);
  BitBtn2Click(Sender);
  gl:='';
  if (nfs='2') then
    if (CheckBox24.Checked) then
      gl:='se-gl1' else gl:='se';
  ShellExecute(handle, nil, PChar('nfs'+nfs+gl+'.exe'), nil, nil, SW_NORMAL);
end;

procedure TForm1.SaveOptions(Sender: TObject);
begin
  //save setup options internally
  SetupSet.values['Language']:=Form6.ComboBox1.Text;
  SetupSet.values['IntroSound']:=IntToStr(Integer(Form6.CheckBox2.Checked));
  SetupSet.values['Nick']:=Form6.Edit1.Text;
  SetupSet.values['AdditinalInfo']:=Form6.Edit2.Text;
  SetupSet.values['Anonymous']:=IntToStr(Integer(Form6.CheckBox1.Checked));
  SetupSet.values['IconSet']:='1';
  if Form6.RadioButton2.Checked then
    SetupSet.values['IconSet']:='2'
  else if Form6.RadioButton3.Checked then
    SetupSet.values['IconSet']:='0';
  if not (Form6.Label6.Caption='Not Selected') then
    SetupSet.values['CustomIcon']:=Form6.Label6.Caption;
  SetupSet.values['SaveAdvancedThrash']:=IntToStr(Integer(Form6.CheckBox3.Checked));
  //save setup options to ini
  setupini.WriteString('Options','Language',SetupSet.values['Language']);
  setupini.WriteString('Options','IntroSound',SetupSet.values['IntroSound']);
  setupini.WriteString('Options','Nick',SetupSet.values['Nick']);
  setupini.WriteString('Options','AdditinalInfo',SetupSet.values['AdditinalInfo']);
  setupini.WriteString('Options','Anonymous',SetupSet.values['Anonymous']);
  setupini.WriteString('Options','IconSet',SetupSet.values['IconSet']);
  setupini.WriteString('Options','CustomIcon',SetupSet.values['CustomIcon']);
  setupini.WriteString('Options','SaveAdvancedThrash',SetupSet.values['SaveAdvancedThrash']);
  //set new values
  LoadMainIcon(Sender);
end;

procedure TForm1.SaveGlobalSetValues(Sender: TObject);
var
  lang, driver, format, textures: string;
begin
  //language
  lang:='english';
  if RadioButton2.Checked
    then lang:='german'
  else if RadioButton3.Checked
    then lang:='french'
  else if RadioButton4.Checked
    then lang:='spanish'
  else if RadioButton5.Checked
    then lang:='italian'
  else if RadioButton6.Checked
    then lang:='swedish';
  GlobalSet.values['Language']:=lang;
  //nfs2
  if (nfs='2') then
    begin
      GlobalSet.values['UseOnlyOneCPU']:=IntToStr(Integer(CheckBox15.Checked));
      GlobalSet.values['StartInFullScreen']:=IntToStr(Integer(CheckBox20.Checked));
      if (CheckBox14.Checked) then
        if (CheckBox18.Checked) then
          GlobalSet.values['VSync']:=IntToStr(SpinEdit3.Value)
        else GlobalSet.values['VSync']:='1'
      else
        if (CheckBox14.State=cbGrayed) then
          GlobalSet.values['VSync']:='-1'
        else GlobalSet.values['VSync']:='0';
      if (CheckBox19.Checked) then
        GlobalSet.values['MSAA']:=ComboBox4.Text
      else
        if (CheckBox19.State=cbGrayed) then
          GlobalSet.values['MSAA']:='0'
        else GlobalSet.values['MSAA']:='1';
      GlobalSet.values['UseWindowSizeForFullScreen']:=IntToStr(Integer(CheckBox16.Checked));
      if (ComboBox3.ItemIndex=0) then
        GlobalSet.values['WindowSize']:=IntToStr(SpinEdit6.Value)+'x'+IntToStr(SpinEdit7.Value)
      else
        GlobalSet.values['WindowSize']:=ComboBox3.Text;
      GlobalSet.values['KeepAspectRatio']:=IntToStr(Integer(CheckBox17.Checked));
      //GlobalSet.values['Joystick0AxisValueShift'];
      //GlobalSet.values['Joystick1AxisValueShift'];
      //GlobalSet.values['Joystick0Axes'];
      //GlobalSet.values['Joystick1Axes'];
      //GlobalSet.values['Joystick0Buttons'];
      //GlobalSet.values['Joystick1Buttons'];
      //GlobalSet.values['Joystick0EscButton'];
      //GlobalSet.values['UseSpringForceFeedbackEffect'];
      //GlobalSet.values['WindowsForceFeedbackDevice'];
      GlobalSet.values['LinearSoundInterpolation']:=IntToStr(Integer(CheckBox21.Checked));
      GlobalSet.values['UseGlBleginGlEnd']:=IntToStr(Integer(CheckBox22.Checked));
      GlobalSet.values['Port1']:=IntToStr(SpinEdit8.Value);
      GlobalSet.values['Port2']:=IntToStr(SpinEdit9.Value);
      GlobalSet.values['Bcast']:=Edit1.Text+'.'+Edit2.Text+'.'+Edit3.Text+'.'+Edit4.Text;
      GlobalSet.values['OpenGL1']:=IntToStr(Integer(CheckBox24.Checked));
    end
  else
    begin
      //nfs3/4
      //graphic
      GlobalSet.values['NoMovies']:=IntToStr(Integer(CheckBox1.Checked));
      //thrashdriver
      if RadioButton11.Checked
        then driver:='nglide'
      else if RadioButton12.Checked
        then driver:='dgvoodoo'
      else if RadioButton13.Checked
        then driver:='dx6'
      else if RadioButton14.Checked
        then driver:='dx7'
      else if RadioButton15.Checked
        then driver:='dx8'
      else if RadioButton16.Checked
        then driver:='dx5'
      else if RadioButton17.Checked
        then driver:='softtri'
      else if RadioButton18.Checked
        then driver:='glide3x'
      else if RadioButton22.Checked
        then driver:=ComboBox2.Text
      else driver:='nglide';
      GlobalSet.values['ThrashDriver']:=driver;
      //nglide
      GlobalSet.values['globalNGlide']:=IntToStr(Integer(Form2.CheckBox1.Checked));
      GlobalSet.values['NGLIDE_RESOLUTION']:=IntToStr(Form2.ComboBox1.ItemIndex);
      GlobalSet.values['NGLIDE_ASPECT']:=IntToStr(Form2.ComboBox2.ItemIndex);
      GlobalSet.values['NGLIDE_REFRESH']:=IntToStr(Form2.ComboBox3.ItemIndex);
      GlobalSet.values['NGLIDE_VSYNC']:=IntToStr(Form2.ComboBox4.ItemIndex);
      GlobalSet.values['NGLIDE_GAMMA']:=IntToStr(Form2.ComboBox5.ItemIndex);
      GlobalSet.values['NGLIDE_SPLASH']:=IntToStr(Form2.ComboBox6.ItemIndex);
      //program
      GlobalSet.values['OwnHeapLimitMb']:=IntToStr(SpinEdit4.Value);
      GlobalSet.values['NoErrorReporting']:=IntToStr(Integer(CheckBox8.Checked));
      GlobalSet.values['SingleProcAffinity']:=IntToStr(Integer(CheckBox7.Checked));
      GlobalSet.values['Prefer32bitModes']:=IntToStr(Integer(CheckBox13.Checked));
      GlobalSet.values['WindowedMode']:=IntToStr(Integer(CheckBox12.Checked));
      //only in nfs3
      if nfs='3' then
        begin
          //graphic
          GlobalSet.values['Hide16bitModes']:=IntToStr(Integer(CheckBox2.Checked));
          GlobalSet.values['Use32bitModeInMenu']:=IntToStr(Integer(CheckBox3.Checked));
          GlobalSet.values['IntroSplashTime']:=IntToStr(SpinEdit1.Value);
          GlobalSet.values['LoadingSplashTime']:=IntToStr(SpinEdit2.Value);
          textures:='0';
          if RadioButton8.Checked
            then textures:='1'
          else if RadioButton9.Checked
            then textures:='2'
          else if RadioButton10.Checked
            then textures:='3';
          //program
          GlobalSet.values['AllowHugeTextures']:=textures;
          GlobalSet.values['PreventMinimize']:=IntToStr(Integer(CheckBox9.Checked));
          //screenshoter
          GlobalSet.values['ScreenshoterEnabled']:=IntToStr(Integer(CheckBox10.Checked));
          format:='png';
          if RadioButton20.Checked
            then format:='jpg@'+inttostr(SpinEdit5.Value)
          else if RadioButton21.Checked
            then format:='bmp';
          GlobalSet.values['ScreenshoterFormat']:=format;
        end;
      //only in nfs4
      if nfs='4' then
        begin
          GlobalSet.values['Variant']:=IntToStr(Integer(CheckBox11.Checked));
        end;
    end;
end;

procedure TForm1.SaveDefaultGlobalSetValues(Sender: TObject);
begin
  //language
  GlobalSet.values['Language']:='english';
  //nfs2
  if (nfs='2') then
    begin
      GlobalSet.values['UseOnlyOneCPU']:='1';
      GlobalSet.values['StartInFullScreen']:='1';
      GlobalSet.values['VSync']:='1';
      GlobalSet.values['MSAA']:='0';
      GlobalSet.values['UseWindowSizeForFullScreen']:='0';
      GlobalSet.values['WindowSize']:='640x480';
      GlobalSet.values['KeepAspectRatio']:='1';
      GlobalSet.values['Joystick0AxisValueShift']:='8448';
      GlobalSet.values['Joystick1AxisValueShift']:='8448';
      GlobalSet.values['Joystick0Axes']:='0,12,13,14:0,1,1,1';
      GlobalSet.values['Joystick1Axes']:='0,12,13,14:0,1,1,1';
      GlobalSet.values['Joystick0Buttons']:='0,15,16,3,4,5,6,7,-1,-1,-1,11,12,13,14';
      GlobalSet.values['Joystick1Buttons']:='0,15,16,3,4,5,6,7,-1,-1,-1,11,12,13,14';
      GlobalSet.values['Joystick0EscButton']:='-1';
      GlobalSet.values['UseSpringForceFeedbackEffect']:='0';
      GlobalSet.values['WindowsForceFeedbackDevice']:='-1';
      GlobalSet.values['LinearSoundInterpolation']:='0';
      GlobalSet.values['UseGlBleginGlEnd']:='0';
      GlobalSet.values['Port1']:='1030';
      GlobalSet.values['Port2']:='1029';
      GlobalSet.values['Bcast']:='255.255.255.255';
      GlobalSet.values['OpenGL1']:='0';
    end
  else
    begin
      //graphic
      GlobalSet.values['NoMovies']:='0';
      //nglide - thrash
      GlobalSet.values['nGlide_File']:='voodoo2a.dll';
      GlobalSet.values['nGlide_Type']:='voodoo';
      GlobalSet.values['nGlide_FogSupport']:='1';
      //dgvoodoo - thrash
      GlobalSet.values['dgVoodoo_File']:='voodoo2a.dll';
      GlobalSet.values['dgVoodoo_Type']:='voodoo';
      GlobalSet.values['dgVoodoo_FogSupport']:='1';
      //dx6 - thrash
      GlobalSet.values['DirectX6_File']:='dx6a.dll';
      GlobalSet.values['DirectX6_Type']:='d3d';
      GlobalSet.values['DirectX6_FogSupport']:='1';
      //dx7 - thrash
      GlobalSet.values['DirectX7_File']:='dx7a.dll';
      GlobalSet.values['DirectX7_Type']:='d3d';
      GlobalSet.values['DirectX7_FogSupport']:='1';
      //dx8 - thrash
      GlobalSet.values['DirectX8_File']:='dx8a.dll';
      GlobalSet.values['DirectX8_Type']:='d3d';
      GlobalSet.values['DirectX8_FogSupport']:='1';
      //softtri - thrash
      GlobalSet.values['SoftTri_File']:='softtria.dll';
      GlobalSet.values['SoftTri_Type']:='software';
      //glide3x - thrash
      GlobalSet.values['Glide3x_File']:='voodoo2a.dll';
      GlobalSet.values['Glide3x_Type']:='voodoo';
      GlobalSet.values['Glide3x_FogSupport']:='1';
      GlobalSet.values['Glide3x_FX_GLIDE_NO_SPLASH']:='0';
      //nglide
      GlobalSet.values['globalNGlide']:='0';
      GlobalSet.values['NGLIDE_RESOLUTION']:='0';
      GlobalSet.values['NGLIDE_ASPECT']:='0';
      GlobalSet.values['NGLIDE_REFRESH']:='0';
      GlobalSet.values['NGLIDE_VSYNC']:='1';
      GlobalSet.values['NGLIDE_GAMMA']:='5';
      GlobalSet.values['NGLIDE_SPLASH']:='0';
      //program
      GlobalSet.values['NoErrorReporting']:='0';
      GlobalSet.values['Prefer32bitModes']:='0';
      GlobalSet.values['WindowedMode']:='0';
      //only in nfs3
      if nfs='3' then
        begin
          //graphic
          GlobalSet.values['Hide16bitModes']:='0';
          GlobalSet.values['Use32bitModeInMenu']:='0';
          GlobalSet.values['IntroSplashTime']:='0';
          GlobalSet.values['LoadingSplashTime']:='5';
          GlobalSet.values['AllowHugeTextures']:='0';
          //thrashdriver
          GlobalSet.values['ThrashDriver']:='nglide';
          //dx5 - thrash
          GlobalSet.values['DirectX5_File']:='dx5a.dll';
          GlobalSet.values['DirectX5_Type']:='d3d';
          GlobalSet.values['DirectX5_DisableMaxWindowedMode']:='0';
          GlobalSet.values['DirectX5_NoDwmOffForPrimaryLock']:='0';
          //dx6 - thrash
          GlobalSet.values['DirectX6_DisableMaxWindowedMode']:='0';
          GlobalSet.values['DirectX6_NoDwmOffForPrimaryLock']:='0';
          //dx7 - thrash
          GlobalSet.values['DirectX7_DisableMaxWindowedMode']:='0';
          GlobalSet.values['DirectX7_NoDwmOffForPrimaryLock']:='0';
          //softtri - thrash
          GlobalSet.values['SoftTri_DisableMaxWindowedMode']:='0';
          GlobalSet.values['SoftTri_NoDwmOffForPrimaryLock']:='0';
          //program
          GlobalSet.values['OwnHeapLimitMb']:='32';
          GlobalSet.values['SingleProcAffinity']:='0';
          GlobalSet.values['PreventMinimize']:='0';
          //screenshoter
          GlobalSet.values['ScreenshoterEnabled']:='1';
          GlobalSet.values['ScreenshoterFormat']:='png';
        end;
      //only in nfs4
      if nfs='4' then
        begin
          //thrashdriver
          GlobalSet.values['ThrashDriver']:='dx7';
          //dx6 - thrash
          GlobalSet.values['DirectX6_DirectDrawLagFix']:='1';
          //dx7 - thrash
          GlobalSet.values['DirectX7_DirectDrawLagFix']:='1';
          //softtri - thrash
          GlobalSet.values['SoftTri_DirectDrawLagFix']:='1';
          //program
          GlobalSet.values['Variant']:='0';
          GlobalSet.values['OwnHeapLimitMb']:='64';
          GlobalSet.values['SingleProcAffinity']:='1';
        end;
    end;
    GlobalSet.Sort;
end;

procedure TForm1.LoadFromGlobalSetValues(Sender: TObject);
var
  lang, driver, textures: string;
  res, msaa, vsync: integer;
  format, reslist, blist: TStringList;
begin
  //language
  lang:=GlobalSet.values['Language'];
  if lang='english'
    then RadioButton1.Checked:=true
  else if lang='german'
    then RadioButton2.Checked:=true
  else if lang='french'
    then RadioButton3.Checked:=true
  else if lang='spanish'
    then RadioButton4.Checked:=true
  else if lang='italian'
    then RadioButton5.Checked:=true
  else if lang='swedish'
    then RadioButton6.Checked:=true;
  //nfs2
  if (nfs='2') then
    begin
      CheckBox15.Checked:=Boolean(StrToInt(GlobalSet.values['UseOnlyOneCPU']));
      CheckBox20.Checked:=Boolean(StrToInt(GlobalSet.values['StartInFullScreen']));
      vsync:=StrToInt(GlobalSet.values['VSync']);
      CheckBox14.Checked:=false;
      CheckBox18.Checked:=false;
      if (vsync<0) then CheckBox14.State:=cbGrayed;
      if (vsync>0) then CheckBox14.Checked:=true;
      if (vsync>1) then
        begin
          CheckBox18.Checked:=true;
          SpinEdit3.Value:=vsync;
        end;
      CheckBox14Click(Sender);
      msaa:=StrToInt(GlobalSet.values['MSAA']);
      if (msaa>1) then
        begin
          CheckBox19.Checked:=true;
          ComboBox4.ItemIndex:=ComboBox4.Items.IndexOf(GlobalSet.values['MSAA']);
        end
      else
        begin
          CheckBox19.Checked:=false;
          if (msaa=0) then CheckBox19.State:=cbGrayed;
        end;
      CheckBox19Click(Sender);
      CheckBox16.Checked:=Boolean(StrToInt(GlobalSet.values['UseWindowSizeForFullScreen']));
      res:=ComboBox3.Items.IndexOf(GlobalSet.values['WindowSize']);
      if (res=-1) then
        begin
          res:=0;
          reslist:=TStringList.Create;
          reslist.Delimiter:='x';
          reslist.DelimitedText:=GlobalSet.values['WindowSize'];
          SpinEdit6.Value:=StrToInt(reslist[0]);
          SpinEdit7.Value:=StrToInt(reslist[1]);
        end;
      ComboBox3.ItemIndex:=res;
      ComboBox3Change(Sender);
      CheckBox17.Checked:=Boolean(StrToInt(GlobalSet.values['KeepAspectRatio']));
      //GlobalSet.values['Joystick0AxisValueShift'];
      //GlobalSet.values['Joystick1AxisValueShift'];
      //GlobalSet.values['Joystick0Axes'];
      //GlobalSet.values['Joystick1Axes'];
      //GlobalSet.values['Joystick0Buttons'];
      //GlobalSet.values['Joystick1Buttons'];
      //GlobalSet.values['Joystick0EscButton'];
      //GlobalSet.values['UseSpringForceFeedbackEffect'];
      //GlobalSet.values['WindowsForceFeedbackDevice'];
      CheckBox21.Checked:=Boolean(StrToInt(GlobalSet.values['LinearSoundInterpolation']));
      CheckBox22.Checked:=Boolean(StrToInt(GlobalSet.values['UseGlBleginGlEnd']));
      SpinEdit8.Value:=StrToInt(GlobalSet.values['Port1']);
      SpinEdit9.Value:=StrToInt(GlobalSet.values['Port2']);
      blist:=TStringList.Create;
      blist.Delimiter:='.';
      blist.DelimitedText:=GlobalSet.values['Bcast'];
      Edit1.Text:=blist[0];
      Edit2.Text:=blist[1];
      Edit3.Text:=blist[2];
      Edit4.Text:=blist[3];
      CheckBox24.Checked:=Boolean(StrToInt(GlobalSet.values['OpenGL1']));
    end
  else
    begin
      //nfs3/4
      //graphic
      CheckBox1.Checked:=Boolean(StrToInt(GlobalSet.values['NoMovies']));
      //thrashdriver
      driver:=GlobalSet.values['ThrashDriver'];
      if driver='nglide'
        then RadioButton11.Checked:=true
      else if driver='dgvoodoo'
        then RadioButton12.Checked:=true
      else if driver='dx6'
        then RadioButton13.Checked:=true
      else if driver='dx7'
        then RadioButton14.Checked:=true
      else if driver='dx8'
        then RadioButton15.Checked:=true
      else if driver='dx5'
        then RadioButton16.Checked:=true
      else if driver='softtri'
        then RadioButton17.Checked:=true
      else if driver='glide3x'
        then RadioButton18.Checked:=true
      else begin
        RadioButton22.Checked:=true;
        ComboBox2.ItemIndex:=ComboBox2.Items.IndexOf(driver);
      end;
      //nglide
      Form2.CheckBox1.Checked:=Boolean(StrToInt(GlobalSet.values['globalNGlide']));
      CheckBox4.Checked:=Boolean(StrToInt(GlobalSet.values['NGLIDE_RESOLUTION']));
      CheckBox5.Checked:=Boolean(StrToInt(GlobalSet.values['NGLIDE_ASPECT']));
      CheckBox6.Checked:=Boolean(StrToInt(GlobalSet.values['NGLIDE_VSYNC']));
      ComboBox1.ItemIndex:=StrToInt(GlobalSet.values['NGLIDE_GAMMA']);
      TrackBar1.Position:=StrToInt(GlobalSet.values['NGLIDE_GAMMA']);
      Form2.ComboBox1.ItemIndex:=StrToInt(GlobalSet.values['NGLIDE_RESOLUTION']);
      Form2.ComboBox2.ItemIndex:=StrToInt(GlobalSet.values['NGLIDE_ASPECT']);
      Form2.ComboBox3.ItemIndex:=StrToInt(GlobalSet.values['NGLIDE_REFRESH']);
      Form2.ComboBox4.ItemIndex:=StrToInt(GlobalSet.values['NGLIDE_VSYNC']);
      Form2.ComboBox5.ItemIndex:=StrToInt(GlobalSet.values['NGLIDE_GAMMA']);
      Form2.ComboBox6.ItemIndex:=StrToInt(GlobalSet.values['NGLIDE_SPLASH']);
      //program
      CheckBox7.Checked:=Boolean(StrToInt(GlobalSet.values['SingleProcAffinity']));
      CheckBox8.Checked:=Boolean(StrToInt(GlobalSet.values['NoErrorReporting']));
      CheckBox13.Checked:=Boolean(StrToInt(GlobalSet.values['Prefer32bitModes']));
      CheckBox12.Checked:=Boolean(StrToInt(GlobalSet.values['WindowedMode']));
      SpinEdit4.Value:=StrToInt(GlobalSet.values['OwnHeapLimitMb']);
      TrackBar3.Position:=StrToInt(GlobalSet.values['OwnHeapLimitMb']);
      //only in nfs3
      if nfs='3' then
        begin
          //graphic
          CheckBox2.Checked:=Boolean(StrToInt(GlobalSet.values['Hide16bitModes']));
          CheckBox3.Checked:=Boolean(StrToInt(GlobalSet.values['Use32bitModeInMenu']));
          SpinEdit1.Value:=StrToInt(GlobalSet.values['IntroSplashTime']);
          SpinEdit2.Value:=StrToInt(GlobalSet.values['LoadingSplashTime']);
            textures:=GlobalSet.values['AllowHugeTextures'];
          if textures='0'
            then RadioButton7.Checked:=true
          else if textures='1'
            then RadioButton8.Checked:=true
          else if textures='2'
              then RadioButton9.Checked:=true
          else if textures='3'
            then RadioButton10.Checked:=true;
          //program
          CheckBox9.Checked:=Boolean(StrToInt(GlobalSet.values['PreventMinimize']));
          //screenshoter
          CheckBox10.Checked:=Boolean(StrToInt(GlobalSet.values['ScreenshoterEnabled']));
          SpinEdit5.Value:=80;
          TrackBar2.Position:=80;
          format:=TStringList.Create;
          format.Delimiter:='@';
          format.DelimitedText:=GlobalSet.values['ScreenshoterFormat'];
          if format[0]='png' then
            RadioButton19.Checked:=true
          else if format[0]='bmp' then
            RadioButton21.Checked:=true
          else if format[0]='jpg' then
            begin
              RadioButton20.Checked:=true;
              SpinEdit5.Value:=StrToInt(format[1]);
              TrackBar2.Position:=StrToInt(format[1]);
            end;
        end;
      //only in nfs4
      if nfs='4' then
        begin
          CheckBox11.Checked:=Boolean(StrToInt(GlobalSet.values['Variant']));
        end;
    end;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  SaveDefaultGlobalSetValues(Sender);
  LoadFromGlobalSetValues(Sender);
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  buttonSelected: Integer;
begin
  if RadioButton22.Checked=false then
    begin
      //nglide
      if RadioButton11.Checked=true then
        Form3.DisplayThrashValues('nGlide');
      //dgvoodoo
      if RadioButton12.Checked=true then
        Form3.DisplayThrashValues('dgVoodoo');
      //dx6
      if RadioButton13.Checked=true then
        Form3.DisplayThrashValues('DirectX6');
      //dx7
      if RadioButton14.Checked=true then
        Form3.DisplayThrashValues('DirectX7');
      //dx8
      if RadioButton15.Checked=true then
        Form3.DisplayThrashValues('DirectX8');
      //dx5
      if RadioButton16.Checked=true then
        Form3.DisplayThrashValues('DirectX5');
      //softtri
      if RadioButton17.Checked=true then
        Form3.DisplayThrashValues('SoftTri');
      //glide3x
      if RadioButton18.Checked=true then
        Form3.DisplayThrashValues('Glide3x');
      buttonSelected:=mrNo;
      if Form6.CheckBox3.Checked=false then
        begin
          messagebeep(MB_ICONINFORMATION);
          buttonSelected:= MessageDlg('Do you want to enable'+#13#10+'saving advanced trash settings?',mtConfirmation,[mbYes,mbNO], 0);
        end;
      if buttonSelected=mrYes then
        Form6.CheckBox3.Checked:=true;
      Form3.Show;
    end;
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  ComboBox1.ItemIndex:=TrackBar1.Position;
  Form2.ComboBox5.ItemIndex:=TrackBar1.Position;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  TrackBar1.Position:=ComboBox1.ItemIndex;
  Form2.ComboBox5.ItemIndex:=ComboBox1.ItemIndex;
end;

procedure TForm1.CheckBox10Click(Sender: TObject);
begin
  if (Checkbox10.Checked = true) then
    begin
      RadioButton19.Enabled := true;
      RadioButton20.Enabled := true;
      RadioButton21.Enabled := true;
      SpinEdit5.Enabled := true;
      TrackBar2.Enabled := true;
    end
  else
    begin
      RadioButton19.Enabled := false;
      RadioButton20.Enabled := false;
      RadioButton21.Enabled := false;
      SpinEdit5.Enabled := false;
      TrackBar2.Enabled := false;
    end;
end;

procedure TForm1.SpinEdit5Change(Sender: TObject);
begin
  TrackBar2.Position := SpinEdit5.Value;
end;

procedure TForm1.TrackBar2Change(Sender: TObject);
begin
  SpinEdit5.Value := TrackBar2.Position;
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
begin
  Form2.Show; 
end;

procedure TForm1.CheckBox4Click(Sender: TObject);
begin
  if CheckBox4.Checked=true then
    Form2.ComboBox1.ItemIndex:=1
  else
    Form2.ComboBox1.ItemIndex:=0;
end;

procedure TForm1.CheckBox5Click(Sender: TObject);
begin
  if CheckBox5.Checked=true then
    Form2.ComboBox2.ItemIndex:=1
  else
    Form2.ComboBox2.ItemIndex:=0;
end;

procedure TForm1.CheckBox6Click(Sender: TObject);
begin
  if CheckBox6.Checked=true then
    Form2.ComboBox4.ItemIndex:=1
  else
    Form2.ComboBox4.ItemIndex:=0;
end;

procedure TForm1.TrackBar3Change(Sender: TObject);
begin
  SpinEdit4.Value:=TrackBar3.Position;
end;

procedure TForm1.SpinEdit4Change(Sender: TObject);
begin
  TrackBar3.Position:=SpinEdit4.Value;
end;

procedure TForm1.RadioButton22Click(Sender: TObject);
begin
  Button1.Enabled:=false;
  ComboBox2.Enabled:=true;
  Button3.Enabled:=true;
end;

procedure TForm1.RadioButton11Click(Sender: TObject);
begin
  Button1.Enabled:=true;
  ComboBox2.Enabled:=false;
  Button3.Enabled:=false;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Form10.Show;
end;

procedure TForm1.GetBuildInfo(var V1, V2, V3, V4: word);
var
  VerInfoSize, VerValueSize, Dummy: DWORD;
  VerInfo: Pointer;
  VerValue: PVSFixedFileInfo;
begin
  VerInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), Dummy);
  if VerInfoSize > 0 then
  begin
      GetMem(VerInfo, VerInfoSize);
      try
        if GetFileVersionInfo(PChar(ParamStr(0)), 0, VerInfoSize, VerInfo) then
        begin
          VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
          with VerValue^ do
          begin
            V1 := dwFileVersionMS shr 16;
            V2 := dwFileVersionMS and $FFFF;
            V3 := dwFileVersionLS shr 16;
            V4 := dwFileVersionLS and $FFFF;
          end;
        end;
      finally
        FreeMem(VerInfo, VerInfoSize);
      end;
  end;
end;

function TForm1.GetBuildInfoAsString: string;
var
  V1, V2, V3, V4: word;
begin
  GetBuildInfo(V1, V2, V3, V4);
  Result := IntToStr(V1) + '.' + IntToStr(V2) + '.' +
    IntToStr(V3) + '.' + IntToStr(V4);
end;

function TForm1.RetunDefValueIfNone(value, default: string): string;
begin
  if (value='')
    then Result:=default
    else Result:=value;
end;

procedure TForm1.SaveNfs2SeWrapperInstallWin(lang: string);
var
  installwin: TStringList;
begin
  installwin:=TStringList.Create;
  installwin.Add('4nn'+lang);
  installwin.Add('4nnlocal');
  installwin.Add('0rn.\gamedata\sim\ai\');
  installwin.Add('1rn.\gamedata\sim\cardata\');
  installwin.Add('0rn.\gamedata\sim\aicardt\');
  installwin.Add('3rn');
  installwin.Add('3rn');
  installwin.Add('3rn.\gamedata\tracks\se\');
  installwin.Add('0rn.\gamedata\tmptrk\');
  installwin.Add('0rn.\gamedata\tracks\data\pc\');
  installwin.Add('0rn.\gamedata\tracks\speeds\');
  installwin.Add('3nn');
  installwin.Add('1rn.\gamedata\carmodel\pc\');
  installwin.Add('1rn.\gamedata\render\pc\');
  installwin.Add('1rn.\gamedata\dashhud\pc\');
  installwin.Add('3nn.\gamedata\audio\pc\');
  installwin.Add('2rn.\gamedata\audio\sfx\pc\');
  installwin.Add('0rn.\gamedata\prefs\pc\');
  installwin.Add('0rn.\gamedata\force\');
  installwin.Add('0rn.\gamedata\pause\');
  installwin.Add('1rn.\fedata\pc\art\');
  installwin.Add('1rn.\fedata\pc\text\');
  installwin.Add('1rn.\fedata\pc\text\');
  installwin.Add('0rn.\fedata\pc\save\');
  installwin.Add('0rn.\fedata\pc\stats\');
  installwin.Add('0rn.\fedata\pc\config\');
  installwin.Add('3nl.\fedata\pc\audio\');
  installwin.Add('2nn.\fedata\pc\art\slides\');
  installwin.Add('2nn.\fedata\pc\art\track\');
  installwin.Add('3nn.\fedata\pc\movies\');
  installwin.Add('0rn.\fedata\pc\stats\prh\');
  installwin.Add('');
  installwin.SaveToFile('install.win');
end;

procedure TForm1.SetConfig2PropertyValue(Key, Value: string);
var
  I: Integer;
  found: Boolean;
begin
  found := False;
  for I := 0 to Conf2.Count -1 do
    begin
      if Conf2.Names[I] = Key then
      begin
        Conf2[I] := Key + '=' + Value;
        found := True;
        Break
      end;
    end;
  if not found then
    begin
      Conf2.Add(Key + '=' + Value);
    end;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in [#8, '0'..'9']) then
    begin
      Key := #27;
    end;
end;

procedure TForm1.CheckBox23Click(Sender: TObject);
begin
  if (Checkbox23.Checked = true) then
    begin
      ComboBox5.Enabled := true;
      GroupBox5.Enabled := true;
      BitBtn1.Enabled := true;
    end
  else
    begin
      ComboBox5.Enabled := false;
      GroupBox5.Enabled := false;
      BitBtn1.Enabled := false;
    end;
end;

procedure TForm1.CheckBox14Click(Sender: TObject);
begin
  SpinEdit3.Enabled := false;
  if (Checkbox14.Checked = true) then
    begin
      CheckBox18.Enabled := true;
      if (CheckBox18.Checked = true) then
        SpinEdit3.Enabled := true;
    end
  else CheckBox18.Enabled := false;
end;

procedure TForm1.CheckBox19Click(Sender: TObject);
begin
  if (Checkbox19.Checked = true)
  then ComboBox4.Enabled := true
  else ComboBox4.Enabled := false;
end;

procedure TForm1.ComboBox3Change(Sender: TObject);
begin
  if (ComboBox3.ItemIndex = 0) then
    begin
      SpinEdit6.Enabled := true;
      SpinEdit7.Enabled := true;
    end
  else
    begin
      SpinEdit6.Enabled := false;
      SpinEdit7.Enabled := false;
    end;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Form11.Show;
end;

end.


