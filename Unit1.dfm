object Form1: TForm1
  Left = 192
  Top = 510
  Width = 666
  Height = 349
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Need For Speed Modern Patch Setup - SetupMP'
  Color = clBtnFace
  Constraints.MaxHeight = 349
  Constraints.MaxWidth = 666
  Constraints.MinHeight = 349
  Constraints.MinWidth = 666
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = DataModule4.MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    Left = 272
    Top = 8
    Width = 185
    Height = 68
    AutoSize = True
    Transparent = True
  end
  object Image1: TImage
    Left = 8
    Top = 8
    Width = 256
    Height = 256
    AutoSize = True
    Transparent = True
  end
  object Image3: TImage
    Left = 457
    Top = 8
    Width = 185
    Height = 68
    AutoSize = True
    Transparent = True
  end
  object TabbedNotebook1: TTabbedNotebook
    Left = 272
    Top = 80
    Width = 369
    Height = 153
    TabsPerRow = 6
    TabFont.Charset = DEFAULT_CHARSET
    TabFont.Color = clBtnText
    TabFont.Height = -11
    TabFont.Name = 'MS Sans Serif'
    TabFont.Style = []
    TabOrder = 0
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'Language'
      object RadioButton1: TRadioButton
        Left = 16
        Top = 8
        Width = 153
        Height = 17
        Caption = 'English'
        Checked = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TabStop = True
      end
      object RadioButton2: TRadioButton
        Left = 16
        Top = 32
        Width = 153
        Height = 17
        Caption = 'German'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object RadioButton3: TRadioButton
        Left = 16
        Top = 56
        Width = 153
        Height = 17
        Caption = 'French'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object RadioButton4: TRadioButton
        Left = 192
        Top = 8
        Width = 153
        Height = 17
        Caption = 'Spanish'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object RadioButton5: TRadioButton
        Left = 192
        Top = 32
        Width = 153
        Height = 17
        Caption = 'Italian'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
      end
      object RadioButton6: TRadioButton
        Left = 192
        Top = 56
        Width = 153
        Height = 17
        Caption = 'Swedish'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object Panel1: TPanel
        Left = 16
        Top = 80
        Width = 329
        Height = 33
        BevelOuter = bvLowered
        Caption = 'Used ini files are created automatically if they don'#39't exist.'
        Enabled = False
        Locked = True
        TabOrder = 6
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'Graphic'
      object Label1: TLabel
        Left = 184
        Top = 7
        Width = 105
        Height = 22
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Intro Splash Time'
        ParentShowHint = False
        ShowHint = True
        Layout = tlCenter
      end
      object Label2: TLabel
        Left = 184
        Top = 31
        Width = 105
        Height = 22
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Loading Splash Time'
        ParentShowHint = False
        ShowHint = True
        Layout = tlCenter
      end
      object CheckBox1: TCheckBox
        Left = 16
        Top = 8
        Width = 153
        Height = 17
        Caption = 'No Movies'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object CheckBox2: TCheckBox
        Left = 16
        Top = 32
        Width = 153
        Height = 17
        Caption = 'Hide 16bit Modes'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object SpinEdit1: TSpinEdit
        Left = 296
        Top = 8
        Width = 49
        Height = 22
        MaxValue = 999
        MinValue = 0
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        Value = 0
      end
      object CheckBox3: TCheckBox
        Left = 16
        Top = 56
        Width = 153
        Height = 17
        Caption = 'Use 32bit Mode In Menu'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object RadioGroup1: TRadioGroup
        Left = 16
        Top = 80
        Width = 329
        Height = 41
        Caption = 'Allow Huge Textures'
        TabOrder = 9
      end
      object SpinEdit2: TSpinEdit
        Left = 296
        Top = 32
        Width = 49
        Height = 22
        MaxValue = 999
        MinValue = 0
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        Value = 5
      end
      object RadioButton7: TRadioButton
        Left = 40
        Top = 96
        Width = 65
        Height = 17
        Caption = 'Disabled'
        Checked = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        TabStop = True
      end
      object RadioButton8: TRadioButton
        Left = 120
        Top = 96
        Width = 65
        Height = 17
        Caption = '512px'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
      end
      object RadioButton9: TRadioButton
        Left = 192
        Top = 96
        Width = 65
        Height = 17
        Caption = '1024px'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
      end
      object RadioButton10: TRadioButton
        Left = 264
        Top = 96
        Width = 65
        Height = 17
        Caption = '2048px'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'Thrash Driver'
      object GroupBox3: TGroupBox
        Left = 240
        Top = 8
        Width = 105
        Height = 73
        Caption = 'Other'
        TabOrder = 11
      end
      object GroupBox1: TGroupBox
        Left = 16
        Top = 8
        Width = 105
        Height = 105
        Caption = 'Recommended'
        TabOrder = 8
      end
      object RadioButton11: TRadioButton
        Left = 32
        Top = 32
        Width = 73
        Height = 17
        Caption = 'nGlide'
        Checked = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TabStop = True
      end
      object GroupBox2: TGroupBox
        Left = 128
        Top = 8
        Width = 105
        Height = 105
        Caption = 'DirectX'
        TabOrder = 9
      end
      object RadioButton12: TRadioButton
        Left = 32
        Top = 56
        Width = 73
        Height = 17
        Caption = 'dgVoodoo'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object RadioButton13: TRadioButton
        Left = 32
        Top = 80
        Width = 73
        Height = 17
        Caption = 'DirectX 6'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object RadioButton14: TRadioButton
        Left = 144
        Top = 32
        Width = 73
        Height = 17
        Caption = 'DirectX 7'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object RadioButton15: TRadioButton
        Left = 144
        Top = 56
        Width = 73
        Height = 17
        Caption = 'DirectX 8'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
      end
      object RadioButton16: TRadioButton
        Left = 144
        Top = 80
        Width = 73
        Height = 17
        Caption = 'DirectX 5'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object RadioButton17: TRadioButton
        Left = 256
        Top = 32
        Width = 73
        Height = 17
        Caption = 'SoftTri'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
      end
      object RadioButton18: TRadioButton
        Left = 256
        Top = 56
        Width = 73
        Height = 17
        Caption = 'Glide3x'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
      end
      object Button1: TButton
        Left = 240
        Top = 86
        Width = 105
        Height = 25
        Caption = 'Advanced'
        TabOrder = 10
        OnClick = Button1Click
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'nGlide'
      object Label3: TLabel
        Left = 184
        Top = 8
        Width = 105
        Height = 22
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Gamma setting'
        ParentShowHint = False
        ShowHint = True
        Layout = tlCenter
      end
      object CheckBox4: TCheckBox
        Left = 16
        Top = 8
        Width = 153
        Height = 17
        Caption = 'Use desktop resolution'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = CheckBox4Click
      end
      object CheckBox5: TCheckBox
        Left = 16
        Top = 32
        Width = 153
        Height = 17
        Caption = 'Preserve aspect ratio'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = CheckBox5Click
      end
      object CheckBox6: TCheckBox
        Left = 16
        Top = 56
        Width = 177
        Height = 17
        Caption = 'Enable vertical synchronization'
        Checked = True
        ParentShowHint = False
        ShowHint = True
        State = cbChecked
        TabOrder = 2
        OnClick = CheckBox6Click
      end
      object Button2: TButton
        Left = 264
        Top = 88
        Width = 83
        Height = 25
        Caption = 'Advanced'
        TabOrder = 5
        OnClick = Button2Click
      end
      object TrackBar1: TTrackBar
        Left = 208
        Top = 32
        Width = 142
        Height = 33
        Position = 5
        TabOrder = 4
        OnChange = TrackBar1Change
      end
      object ComboBox1: TComboBox
        Left = 296
        Top = 8
        Width = 49
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 5
        TabOrder = 3
        Text = '1.0'
        OnChange = ComboBox1Change
        Items.Strings = (
          '0.5'
          '0.6'
          '0.7'
          '0.8'
          '0.9'
          '1.0'
          '1.1'
          '1.2'
          '1.3'
          '1.4'
          '1.5')
      end
      object Panel2: TPanel
        Left = 16
        Top = 88
        Width = 233
        Height = 25
        BevelOuter = bvLowered
        Enabled = False
        Locked = True
        TabOrder = 6
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'Program'
      object Label4: TLabel
        Left = 184
        Top = 8
        Width = 105
        Height = 22
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Heap Size Limit (MB)'
        ParentShowHint = False
        ShowHint = True
        Layout = tlCenter
      end
      object CheckBox7: TCheckBox
        Left = 16
        Top = 8
        Width = 153
        Height = 17
        Caption = 'Run In Single Core'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object CheckBox8: TCheckBox
        Left = 16
        Top = 32
        Width = 153
        Height = 17
        Caption = 'No Error Reporting'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object CheckBox9: TCheckBox
        Left = 16
        Top = 56
        Width = 153
        Height = 17
        Caption = 'Prevent Minimize'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object SpinEdit4: TSpinEdit
        Left = 296
        Top = 8
        Width = 49
        Height = 22
        MaxValue = 512
        MinValue = 16
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        Value = 32
        OnChange = SpinEdit4Change
      end
      object TrackBar3: TTrackBar
        Left = 184
        Top = 32
        Width = 166
        Height = 33
        Max = 512
        Min = 16
        Frequency = 16
        Position = 32
        TabOrder = 4
        OnChange = TrackBar3Change
      end
      object GroupBox4: TGroupBox
        Left = 16
        Top = 80
        Width = 329
        Height = 41
        Caption = 'Beta Settings'
        TabOrder = 5
        object CheckBox12: TCheckBox
          Left = 16
          Top = 16
          Width = 113
          Height = 17
          Caption = 'Windowed Mode'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object CheckBox13: TCheckBox
          Left = 128
          Top = 16
          Width = 121
          Height = 17
          Caption = 'Prefer 32bit Modes'
          TabOrder = 1
        end
        object CheckBox11: TCheckBox
          Left = 248
          Top = 16
          Width = 65
          Height = 17
          Caption = 'Variant'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'Screenshoter'
      object CheckBox10: TCheckBox
        Left = 24
        Top = 8
        Width = 313
        Height = 17
        Caption = 'Enabled'
        Checked = True
        ParentShowHint = False
        ShowHint = True
        State = cbChecked
        TabOrder = 0
        OnClick = CheckBox10Click
      end
      object RadioGroup2: TRadioGroup
        Left = 16
        Top = 32
        Width = 329
        Height = 81
        Caption = 'Format'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object RadioButton19: TRadioButton
        Left = 32
        Top = 56
        Width = 137
        Height = 17
        Caption = 'PNG'
        Checked = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TabStop = True
      end
      object RadioButton20: TRadioButton
        Left = 184
        Top = 56
        Width = 97
        Height = 17
        Caption = 'JPG, Quality:'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object RadioButton21: TRadioButton
        Left = 32
        Top = 80
        Width = 137
        Height = 17
        Caption = 'BMP'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object SpinEdit5: TSpinEdit
        Left = 280
        Top = 54
        Width = 49
        Height = 22
        MaxValue = 100
        MinValue = 0
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        Value = 80
        OnChange = SpinEdit5Change
      end
      object TrackBar2: TTrackBar
        Left = 176
        Top = 76
        Width = 158
        Height = 29
        Max = 100
        Frequency = 10
        Position = 80
        TabOrder = 5
        OnChange = TrackBar2Change
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 272
    Width = 650
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Text = #169' Keiiko 2016-2017'
        Width = 268
      end
      item
        Alignment = taCenter
        Text = 'xcx.4fan.cz'
        Width = 96
      end
      item
        Alignment = taCenter
        Text = 'For NFS Modern Patchs by Veg'
        Width = 192
      end
      item
        Alignment = taCenter
        Width = 0
      end>
    SizeGrip = False
  end
  object BitBtn2: TBitBtn
    Left = 272
    Top = 240
    Width = 113
    Height = 25
    Caption = '&Close Setup'
    TabOrder = 3
    OnClick = BitBtn2Click
    Kind = bkClose
  end
  object BitBtn3: TBitBtn
    Left = 400
    Top = 240
    Width = 113
    Height = 25
    Caption = 'Set &Default'
    TabOrder = 2
    OnClick = BitBtn3Click
    Kind = bkRetry
  end
  object BitBtn4: TBitBtn
    Left = 528
    Top = 240
    Width = 113
    Height = 25
    Caption = 'Save and &Run'
    TabOrder = 1
    OnClick = BitBtn4Click
    Kind = bkAll
  end
end
