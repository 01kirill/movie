object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 652
  ClientWidth = 1114
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object screen: TImage
    Left = 0
    Top = 0
    Width = 1113
    Height = 601
  end
  object start: TButton
    Left = 528
    Top = 619
    Width = 75
    Height = 25
    Caption = 'start movie'
    DisabledImageName = 'start'
    TabOrder = 0
    OnClick = startClick
  end
  object fps: TTimer
    Left = 480
    Top = 616
  end
end
