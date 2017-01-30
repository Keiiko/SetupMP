unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, ShellAPI;

type
  TForm7 = class(TForm)
    BitBtn1: TBitBtn;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Image2: TImage;
    Label6: TLabel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm7.FormShow(Sender: TObject);
begin
  Form1.Enabled:=false;
end;

procedure TForm7.FormHide(Sender: TObject);
begin
  Form1.Enabled:=true;
end;

procedure TForm7.Label7Click(Sender: TObject);
begin
  ShellExecute(0, 'open', PAnsiChar('https://creativecommons.org/licenses/by-sa/4.0/'), nil, nil, SW_NORMAL);
end;

procedure TForm7.Label8Click(Sender: TObject);
begin
  ShellExecute(0, 'open', PAnsiChar('https://github.com/Keiiko'), nil, nil, SW_NORMAL);
end;

procedure TForm7.FormCreate(Sender: TObject);
begin
  Label5.Caption:='Version '+ver;
end;

end.
