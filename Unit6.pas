unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TForm6 = class(TForm)
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    CheckBox1: TCheckBox;
    GroupBox3: TGroupBox;
    RadioButton1: TRadioButton;
    Label4: TLabel;
    Label5: TLabel;
    SpeedButton2: TSpeedButton;
    Label7: TLabel;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Bevel1: TBevel;
    CheckBox2: TCheckBox;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit1, Unit4;

{$R *.dfm}

procedure TForm6.FormShow(Sender: TObject);
begin
  Form1.Enabled:=false;
end;

procedure TForm6.FormHide(Sender: TObject);
begin
  Form1.Enabled:=true;
end;

procedure TForm6.SpeedButton1Click(Sender: TObject);
begin
  DataModule4.OpenPictureDialog1.Execute;
end;

procedure TForm6.SpeedButton2Click(Sender: TObject);
begin
  DataModule4.OpenPictureDialog1.Execute;
end;

procedure TForm6.BitBtn1Click(Sender: TObject);
begin
  Form1.SaveOptions(Sender);
  Form6.Close;
end;

procedure TForm6.BitBtn2Click(Sender: TObject);
begin
  Form1.SaveOptions(Sender);
end;

end.
