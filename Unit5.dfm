object Form5: TForm5
  Left = 1273
  Top = 126
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Internal Variables'
  ClientHeight = 255
  ClientWidth = 289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ValueListEditor1: TValueListEditor
    Left = 8
    Top = 8
    Width = 273
    Height = 209
    ScrollBars = ssVertical
    TabOrder = 0
    ColWidths = (
      160
      107)
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 224
    Width = 89
    Height = 25
    TabOrder = 3
    Kind = bkClose
  end
  object BitBtn2: TBitBtn
    Left = 104
    Top = 224
    Width = 89
    Height = 25
    Caption = '&Reload'
    TabOrder = 2
    OnClick = BitBtn2Click
    Kind = bkRetry
  end
  object BitBtn3: TBitBtn
    Left = 200
    Top = 224
    Width = 81
    Height = 25
    Caption = 'Apply'
    TabOrder = 1
    OnClick = BitBtn3Click
    Kind = bkOK
  end
end
