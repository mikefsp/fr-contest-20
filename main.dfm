object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Fast Reports Contest 2020'
  ClientHeight = 618
  ClientWidth = 700
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 200
    Top = 16
    Width = 251
    Height = 23
    Caption = 'Coronavirus COVID-19 reports'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbWHOlData: TLabel
    Left = 40
    Top = 168
    Width = 300
    Height = 13
    AutoSize = False
    Caption = 'lbWHOlData'
  end
  object lbLocalData: TLabel
    Left = 384
    Top = 168
    Width = 300
    Height = 13
    AutoSize = False
    Caption = 'lbLocalData'
  end
  object btnLoadLocal: TButton
    Left = 472
    Top = 88
    Width = 121
    Height = 49
    Caption = 'Load local data'
    TabOrder = 1
    OnClick = btnLoadLocalClick
  end
  object btnViewReport: TButton
    Left = 272
    Top = 224
    Width = 153
    Height = 49
    Caption = 'Display Report'
    Enabled = False
    TabOrder = 2
    OnClick = btnViewReportClick
  end
  object btnLoadWHO: TButton
    Left = 120
    Top = 88
    Width = 129
    Height = 49
    Caption = 'Load data from WHO'
    TabOrder = 0
    OnClick = btnLoadWHOClick
  end
  object Memo1: TMemo
    Left = 120
    Top = 304
    Width = 473
    Height = 193
    Color = clBtnFace
    Lines.Strings = (
      #1044#1077#1084#1086#1085#1089#1090#1088#1072#1094#1080#1086#1085#1085#1099#1077' '#1086#1090#1095#1077#1090#1099' '#1087#1086' '#1082#1086#1088#1086#1085#1072#1074#1080#1088#1091#1089#1091
      ''
      #1047#1072#1075#1088#1091#1079#1080#1090#1077' '#1076#1072#1085#1085#1099#1077':'
      'Load data from WHO '#1079#1072#1075#1088#1091#1078#1072#1077#1090' '#1087#1086#1089#1083#1077#1076#1085#1080#1077' '#1076#1072#1085#1085#1099#1077' '#1089' '#1089#1072#1081#1090#1072' '#1042#1054#1047'.'
      
        'Load local data '#1079#1072#1075#1088#1091#1078#1072#1077#1090' '#1076#1072#1085#1085#1099#1077' '#1080#1079' '#1092#1072#1081#1083#1072' WHO-COVID-19-global-da' +
        'ta.csv - '#1092#1072#1081#1083' '#1076#1086#1083#1078#1077#1085' '
      #1083#1077#1078#1072#1090#1100' '#1074' '#1086#1076#1085#1086#1084' '#1082#1072#1090#1072#1083#1086#1075#1077' '#1089' '#1087#1088#1086#1075#1088#1072#1084#1084#1086#1081
      ''
      #1053#1072#1078#1084#1080#1090#1077' '#1082#1085#1086#1087#1082#1091' Display Report. '
      #1054#1090#1095#1077#1090' '#1080#1085#1090#1077#1088#1072#1082#1090#1080#1074#1085#1099#1081'. '
      #1050#1083#1080#1082#1085#1080#1090#1077' '#1087#1086' '#1089#1090#1088#1072#1085#1077', '#1095#1090#1086#1073#1099' '#1086#1090#1082#1088#1099#1090#1100' '#1086#1090#1095#1077#1090' '#1087#1086' '#1101#1090#1086#1081' '#1089#1090#1088#1072#1085#1077'. '
      
        #1050#1083#1080#1082#1072#1081#1090#1077' '#1087#1086' '#1079#1072#1075#1086#1083#1086#1074#1082#1072#1084' '#1086#1090#1095#1077#1090#1072' '#1076#1083#1103' '#1089#1086#1088#1090#1080#1088#1086#1074#1082#1080' '#1080#1083#1080' '#1087#1086' '#1076#1088#1091#1075#1080#1084' '#1101#1083#1077#1084#1077 +
        #1085#1090#1072#1084' '#1076#1083#1103' '
      #1092#1080#1083#1100#1090#1088#1072#1094#1080#1080'.'
      ''
      '(c) Michael Karsyan, 2020')
    ReadOnly = True
    TabOrder = 3
  end
  object frxByCountry: TfrxReport
    Version = '6.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44045.875816122700000000
    ReportOptions.LastChange = 44045.908850046300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 512
    Top = 232
    Datasets = <
      item
        DataSet = frdGlobal
        DataSetName = 'frdGlobal'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 1005.354980000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object memTitleCountry: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 18.897650000000000000
          Width = 642.520100000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdGlobal."Country"]')
          ParentFont = False
        end
        object Chart1: TfrxChartView
          AllowVectorExport = True
          Top = 302.362253540000000000
          Width = 718.110700000000000000
          Height = 226.771653540000000000
          Restrictions = [rfDontEdit]
          HighlightColor = clBlack
          Frame.Typ = []
          Chart = {
            5450463006544368617274054368617274044C656674020003546F7002000557
            696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
            697369626C65080E4C6567656E642E56697369626C6508125469746C652E5465
            78742E537472696E67730106094E6577206361736573000A4178697342656869
            6E6408144465707468417869732E4C6162656C5374796C65070774616C4E6F6E
            650D4672616D652E56697369626C65080656696577334408165669657733444F
            7074696F6E732E526F746174696F6E02000A426576656C4F7574657207066276
            4E6F6E6505436F6C6F720707636C57686974650D44656661756C7443616E7661
            73060E54474449506C757343616E76617311436F6C6F7250616C65747465496E
            646578020D000A5442617253657269657307536572696573310D4D61726B732E
            56697369626C65080B4D61726B732E5374796C650708736D7356616C7565134D
            61726B732E4172726F772E56697369626C6508124D61726B732E4175746F506F
            736974696F6E081B4D61726B732E43616C6C6F75742E4172726F772E56697369
            626C65080C5856616C7565732E4E616D650601580D5856616C7565732E4F7264
            6572070B6C6F417363656E64696E670C5956616C7565732E4E616D6506034261
            720D5956616C7565732E4F7264657207066C6F4E6F6E65000000}
          ChartElevation = 345
          SeriesData = <
            item
              DataType = dtDBData
              DataSet = frdGlobal
              DataSetName = 'frdGlobal'
              SortOrder = soNone
              TopN = 0
              XType = xtText
              Source1 = 'frdGlobal."Date_reported"'
              Source2 = 'frdGlobal."New_cases"'
              XSource = 'frdGlobal."Date_reported"'
              YSource = 'frdGlobal."New_cases"'
            end>
        end
        object Chart9: TfrxChartView
          AllowVectorExport = True
          Top = 75.590600000000000000
          Width = 718.110236220000000000
          Height = 226.771653540000000000
          Restrictions = [rfDontEdit]
          HighlightColor = clBlack
          Frame.Typ = []
          Chart = {
            5450463006544368617274054368617274044C656674020003546F7002000557
            696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
            697369626C65080E4C6567656E642E56697369626C6508125469746C652E5465
            78742E537472696E677301060B546F74616C206361736573000D4672616D652E
            56697369626C65080656696577334408165669657733444F7074696F6E732E52
            6F746174696F6E02000A426576656C4F75746572070662764E6F6E6505436F6C
            6F720707636C57686974650D44656661756C7443616E766173060E5447444950
            6C757343616E76617311436F6C6F7250616C65747465496E646578020D000B54
            4C696E6553657269657307536572696573310F42727573682E4261636B436F6C
            6F720709636C44656661756C7416506F696E7465722E496E666C6174654D6172
            67696E73090D506F696E7465722E5374796C65070B707352656374616E676C65
            0C5856616C7565732E4E616D650601580D5856616C7565732E4F72646572070B
            6C6F417363656E64696E670C5956616C7565732E4E616D650601590D5956616C
            7565732E4F7264657207066C6F4E6F6E65000000}
          ChartElevation = 345
          SeriesData = <
            item
              DataType = dtDBData
              DataSet = frdGlobal
              DataSetName = 'frdGlobal'
              SortOrder = soNone
              TopN = 0
              XType = xtText
              Source1 = 'frdGlobal."Date_reported"'
              Source2 = 'frdGlobal."Cumulative_cases"'
              Source3 = 'frdGlobal."Date_reported"'
              XSource = 'frdGlobal."Date_reported"'
              YSource = 'frdGlobal."Cumulative_cases"'
            end>
        end
        object Chart10: TfrxChartView
          AllowVectorExport = True
          Top = 755.905560630000000000
          Width = 718.110700000000000000
          Height = 226.771653540000000000
          Restrictions = [rfDontEdit]
          HighlightColor = clBlack
          Frame.Typ = []
          Chart = {
            5450463006544368617274054368617274044C656674020003546F7002000557
            696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
            697369626C65080E4C6567656E642E56697369626C6508105469746C652E466F
            6E742E436F6C6F720705636C526564125469746C652E546578742E537472696E
            677301060A4E657720646561746873000A41786973426568696E640814446570
            7468417869732E4C6162656C5374796C65070774616C4E6F6E650D4672616D65
            2E56697369626C65080656696577334408165669657733444F7074696F6E732E
            526F746174696F6E02000A426576656C4F75746572070662764E6F6E6505436F
            6C6F720707636C57686974650D44656661756C7443616E766173060E54474449
            506C757343616E76617311436F6C6F7250616C65747465496E646578020D000A
            5442617253657269657307536572696573310D4D61726B732E56697369626C65
            080B536572696573436F6C6F720705636C5265640C5856616C7565732E4E616D
            650601580D5856616C7565732E4F72646572070B6C6F417363656E64696E670C
            5956616C7565732E4E616D6506034261720D5956616C7565732E4F7264657207
            066C6F4E6F6E65000000}
          ChartElevation = 345
          SeriesData = <
            item
              DataType = dtDBData
              DataSet = frdGlobal
              DataSetName = 'frdGlobal'
              SortOrder = soNone
              TopN = 0
              XType = xtText
              Source1 = 'frdGlobal."Date_reported"'
              Source2 = 'frdGlobal."New_deaths"'
              Source3 = 'frdGlobal."Date_reported"'
              XSource = 'frdGlobal."Date_reported"'
              YSource = 'frdGlobal."New_deaths"'
            end>
        end
        object Chart11: TfrxChartView
          AllowVectorExport = True
          Top = 529.133907090000000000
          Width = 718.110236220000000000
          Height = 226.771653540000000000
          Restrictions = [rfDontEdit]
          HighlightColor = clBlack
          Frame.Typ = []
          Chart = {
            5450463006544368617274054368617274044C656674020003546F7002000557
            696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
            697369626C65080E4C6567656E642E56697369626C6508105469746C652E466F
            6E742E436F6C6F720705636C526564125469746C652E546578742E537472696E
            677301060C546F74616C20646561746873000D4672616D652E56697369626C65
            080656696577334408165669657733444F7074696F6E732E526F746174696F6E
            02000A426576656C4F75746572070662764E6F6E6505436F6C6F720707636C57
            686974650D44656661756C7443616E766173060E54474449506C757343616E76
            617311436F6C6F7250616C65747465496E646578020D000B544C696E65536572
            69657307536572696573310B536572696573436F6C6F720705636C5265640F42
            727573682E4261636B436F6C6F720709636C44656661756C7416506F696E7465
            722E496E666C6174654D617267696E73090D506F696E7465722E5374796C6507
            0B707352656374616E676C650C5856616C7565732E4E616D650601580D585661
            6C7565732E4F72646572070B6C6F417363656E64696E670C5956616C7565732E
            4E616D650601590D5956616C7565732E4F7264657207066C6F4E6F6E65000000}
          ChartElevation = 345
          SeriesData = <
            item
              DataType = dtDBData
              DataSet = frdGlobal
              DataSetName = 'frdGlobal'
              SortOrder = soNone
              TopN = 0
              XType = xtText
              Source1 = 'frdGlobal."Date_reported"'
              Source2 = 'frdGlobal."Cumulative_deaths"'
              Source3 = 'frdGlobal."Date_reported"'
              XSource = 'frdGlobal."Date_reported"'
              YSource = 'frdGlobal."Cumulative_deaths"'
            end>
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object Header2: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object memTitleDate: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Date')
        end
        object memTitleNewCases: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756176440000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            'Total cases')
          ParentFont = False
        end
        object memTitleNewDeaths: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267487090000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '+%0.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = 'Value > 0'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = clRed
          Highlight.Fill.ForeColor = clNone
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            'New cases')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 374.173470000000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            'Total deaths')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 283.464310650000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '+%0.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = 'Value > 0'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = clRed
          Highlight.Fill.ForeColor = clNone
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            'New deaths')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 64.252010000000000000
        Width = 718.110700000000000000
        DataSet = frdGlobal
        DataSetName = 'frdGlobal'
        RowCount = 0
        object memDate: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'Date_reported'
          DataSet = frdGlobal
          DataSetName = 'frdGlobal'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frdGlobal."Date_reported"]')
        end
        object memNewCases: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267926440000000000
          Top = 3.779530000000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          DataField = 'New_cases'
          DataSet = frdGlobal
          DataSetName = 'frdGlobal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frdGlobal."New_cases"]')
          ParentFont = False
        end
        object memNewDeaths: TfrxMemoView
          AllowVectorExport = True
          Left = 283.464823220000000000
          Top = 3.779530000000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          DataField = 'New_deaths'
          DataSet = frdGlobal
          DataSetName = 'frdGlobal'
          DisplayFormat.FormatStr = '+%0.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = 'Value > 0'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = clRed
          Highlight.Fill.ForeColor = clNone
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frdGlobal."New_deaths"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 3.779530000000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          DataField = 'Cumulative_cases'
          DataSet = frdGlobal
          DataSetName = 'frdGlobal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frdGlobal."Cumulative_cases"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 374.173470000000000000
          Top = 3.779530000000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          DataField = 'Cumulative_deaths'
          DataSet = frdGlobal
          DataSetName = 'frdGlobal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frdGlobal."Cumulative_deaths"]')
          ParentFont = False
        end
      end
    end
  end
  object frdGlobal: TfrxDBDataset
    UserName = 'frdGlobal'
    CloseDataSource = False
    DataSet = dmMain.tbGlobal
    BCDToCurrency = False
    Left = 560
    Top = 224
  end
  object frxMain: TfrxReport
    Version = '6.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44044.803760949100000000
    ReportOptions.LastChange = 44047.983425544000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      
        '                                                                ' +
        '                                     '
      'end.')
    OnClickObject = frxMainClickObject
    OnGetValue = frxMainGetValue
    Left = 504
    Top = 288
    Datasets = <
      item
        DataSet = frdMain
        DataSetName = 'frdMain'
      end
      item
        DataSet = frdRegion
        DataSetName = 'frdRegion'
      end>
    Variables = <
      item
        Name = ' MyVars'
        Value = Null
      end
      item
        Name = 'TitleRegion'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 585.827150000000000000
        Width = 718.110700000000000000
        DataSet = frdMain
        DataSetName = 'frdMain'
        RowCount = 0
        object memCountry: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 393.070924720000000000
          Height = 18.897650000000000000
          TagStr = '[frdMain."Country_code"]'
          DataField = 'Country'
          DataSet = frdMain
          DataSetName = 'frdMain'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frdMain."Country"]')
          ParentFont = False
        end
        object memNewCases: TfrxMemoView
          AllowVectorExport = True
          Left = 393.071266440000000000
          Top = 3.779530000000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          DataField = 'New_cases'
          DataSet = frdMain
          DataSetName = 'frdMain'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frdMain."New_cases"]')
          ParentFont = False
        end
        object memTotalCases: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441359830000000000
          Top = 3.779530000000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          DataField = 'Cumulative_cases'
          DataSet = frdMain
          DataSetName = 'frdMain'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frdMain."Cumulative_cases"]')
          ParentFont = False
        end
        object memNewDeaths: TfrxMemoView
          AllowVectorExport = True
          Left = 555.590983220000000000
          Top = 3.779530000000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          DataField = 'New_deaths'
          DataSet = frdMain
          DataSetName = 'frdMain'
          DisplayFormat.FormatStr = '+%0.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = 'Value > 0'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = clRed
          Highlight.Fill.ForeColor = clNone
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frdMain."New_deaths"]')
          ParentFont = False
        end
        object memTotalDeaths: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740606610000000000
          Top = 3.779530000000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          DataField = 'Cumulative_deaths'
          DataSet = frdMain
          DataSetName = 'frdMain'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frdMain."Cumulative_deaths"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 396.850650000000000000
        Top = 166.299320000000000000
        Width = 718.110700000000000000
        object memTitleCountry: TfrxMemoView
          AllowVectorExport = True
          Top = 374.173470000000000000
          Width = 393.070924720000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            'Country')
          ParentFont = False
        end
        object memTitleNewCases: TfrxMemoView
          AllowVectorExport = True
          Left = 393.071266440000000000
          Top = 374.173470000000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            'New cases')
          ParentFont = False
        end
        object memTitleTotalCases: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441359830000000000
          Top = 374.173470000000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            'Total cases')
          ParentFont = False
        end
        object memTitleNewDeaths: TfrxMemoView
          AllowVectorExport = True
          Left = 555.590983220000000000
          Top = 374.173470000000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '+%0.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = 'Value > 0'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = clRed
          Highlight.Fill.ForeColor = clNone
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            'New deaths')
          ParentFont = False
        end
        object memTitleTotalDeaths: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740606610000000000
          Top = 374.173470000000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            'Total deaths')
          ParentFont = False
        end
        object chartCases: TfrxChartView
          AllowVectorExport = True
          Top = 3.779529999999994000
          Width = 332.598640000000000000
          Height = 321.260050000000000000
          Restrictions = [rfDontEdit]
          HighlightColor = clBlack
          Frame.Typ = []
          Chart = {
            5450463006544368617274054368617274044C656674020003546F7002000557
            696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
            697369626C6508104C6567656E642E416C69676E6D656E7407086C61426F7474
            6F6D124C6567656E642E526573697A65436861727408115469746C652E466F6E
            742E48656967687402F0125469746C652E546578742E537472696E677301060B
            546F74616C206361736573000B4178697356697369626C65080D4672616D652E
            56697369626C6508175669657733444F7074696F6E732E456C65766174696F6E
            033B01185669657733444F7074696F6E732E4F7274686F676F6E616C08195669
            657733444F7074696F6E732E5065727370656374697665020016566965773344
            4F7074696F6E732E526F746174696F6E0368010B56696577334457616C6C7308
            0A426576656C4F75746572070662764E6F6E6505436F6C6F720707636C576869
            74650D44656661756C7443616E766173060E54474449506C757343616E766173
            11436F6C6F7250616C65747465496E646578020D000A54506965536572696573
            07536572696573310D4D61726B732E56697369626C6508055469746C65060B54
            6F74616C2063617365730D5856616C7565732E4F72646572070B6C6F41736365
            6E64696E670C5956616C7565732E4E616D6506035069650D5956616C7565732E
            4F7264657207066C6F4E6F6E651A4672616D652E496E6E657242727573682E42
            61636B436F6C6F720705636C526564224672616D652E496E6E65724272757368
            2E4772616469656E742E456E64436F6C6F720706636C47726179224672616D65
            2E496E6E657242727573682E4772616469656E742E4D6964436F6C6F72070763
            6C5768697465244672616D652E496E6E657242727573682E4772616469656E74
            2E5374617274436F6C6F720440404000214672616D652E496E6E657242727573
            682E4772616469656E742E56697369626C65091B4672616D652E4D6964646C65
            42727573682E4261636B436F6C6F720708636C59656C6C6F77234672616D652E
            4D6964646C6542727573682E4772616469656E742E456E64436F6C6F72048282
            8200234672616D652E4D6964646C6542727573682E4772616469656E742E4D69
            64436F6C6F720707636C5768697465254672616D652E4D6964646C6542727573
            682E4772616469656E742E5374617274436F6C6F720706636C47726179224672
            616D652E4D6964646C6542727573682E4772616469656E742E56697369626C65
            091A4672616D652E4F7574657242727573682E4261636B436F6C6F720707636C
            477265656E224672616D652E4F7574657242727573682E4772616469656E742E
            456E64436F6C6F720440404000224672616D652E4F7574657242727573682E47
            72616469656E742E4D6964436F6C6F720707636C5768697465244672616D652E
            4F7574657242727573682E4772616469656E742E5374617274436F6C6F720708
            636C53696C766572214672616D652E4F7574657242727573682E477261646965
            6E742E56697369626C65090B4672616D652E57696474680204194F7468657253
            6C6963652E4C6567656E642E56697369626C6508000000}
          ChartElevation = 315
          SeriesData = <
            item
              DataType = dtDBData
              DataSet = frdRegion
              DataSetName = 'frdRegion'
              SortOrder = soDescending
              TopN = 0
              XType = xtNumber
              Source1 = 'frdRegion."Region_name"'
              Source2 = 'frdRegion."Cumulative_cases"'
              XSource = 'frdRegion."Region_name"'
              YSource = 'frdRegion."Cumulative_cases"'
            end>
        end
        object chartDeaths: TfrxChartView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Top = 3.779529999999994000
          Width = 328.819110000000000000
          Height = 321.260050000000000000
          Restrictions = [rfDontEdit]
          HighlightColor = clBlack
          Frame.Typ = []
          Chart = {
            5450463006544368617274054368617274044C656674020003546F7002000557
            696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
            697369626C6508104C6567656E642E416C69676E6D656E7407086C61426F7474
            6F6D124C6567656E642E526573697A65436861727408105469746C652E466F6E
            742E436F6C6F720705636C526564115469746C652E466F6E742E486569676874
            02F0125469746C652E546578742E537472696E677301060C546F74616C206465
            61746873000B4178697356697369626C65080D4672616D652E56697369626C65
            08175669657733444F7074696F6E732E456C65766174696F6E033B0118566965
            7733444F7074696F6E732E4F7274686F676F6E616C08195669657733444F7074
            696F6E732E50657273706563746976650200165669657733444F7074696F6E73
            2E526F746174696F6E0368010B56696577334457616C6C73080A426576656C4F
            75746572070662764E6F6E6505436F6C6F720707636C57686974650D44656661
            756C7443616E766173060E54474449506C757343616E76617311436F6C6F7250
            616C65747465496E646578020D000A5450696553657269657307536572696573
            310D4D61726B732E56697369626C65080D5856616C7565732E4F72646572070B
            6C6F417363656E64696E670C5956616C7565732E4E616D6506035069650D5956
            616C7565732E4F7264657207066C6F4E6F6E651A4672616D652E496E6E657242
            727573682E4261636B436F6C6F720705636C526564224672616D652E496E6E65
            7242727573682E4772616469656E742E456E64436F6C6F720706636C47726179
            224672616D652E496E6E657242727573682E4772616469656E742E4D6964436F
            6C6F720707636C5768697465244672616D652E496E6E657242727573682E4772
            616469656E742E5374617274436F6C6F720440404000214672616D652E496E6E
            657242727573682E4772616469656E742E56697369626C65091B4672616D652E
            4D6964646C6542727573682E4261636B436F6C6F720708636C59656C6C6F7723
            4672616D652E4D6964646C6542727573682E4772616469656E742E456E64436F
            6C6F720482828200234672616D652E4D6964646C6542727573682E4772616469
            656E742E4D6964436F6C6F720707636C5768697465254672616D652E4D696464
            6C6542727573682E4772616469656E742E5374617274436F6C6F720706636C47
            726179224672616D652E4D6964646C6542727573682E4772616469656E742E56
            697369626C65091A4672616D652E4F7574657242727573682E4261636B436F6C
            6F720707636C477265656E224672616D652E4F7574657242727573682E477261
            6469656E742E456E64436F6C6F720440404000224672616D652E4F7574657242
            727573682E4772616469656E742E4D6964436F6C6F720707636C576869746524
            4672616D652E4F7574657242727573682E4772616469656E742E537461727443
            6F6C6F720708636C53696C766572214672616D652E4F7574657242727573682E
            4772616469656E742E56697369626C65090B4672616D652E5769647468020419
            4F74686572536C6963652E4C6567656E642E56697369626C6508000000}
          ChartElevation = 315
          SeriesData = <
            item
              DataType = dtDBData
              DataSet = frdRegion
              DataSetName = 'frdRegion'
              SortOrder = soDescending
              TopN = 0
              XType = xtNumber
              Source1 = 'frdRegion."Region_name"'
              Source2 = 'frdRegion."Cumulative_deaths"'
              XSource = 'frdRegion."Region_name"'
              YSource = 'frdRegion."Cumulative_deaths"'
            end>
        end
        object memRecentDay: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 340.157700000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          OnPreviewClick = 'memRecentDayOnPreviewClick'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            'Recent day')
          ParentFont = False
        end
        object memPreviousDay: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976500000000000000
          Top = 340.157700000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          OnPreviewClick = 'memPreviousDayOnPreviewClick'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            'Previous day')
          ParentFont = False
        end
        object memAllRegions: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Top = 340.157700000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          OnPreviewClick = 'memPreviousDayOnPreviewClick'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            'All regions')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 340.157700000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Filter:')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 86.929190000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 207.874150000000000000
          Top = 7.559060000000000000
          Width = 302.362400000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'COVID-19 Statistics')
          ParentFont = False
        end
        object memRegion: TfrxMemoView
          AllowVectorExport = True
          Left = 207.874150000000000000
          Top = 41.574830000000000000
          Width = 302.362400000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[memRegion]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 668.976810000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 396.850650000000000000
          Top = 18.897647560000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frdMain."New_cases">,MasterData1)]')
          ParentFont = False
        end
        object memTotalCountry: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 393.070924720000000000
          Height = 18.897650000000000000
          TagStr = '[frdMain."Country_code"]'
          DataSet = frdMain
          DataSetName = 'frdMain'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 18.897647560000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frdMain."Cumulative_cases">,MasterData1)]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
          Top = 18.897647560000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frdMain."New_deaths">,MasterData1)]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 18.897647560000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frdMain."Cumulative_deaths">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frdMain: TfrxDBDataset
    UserName = 'frdMain'
    CloseDataSource = False
    DataSet = dmMain.tbMain
    BCDToCurrency = False
    Left = 552
    Top = 288
  end
  object frdRegion: TfrxDBDataset
    UserName = 'frdRegion'
    CloseDataSource = False
    DataSet = dmMain.tbRegion
    BCDToCurrency = False
    Left = 544
    Top = 344
  end
end
