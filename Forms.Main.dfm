object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 433
  ClientWidth = 833
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object EditMagnet: TEdit
    Left = 8
    Top = 8
    Width = 609
    Height = 21
    TabOrder = 0
  end
  object EditTorrent: TEdit
    Left = 8
    Top = 39
    Width = 609
    Height = 21
    TabOrder = 1
  end
  object ButtonAddMagnet: TButton
    Left = 623
    Top = 6
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 2
    OnClick = ButtonAddMagnetClick
  end
  object ButtonAddTorrent: TButton
    Left = 623
    Top = 37
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 3
    OnClick = ButtonAddTorrentClick
  end
  object ListBox1: TListBox
    Left = 8
    Top = 66
    Width = 609
    Height = 327
    ItemHeight = 13
    TabOrder = 4
  end
  object Button1: TButton
    Left = 623
    Top = 68
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 5
    OnClick = Button1Click
  end
end
