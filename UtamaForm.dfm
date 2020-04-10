object FormUtama: TFormUtama
  Left = 0
  Top = 0
  Caption = 'FormUtama'
  ClientHeight = 291
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 168
    Top = 83
    Width = 75
    Height = 25
    Caption = 'Create'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 168
    Top = 114
    Width = 75
    Height = 25
    Caption = 'Lokal Info'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 168
    Top = 145
    Width = 75
    Height = 25
    Caption = 'Base Info'
    TabOrder = 2
    OnClick = Button3Click
  end
end
