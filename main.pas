unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, frxClass, frxDBSet, frxChart;

type
  TfrmMain = class(TForm)
    btnLoadLocal: TButton;
    frxByCountry: TfrxReport;
    frdGlobal: TfrxDBDataset;
    frxMain: TfrxReport;
    frdMain: TfrxDBDataset;
    btnViewReport: TButton;
    frdRegion: TfrxDBDataset;
    btnLoadWHO: TButton;
    Label1: TLabel;
    lbWHOlData: TLabel;
    lbLocalData: TLabel;
    Memo1: TMemo;
    procedure btnLoadLocalClick(Sender: TObject);
    procedure frxMainClickObject(Sender: TfrxView; Button: TMouseButton;
      Shift: TShiftState; var Modified: Boolean);
    procedure btnViewReportClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure frxMainGetValue(const VarName: string; var Value: Variant);
    procedure btnLoadWHOClick(Sender: TObject);
  private
    FFilterXDay: Integer;
    FFilterRegion: String;
    LocalFileName : String;
    procedure SetFilterXDay(const Value: Integer);
    procedure SetFilterRegion(const Value: String);
    { Private declarations }
    property FilterXDay : Integer read FFilterXDay write SetFilterXDay;
    property FilterRegion : String read FFilterRegion write SetFilterRegion;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation
{$R *.dfm}

uses data, Winapi.UrlMon;

const
  DataFileName = 'WHO-COVID-19-global-data.csv';
  DataWHOURL   = 'https://covid19.who.int/WHO-COVID-19-global-data.csv';

procedure TfrmMain.btnLoadLocalClick(Sender: TObject);
begin
  btnViewReport.Enabled := False;
  Application.ProcessMessages;
  dmMain.LoadGlobalData(LocalFileName);
  btnViewReport.Enabled := True;
end;


procedure TfrmMain.btnLoadWHOClick(Sender: TObject);
var
  TempPath : Array[0..MAX_PATH - 14] of Char;
  TempFile : Array[0..MAX_PATH] of Char;
begin
  GetTempPath(MAX_PATH - 14, TempPath);
  GetTempFileName(TempPath, 'WHO', 0, TempFile);
  if not Succeeded(URLDownloadToFile(nil, PChar(DataWHOURL), TempFile, 0, nil)) then begin
    ShowMessage('Unable to download data file');
    Exit;
  end;
  btnViewReport.Enabled := False;
  Application.ProcessMessages;
  dmMain.LoadGlobalData(TempFile);
  btnViewReport.Enabled := True;
end;

procedure TfrmMain.btnViewReportClick(Sender: TObject);
begin
  frxMain.ShowReport();
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  LocalFileName := IncludeTrailingBackslash(ExtractFileDir(Application.ExeName)) + DataFileName;
  lbLocalData.Caption := LocalFileName;
  lbWHOlData.Caption := DataWHOURL;
end;

procedure TfrmMain.frxMainClickObject(Sender: TfrxView; Button: TMouseButton;
  Shift: TShiftState; var Modified: Boolean);
var
  RegionName, RegionCode : String;
begin
  if Sender.Name = 'memCountry' then begin
    dmMain.tbGlobal.Filter := 'Country_code = ''' + Sender.TagStr + '''';
    dmMain.tbGlobal.Filtered := True;
    dmMain.tbGlobal.IndexFieldNames := 'Date_reported';
    frxByCountry.ShowReport();
  end
  else if Sender.Name = 'memRecentDay' then begin
    FilterXDay := 0;
    frxMain.ShowReport();
  end
  else if Sender.Name = 'memPreviousDay' then begin
    FilterXDay := 1;
    frxMain.ShowReport();
  end
  else if Sender.Name = 'memTitleCountry' then begin
    dmMain.tbMain.IndexName := 'IX_Country';
    frxMain.ShowReport();
  end
  else if Sender.Name = 'memTitleNewCases' then begin
    dmMain.tbMain.IndexName := 'IX_New_cases';
    frxMain.ShowReport();
  end
  else if Sender.Name = 'memTitleTotalCases' then begin
    dmMain.tbMain.IndexName := 'IX_Cumulative_cases';
    frxMain.ShowReport();
  end
  else if Sender.Name = 'memTitleNewDeaths' then begin
    dmMain.tbMain.IndexName := 'IX_New_deaths';
    frxMain.ShowReport();
  end
  else if Sender.Name = 'memTitleTotalDeaths' then begin
    dmMain.tbMain.IndexName := 'IX_Cumulative_deaths';
    frxMain.ShowReport();
  end
  else if (Sender.Name = 'chartCases') or
          (Sender.Name = 'chartDeaths') then begin
    RegionName := TfrxChartView(Sender).ClickedVal1;
    try
      RegionCode := dmMain.tbRegion.Lookup('Region_name', RegionName, 'WHO_region');
    except
      Exit; //clicked somewhere in wrong place
    end;
    FilterRegion := RegionCode;
//    frxMain.Variables.Variables['[TitleRegion]'] := RegionName;
    frxMain.Variables.AddVariable('MyVars', 'TitleRegion', RegionName);
    frxMain.ShowReport();
  end
  else if Sender.Name = 'memAllRegions' then begin
    FilterRegion := '';
//    frxMain.Variables.Variables['[TitleRegion]'] := 'All regions';
    frxMain.Variables.AddVariable('MyVars', 'TitleRegion', 'All regions');
    frxMain.ShowReport();
  end;


end;

procedure TfrmMain.frxMainGetValue(const VarName: string; var Value: Variant);
begin
  if (VarName = 'memRegion')  then begin
    if FilterRegion = '' then
      Value := 'All regions'
    else
      Value := dmMain.tbRegion.Lookup('WHO_region', FilterRegion, 'Region_name');
  end;

end;

procedure TfrmMain.SetFilterRegion(const Value: String);
begin
  if FFilterRegion <> Value then begin
    FFilterRegion := Value;
    if FFilterRegion <> '' then
      dmMain.tbMain.Filter := Format('XDay = %d and WHO_region = ''%s''', [FFilterXDay, FFilterRegion])
    else
      dmMain.tbMain.Filter := Format('XDay = %d', [FFilterXDay]);
    dmMain.tbMain.Filtered := True;
  end;
end;

procedure TfrmMain.SetFilterXDay(const Value: Integer);
begin
  if FFilterXDay <> Value then begin
    FFilterXDay := Value;
    if FFilterRegion <> '' then
      dmMain.tbMain.Filter := Format('XDay = %d and WHO_region = ''%s''', [FFilterXDay, FFilterRegion])
    else
      dmMain.tbMain.Filter := Format('XDay = %d', [FFilterXDay]);
    dmMain.tbMain.Filtered := True;
  end;
end;

end.
