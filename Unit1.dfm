object Form1: TForm1
  Left = 877
  Top = 255
  Width = 666
  Height = 349
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Need For Speed Modern Patch and Wrapper Setup - SetupMP'
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
      object GroupBox2: TGroupBox
        Left = 8
        Top = 8
        Width = 257
        Height = 105
        TabOrder = 13
      end
      object GroupBox1: TGroupBox
        Left = 16
        Top = 16
        Width = 89
        Height = 89
        Caption = 'Recommended'
        TabOrder = 12
      end
      object RadioButton11: TRadioButton
        Left = 24
        Top = 32
        Width = 73
        Height = 17
        Caption = 'nGlide'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = RadioButton11Click
      end
      object RadioButton12: TRadioButton
        Left = 24
        Top = 56
        Width = 73
        Height = 17
        Caption = 'dgVoodoo'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = RadioButton11Click
      end
      object RadioButton13: TRadioButton
        Left = 24
        Top = 80
        Width = 73
        Height = 17
        Caption = 'DirectX 6'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = RadioButton11Click
      end
      object RadioButton14: TRadioButton
        Left = 112
        Top = 32
        Width = 73
        Height = 17
        Caption = 'DirectX 7'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = RadioButton11Click
      end
      object RadioButton15: TRadioButton
        Left = 112
        Top = 56
        Width = 73
        Height = 17
        Caption = 'DirectX 8'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = RadioButton11Click
      end
      object RadioButton16: TRadioButton
        Left = 112
        Top = 80
        Width = 73
        Height = 17
        Caption = 'DirectX 5'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = RadioButton11Click
      end
      object RadioButton17: TRadioButton
        Left = 192
        Top = 32
        Width = 65
        Height = 17
        Caption = 'SoftTri'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnClick = RadioButton11Click
      end
      object RadioButton18: TRadioButton
        Left = 192
        Top = 56
        Width = 65
        Height = 17
        Caption = 'Glide3x'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnClick = RadioButton11Click
      end
      object GroupBox3: TGroupBox
        Left = 272
        Top = 8
        Width = 81
        Height = 105
        Caption = 'Custom'
        TabOrder = 14
      end
      object Button1: TButton
        Left = 192
        Top = 80
        Width = 65
        Height = 25
        Caption = 'Advanced'
        TabOrder = 8
        OnClick = Button1Click
      end
      object Button3: TButton
        Left = 280
        Top = 80
        Width = 65
        Height = 23
        Caption = 'Edit'
        TabOrder = 11
        OnClick = Button3Click
      end
      object RadioButton22: TRadioButton
        Left = 280
        Top = 32
        Width = 65
        Height = 17
        Caption = 'Custom'
        TabOrder = 9
        OnClick = RadioButton22Click
      end
      object ComboBox2: TComboBox
        Left = 280
        Top = 56
        Width = 65
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 10
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'nGlide'
      object Label3: TLabel
        Left = 184
        Top = 7
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
        TabOrder = 5
      end
      object BitBtn5: TBitBtn
        Left = 256
        Top = 88
        Width = 89
        Height = 25
        Caption = 'Advanced'
        TabOrder = 6
        OnClick = BitBtn5Click
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006666003333FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006666003333FF00FFFF
          00FF006666000000FF00FFFF00FF006666009999FF00FFFF00FF666666666666
          6666660066660066660033330066660066660066660000000000330066660066
          66009999FF00FFFF00FF999999F0FBFFEAEAEA006666F0FBFF00999900666600
          0033F0FBFF66CCCC000033006666009999F0FBFF000000FF00FF999999F0FBFF
          D6E7E7006666006666F0FBFF00999999FFFFF0FBFF99FFFF66CCCC009999F0FB
          FF000000006666FF00FF999999F0FBFFD6E7E700666600333300666699FFFF66
          CCCC00666600666666CCCC99FFFF009999006666006666FF00FF999999F0FBFF
          D6E7E700333399FFFF99FFFF99FFFF00666666CCCC00999900666699FFFF99FF
          FFF0FBFF006666FF00FF999999F0FBFFD6E7E7D6E7E700666600999900666600
          666699FFFF009999006666006666009999006666FF00FFFF00FF999999F0FBFF
          D6E7E7D6E7E7006666EAEAEA00999900666699FFFF009999006666009999F0FB
          FF006666FF00FFFF00FF999999F0FBFFC0C0C090A9AD00333300333390A9AD00
          666699FFFF009999006666FF00FF009999009999FF00FFFF00FF999999F0FBFF
          C0C0C01C1C1C999999999999999999006666F0FBFFF0FBFF006666FF00FFFF00
          FFFF00FFFF00FFFF00FF999999F0FBFFC0C0C01C1C1CF0FBFFF0FBFF999999D6
          E7E70066660066664D4D4DFF00FFFF00FFFF00FFFF00FFFF00FF999999F0FBFF
          C0C0C01C1C1CF0FBFFF0FBFF999999D6E7E7D6E7E7D6E7E74D4D4DFF00FFFF00
          FFFF00FFFF00FFFF00FF999999F0FBFFC0C0C01C1C1C1C1C1C1C1C1C999999D6
          E7E7EAEAEAD6E7E74D4D4DFF00FFFF00FFFF00FFFF00FFFF00FF999999F0FBFF
          D6E7E7D6E7E7D6E7E7D6E7E7D6E7E7D6E7E7D6E7E7D6E7E74D4D4DFF00FFFF00
          FFFF00FFFF00FFFF00FF99999999999999999999999999999999999999999999
          9999999999999999999999FF00FFFF00FFFF00FFFF00FFFF00FF}
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
        ParentShowHint = False
        Frequency = 16
        Position = 32
        ShowHint = True
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
        ParentShowHint = False
        Frequency = 10
        Position = 80
        ShowHint = True
        TabOrder = 5
        OnChange = TrackBar2Change
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'Graphic'
      object Label6: TLabel
        Left = 152
        Top = 64
        Width = 89
        Height = 22
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Window Size'
        ParentShowHint = False
        ShowHint = True
        Layout = tlCenter
      end
      object Label5: TLabel
        Left = 272
        Top = 88
        Width = 17
        Height = 22
        Alignment = taCenter
        AutoSize = False
        Caption = 'x'
        ParentShowHint = False
        ShowHint = True
        Layout = tlCenter
      end
      object SpinEdit3: TSpinEdit
        Left = 296
        Top = 8
        Width = 49
        Height = 22
        Enabled = False
        MaxValue = 999
        MinValue = 2
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        Value = 60
      end
      object CheckBox14: TCheckBox
        Left = 16
        Top = 8
        Width = 129
        Height = 22
        AllowGrayed = True
        Caption = 'Vertical Sync'
        Checked = True
        ParentShowHint = False
        ShowHint = True
        State = cbChecked
        TabOrder = 0
        OnClick = CheckBox14Click
      end
      object CheckBox18: TCheckBox
        Left = 152
        Top = 8
        Width = 137
        Height = 22
        Caption = 'VSync framerate limit'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = CheckBox14Click
      end
      object CheckBox19: TCheckBox
        Left = 152
        Top = 32
        Width = 137
        Height = 22
        AllowGrayed = True
        Caption = 'Multisample antialiasing'
        ParentShowHint = False
        ShowHint = True
        State = cbGrayed
        TabOrder = 6
        OnClick = CheckBox19Click
      end
      object ComboBox4: TComboBox
        Left = 296
        Top = 32
        Width = 49
        Height = 21
        Style = csDropDownList
        Enabled = False
        ItemHeight = 13
        ItemIndex = 0
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        Text = '2'
        Items.Strings = (
          '2'
          '4'
          '8'
          '16')
      end
      object CheckBox16: TCheckBox
        Left = 16
        Top = 91
        Width = 185
        Height = 17
        Caption = 'Use Window Size for Fullscreen'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object CheckBox17: TCheckBox
        Left = 16
        Top = 64
        Width = 129
        Height = 22
        Caption = 'Keep 4:3 aspect ratio'
        Checked = True
        ParentShowHint = False
        ShowHint = True
        State = cbChecked
        TabOrder = 2
      end
      object ComboBox3: TComboBox
        Left = 248
        Top = 64
        Width = 97
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        Text = '640x480'
        OnChange = ComboBox3Change
        Items.Strings = (
          'Custom'
          '640x480'
          '800x600'
          '960x720'
          '1024x768'
          '1152x864'
          '1280x960'
          '1400x1050'
          '1440x1080'
          '1600x1200'
          '1920x1440'
          '2048x1536'
          '1280x720'
          '1366x768'
          '1600x900'
          '1920x1080'
          '2048x1152'
          '2560x1440'
          '3840x2160')
      end
      object SpinEdit6: TSpinEdit
        Left = 216
        Top = 88
        Width = 57
        Height = 22
        Enabled = False
        MaxValue = 9999
        MinValue = 640
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        Value = 640
      end
      object SpinEdit7: TSpinEdit
        Left = 288
        Top = 88
        Width = 57
        Height = 22
        Enabled = False
        MaxValue = 9999
        MinValue = 480
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        Value = 480
      end
      object CheckBox24: TCheckBox
        Left = 16
        Top = 32
        Width = 129
        Height = 22
        Caption = 'OpenGL 1.1'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = CheckBox14Click
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'Program'
      object Label7: TLabel
        Left = 160
        Top = 8
        Width = 113
        Height = 22
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'TCP and UDP port'
        ParentShowHint = False
        ShowHint = True
        Layout = tlCenter
      end
      object Label8: TLabel
        Left = 160
        Top = 32
        Width = 113
        Height = 22
        Alignment = taRightJustify
        AutoSize = False
        Caption = '2nd UDP port for host'
        ParentShowHint = False
        ShowHint = True
        Layout = tlCenter
      end
      object Label9: TLabel
        Left = 184
        Top = 64
        Width = 161
        Height = 22
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Broadcast address for UDP'
        ParentShowHint = False
        ShowHint = True
        Layout = tlCenter
      end
      object Label10: TLabel
        Left = 224
        Top = 88
        Width = 9
        Height = 22
        Alignment = taCenter
        AutoSize = False
        Caption = '.'
        ParentShowHint = False
        ShowHint = True
        Layout = tlCenter
      end
      object Label11: TLabel
        Left = 264
        Top = 88
        Width = 9
        Height = 22
        Alignment = taCenter
        AutoSize = False
        Caption = '.'
        ParentShowHint = False
        ShowHint = True
        Layout = tlCenter
      end
      object Label12: TLabel
        Left = 304
        Top = 88
        Width = 9
        Height = 22
        Alignment = taCenter
        AutoSize = False
        Caption = '.'
        ParentShowHint = False
        ShowHint = True
        Layout = tlCenter
      end
      object CheckBox15: TCheckBox
        Left = 16
        Top = 8
        Width = 137
        Height = 22
        Caption = 'Use Only One CPU'
        Checked = True
        ParentShowHint = False
        ShowHint = True
        State = cbChecked
        TabOrder = 0
      end
      object CheckBox20: TCheckBox
        Left = 16
        Top = 32
        Width = 137
        Height = 22
        Caption = 'Start In FullScreen'
        Checked = True
        ParentShowHint = False
        ShowHint = True
        State = cbChecked
        TabOrder = 1
      end
      object CheckBox21: TCheckBox
        Left = 16
        Top = 64
        Width = 161
        Height = 22
        Caption = 'Linear Sound Interpolation'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object CheckBox22: TCheckBox
        Left = 16
        Top = 88
        Width = 161
        Height = 22
        Caption = 'Use glBlegin and glEnd'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object SpinEdit8: TSpinEdit
        Left = 280
        Top = 8
        Width = 65
        Height = 22
        MaxValue = 65535
        MinValue = 0
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        Value = 1030
      end
      object SpinEdit9: TSpinEdit
        Left = 280
        Top = 32
        Width = 65
        Height = 22
        MaxValue = 65535
        MinValue = 0
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        Value = 1029
      end
      object Edit1: TEdit
        Left = 192
        Top = 88
        Width = 33
        Height = 21
        AutoSize = False
        BiDiMode = bdLeftToRight
        MaxLength = 3
        ParentBiDiMode = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        Text = '255'
        OnKeyPress = Edit1KeyPress
      end
      object Edit2: TEdit
        Left = 232
        Top = 88
        Width = 33
        Height = 21
        AutoSize = False
        MaxLength = 3
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        Text = '255'
        OnKeyPress = Edit1KeyPress
      end
      object Edit3: TEdit
        Left = 272
        Top = 88
        Width = 33
        Height = 21
        AutoSize = False
        MaxLength = 3
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        Text = '255'
        OnKeyPress = Edit1KeyPress
      end
      object Edit4: TEdit
        Left = 312
        Top = 88
        Width = 33
        Height = 21
        AutoSize = False
        MaxLength = 3
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        Text = '255'
        OnKeyPress = Edit1KeyPress
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'Joystick'
      object ComboBox5: TComboBox
        Left = 200
        Top = 8
        Width = 145
        Height = 21
        Style = csDropDownList
        Enabled = False
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 1
        Text = 'Joystick 1'
        Items.Strings = (
          'Joystick 1'
          'Joystick 2')
      end
      object CheckBox23: TCheckBox
        Left = 16
        Top = 8
        Width = 177
        Height = 21
        Caption = 'Enable Joystick Setting'
        TabOrder = 0
        OnClick = CheckBox23Click
      end
      object GroupBox5: TGroupBox
        Left = 8
        Top = 32
        Width = 345
        Height = 89
        Enabled = False
        TabOrder = 2
        object BitBtn1: TBitBtn
          Left = 208
          Top = 56
          Width = 129
          Height = 25
          Caption = 'Joystick Input Test'
          Enabled = False
          TabOrder = 0
          OnClick = BitBtn1Click
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000000000FF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000
            0000B2B2B2B2B2B2969696868686000000000000FF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FF000000000000B2B2B2B2B2B2CCCCCCCCCCCC8686869696968686
            86777777000000000000FF00FFFF00FFFF00FF777777B2B2B2B2B2B2CCCCCCCC
            CCCCF8F8F8F8F8F8C0C0C0868686777777868686777777000000FF00FFFF00FF
            FF00FF868686EAEAEAE3E3E3F8F8F8F8F8F8C0C0C0B2B2B2C0C0C0C0C0C0C0C0
            C0777777777777000000868686000000FF00FF868686F8F8F8F8F8F8C0C0C0C0
            C0C0868686868686868686C0C0C00000FF000080C0C0C0000000868686C0C0C0
            000000FF00FF868686868686C0C0C0777777868686B2B2B2000000000000B2B2
            B2868686868686FF00FF868686F8F8F8868686000000FF00FFFF00FF86868686
            8686868686B2B2B2000000868686868686FF00FFFF00FFFF00FF868686F8F8F8
            C0C0C0868686000000FF00FFFF00FFFF00FF868686B2B2B2000000FF00FFFF00
            FFFF00FFFF00FFFF00FF868686F8F8F8C0C0C0C0C0C086868600000000000086
            8686F8F8F8B2B2B2868686000000FF00FFFF00FFFF00FFFF00FF868686F8F8F8
            DDDDDD868686C0C0C0C0C0C0868686868686F8F8F8B2B2B2868686000000FF00
            FFFF00FFFF00FFFF00FF868686F8F8F8B2B2B2F8F8F8B2B2B2000080B2B2B286
            8686F8F8F8B2B2B2868686000000000000000000FF00FFFF00FFFF00FF868686
            F8F8F8DDDDDDC0C0C00000FF800000868686F8F8F8B2B2B28686860000008686
            86000000FF00FFFF00FFFF00FFFF00FF868686F8F8F8F8F8F8C0C0C0FF000086
            8686F8F8F8B2B2B2868686000000000000FF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF868686868686F8F8F8DDDDDD868686F8F8F8B2B2B2868686000000FF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF86868686868686
            8686868686868686868686FF00FFFF00FFFF00FFFF00FFFF00FF}
        end
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
        Text = #169' Keiiko 2016-2018'
        Width = 150
      end
      item
        Alignment = taCenter
        Text = 'xcx.4fan.cz'
        Width = 96
      end
      item
        Alignment = taCenter
        Text = 'For Modern Patches by Veg and Wrapper by Zaps999'
        Width = 312
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
