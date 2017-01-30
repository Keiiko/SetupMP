object Form9: TForm9
  Left = 1018
  Top = 564
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Load...'
  ClientHeight = 249
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
  object BitBtn1: TBitBtn
    Left = 136
    Top = 216
    Width = 113
    Height = 25
    Caption = 'Load'
    TabOrder = 0
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 8
    Top = 216
    Width = 113
    Height = 25
    TabOrder = 1
    Kind = bkClose
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 8
    Width = 241
    Height = 201
    Caption = 'Load Settings'
    TabOrder = 2
    object Label2: TLabel
      Left = 16
      Top = 28
      Width = 66
      Height = 13
      Caption = 'Name or nick:'
    end
    object Label3: TLabel
      Left = 16
      Top = 52
      Width = 69
      Height = 13
      Caption = 'Additional info:'
    end
    object Label1: TLabel
      Left = 16
      Top = 76
      Width = 56
      Height = 13
      Caption = 'Description:'
    end
    object Label5: TLabel
      Left = 104
      Top = 52
      Width = 121
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '-'
    end
    object Label4: TLabel
      Left = 104
      Top = 28
      Width = 121
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = '-'
      ParentBiDiMode = False
    end
    object Memo1: TMemo
      Left = 16
      Top = 96
      Width = 209
      Height = 89
      BorderStyle = bsNone
      Color = clBtnFace
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
      WantReturns = False
    end
  end
end
