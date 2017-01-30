object Form8: TForm8
  Left = 1296
  Top = 536
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Export...'
  ClientHeight = 273
  ClientWidth = 258
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
  object GroupBox2: TGroupBox
    Left = 8
    Top = 8
    Width = 241
    Height = 225
    Caption = 'Export Settings'
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 52
      Width = 66
      Height = 13
      Caption = 'Name or nick:'
    end
    object Label3: TLabel
      Left = 16
      Top = 76
      Width = 69
      Height = 13
      Caption = 'Additional info:'
    end
    object Label1: TLabel
      Left = 16
      Top = 100
      Width = 56
      Height = 13
      Caption = 'Description:'
    end
    object Edit1: TEdit
      Left = 104
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 104
      Top = 72
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object CheckBox1: TCheckBox
      Left = 24
      Top = 24
      Width = 193
      Height = 17
      Caption = 'Use anonymous values for export'
      TabOrder = 0
    end
    object Memo1: TMemo
      Left = 16
      Top = 120
      Width = 209
      Height = 89
      ScrollBars = ssVertical
      TabOrder = 3
      WantReturns = False
    end
  end
  object BitBtn1: TBitBtn
    Left = 136
    Top = 240
    Width = 113
    Height = 25
    Caption = 'Export'
    TabOrder = 1
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 8
    Top = 240
    Width = 113
    Height = 25
    TabOrder = 2
    Kind = bkClose
  end
end
