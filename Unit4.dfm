object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 215
  ClientWidth = 274
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Lb_teste: TLabel
    Left = 191
    Top = 51
    Width = 11
    Height = 18
    Caption = '='
  end
  object et_value1: TEdit
    Left = 40
    Top = 48
    Width = 65
    Height = 21
    TabOrder = 0
  end
  object ed_value2: TEdit
    Left = 111
    Top = 48
    Width = 74
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 127
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Subtrair'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 127
    Top = 119
    Width = 75
    Height = 25
    Caption = 'Multiplicar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 46
    Top = 119
    Width = 75
    Height = 25
    Caption = 'Dividir'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 46
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Somar'
    TabOrder = 5
    OnClick = Button4Click
  end
  object ed_result: TEdit
    Left = 208
    Top = 48
    Width = 49
    Height = 21
    TabOrder = 6
  end
end
