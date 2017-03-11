object FrmHostName: TFrmHostName
  Left = 0
  Top = 0
  Caption = #1040#1076#1088#1077#1089' '#1072#1088#1076#1091#1080#1085#1086
  ClientHeight = 215
  ClientWidth = 264
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    264
    215)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 35
    Width = 77
    Height = 13
    Caption = #1040#1076#1088#1077#1089' '#1072#1088#1076#1091#1080#1085#1086
  end
  object Label2: TLabel
    Left = 8
    Top = 67
    Width = 71
    Height = 13
    Caption = #1055#1086#1088#1090' '#1072#1088#1076#1091#1080#1085#1086
  end
  object Label3: TLabel
    Left = 8
    Top = 99
    Width = 75
    Height = 13
    Caption = #1040#1076#1088#1077#1089' '#1089#1077#1088#1074#1077#1088#1072
  end
  object Label4: TLabel
    Left = 8
    Top = 131
    Width = 69
    Height = 13
    Caption = #1055#1086#1088#1090' '#1089#1077#1088#1074#1077#1088#1072
  end
  object BitBtn1: TBitBtn
    Left = 181
    Top = 182
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 0
  end
  object BitBtn2: TBitBtn
    Left = 8
    Top = 182
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 120
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '192.168.0.20'
  end
  object SpinEdit1: TSpinEdit
    Left = 120
    Top = 64
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 3
    Value = 12341
  end
  object Edit2: TEdit
    Left = 120
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 4
    Text = '192.168.0.5'
  end
  object SpinEdit2: TSpinEdit
    Left = 120
    Top = 128
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 5
    Value = 12340
  end
end
