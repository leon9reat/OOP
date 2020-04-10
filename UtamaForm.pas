unit UtamaForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
    System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, SatuModel,
  MasterDetailModel;

type
  TFormUtama = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
    fSatuModel: TModelSatu;
    fSatuMD: TModelMasterDetail;
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

procedure TFormUtama.Button4Click(Sender: TObject);
begin
  fSatuMD := TModelMasterDetail.Create('ini param dikirim', 'ini untuk lokal');
end;

procedure TFormUtama.Button5Click(Sender: TObject);
begin
  if Assigned(fSatuMD) then
    fSatuMD.ShowLokalInfo;
end;

procedure TFormUtama.Button6Click(Sender: TObject);
begin
  if Assigned(fSatuMD) then
    fSatuMD.ShowBaseInfoDetail(TComponent(Sender).Tag);
end;

procedure TFormUtama.FormDestroy(Sender: TObject);
begin
  if Assigned(fSatuModel) then
    fSatuModel.Free;
  if Assigned(fSatuMD) then
    fSatuMD.Free;
end;

end.

