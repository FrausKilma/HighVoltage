object FrmEmul: TFrmEmul
  Left = 0
  Top = 0
  Caption = #1069#1084#1091#1083#1103#1094#1080#1103' '#1072#1088#1076#1091#1080#1085#1099
  ClientHeight = 293
  ClientWidth = 533
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 11
    Width = 119
    Height = 13
    Caption = #1055#1086#1088#1090' '#1082#1083#1080#1077#1085#1090#1072' '#1040#1088#1076#1091#1080#1085#1099
  end
  object Label2: TLabel
    Left = 8
    Top = 75
    Width = 118
    Height = 13
    Caption = #1055#1086#1088#1090' '#1089#1077#1088#1074#1077#1088#1072' '#1040#1088#1076#1091#1080#1085#1099
  end
  object Label3: TLabel
    Left = 304
    Top = 109
    Width = 197
    Height = 13
    Caption = #1087#1088#1080#1105#1084' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1085#1072' '#1089#1077#1088#1074#1077#1088' '#1040#1088#1076#1091#1080#1085#1099
  end
  object Label4: TLabel
    Left = 8
    Top = 43
    Width = 130
    Height = 13
    Caption = 'IP '#1087#1088#1080#1105#1084#1097#1080#1082#1072' '#1089' '#1040#1088#1076#1091#1080#1085#1099' '
  end
  object Label5: TLabel
    Left = 16
    Top = 109
    Width = 245
    Height = 13
    Caption = #1055#1086#1089#1099#1083' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1089' '#1040#1088#1076#1091#1080#1085#1099' '#1085#1072'  IP '#1087#1088#1080#1105#1084#1097#1080#1082#1072
  end
  object SEArdPort: TSpinEdit
    Left = 157
    Top = 8
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 12340
    OnChange = SEArdPortChange
  end
  object SEServerPort: TSpinEdit
    Left = 157
    Top = 72
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 1
    Value = 12341
    OnChange = SEServerPortChange
  end
  object Button1: TButton
    Left = 304
    Top = 38
    Width = 137
    Height = 25
    Caption = #1055#1088#1086#1074#1077#1088#1082#1072' '#1089#1086#1077#1076#1080#1085#1077#1085#1080#1103
    TabOrder = 2
    OnClick = Button1Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 274
    Width = 533
    Height = 19
    Panels = <
      item
        Text = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1089#1086#1077#1076#1080#1085#1077#1085#1080#1103':'
        Width = 150
      end
      item
        Text = #1089#1086#1077#1076#1080#1085#1077#1085#1080#1077' '#1085#1077' '#1091#1089#1090#1072#1085#1086#1074#1083#1077#1085#1085#1086
        Width = 50
      end>
  end
  object MResiveServer: TMemo
    Left = 304
    Top = 136
    Width = 201
    Height = 89
    ScrollBars = ssVertical
    TabOrder = 4
  end
  object Edit1: TEdit
    Left = 157
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '127.0.0.1'
    OnChange = Edit1Change
  end
  object MSendFromArduino: TMemo
    Left = 16
    Top = 136
    Width = 201
    Height = 89
    ScrollBars = ssVertical
    TabOrder = 6
  end
  object Button2: TButton
    Left = 223
    Top = 136
    Width = 75
    Height = 25
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    TabOrder = 7
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 16
    Top = 231
    Width = 201
    Height = 25
    Caption = #1055#1086#1089#1083#1072#1090#1100' '#1089' '#1040#1088#1076#1091#1080#1085#1099
    TabOrder = 8
    OnClick = Button3Click
  end
  object cbb1: TComboBox
    Left = 288
    Top = 231
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 9
    Text = 'Step1'
    Items.Strings = (
      'Step1'
      'Step2'
      'Step3'
      'Step4'
      'Step5'
      'Step6'
      'Step7'
      'Init')
  end
  object Button4: TButton
    Left = 450
    Top = 231
    Width = 75
    Height = 25
    Caption = #1053#1072' '#1087#1072#1085#1077#1083#1100
    TabOrder = 10
    OnClick = Button4Click
  end
  object ArduinoClient: TIdTCPClient
    ConnectTimeout = 0
    Host = '127.0.0.1'
    IPVersion = Id_IPv4
    Port = 12340
    ReadTimeout = -1
    Left = 432
    Top = 8
  end
  object ArduinoServer: TIdTCPServer
    Active = True
    Bindings = <>
    DefaultPort = 12341
    OnExecute = ArduinoServerExecute
    Left = 432
    Top = 64
  end
end
