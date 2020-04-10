unit BaseModel;

interface

type
  TModelBase = class
  private
    fInfo: string;
    function GetInfo: string;
  public
    constructor Create(const AInfo: string);
    function ShowAfterCreate: string; virtual; abstract;
    procedure ShowBaseInfo;
    property Info: string read GetInfo;
  end;

implementation

uses
  Vcl.Dialogs;

{ TModelBase }

constructor TModelBase.Create(const AInfo: string);
begin
  fInfo := AInfo;
  ShowMessage(ShowAfterCreate);
end;

function TModelBase.GetInfo: string;
begin
  Result := fInfo;
end;

procedure TModelBase.ShowBaseInfo;
begin
  ShowMessage('TModelBase.ShowBaseInfo '+fInfo);
end;

end.

