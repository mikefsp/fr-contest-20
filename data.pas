unit data;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient, VCL.Dialogs, MidasLib;

type
  TdmMain = class(TDataModule)
    tbGlobal: TClientDataSet;
    dsGlobal: TDataSource;
    tbMain: TClientDataSet;
    dsMain: TDataSource;
    tbRegion: TClientDataSet;
    dsRegion: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LoadGlobalData(FileName : String);
    function GetRegCode(RegName : String) : String;
  end;

var
  dmMain: TdmMain;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}



{ TdmMain }

function TdmMain.GetRegCode(RegName: String): String;
begin
//  tbRegion.Locate()
end;

procedure TdmMain.LoadGlobalData(FileName: String);

function AddLastDays(DelimLine : String; XDay : Integer) : Boolean;
var
  SL : TStringList;
  i : Integer;
begin
  Result := False;
  if DelimLine = '' then
    Exit;

  SL := TStringList.Create;
  try
    SL.Delimiter := ',';
    SL.StrictDelimiter := True;
    SL.DelimitedText := DelimLine;
    with tbMain do try
      Append;
      for i := 0 to 7 do
        Fields[i].Value := SL[i]; // trust variant conversions
      FieldByName('XDay').AsInteger := XDay;
      Post;
    except
      Exit; //data or conversion error
    end;
    Result := True;
  finally
    SL.Free;
  end;
end;

function AddRegionalData(DelimLine : String) : Boolean;
var
  SL : TStringList;
begin
  Result := False;
  if DelimLine = '' then
    Exit;

  SL := TStringList.Create;
  try
    SL.Delimiter := ',';
    SL.StrictDelimiter := True;
    SL.DelimitedText := DelimLine;
    with tbRegion do try
      if Locate('WHO_region', SL[3], []) then begin
        Edit;
        FieldByName('Cumulative_cases').AsInteger := FieldByName('Cumulative_cases').AsInteger + StrToInt(SL[5]);
        FieldByName('Cumulative_deaths').AsInteger := FieldByName('Cumulative_deaths').AsInteger + StrToInt(SL[7]);
        Post;
        Result := True;
      end;
    except
      Exit; //data or conversion error
    end;
  finally
    SL.Free;
  end;

end;

var
  SL : TStringList;
  srTF : TStreamReader; // a text file
  Line : String;
  Today, Yesterday : String;
  Country : String;
  Count : Integer;
  i : Integer;

begin
  with tbGlobal do begin
    Active := False;
    FieldDefs.Clear; //make table format dynamically exactly like the source (CSV) file
    Fields.Clear;
    FieldDefs.Add('Date_reported', ftDate );
    FieldDefs.Add('Country_code', ftString, 2);
    FieldDefs.Add('Country', ftWideString, 70); //70 is enough for some large names
    FieldDefs.Add('WHO_region', ftString, 6); // AFRO, AMRO, EMRO, EURO, SEARO, WPRO
    FieldDefs.Add('New_cases', ftInteger);
    FieldDefs.Add('Cumulative_cases', ftInteger);
    FieldDefs.Add('New_deaths', ftInteger);
    FieldDefs.Add('Cumulative_deaths', ftInteger);
    CreateDataSet;
  end;

  // the same is for the main table
  with tbMain do begin
    Active := False;
    FieldDefs.Clear; //make table format dynamically exactly like the source (CSV) file
    Fields.Clear;
    FieldDefs.Add('Date_reported', ftDate );
    FieldDefs.Add('Country_code', ftString, 2);
    FieldDefs.Add('Country', ftWideString, 70); //70 is enough for some large names
    FieldDefs.Add('WHO_region', ftString, 6); // AFRO, AMRO, EMRO, EURO, SEARO, WPRO
    FieldDefs.Add('New_cases', ftInteger);
    FieldDefs.Add('Cumulative_cases', ftInteger);
    FieldDefs.Add('New_deaths', ftInteger);
    FieldDefs.Add('Cumulative_deaths', ftInteger);
    // New code - for today, yesterday etc.
    FieldDefs.Add('XDay', ftInteger);

    CreateDataSet;
  end;

  with tbRegion do begin
    Active := False;
    FieldDefs.Clear;
    Fields.Clear;
    FieldDefs.Add('WHO_region', ftString, 6);
    FieldDefs.Add('Region_name', ftString, 20);
    FieldDefs.Add('Cumulative_cases', ftInteger);
    FieldDefs.Add('Cumulative_deaths', ftInteger);
    CreateDataSet;
