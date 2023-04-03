unit uTelaHeranca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, uDtmConexao, uEnum;

type
  TfrmTeleHeranca = class(TForm)
    pgcPrincipal: TPageControl;
    pnlRodape: TPanel;
    tabListagem: TTabSheet;
    tabManutencao: TTabSheet;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnCancelar: TBitBtn;
    btnGravar: TBitBtn;
    btnApagar: TBitBtn;
    btnFechar: TBitBtn;
    btnNavigator: TDBNavigator;
    Panel1: TPanel;
    mskPesquisa: TMaskEdit;
    btnPesquisar: TBitBtn;
    grdListagem: TDBGrid;
    QryListagem: TZQuery;
    dtsListagem: TDataSource;
    lblIndice: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdListagemTitleClick(Column: TColumn);
  private
    { Private declarations }
    EstadoDoCadastro : TEstadoDoCadastro;

    procedure ControlarBotoes(btnNovo, btnAlterar, btnCancelar,
          btnGravar, btnApagar : TBitBtn; Navegador:TDBNavigator;
          pgcPrincipal:TPageControl; Flag:Boolean);

    procedure ControlarIndiceTab(pgcPrincipal:TPageControl; Indice: Integer);
  public
    { Public declarations }
  end;

var
  frmTeleHeranca: TfrmTeleHeranca;

implementation

{$R *.dfm}

procedure TfrmTeleHeranca.ControlarBotoes(btnNovo, btnAlterar, btnCancelar,
          btnGravar, btnApagar : TBitBtn; Navegador:TDBNavigator;
          pgcPrincipal:TPageControl; Flag:Boolean);
begin
   btnNovo.Enabled := Flag;
   btnApagar.Enabled := Flag;
   btnAlterar.Enabled := Flag;
   Navegador.Enabled := Flag;
   pgcPrincipal.Pages[0].TabVisible := Flag;
   btnCancelar.Enabled := not(Flag);
   btnGravar.Enabled := not(Flag);
end;

procedure TfrmTeleHeranca.ControlarIndiceTab(pgcPrincipal:TPageControl; Indice: Integer);
begin
  if(pgcPrincipal.Pages[Indice].TabVisible) then
    pgcPrincipal.TabIndex := Indice;
end;

procedure TfrmTeleHeranca.btnNovoClick(Sender: TObject);
begin
    ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar,
                    btnNavigator, pgcPrincipal, false);
    EstadoDoCadastro := ecInserir;
end;

procedure TfrmTeleHeranca.btnAlterarClick(Sender: TObject);
begin
   ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar,
                    btnNavigator, pgcPrincipal, false);
   EstadoDoCadastro := ecAlterar
end;

procedure TfrmTeleHeranca.btnApagarClick(Sender: TObject);
begin
   ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar,
                    btnNavigator, pgcPrincipal, true);
   ControlarIndiceTab(pgcPrincipal, 0);

   EstadoDoCadastro := ecNenhum;
end;

procedure TfrmTeleHeranca.btnCancelarClick(Sender: TObject);
begin
   ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar,
                    btnNavigator, pgcPrincipal, true);
    ControlarIndiceTab(pgcPrincipal, 0);

    EstadoDoCadastro := ecNenhum;
end;

procedure TfrmTeleHeranca.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTeleHeranca.btnGravarClick(Sender: TObject);
begin

  Try
     ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar,
                      btnNavigator, pgcPrincipal, true);
     ControlarIndiceTab(pgcPrincipal, 0);

     if (EstadoDoCadastro = ecInserir) then
        showmessage('Inserir')
     else if (EstadoDoCadastro = ecAlterar) then
          showmessage('Alterado')
     else
        showmessage('Nada aconteceu')


  Finally
     EstadoDoCadastro := ecNenhum;
  End;


end;

procedure TfrmTeleHeranca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryListagem.Close;
end;

procedure TfrmTeleHeranca.FormCreate(Sender: TObject);
begin
  QryListagem.Connection := dtmPrincipal.ConexaoDB;
  dtsListagem.DataSet := QryListagem;
  grdListagem.DataSource := dtsListagem;
end;

procedure TfrmTeleHeranca.FormShow(Sender: TObject);
begin
  if (QryListagem.SQL.Text <> EmptyStr) then
  begin
    QryListagem.Open;
  end;
end;

procedure TfrmTeleHeranca.grdListagemTitleClick(Column: TColumn);
begin
  ShowMessage(Column.FieldName);
end;

end.
