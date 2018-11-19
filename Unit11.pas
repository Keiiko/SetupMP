unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, MMSYSTEM;

type
  TForm11 = class(TForm)
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    TrackBar3: TTrackBar;
    ShapeUp: TShape;
    ShapeRight: TShape;
    ShapeDown: TShape;
    ShapeLeft: TShape;
    TrackBar4: TTrackBar;
    TrackBar6: TTrackBar;
    TrackBar5: TTrackBar;
    LabelUp: TLabel;
    LabelL: TLabel;
    LabelR: TLabel;
    LabelDw: TLabel;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    Shape11: TShape;
    Shape12: TShape;
    PaintBox1: TPaintBox;
    PaintBox2: TPaintBox;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    ShapeUV: TShape;
    PaintBox3: TPaintBox;
    LabelXY: TLabel;
    LabelZR: TLabel;
    LabelUV: TLabel;
    ShapeButton13: TShape;
    ShapeButton14: TShape;
    ShapeButton15: TShape;
    ShapeButton16: TShape;
    ShapeButton17: TShape;
    ShapeButton18: TShape;
    ShapeButton19: TShape;
    ShapeButton20: TShape;
    ShapeButton21: TShape;
    ShapeButton22: TShape;
    ShapeButton23: TShape;
    ShapeButton24: TShape;
    ShapeButton25: TShape;
    ShapeButton26: TShape;
    ShapeButton27: TShape;
    ShapeButton28: TShape;
    ShapeButton29: TShape;
    ShapeButton30: TShape;
    ShapeButton31: TShape;
    ShapeButton32: TShape;
    ShapeButton4: TShape;
    ShapeButton1: TShape;
    ShapeButton9: TShape;
    ShapeButton10: TShape;
    ShapeButton2: TShape;
    ShapeButton3: TShape;
    ShapeButton5: TShape;
    ShapeButton6: TShape;
    ShapeButton7: TShape;
    ShapeButton8: TShape;
    ShapeButton11: TShape;
    ShapeButton12: TShape;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    procedure FormHide(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Update;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TPOVControl = record
    up,down,left,right:boolean;
  end;

  { TGamepad - A wrapper class for the Windows-Joystick-API}
  TGamepad = class
    private
      FRange:integer;
      FDeadZone:integer;
      function GetButton(index:integer):boolean;
      function GetX:integer;
      function GetY:integer;
      function GetZ:integer;
      function GetR:integer;
      function GetU:integer;
      function GetV:integer;
      function GetPOV:TPOVControl;
      function GetDeviceName:string;
      procedure UpdateDeviceNr(nr:cardinal);
    protected
      Device:TJoyInfoEx;
      DeviceInfo:TJoyCaps;
      FDeviceNr:Cardinal;
      CenterX,CenterY,CenterZ:Integer;
      CenterR,CenterU,CenterV:Integer;
    public
      property DeviceNr:Cardinal read FDeviceNr write UpdateDeviceNr;
      procedure Update;
      procedure Calibrate;
      constructor Create;
      property X:integer read GetX;
      property Y:integer read GetY;
      property Z:integer read GetZ;
      property R:integer read GetR;
      property U:integer read GetU;
      property V:integer read GetV;
      property Range:integer read FRange write FRange;
      property DeadZone:integer read FDeadZone write FDeadZone;
      property POV:TPOVControl read GetPov;
      property Buttons[index:integer]:boolean read GetButton;
      property DeviceName:string read GetDeviceName;
  end;

var
  Form11: TForm11;
  Joy: TGamepad;

implementation

uses Unit1, Unit4;

{$R *.dfm}

function TGamepad.GetX:integer;
begin
  result := round(range/32767*(Device.wXpos-CenterX));
  if abs(result) <= deadzone then result := 0;
end;

function TGamepad.GetY:integer;
begin
  result := round(range/32767*(Device.wYpos-CenterY));
  if abs(result) <= deadzone then result := 0;
end;

function TGamepad.GetZ:integer;
begin
  result := round(range/32767*(Device.wZpos-CenterZ));
  if abs(result) <= deadzone then result := 0;
end;

function TGamepad.GetR:integer;
begin
  result := round(range/32767*(Device.dwRpos-CenterR));
  if abs(result) <= deadzone then result := 0;
end;

function TGamepad.GetU:integer;
begin
  result := round(range/32767*(Device.dwUpos-CenterU));
  if abs(result) <= deadzone then result := 0;
end;

function TGamepad.GetV:integer;
begin
  result := round(range/32767*(Device.dwVpos-CenterV));
  if abs(result) <= deadzone then result := 0;
end;

function TGamepad.GetPOV:TPOVControl;
begin 
  result.up := false;
  result.left := false;
  result.down := false;
  result.right := false;
  if Device.dwPOV = 0 then begin result.up := true; end;
  if Device.dwPOV = 4500 then begin result.up := true; result.right := true end;
  if Device.dwPOV = 9000 then begin result.right := true; end;
  if Device.dwPOV = 13500 then begin result.down := true; result.right := true end;
  if Device.dwPOV = 18000 then begin result.down := true; end;
  if Device.dwPOV = 22500 then begin result.down := true; result.left := true; end;
  if Device.dwPOV = 27000 then begin result.left := true; end;
  if Device.dwPOV = 31500 then begin result.left := true; result.up := true; end;
end;

procedure TGamepad.Update;
begin 
  if (DeviceInfo.wCaps and JOYCAPS_HASZ) <> 0 then Device.dwSize := sizeof(tjoyInfoEx);
  Device.dwFlags:=JOY_RETURNALL;
  JoygetposEx(DeviceNr,@device);
end;

procedure TGamepad.UpdateDeviceNr(nr:cardinal);
begin
  FDeviceNr := nr;
  joyGetDevCaps(FDeviceNr, @DeviceInfo, sizeof(DeviceInfo));
end;

constructor TGamepad.Create;
begin
  inherited Create;
  DeviceNr := 0;
  Range := 1000;
  DeadZone := 400;
  Calibrate;
end;

procedure TGamepad.Calibrate;
begin
  if (DeviceInfo.wCaps and JOYCAPS_HASZ) <> 0 then Device.dwSize := sizeof(tjoyInfoEx);
  Device.dwFlags:=JOY_RETURNCENTERED;
  JoygetposEx(DeviceNr,@device);
  CenterX := device.wXpos;
  CenterY := device.wYpos;
  CenterZ := device.wZpos;
  CenterU := device.dwUpos;
  CenterV := device.dwVpos;
  CenterR := device.dwRpos;
end;

function TGamepad.GetButton(index:integer):boolean;
begin
  result := false;
  if index in [0..31] then
  begin
    result := device.wbuttons and (1 shl (index)) > 0;
  end;
end;

function TGamepad.GetDeviceName():string;
begin
  result:=deviceinfo.szPname;
end;

procedure TForm11.FormHide(Sender: TObject);
begin
  DataModule4.Timer1.Enabled:=False;
  joy.Destroy;
end;

procedure TForm11.FormShow(Sender: TObject);
begin
  joy:=TGamepad.Create;
  joy.Range:=32767;
  joy.DeadZone:=0;
  joy.DeviceNr:=Form1.ComboBox5.ItemIndex;
  DataModule4.Timer1.Enabled:=True;
end;

procedure TForm11.Update;
var
  i, x, y, z, r, u, v:integer;
  shp: TShape;
  color, color2: TColor;
begin
  color:=clYellow;
  color2:=clWhite;
  joy.update;
  if joy.POV.up then shapeUp.Brush.Color := color else shapeUp.Brush.Color := color2;
  if joy.POV.right then shapeRight.Brush.Color := color else shapeRight.Brush.Color := color2;
  if joy.POV.down then shapeDown.Brush.Color := color else shapeDown.Brush.Color := color2;
  if joy.POV.left then shapeLeft.Brush.Color := color else shapeLeft.Brush.Color := color2;
  for i := 0 to 31 do
  begin
    shp:=FindComponent('ShapeButton'+IntToStr(i+1)) as TShape;
    if joy.buttons[i] then
      shp.Brush.Color := color
    else
      shp.Brush.Color := color2;
  end;
  trackbar1.position := joy.X+joy.Range;
  trackbar2.position := joy.Y+joy.Range;
  LabeledEdit1.Text := IntToStr(joy.X)+' ('+IntToStr(joy.X+joy.Range)+')';
  LabeledEdit2.Text := IntToStr(joy.Y)+' ('+IntToStr(joy.Y+joy.Range)+')';
  with PaintBox1.Canvas do
    begin
      x:=((joy.X+joy.Range)*(PaintBox1.Width-1))div(2*joy.Range);
      y:=((joy.Y+joy.Range)*(PaintBox1.Height-1))div(2*joy.Range);
      Brush.Color:=Shape11.Brush.Color;
      Pen.Color:=Shape11.Brush.Color;
      Rectangle(0,0,PaintBox1.Width,PaintBox1.Height);
      Pen.Color:=clBlack;
      moveTo(x-10, y);
      lineTo(x+10, y);
      moveTo(x, y-10);
      lineTo(x, y+10);
    end;
  trackbar3.position := joy.Z+joy.Range;
  trackbar4.position := joy.R+joy.Range;
  LabeledEdit3.Text := IntToStr(joy.Z)+' ('+IntToStr(joy.Z+joy.Range)+')';
  LabeledEdit4.Text := IntToStr(joy.R)+' ('+IntToStr(joy.R+joy.Range)+')';
  with PaintBox2.Canvas do
    begin
      z:=((joy.Z+joy.Range)*(PaintBox2.Width-1))div(2*joy.Range);
      r:=((joy.R+joy.Range)*(PaintBox2.Height-1))div(2*joy.Range);
      Brush.Color:=Shape12.Brush.Color;
      Pen.Color:=Shape12.Brush.Color;
      Rectangle(0,0,PaintBox2.Width,PaintBox2.Height);
      Pen.Color:=clBlack;
      moveTo(z-10, r);
      lineTo(z+10, r);
      moveTo(z, r-10);
      lineTo(z, r+10);
    end;
  trackbar5.position := joy.U+joy.Range;
  trackbar6.position := joy.V+joy.Range;
  LabeledEdit5.Text := IntToStr(joy.U)+' ('+IntToStr(joy.U+joy.Range)+')';
  LabeledEdit6.Text := IntToStr(joy.V)+' ('+IntToStr(joy.V+joy.Range)+')';
  with PaintBox3.Canvas do
    begin
      u:=((joy.U+joy.Range)*(PaintBox3.Width-1))div(2*joy.Range);
      v:=((joy.V+joy.Range)*(PaintBox3.Height-1))div(2*joy.Range);
      Brush.Color:=ShapeUV.Brush.Color;
      Pen.Color:=ShapeUV.Brush.Color;
      Rectangle(0,0,PaintBox3.Width,PaintBox3.Height);
      Pen.Color:=clBlack;
      moveTo(u-10, v);
      lineTo(u+10, v);
      moveTo(u, v-10);
      lineTo(u, v+10);
    end;
end;

end.
