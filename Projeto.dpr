program Projeto;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uDtmConexao in 'datamodule\uDtmConexao.pas' {dtmPrincipal: TDataModule},
  uTelaHeranca in 'heranca\uTelaHeranca.pas' {frmTeleHeranca},
  uCadCategoria in 'heranca\uCadCategoria.pas' {frmCadCategoria};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmTeleHeranca, frmTeleHeranca);
  Application.CreateForm(TfrmCadCategoria, frmCadCategoria);
  Application.Run;
end.
