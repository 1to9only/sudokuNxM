object Form1: TForm1
  Left = 200
  Top = 100
  Anchors = []
  Caption = 'SATSudoku 2022.5.16'
  ClientHeight = 755
  ClientWidth = 950
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 934
    Height = 540
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Fixedsys'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    ScrollBars = ssBoth
    TabOrder = 0
    WordWrap = False
  end
  object GroupBox1: TGroupBox
    Left = 10
    Top = 560
    Width = 140
    Height = 105
    Anchors = [akLeft, akBottom]
    Caption = 'Load from file'
    TabOrder = 1
    object Label1: TLabel
      Left = 37
      Top = 20
      Width = 68
      Height = 13
      Anchors = [akTop]
      Caption = 'Select boxsize'
    end
    object SpinEditRow: TSpinEdit
      Left = 18
      Top = 40
      Width = 41
      Height = 22
      Anchors = [akTop]
      MaxValue = 15
      MinValue = 1
      PopupMenu = PopupMenu1
      TabOrder = 0
      Value = 3
      OnChange = SpinEditRowChange
      OnEnter = SpinEditRowChange
    end
    object Label2: TLabel
      Left = 65
      Top = 42
      Width = 6
      Height = 13
      Anchors = [akTop]
      Caption = 'x'
    end
    object SpinEditCol: TSpinEdit
      Left = 78
      Top = 40
      Width = 41
      Height = 22
      Anchors = [akTop]
      MaxValue = 15
      MinValue = 1
      PopupMenu = PopupMenu1
      TabOrder = 1
      Value = 3
      OnChange = SpinEditColChange
      OnEnter = SpinEditColChange
    end
    object BLoad: TButton
      Left = 17
      Top = 70
      Width = 104
      Height = 25
      Anchors = [akTop]
      Caption = 'Load puzzle'
      TabOrder = 2
      OnClick = BLoadClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 10
    Top = 670
    Width = 140
    Height = 75
    Anchors = [akLeft, akBottom]
    Caption = 'Miscellaneous '
    TabOrder = 2
    object CheckOutlineBoxes: TCheckBox
      Left = 18
      Top = 20
      Width = 104
      Height = 14
      Anchors = [akLeft, akBottom]
      Caption = 'Outline Boxes'
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object BPrintPuzzle: TButton
      Left = 17
      Top = 40
      Width = 104
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'Show active puzzle'
      TabOrder = 1
      OnClick = BPrintPuzzleClick
    end
  end
  object GroupBox3: TGroupBox
    Left = 159
    Top = 560
    Width = 160
    Height = 187
    Anchors = [akLeft, akBottom]
    Caption = 'Solve'
    TabOrder = 3
    object CheckVerbose: TCheckBox
      Left = 18
      Top = 20
      Width = 60
      Height = 15
      Caption = 'Verbose'
      TabOrder = 0
    end
    object CheckSudokuX: TCheckBox
      Left = 80
      Top = 20
      Width = 65
      Height = 15
      Anchors = [akLeft, akBottom]
      Caption = 'SudokuX'
      TabOrder = 1
    end
    object CheckSudokuP: TCheckBox
      Left = 80
      Top = 42
      Width = 65
      Height = 15
      Caption = 'SudokuP'
      TabOrder = 2
    end
    object CheckNC: TCheckBox
      Left = 18
      Top = 64
      Width = 60
      Height = 15
      Caption = 'NC+'
      TabOrder = 3
    end
    object CheckSudokuW: TCheckBox
      Left = 80
      Top = 64
      Width = 65
      Height = 15
      Caption = 'SudokuW'
      TabOrder = 4
    end
    object BSATSolver: TButton
      Left = 17
      Top = 90
      Width = 123
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'Solve puzzle'
      Enabled = False
      TabOrder = 5
      OnClick = BSATSolverClick
    end
    object BAddSolution: TButton
      Left = 17
      Top = 120
      Width = 123
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'Find different solution'
      Enabled = False
      TabOrder = 6
      OnClick = BAddSolutionClick
    end
    object BCheckSolution: TButton
      Left = 17
      Top = 150
      Width = 123
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'Check Solution'
      TabOrder = 7
      OnClick = BCheckSolutionClick
    end
  end
  object GroupBox4: TGroupBox
    Left = 328
    Top = 560
    Width = 204
    Height = 187
    Anchors = [akLeft, akBottom]
    Caption = 'Used methods'
    TabOrder = 4
    object CheckHiddenSingles: TCheckBox
      Left = 16
      Top = 19
      Width = 97
      Height = 17
      Caption = 'Hidden Singles'
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object CheckNakedSingles: TCheckBox
      Left = 114
      Top = 19
      Width = 97
      Height = 17
      Caption = 'Naked Singles'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object CheckBlockLineInteraction: TCheckBox
      Left = 16
      Top = 40
      Width = 129
      Height = 17
      Caption = 'Box - Line Interaction'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object Splitter1: TSplitter
      Left = 0
      Top = 61
      Width = 203
      Height = 3
      Align = alNone
      Beveled = True
    end
    object CheckHiddenTuple: TCheckBox
      Left = 16
      Top = 70
      Width = 99
      Height = 17
      Caption = 'Hidden Tuples'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object SpinEditMaxHiddenTuple: TSpinEdit
      Left = 107
      Top = 68
      Width = 41
      Height = 22
      MaxValue = 1000
      MinValue = 1
      PopupMenu = PopupMenu1
      TabOrder = 4
      Value = 3
    end
    object Label3: TLabel
      Left = 154
      Top = 70
      Width = 41
      Height = 13
      Caption = 'Maxsize '
    end
    object CheckNakedTuple: TCheckBox
      Left = 16
      Top = 100
      Width = 99
      Height = 17
      Caption = 'Naked Tuples'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object SpinEditMaxNakedTuple: TSpinEdit
      Left = 107
      Top = 98
      Width = 41
      Height = 22
      MaxValue = 1000
      MinValue = 1
      PopupMenu = PopupMenu1
      TabOrder = 6
      Value = 3
      OnChange = SEMaxHiddenTupleChange
    end
    object Label4: TLabel
      Left = 154
      Top = 100
      Width = 41
      Height = 13
      Caption = 'Maxsize '
    end
    object CheckBasicFish: TCheckBox
      Left = 16
      Top = 130
      Width = 99
      Height = 17
      Caption = 'Basic Fish'
      TabOrder = 7
    end
    object SpinEditMaxFish: TSpinEdit
      Left = 107
      Top = 128
      Width = 41
      Height = 22
      MaxValue = 1000
      MinValue = 1
      PopupMenu = PopupMenu1
      TabOrder = 8
      Value = 3
    end
    object Label5: TLabel
      Left = 154
      Top = 130
      Width = 41
      Height = 13
      Caption = 'Maxsize'
    end
    object Splitter2: TSplitter
      Left = 0
      Top = 154
      Width = 203
      Height = 3
      Align = alNone
      Beveled = True
    end
    object CheckSATSolver: TCheckBox
      Left = 16
      Top = 164
      Width = 88
      Height = 17
      Caption = 'SAT Solver'
      TabOrder = 9
    end
  end
  object GroupBox5: TGroupBox
    Left = 541
    Top = 560
    Width = 240
    Height = 100
    Anchors = [akLeft, akBottom]
    Caption = 'Symmetries'
    TabOrder = 5
    object GroupBox6: TGroupBox
      Left = 10
      Top = 15
      Width = 90
      Height = 78
      Caption = 'Rotational'
      TabOrder = 0
      object RadioOneFold: TRadioButton
        Left = 10
        Top = 15
        Width = 80
        Height = 17
        Caption = '1-fold'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = RbSymClick
      end
      object RadioTwoFold: TRadioButton
        Left = 10
        Top = 35
        Width = 80
        Height = 17
        Caption = '2-fold'
        TabOrder = 1
        OnClick = RbSymClick
      end
      object RadioFourFold: TRadioButton
        Left = 10
        Top = 55
        Width = 80
        Height = 17
        Caption = '4-fold'
        TabOrder = 2
        OnClick = RbSymClick
      end
    end
    object CheckCenterLineHor: TCheckBox
      Left = 110
      Top = 20
      Width = 123
      Height = 17
      Caption = 'Center line horizontal '
      TabOrder = 1
      OnClick = CheckCenterLineHorClick
    end
    object CheckCenterLineVer: TCheckBox
      Left = 110
      Top = 45
      Width = 123
      Height = 17
      Caption = 'Center line vertical'
      TabOrder = 2
      OnClick = CheckCenterLineVerClick
    end
    object CheckDiagonal: TCheckBox
      Left = 110
      Top = 70
      Width = 123
      Height = 17
      Caption = 'Diagonal'
      TabOrder = 3
      OnClick = CheckDiagonalClick
    end
  end
  object GroupBox7: TGroupBox
    Left = 541
    Top = 665
    Width = 240
    Height = 82
    Anchors = [akLeft, akBottom]
    Caption = 'Reduce puzzle'
    TabOrder = 6
    object BReduceBasic: TButton
      Left = 15
      Top = 20
      Width = 113
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'Use basic methods'
      Enabled = False
      TabOrder = 0
      OnClick = BReduceBasicClick
    end
    object BStop: TButton
      Left = 137
      Top = 20
      Width = 97
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'Stop Reduce'
      TabOrder = 1
      OnClick = BStopClick
    end
    object BReduceSAT: TButton
      Left = 15
      Top = 50
      Width = 113
      Height = 25
      Caption = 'Use SAT method '
      Enabled = False
      TabOrder = 2
      OnClick = BReduceSATClick
    end
    object CheckSingleStep: TCheckBox
      Left = 143
      Top = 54
      Width = 77
      Height = 17
      Anchors = [akLeft, akBottom]
      Caption = 'Single step'
      TabOrder = 3
    end
  end
  object GroupBox8: TGroupBox
    Left = 790
    Top = 560
    Width = 150
    Height = 187
    Anchors = [akLeft, akBottom]
    Caption = 'Create Grid'
    TabOrder = 7
    object BDefault: TButton
      Left = 20
      Top = 20
      Width = 110
      Height = 25
      Caption = 'Default Grid'
      TabOrder = 0
      OnClick = BDefaultClick
    end
    object BCreate: TButton
      Left = 20
      Top = 55
      Width = 110
      Height = 25
      Caption = 'Random Grid'
      TabOrder = 1
      OnClick = BCreateClick
    end
    object BLowClueGrid: TButton
      Left = 10
      Top = 100
      Width = 130
      Height = 25
      Caption = 'Few Clues Default Grid'
      TabOrder = 2
      OnClick = BLowClueGridClick
    end
    object BPermute: TButton
      Left = 20
      Top = 150
      Width = 110
      Height = 25
      Caption = 'Shuffle Grid'
      TabOrder = 3
      OnClick = BPermuteClick
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 50
    Top = 500
  end
  object PopupMenu1: TPopupMenu
    Left = 100
    Top = 500
    object Paste1: TMenuItem
      Caption = 'Paste'
      ShortCut = 16470
      OnClick = Paste1Click
    end
  end
end
