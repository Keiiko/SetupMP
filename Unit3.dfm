object Form3: TForm3
  Left = 1231
  Top = 250
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Advanced Thrash Driver Settings'
  ClientHeight = 288
  ClientWidth = 322
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 305
    Height = 241
    Caption = 'Advanced Options'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 52
      Width = 99
      Height = 13
      Caption = 'Driver DLL Filename:'
    end
    object Label2: TLabel
      Left = 16
      Top = 76
      Width = 58
      Height = 13
      Caption = 'Driver Type:'
    end
    object SpeedButton1: TSpeedButton
      Left = 200
      Top = 120
      Width = 81
      Height = 57
      Caption = 'dgVdConf'
      Spacing = 0
      Visible = False
      OnClick = SpeedButton1Click
    end
    object Label3: TLabel
      Left = 16
      Top = 28
      Width = 67
      Height = 13
      Caption = 'Thrash Driver:'
    end
    object Edit1: TEdit
      Left = 144
      Top = 48
      Width = 145
      Height = 21
      Hint = 'Driver DLL filename'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object ComboBox1: TComboBox
      Left = 144
      Top = 72
      Width = 145
      Height = 21
      Hint = 'Driver type (d3d/voodoo/software/none).'
      Style = csDropDownList
      ItemHeight = 13
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Items.Strings = (
        'voodoo'
        'd3d'
        'software'
        'none')
    end
    object CheckBox1: TCheckBox
      Left = 24
      Top = 104
      Width = 169
      Height = 17
      Hint = 'Have to be checked if the renderer supports the fog effect.'
      Caption = 'Fog Support'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object CheckBox2: TCheckBox
      Left = 24
      Top = 128
      Width = 169
      Height = 17
      Caption = 'Disable Max Windowed Mode'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
    end
    object CheckBox3: TCheckBox
      Left = 24
      Top = 152
      Width = 169
      Height = 17
      Caption = 'No Dwm Off For Primary Lock'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object Panel2: TPanel
      Left = 16
      Top = 200
      Width = 273
      Height = 25
      BevelOuter = bvLowered
      Caption = 'Change only if you know what are you doing'
      Enabled = False
      Locked = True
      TabOrder = 7
    end
    object CheckBox4: TCheckBox
      Left = 24
      Top = 176
      Width = 169
      Height = 17
      Caption = 'DirectDraw Lag Fix'
      TabOrder = 6
    end
    object ComboBox2: TComboBox
      Left = 144
      Top = 24
      Width = 145
      Height = 21
      Hint = 'Driver type (d3d/voodoo/software/none).'
      Style = csDropDownList
      ItemHeight = 13
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnChange = ComboBox2Change
      Items.Strings = (
        'nGlide'
        'dgVoodoo'
        'DirectX5'
        'DirectX6'
        'DirectX7'
        'DirectX8'
        'Glide3x'
        'SoftTri')
    end
  end
  object BitBtn1: TBitBtn
    Left = 110
    Top = 256
    Width = 99
    Height = 25
    TabOrder = 1
    Kind = bkClose
  end
end
