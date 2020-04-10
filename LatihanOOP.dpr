program LatihanOOP;

uses
  Vcl.Forms,
  UtamaForm in 'UtamaForm.pas' {FormUtama},
  BaseModel in 'Models\BaseModel.pas',
  SatuModel in 'Models\SatuModel.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormUtama, FormUtama);
  Application.Run;
end.
