object frmTeleHeranca: TfrmTeleHeranca
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'INFORME AQUI O T'#205'TULO'
  ClientHeight = 423
  ClientWidth = 748
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 748
    Height = 382
    ActivePage = tabListagem
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 658
    object tabListagem: TTabSheet
      Caption = 'Listagem'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 740
        Height = 57
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 650
        object lblIndice: TLabel
          Left = 16
          Top = 0
          Width = 75
          Height = 13
          Caption = 'CampoPesquisa'
        end
        object mskPesquisa: TMaskEdit
          Left = 16
          Top = 16
          Width = 329
          Height = 21
          TabOrder = 0
          Text = ''
          TextHint = 'Digite sua pesquisa'
        end
        object btnPesquisar: TBitBtn
          Left = 351
          Top = 14
          Width = 75
          Height = 25
          Caption = '&PESQUISAR'
          TabOrder = 1
        end
      end
      object grdListagem: TDBGrid
        Left = 0
        Top = 57
        Width = 740
        Height = 297
        Align = alClient
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnTitleClick = grdListagemTitleClick
      end
    end
    object tabManutencao: TTabSheet
      Caption = 'Manuten'#231#227'o'
      ImageIndex = 1
    end
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 382
    Width = 748
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitWidth = 658
    DesignSize = (
      748
      41)
    object btnNovo: TBitBtn
      Left = 4
      Top = 6
      Width = 75
      Height = 25
      Caption = '&NOVO'
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnAlterar: TBitBtn
      Left = 85
      Top = 6
      Width = 75
      Height = 25
      Caption = '&ALTERAR'
      TabOrder = 1
      OnClick = btnAlterarClick
    end
    object btnCancelar: TBitBtn
      Left = 166
      Top = 6
      Width = 75
      Height = 25
      Caption = '&CANCELAR'
      TabOrder = 2
      OnClick = btnCancelarClick
    end
    object btnGravar: TBitBtn
      Left = 247
      Top = 6
      Width = 75
      Height = 25
      Caption = '&GRAVAR'
      TabOrder = 3
      OnClick = btnGravarClick
    end
    object btnApagar: TBitBtn
      Left = 328
      Top = 6
      Width = 75
      Height = 25
      Caption = 'APAGA&R'
      TabOrder = 4
      OnClick = btnApagarClick
    end
    object btnFechar: TBitBtn
      Left = 669
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&FECHAR'
      TabOrder = 5
      OnClick = btnFecharClick
      ExplicitLeft = 579
    end
    object btnNavigator: TDBNavigator
      Left = 488
      Top = 6
      Width = 104
      Height = 25
      DataSource = dtsListagem
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 6
    end
  end
  object QryListagem: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    Params = <>
    Left = 524
    Top = 32
  end
  object dtsListagem: TDataSource
    Left = 600
    Top = 32
  end
end
