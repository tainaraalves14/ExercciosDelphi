object FrmAnimal: TFrmAnimal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Adivinhe o Animal'
  ClientHeight = 171
  ClientWidth = 642
  Color = clBlack
  Font.Charset = ANSI_CHARSET
  Font.Color = clWhite
  Font.Height = -21
  Font.Name = 'Tempus Sans ITC'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 27
  object Label1: TLabel
    Left = 189
    Top = 32
    Width = 271
    Height = 49
    Caption = 'Qual '#233' o Animal?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -37
    Font.Name = 'Tempus Sans ITC'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 248
    Top = 102
    Width = 153
    Height = 44
    Caption = 'Come'#231'ar'
    Flat = True
    OnClick = SpeedButton1Click
  end
  object Image1: TImage
    Left = 32
    Top = 240
    Width = 577
    Height = 313
    Stretch = True
  end
  object Label2: TLabel
    Left = 32
    Top = 184
    Width = 577
    Height = 35
    Alignment = taCenter
    AutoSize = False
    Caption = 'Label2'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -27
    Font.Name = 'Tempus Sans ITC'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object MediaPlayer1: TMediaPlayer
    Left = 210
    Top = 264
    Width = 253
    Height = 30
    DoubleBuffered = True
    Visible = False
    ParentDoubleBuffered = False
    TabOrder = 0
  end
end
