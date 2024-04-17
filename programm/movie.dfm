object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 662
  ClientWidth = 1126
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object screen: TImage
    Left = 8
    Top = 0
    Width = 1137
    Height = 665
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
  object MediaPlayer1: TMediaPlayer
    Left = -80
    Top = 654
    Width = 253
    Height = 30
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
  end
  object MediaPlayer2: TMediaPlayer
    Left = 648
    Top = 614
    Width = 253
    Height = 30
    DoubleBuffered = True
    Visible = False
    ParentDoubleBuffered = False
    TabOrder = 2
  end
  object fps: TTimer
    OnTimer = fpsTimer
    Left = 480
    Top = 616
  end
  object OpenDialog1: TOpenDialog
    Left = 608
    Top = 616
  end
end
