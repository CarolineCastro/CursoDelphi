object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Menu Principal'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mainPrincipal
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object mainPrincipal: TMainMenu
    Left = 384
    Top = 32
    object CADASTRO1: TMenuItem
      Caption = 'CADASTRO'
      object CLIENTES1: TMenuItem
        Caption = 'CLIENTES'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object N2: TMenuItem
        Caption = 'CATEGORIA'
        OnClick = N2Click
      end
      object PRODUTO1: TMenuItem
        Caption = 'PRODUTO'
      end
      object PRODUTO2: TMenuItem
        Caption = '-'
      end
      object mnuFechar: TMenuItem
        Caption = 'FECHAR'
        OnClick = mnuFecharClick
      end
    end
    object MOVIMENTAO1: TMenuItem
      Caption = 'MOVIMENTA'#199#195'O'
      object VENDAS1: TMenuItem
        Caption = 'VENDAS'
      end
    end
    object RELATRIOS1: TMenuItem
      Caption = 'RELAT'#211'RIOS'
      object CLIENTES2: TMenuItem
        Caption = 'CLIENTES'
      end
      object CLIENTES3: TMenuItem
        Caption = '-'
      end
      object PRODUTOS1: TMenuItem
        Caption = 'PRODUTOS'
      end
      object PRODUTOS2: TMenuItem
        Caption = '-'
      end
      object VENDASPORDATA1: TMenuItem
        Caption = 'VENDAS POR DATA'
      end
    end
  end
end
