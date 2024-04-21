object Form1: TForm1
  Left = 0
  Top = 0
  Caption = '2'
  ClientHeight = 724
  ClientWidth = 1114
  Color = clBtnFace
  DoubleBuffered = True
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
    Width = 1140
    Height = 670
  end
  object start: TButton
    Left = 520
    Top = 671
    Width = 75
    Height = 25
    Caption = 'start movie'
    DisabledImageName = 'start'
    TabOrder = 0
    OnClick = startClick
  end
  object MediaPlayer2: TMediaPlayer
    Left = 808
    Top = 671
    Width = 253
    Height = 30
    DoubleBuffered = True
    Visible = False
    ParentDoubleBuffered = False
    TabOrder = 1
  end
  object MediaPlayer1: TMediaPlayer
    Left = 160
    Top = 671
    Width = 253
    Height = 30
    DoubleBuffered = True
    Visible = False
    ParentDoubleBuffered = False
    TabOrder = 2
  end
  object fps: TTimer
    OnTimer = fpsTimer
    Left = 56
    Top = 672
  end
  object OpenDialog1: TOpenDialog
    Left = 8
    Top = 672
  end
  object walking: TTimer
    OnTimer = walkingTimer
    Left = 96
    Top = 672
  end
end
