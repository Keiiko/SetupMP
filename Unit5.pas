unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, ValEdit;

type
  TForm5 = class(TForm)
    ValueListEditor1: TValueListEditor;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm5.FormShow(Sender: TObject);
begin
  Form1.Enabled:=false;
  Form1.SaveGlobalSetValues(Sender);
  BitBtn2Click(Sender);
end;

procedure TForm5.FormHide(Sender: TObject);
begin
  Form1.Enabled:=true;
end;

procedure TForm5.BitBtn2Click(Sender: TObject);
begin
  ValueListEditor1.Strings:=GlobalSet;
end;

procedure TForm5.BitBtn3Click(Sender: TObject);
var
  buttonSelected: Integer;
begin
  Try
    GlobalSet.Assign(ValueListEditor1.Strings);
    Form1.LoadFromGlobalSetValues(Sender);
  except
    on E: Exception do
      begin
        messagebeep(MB_ICONERROR);
        buttonSelected:=MessageDlg('Error in parsing settings, use defalt?', mtError, [mbYes,mbNo], 0);
        if buttonSelected=mrYes then
          begin
            Form1.BitBtn3Click(Sender);
            BitBtn2Click(Sender);
          end;
      end;
  end;
end;

end.
