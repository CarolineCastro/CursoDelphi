unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, RLReport, uDtmConexao, Enter;

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
    procedure N2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    TeclaEnter : TMREnter;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uCadCategoria;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    FreeAndNil (TeclaEnter);
    FreeAndNil(dtmPrincipal);
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
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

   TeclaEnter := TMREnter.Create(Self);
   TeclaEnter.FocusEnabled := true;
   TeclaEnter.FocusColor := clInfoBk;

end;

procedure TfrmPrincipal.mnuFecharClick(Sender: TObject);
begin
  //Close;
  Application.Terminate;
end;

procedure TfrmPrincipal.N2Click(Sender: TObject);
begin
   frmCadCategoria := TfrmCadCategoria.Create(Self);
   frmCadCategoria.ShowModal;
   frmCadCategoria.Release;
end;

end.
