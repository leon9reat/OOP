unit SatuModel;

interface

uses
  BaseModel;

type
  TModelSatu = class(TModelBase)
  private
    fLokalInfo: string;
    function ShowAfterCreate: string; override;
  public
    constructor Create(const AInfo: string; const ALokalInfo: string);
    procedure ShowLokalInfo;
    procedure ShowBaseInfo;
  end;

implementation

uses
  Vcl.Dialogs;

{ TModelSatu }

constructor TModelSatu.Create(const AInfo, ALokalInfo: string);
begin
  inherited Create(AInfo);
  fLokalInfo := ALokalInfo;
end;

function TModelSatu.ShowAfterCreate: string;
begin
  Result := 'Ini Dari TModelSatu.ShowAfterCreate';
end;

procedure TModelSatu.ShowBaseInfo;
begin
  inherited;
end;

procedure TModelSatu.ShowLokalInfo;
begin
  ShowMessage(fLokalInfo);
end;

end.

