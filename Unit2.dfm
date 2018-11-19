object Form2: TForm2
  Left = 1155
  Top = 238
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'nGlide Advanced Settings'
  ClientHeight = 287
  ClientWidth = 370
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
    Left = 134
    Top = 256
    Width = 99
    Height = 25
    TabOrder = 2
    Kind = bkClose
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 354
    Height = 177
    Caption = 'Ingame nGlide Options'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 28
      Width = 85
      Height = 13
      Caption = 'Screen resolution:'
    end
    object Label2: TLabel
      Left = 16
      Top = 52
      Width = 59
      Height = 13
      Caption = 'Aspect ratio:'
    end
    object Label3: TLabel
      Left = 16
      Top = 76
      Width = 61
      Height = 13
      Caption = 'Refresh rate:'
    end
    object Label4: TLabel
      Left = 16
      Top = 100
      Width = 120
      Height = 13
      Caption = 'Vertiacal synchronization:'
    end
    object Label5: TLabel
      Left = 16
      Top = 124
      Width = 89
      Height = 13
      Caption = 'Gamma correction:'
    end
    object Label6: TLabel
      Left = 16
      Top = 148
      Width = 116
      Height = 13
      Caption = '3Dfx logo splash screen:'
    end
    object ComboBox1: TComboBox
      Left = 192
      Top = 24
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'By app (Default)'
      OnChange = ComboBox1Change
      Items.Strings = (
        'By app (Default)'
        'By desktop'
        '640 x 480'
        '800 x 600'
        '1024 x 600'
        '1024 x 768'
        '1152 x 864'
        '1280 x 720'
        '1280 x 768'
        '1280 x 800'
        '1280 x 960'
        '1280 x 1024'
        '1360 x 768'
        '1366 x 768'
        '1400 x 1050'
        '1440 x 900'
        '1440 x 1080'
        '1536 x 864'
        '1600 x 900'
        '1600 x 1200'
        '1680 x 1050'
        '1920 x 1080'
        '1920 x 1200'
        '1920 x 1440'
        '2048 x 1536'
        '2560 x 1440'
        '2560 x 1600'
        '3840 x 2160'
        '7680 x 4320')
    end
    object ComboBox3: TComboBox
      Left = 192
      Top = 72
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'By app (Default)'
      Items.Strings = (
        'By app (Default)'
        '60 Hz'
        '70 Hz'
        '72 Hz'
        '75 Hz'
        '85 Hz'
        '90 Hz'
        '100 Hz'
        '120 Hz'
        '144 Hz')
    end
    object ComboBox2: TComboBox
      Left = 192
      Top = 48
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 1
      Text = 'Fit to screen (Default)'
      OnChange = ComboBox2Change
      Items.Strings = (
        'Fit to screen (Default)'
        'Preserve original')
    end
    object ComboBox4: TComboBox
      Left = 192
      Top = 96
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 3
      Text = 'On (Default)'
      OnChange = ComboBox4Change
      Items.Strings = (
        'Off'
        'On (Default)')
    end
    object ComboBox5: TComboBox
      Left = 192
      Top = 120
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 5
      TabOrder = 4
      Text = '1.0 (Default)'
      OnChange = ComboBox5Change
      Items.Strings = (
        '0.5'
        '0.6'
        '0.7'
        '0.8'
        '0.9'
        '1.0 (Default)'
        '1.1'
        '1.2'
        '1.3'
        '1.4'
        '1.5')
    end
    object ComboBox6: TComboBox
      Left = 192
      Top = 144
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 5
      Text = 'Off (Default)'
      Items.Strings = (
        'Off (Default)'
        'On')
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 192
    Width = 354
    Height = 57
    Caption = 'System nGlide Options'
    TabOrder = 1
    object CheckBox1: TCheckBox
      Left = 16
      Top = 24
      Width = 169
      Height = 17
      Caption = 'Use global nGlide settings'
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object Button1: TButton
      Left = 192
      Top = 20
      Width = 145
      Height = 25
      Caption = 'Open nGlide Configurator'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
end