// Fill it with region names
    AppendRecord(['AFRO', 'Africa', 0, 0]);
    AppendRecord(['AMRO', 'Americas', 0, 0]);
    AppendRecord(['EMRO', 'Eastern Mediterranean', 0, 0]);
    AppendRecord(['EURO', 'Europe', 0, 0]);
    AppendRecord(['SEARO', 'South-East Asia', 0, 0]);
    AppendRecord(['WPRO', 'Western Pacific', 0, 0]);

  end;


  if not FileExists(FileName) then begin
    ShowMessage(Format('File %s not found', [FileName]));
    Exit;
  end;

  srTF := TStreamReader.Create(FileName, TEncoding.UTF8);
  try
    SL := TStringList.Create;
    try
      SL.Delimiter := ',';
      SL.StrictDelimiter := True;
      Count := 0;
      tbGlobal.DisableControls;
      tbMain.DisableControls;
      tbRegion.DisableControls;
      Today := '';
      Yesterday := '';
      Country := '';
      while not srTF.EndOfStream do begin
        Line := srTF.ReadLine;
        SL.DelimitedText := Line;
        Inc(Count);
        if Count  <> 1 then begin //Ignore the first line - it contains titiles
          with tbGlobal do try
            Append;
            for i := 0 to 7 do
              Fields[i].Value := SL[i]; // trust variant conversions - no problems with date in yyyy-mm-dd format.
            Post;
            if (SL[1] <> Country) then begin// new country
              if Country <> '' then begin //country changed - insert today and yesterday
                AddLastDays(Yesterday, 1);
                AddLastDays(Today, 0);
                AddRegionalData(Today);
              end;
              Today := '';
              Yesterday := '';
              Country := SL[1];
            end
            else begin
              Yesterday := Today;
              Today := Line;
            end;
          except
            ShowMessage('Invalid data in the source file!');
            Exit;
          end;
        end;
      end;

      // loop over - Adding data of the last country (Zimbabwe).
      AddLastDays(Yesterday, 1);
      AddLastDays(Today, 0);
      AddRegionalData(Today);


    finally
      SL.Free;
      tbGlobal.First;
      /// build indexes on each field to sort
      tbMain.IndexDefs.AddIndexDef.Fields := 'Country';
      tbMain.IndexDefs[0].Name := 'IX_Country';
      tbMain.IndexDefs.AddIndexDef.Fields := 'New_cases';
      tbMain.IndexDefs[1].Name := 'IX_New_cases';
      tbMain.IndexDefs[1].Options := [ixDescending];
      tbMain.IndexDefs.AddIndexDef.Fields := 'Cumulative_cases';
      tbMain.IndexDefs[2].Name := 'IX_Cumulative_cases';
      tbMain.IndexDefs[2].Options := [ixDescending];
      tbMain.IndexDefs.AddIndexDef.Fields := 'New_deaths';
      tbMain.IndexDefs[3].Name := 'IX_New_deaths';
      tbMain.IndexDefs[3].Options := [ixDescending];
      tbMain.IndexDefs.AddIndexDef.Fields := 'Cumulative_deaths';
      tbMain.IndexDefs[4].Name := 'IX_Cumulative_deaths';
      tbMain.IndexDefs[4].Options := [ixDescending];
      tbMain.IndexName := 'IX_New_cases';

      tbMain.First;
      tbRegion.EnableControls;
      tbMain.EnableControls;
      tbGlobal.EnableControls;
    end;
  finally
    srTF.Free;
  end;
end;

end.
