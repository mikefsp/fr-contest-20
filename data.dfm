object dmMain: TdmMain
  OldCreateOrder = False
  Height = 260
  Width = 257
  object tbGlobal: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    FieldDefs = <>
    IndexDefs = <>
    IndexFieldNames = 'Country_code'
    MasterFields = 'Country_code'
    Params = <>
    StoreDefs = True
    Left = 56
    Top = 61
  end
  object dsGlobal: TDataSource
    AutoEdit = False
    DataSet = tbGlobal
    Left = 112
    Top = 64
  end
  object tbMain: TClientDataSet
    Aggregates = <>
    Filter = 'XDay=0'
    Filtered = True
    FieldDefs = <
      item
        Name = 'Date_reported'
        DataType = ftDate
      end
      item
        Name = 'Country_code'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Country'
        DataType = ftWideString
        Size = 70
      end
      item
        Name = 'WHO_region'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'New_cases'
        DataType = ftInteger
      end
      item
        Name = 'Cumulative_cases'
        DataType = ftInteger
      end
      item
        Name = 'New_deaths'
        DataType = ftInteger
      end
      item
        Name = 'Cumulative_deaths'
        DataType = ftInteger
      end
      item
        Name = 'XDay'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 56
    Top = 125
  end
  object dsMain: TDataSource
    AutoEdit = False
    DataSet = tbMain
    Left = 120
    Top = 128
  end
  object tbRegion: TClientDataSet
    Aggregates = <>
    Filtered = True
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 56
    Top = 181
  end
  object dsRegion: TDataSource
    AutoEdit = False
    DataSet = tbRegion
    Left = 120
    Top = 184
  end
end
