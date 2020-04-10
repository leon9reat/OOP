unit MasterDetailModel;

interface

uses
  BaseModel;

type
  TDetail = class(TModelBase)
  private
    function ShowAfterCreate: string; override;
  public
    constructor Create(const AInfo: string);
  end;

  TModelMasterDetail = class(TModelBase)
  private
    fLokalInfo: string;
    fModelDetail: TArray<TDetail>;
    function ShowAfterCreate: string; override;
  public
    constructor Create(const AInfo: string; const ALokalInfo: string);
    destructor Destroy; override;
    procedure ShowLokalInfo;
    procedure ShowBaseInfo;
    procedure ShowBaseInfoDetail(const i: Integer);
  end;

implementation

uses
  Vcl.Dialogs;

{ TModelMasterDetail }

constructor TModelMasterDetail.Create(const AInfo, ALokalInfo: string);
begin
  inherited Create(AInfo);
  fLokalInfo := ALokalInfo;
  SetLength(fModelDetail, 2);
  fModelDetail[0] := TDetail.Create('detail satu');
  fModelDetail[1] := TDetail.Create('detail dua');
end;

destructor TModelMasterDetail.Destroy;
var
  i: Integer;
begin
  if Assigned(fModelDetail) then
    for i := Low(fModelDetail) to High(fModelDetail) do
      fModelDetail[i].Free;

  inherited;
end;

function TModelMasterDetail.ShowAfterCreate: string;
begin
  Result := ClassName + ' ini master';
end;

procedure TModelMasterDetail.ShowBaseInfo;
begin
  inherited;
end;

procedure TModelMasterDetail.ShowBaseInfoDetail(const i: Integer);
begin
  if Assigned(fModelDetail[i]) then
    fModelDetail[i].ShowBaseInfo;
end;

procedure TModelMasterDetail.ShowLokalInfo;
begin
  ShowMessage(fLokalInfo);
end;

{ TDetail }

constructor TDetail.Create(const AInfo: string);
begin
  inherited Create('parameter onCreate TDetail');
end;

function TDetail.ShowAfterCreate: string;
begin
  Result := ClassName + ' ini detail';
end;

end.

