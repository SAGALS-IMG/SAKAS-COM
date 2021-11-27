object Form_PW: TForm_PW
  Left = 0
  Top = 0
  Caption = 'Image'
  ClientHeight = 624
  ClientWidth = 767
  Color = clBtnFace
  Constraints.MinHeight = 200
  Constraints.MinWidth = 500
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 767
    Height = 624
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Panel3: TPanel
      Left = 2
      Top = 2
      Width = 763
      Height = 98
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 763
        Height = 98
        Align = alClient
        Caption = 'Drawing'
        Color = 16510433
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object Bevel2: TBevel
          Left = 559
          Top = 70
          Width = 108
          Height = 22
        end
        object Bevel1: TBevel
          Left = 583
          Top = 16
          Width = 84
          Height = 22
        end
        object Label7: TLabel
          Left = 8
          Top = 51
          Width = 29
          Height = 14
          Caption = 'B&&C '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 179
          Top = 51
          Width = 30
          Height = 14
          Caption = 'Mag.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Shape1: TShape
          Left = 339
          Top = 35
          Width = 133
          Height = 40
          Brush.Color = clMoneyGreen
        end
        object Label1: TLabel
          Left = 485
          Top = 72
          Width = 72
          Height = 16
          Caption = 'Intensity : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 563
          Top = 74
          Width = 100
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 485
          Top = 20
          Width = 64
          Height = 16
          Caption = 'Position : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 591
          Top = 19
          Width = 72
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label_Size: TLabel
          Left = 350
          Top = 48
          Width = 90
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = '157*103'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 254
          Top = 51
          Width = 48
          Height = 14
          Caption = 'Img No.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SB_Copy: TSpeedButton
          Left = 440
          Top = 45
          Width = 22
          Height = 22
          Hint = 'COPY ROI to Clipboard'
          Flat = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FFFFFFFFFFF
            FFFF33333333333FFFFF3FFFFFFFFF00000F333333333377777F33FFFFFFFF09
            990F33333333337F337F333FFFFFFF09990F33333333337F337F3333FFFFFF09
            990F33333333337FFF7F33333FFFFF00000F3333333333777773333333FFFFFF
            FFFF3333333333333F333333333FFFFF0FFF3333333333337FF333333333FFF0
            00FF33333333333777FF333333333F00000F33FFFFF33777777F300000333000
            0000377777F33777777730EEE033333000FF37F337F3333777F330EEE0333330
            00FF37F337F3333777F330EEE033333000FF37FFF7F333F77733300000333000
            03FF3777773337777333333333333333333F3333333333333333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SB_CopyClick
        end
        object Bevel3: TBevel
          Left = 583
          Top = 43
          Width = 84
          Height = 22
        end
        object Label6: TLabel
          Left = 591
          Top = 46
          Width = 72
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 555
          Top = 19
          Width = 9
          Height = 16
          Caption = 'X'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 555
          Top = 46
          Width = 9
          Height = 16
          Caption = 'Y'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Edit_PMin: TEdit
          Left = 6
          Top = 70
          Width = 75
          Height = 22
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Text = '0'
          OnKeyPress = Edit_PMinKeyPress
          OnKeyUp = Edit_PMaxKeyUp
        end
        object Edit_PMax: TEdit
          Left = 91
          Top = 70
          Width = 75
          Height = 22
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          Text = '10000'
          OnKeyPress = Edit_PMaxKeyPress
          OnKeyUp = Edit_PMaxKeyUp
        end
        object CB_Mag: TComboBox
          Left = 179
          Top = 70
          Width = 60
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          Text = '50%'
          OnChange = CB_MagChange
          Items.Strings = (
            '10%'
            '25%'
            '50%'
            '100%')
        end
        object BB_ReDraw: TBitBtn
          Left = 6
          Top = 20
          Width = 75
          Height = 25
          Caption = 'Redraw'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          OnClick = BB_ReDrawClick
        end
        object Edit_Left: TEdit
          Left = 324
          Top = 20
          Width = 40
          Height = 22
          BevelOuter = bvRaised
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumbersOnly = True
          ParentFont = False
          TabOrder = 5
          Text = '350'
          OnKeyUp = Edit_LeftKeyUp
        end
        object Edit_Top: TEdit
          Left = 370
          Top = 20
          Width = 40
          Height = 22
          BevelOuter = bvRaised
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumbersOnly = True
          ParentFont = False
          TabOrder = 6
          Text = '250'
          OnKeyUp = Edit_LeftKeyUp
        end
        object Edit_Right: TEdit
          Left = 379
          Top = 66
          Width = 40
          Height = 22
          BevelOuter = bvRaised
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumbersOnly = True
          ParentFont = False
          TabOrder = 7
          Text = '700'
          OnKeyUp = Edit_LeftKeyUp
        end
        object Edit_Bottom: TEdit
          Left = 425
          Top = 66
          Width = 40
          Height = 22
          BevelOuter = bvRaised
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumbersOnly = True
          ParentFont = False
          TabOrder = 8
          Text = '500'
          OnKeyUp = Edit_LeftKeyUp
        end
        object BB_ImgCopy: TBitBtn
          Left = 89
          Top = 20
          Width = 90
          Height = 25
          Caption = 'Copy Img'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
            0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
            00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
            00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
            F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
            F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
            FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
            0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
            00337777FFFF77FF7733EEEE0000000003337777777777777333}
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 10
          OnClick = BB_ImgCopyClick
        end
        object BB_Save: TBitBtn
          Left = 185
          Top = 20
          Width = 90
          Height = 25
          Caption = 'Save Img'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333333333333333333333333333333333333333333333
            33333FFFFFFFFFFFFFFF000000000000000077777777777777770F7777777777
            77707F3F3333333333370F988888888888707F733FFFFFFFF3370F8800000000
            88707F337777777733370F888888888888707F333FFFFFFFF3370F8800000000
            88707F337777777733370F888888888888707F333333333333370F8888888888
            88707F333333333333370FFFFFFFFFFFFFF07FFFFFFFFFFFFFF7000000000000
            0000777777777777777733333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 11
          OnClick = BB_SaveClick
        end
        object Edit_No: TEdit
          Left = 254
          Top = 70
          Width = 53
          Height = 22
          NumbersOnly = True
          TabOrder = 3
          Text = '1'
        end
        object UD_Tpro: TUpDown
          Left = 307
          Top = 70
          Width = 16
          Height = 22
          Associate = Edit_No
          Max = 10000
          Position = 1
          TabOrder = 4
          OnClick = UD_TproClick
        end
        object BC_Auto: TCheckBox
          Left = 92
          Top = 50
          Width = 60
          Height = 17
          Caption = 'Auto'
          TabOrder = 12
        end
      end
    end
    object ScrollBox1: TScrollBox
      Left = 2
      Top = 100
      Width = 763
      Height = 522
      Align = alClient
      TabOrder = 1
      object Image1: TImage
        Left = 0
        Top = 0
        Width = 2600
        Height = 2200
        OnMouseDown = Image1MouseDown
        OnMouseMove = Image1MouseMove
      end
      object SS: TSelShape
        Left = 48
        Top = 32
        Width = 65
        Height = 65
        Brush.Style = bsClear
        Pen.Color = clRed
        Pen.Width = 2
        OnMouseMove = SSMouseMove
        SizeSense = 5
        MinWidth = 5
        MinHeight = 5
        MinTop = 0
        MinLeft = 0
        MaxBottom = 0
        MaxRight = 0
        SelOption = [ResizeX, ResizeY, MoveX, MoveY]
      end
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = 'WORD Data|| Double Data||Bitmap Img'
    Left = 138
    Top = 127
  end
end
