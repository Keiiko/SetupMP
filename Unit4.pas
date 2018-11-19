unit Unit4;

interface

uses
  Windows, ShellAPI, SysUtils, Classes, ImgList, Controls, Dialogs, Menus,
  ExtDlgs, Forms, ExtCtrls;

type
  TDataModule4 = class(TDataModule)
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    ImageList1: TImageList;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Reset1: TMenuItem;
    Load1: TMenuItem;
    Save1: TMenuItem;
    Export1: TMenuItem;
    About2: TMenuItem;
    Exit2: TMenuItem;
    Edit1: TMenuItem;
    Show2: TMenuItem;
    Language1: TMenuItem;
    Graphic1: TMenuItem;
    ThrashDriver1: TMenuItem;
    nGlide1: TMenuItem;
    Program1: TMenuItem;
    Screenshoter1: TMenuItem;
    Show1: TMenuItem;
    VEGsReadme2: TMenuItem;
    VEGsWebPage1: TMenuItem;
    SetupWebPage1: TMenuItem;
    NFSAddonsThread2: TMenuItem;
    Help2: TMenuItem;
    Open1: TMenuItem;
    Options1: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    kruto1: TMenuItem;
    VEGsWebPageNFS41: TMenuItem;
    JimDiablosStockandExpansionpack1: TMenuItem;
    ImageList2: TImageList;
    OpenDialog2: TOpenDialog;
    Zaps166NFS21: TMenuItem;
    DiscordforNFS3Multiplayer1: TMenuItem;
    NFSResources1: TMenuItem;
    OpenNFSRetropage1: TMenuItem;
    Graphic2: TMenuItem;
    Program2: TMenuItem;
    Joystick2: TMenuItem;
    Timer1: TTimer;
    procedure Reset1Click(Sender: TObject);
    procedure Load1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Export1Click(Sender: TObject);
    procedure About2Click(Sender: TObject);
    procedure Exit2Click(Sender: TObject);
    procedure Language1Click(Sender: TObject);
    procedure Graphic1Click(Sender: TObject);
    procedure ThrashDriver1Click(Sender: TObject);
    procedure nGlide1Click(Sender: TObject);
    procedure Screenshoter1Click(Sender: TObject);
    procedure VEGsReadme2Click(Sender: TObject);
    procedure VEGsWebPage1Click(Sender: TObject);
    procedure SetupWebPage1Click(Sender: TObject);
    procedure NFSAddonsThread2Click(Sender: TObject);
    procedure Help2Click(Sender: TObject);
    procedure Program1Click(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure Options1Click(Sender: TObject);
    procedure VEGsWebPageNFS41Click(Sender: TObject);
    procedure kruto1Click(Sender: TObject);
    procedure JimDiablosStockandExpansionpack1Click(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure Zaps166NFS21Click(Sender: TObject);
    procedure DiscordforNFS3Multiplayer1Click(Sender: TObject);
    procedure NFSResources1Click(Sender: TObject);
    procedure OpenNFSRetropage1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule4: TDataModule4;

implementation

uses Unit1, Unit5, Unit6, Unit7, Unit8, Unit9, Unit11;

{$R *.dfm}

procedure TDataModule4.Reset1Click(Sender: TObject);
begin
  Form1.BitBtn3Click(Sender);
end;

procedure TDataModule4.Load1Click(Sender: TObject);
begin
  Form1.Enabled:=false;
  if OpenDialog1.Execute then
    Form9.Show
  else
    Form1.Enabled:=true;
end;

procedure TDataModule4.Save1Click(Sender: TObject);
begin
  Form1.Save(Sender);
  Messagebeep(MB_ICONINFORMATION);
  MessageDlg('Saved', mtInformation, [mbOK], 0);
end;

procedure TDataModule4.Export1Click(Sender: TObject);
begin
  Form8.Show;
end;

procedure TDataModule4.About2Click(Sender: TObject);
begin
  Messagebeep(MB_ICONINFORMATION);
  Form7.Show;
end;

procedure TDataModule4.Exit2Click(Sender: TObject);
begin
  Form1.BitBtn2Click(Sender)
end;

procedure TDataModule4.Open1Click(Sender: TObject);
begin
  Form5.Show;
end;

procedure TDataModule4.Options1Click(Sender: TObject);
begin
  Form6.Show;
end;

procedure TDataModule4.Language1Click(Sender: TObject);
begin
  Form1.TabbedNotebook1.PageIndex:=0;
end;

procedure TDataModule4.Graphic1Click(Sender: TObject);
begin
  Form1.TabbedNotebook1.PageIndex:=1;
end;

procedure TDataModule4.ThrashDriver1Click(Sender: TObject);
begin
  Form1.TabbedNotebook1.PageIndex:=2;
end;

procedure TDataModule4.nGlide1Click(Sender: TObject);
begin
  Form1.TabbedNotebook1.PageIndex:=3;
end;

procedure TDataModule4.Program1Click(Sender: TObject);
begin
  Form1.TabbedNotebook1.PageIndex:=4;
end;

procedure TDataModule4.Screenshoter1Click(Sender: TObject);
begin
  Form1.TabbedNotebook1.PageIndex:=5;
end;

procedure TDataModule4.Help2Click(Sender: TObject);
begin
  Messagebeep(MB_ICONINFORMATION);
  if (nfs='2') then
    MessageDlg('Help is shown after hovering mouse on option.'+#13#10+'All informations are also in nfs2se.conf file.', mtConfirmation, [mbOK], 0)
  else
    MessageDlg('Help is shown after hovering mouse on option.'+#13#10+'All informations are also in VEGs readme file.', mtConfirmation, [mbOK], 0);
end;

procedure TDataModule4.VEGsReadme2Click(Sender: TObject);
begin
  Try
    ShellExecute(0, 'open', PChar(ExtractFilePath(Application.ExeName)+'\readme_en.txt'), nil, nil, SW_SHOWNORMAL);
  except
    on E: Exception do
      begin
        messagebeep(MB_ICONERROR);
        MessageDlg(E.ClassName+' error raised, with message: '+E.Message, mtError, [mbOK], 0);
      end;
  end;
end;

procedure TDataModule4.VEGsWebPage1Click(Sender: TObject);
begin
  ShellExecute(0, 'open', PAnsiChar('http://veg.by/en/projects/nfs3/'), nil, nil, SW_NORMAL);
end;

procedure TDataModule4.VEGsWebPageNFS41Click(Sender: TObject);
begin
  ShellExecute(0, 'open', PAnsiChar('http://veg.by/en/projects/nfs4/'), nil, nil, SW_NORMAL);
end;

procedure TDataModule4.SetupWebPage1Click(Sender: TObject);
begin
  ShellExecute(0, 'open', PAnsiChar('http://xcx.4fan.cz/setup-for-modern-packs/'), nil, nil, SW_NORMAL);
end;

procedure TDataModule4.NFSAddonsThread2Click(Sender: TObject);
begin
  ShellExecute(0, 'open', PAnsiChar('http://www.nfsaddons.com/forums//index.php?topic=1877'), nil, nil, SW_NORMAL);
end;

procedure TDataModule4.kruto1Click(Sender: TObject);
begin
  ShellExecute(0, 'open', PAnsiChar('http://kruto.deviantart.com/art/Need-For-Speed-III-Hot-Pursuit-Icon-Redone-274833865'), nil, nil, SW_NORMAL);
end;

procedure TDataModule4.JimDiablosStockandExpansionpack1Click(
  Sender: TObject);
begin
  ShellExecute(0, 'open', PAnsiChar('http://www.nfsaddons.com/forums//index.php?topic=1691.0'), nil, nil, SW_NORMAL);
end;

procedure TDataModule4.DataModuleCreate(Sender: TObject);
begin
  OpenDialog1.InitialDir:=GetCurrentDir;
  SaveDialog1.InitialDir:=GetCurrentDir;
end;

procedure TDataModule4.Zaps166NFS21Click(Sender: TObject);
begin
  ShellExecute(0, 'open', PAnsiChar('https://github.com/zaps166/NFSIISE'), nil, nil, SW_NORMAL);
end;

procedure TDataModule4.DiscordforNFS3Multiplayer1Click(Sender: TObject);
begin
  ShellExecute(0, 'open', PAnsiChar('https://www.needforspeed3.racing'), nil, nil, SW_NORMAL);
end;

procedure TDataModule4.NFSResources1Click(Sender: TObject);
begin
  ShellExecute(0, 'open', PAnsiChar('http://www.nfsaddons.com/forums//index.php?topic=1710.0'), nil, nil, SW_NORMAL);
end;

procedure TDataModule4.OpenNFSRetropage1Click(Sender: TObject);
begin
  ShellExecute(0, 'open', PAnsiChar('https://opennfs.com/'), nil, nil, SW_NORMAL);
end;

procedure TDataModule4.Timer1Timer(Sender: TObject);
begin
  Form11.Update();
end;

end.
