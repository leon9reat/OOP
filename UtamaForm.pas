unit UtamaForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
    System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, SatuModel;

type
  TFormUtama = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    fSatuModel: TModelSatu;
  public
    { Public declarations }
  end;

var
  FormUtama: TFormUtama;

implementation

{$R *.dfm}

procedure TFormUtama.Button1Click(Sender: TObject);
begin
  fSatuModel := TModelSatu.Create('ini info', 'ini lokal info');
end;

procedure TFormUtama.Button2Click(Sender: TObject);
begin
  if Assigned(fSatuModel) then
    fSatuModel.ShowLokalInfo;
end;

procedure TFormUtama.Button3Click(Sender: TObject);
begin
  if Assigned(fSatuModel) then
    fSatuModel.ShowBaseInfo;
end;

procedure TFormUtama.FormDestroy(Sender: TObject);
begin
  if Assigned(fSatuModel) then
    fSatuModel.Free;
end;

end.

