object Form6: TForm6
  Left = 1043
  Top = 583
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Options'
  ClientHeight = 208
  ClientWidth = 506
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
  object GroupBox4: TGroupBox
    Left = 256
    Top = 128
    Width = 241
    Height = 41
    Caption = 'Advanced Thrash Settings'
    TabOrder = 3
    object CheckBox3: TCheckBox
      Left = 24
      Top = 16
      Width = 193
      Height = 17
      Caption = 'Save Advanced Thrash Settings'
      TabOrder = 0
    end
  end
  object GroupBox3: TGroupBox
    Left = 256
    Top = 8
    Width = 241
    Height = 113
    Caption = 'Main Icon'
    TabOrder = 2
    object SpeedButton1: TSpeedButton
      Left = 192
      Top = 76
      Width = 27
      Height = 25
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000FF00FFFF00FF80808080808080808080808080808080
        8080808080808080808080808080808080808080000000000000FF00FFFF00FF
        808080FFFFFF00FFFFC0C0C000FFFFC0C0C000FFFFC0C0C000FFFFC0C0C000FF
        FF808080000000000000FF00FF808080FFFFFF00FFFFC0C0C000FFFFC0C0C000
        FFFFC0C0C000FFFFC0C0C000FFFFC0C0C0000000808080000000FF00FF808080
        FFFFFFC0C0C000FFFFC0C0C000FFFFC0C0C000FFFFC0C0C000FFFFC0C0C08080
        80000000808080000000808080FFFFFFC0C0C000FFFFC0C0C000FFFFC0C0C000
        FFFFC0C0C000FFFFC0C0C000FFFF000000808080808080000000808080FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8080800000
        00C0C0C080808000000080808080808080808080808080808080808080808080
        808080808080808080808080808080808000FFFF808080000000FF00FF808080
        FFFFFFC0C0C000FFFFC0C0C000FFFFC0C0C000FFFFC0C0C000FFFFC0C0C000FF
        FFC0C0C0808080000000FF00FF808080FFFFFF00FFFFC0C0C000FFFFC0C0C000
        FFFFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080000000FF00FF808080
        FFFFFFC0C0C000FFFFC0C0C000FFFFC0C0C0FFFFFF8080808080808080808080
        80808080808080FF00FFFF00FFFF00FF808080FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF808080FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF808080808080808080808080808080FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Spacing = 0
      OnClick = SpeedButton1Click
    end
    object Bevel1: TBevel
      Left = 16
      Top = 71
      Width = 209
      Height = 3
      Shape = bsTopLine
    end
    object Label6: TLabel
      Left = 112
      Top = 82
      Width = 73
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Not Selected'
    end
    object RadioButton1: TRadioButton
      Left = 24
      Top = 24
      Width = 193
      Height = 17
      Caption = 'Build in Icon set 1 (HD Icons)'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object RadioButton2: TRadioButton
      Left = 24
      Top = 48
      Width = 193
      Height = 17
      Caption = 'Build in Icon set 2 (Covers)'
      TabOrder = 1
    end
    object RadioButton3: TRadioButton
      Left = 24
      Top = 80
      Width = 89
      Height = 17
      Caption = 'Custom Icon:'
      TabOrder = 2
    end
  end
  object BitBtn1: TBitBtn
    Left = 368
    Top = 176
    Width = 129
    Height = 25
    Caption = 'Save and Close'
    TabOrder = 5
    OnClick = BitBtn1Click
    Kind = bkAll
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 241
    Height = 81
    Caption = 'General'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 28
      Width = 51
      Height = 13
      Caption = 'Language:'
    end
    object ComboBox1: TComboBox
      Left = 104
      Top = 24
      Width = 121
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'Default'
      Items.Strings = (
        'Default')
    end
    object CheckBox2: TCheckBox
      Left = 24
      Top = 56
      Width = 193
      Height = 17
      Caption = 'Enable Intro Sound'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 96
    Width = 241
    Height = 105
    Caption = 'Export (Optional)'
    TabOrder = 1
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
  end
  object BitBtn2: TBitBtn
    Left = 256
    Top = 176
    Width = 105
    Height = 25
    Caption = 'Save'
    TabOrder = 4
    OnClick = BitBtn2Click
    Kind = bkOK
  end
end
