unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, RLReport, uDtmConexao;

type
  TfrmPrincipal = class(TForm)
    mainPrincipal: TMainMenu;
    CADASTRO1: TMenuItem;
    MOVIMENTAO1: TMenuItem;
    RELATRIOS1: TMenuItem;
    CLIENTES1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    PRODUTO1: TMenuItem;
    PRODUTO2: TMenuItem;
    mnuFechar: TMenuItem;
    VENDAS1: TMenuItem;
    CLIENTES2: TMenuItem;
    CLIENTES3: TMenuItem;
    PRODUTOS1: TMenuItem;
    PRODUTOS2: TMenuItem;
    VENDASPORDATA1: TMenuItem;
    procedure mnuFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  { dtmPrincipal := TdtmPrincipal.Create(Self);
   dtmPrincipal.ConexaoDB.SQLHourGlass := True;
   dtmPrincipal.ConexaoDB.Protocol := 'mssql';
   dtmPrincipal.ConexaoDB.LibraryLocation := 'C:\CursoDelphi\ntwdblib.dll';
   dtmPrincipal.ConexaoDB.HostName := '.\KAPTUREALL';
   dtmPrincipal.ConexaoDB.Port := 1433;
   dtmPrincipal.ConexaoDB.User := 'sa';
   dtmPrincipal.ConexaoDB.Password := 'K4ptur34ll';
   dtmPrincipal.ConexaoDB.Database := 'vendas';
   dtmPrincipal.ConexaoDB.Connected := true;
 }
   dtmPrincipal := TdtmPrincipal.Create(Self);
   with dtmPrincipal.ConexaoDB do begin
     SQLHourGlass := True;
     Protocol := 'mssql';
     LibraryLocation := 'C:\CursoDelphi\ntwdblib.dll';
     HostName := '.\KAPTUREALL';
     Port := 1433;
     User := 'sa';
     Password := 'K4ptur34ll';
     Database := 'vendas';
     Connected := true;
   end;
end;

procedure TfrmPrincipal.mnuFecharClick(Sender: TObject);
begin
  //Close;
  Application.Terminate;
end;

end.
