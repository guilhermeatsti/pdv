unit uLogin;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LazHelpCHM, Forms, Controls, Graphics, Dialogs,
  Buttons, ExtCtrls, StdCtrls, udmpdv, uSenhaNova, uPdv, uabrircaixa, base64,
  Process;

type

  { TfLogin }

  TfLogin = class(TForm)
    btnAbrirCaixa: TBitBtn;
    btnInfo: TBitBtn;
    btnLogin: TBitBtn;
    edLogin: TLabeledEdit;
    edSenha: TLabeledEdit;
    Label1: TLabel;
    Label2: TLabel;
    LHelpConnector1: TLHelpConnector;
    Memo1: TMemo;
    Memo2: TMemo;
    pnInfo: TPanel;
    procedure btnAbrirCaixaClick(Sender: TObject);
    procedure btnInfoClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure edLoginKeyPress(Sender: TObject; var Key: char);
    procedure edSenhaKeyPress(Sender: TObject; var Key: char);
    procedure FormShow(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private

  public

  end;

var
  fLogin: TfLogin;

implementation

{$R *.lfm}

{ TfLogin }

procedure TfLogin.btnLoginClick(Sender: TObject);
var senha: String;
  snh: String;
begin
  if (edLogin.Text = '') then
  begin
    ShowMessage('Informe o nome do usuario');
    Exit;
  end;
  dmPdv.sqBusca.Close;
  dmPdv.sqBusca.SQL.Clear;
  dmPdv.sqBusca.SQL.Text := 'SELECT CODUSUARIO, NOMEUSUARIO, SENHA, CODBARRA  ' +
      ' FROM USUARIO WHERE NOMEUSUARIO = ' + QuotedStr(edLogin.Text);
  dmPdv.sqBusca.Open;
  if (dmPdv.sqBusca.IsEmpty) then
  begin
    ShowMessage('Sem Cadastro de usuário no sistema');
    Exit;
  end;
  senha := dmPdv.sqBusca.FieldByName('SENHA').AsString;
  snh := EncodeStringBase64(edSenha.Text);
  if (snh = senha) then
  begin
    dmPdv.varLogado := IntToStr(dmPdv.sqBusca.Fields.FieldByName('CODUSUARIO').AsInteger);
    dmPdv.nomeLogado := dmPdv.sqBusca.Fields.FieldByName('NOMEUSUARIO').AsString;
    dmPdv.sqBusca.Close;
    dmPdv.sqBusca.SQL.Clear;
    dmPdv.sqBusca.SQL.Text := 'SELECT IDCAIXACONTROLE, CODCAIXA, CODUSUARIO,' +
       'SITUACAO, NOMECAIXA ' +
       ' FROM CAIXA_CONTROLE WHERE SITUACAO = ' + QuotedStr('o') +
       ' AND CODUSUARIO = ' + dmPdv.varLogado;
    dmPdv.sqBusca.Open;
    if (dmPdv.sqBusca.IsEmpty) then
    begin
      ShowMessage('Sem Caixa Aberto para este usuário');
      Exit;
    end
    else begin
      // Sessao_id
      dmPdv.nomeCaixa := dmPdv.sqBusca.Fields.FieldByName('NOMECAIXA').AsString;
      dmPdv.ccusto := IntToStr(dmPdv.sqBusca.Fields.FieldByName('CODCAIXA').AsInteger);
      dmPdv.idcaixa := IntToStr(dmPdv.sqBusca.Fields.FieldByName('IDCAIXACONTROLE').AsInteger);
    end;
    fPdv.ShowModal;
    Close;
  end
  else begin
    ShowMessage('Senha/Usuário Inválido.');
  end;
end;

procedure TfLogin.btnAbrirCaixaClick(Sender: TObject);
begin
  dmPdv.sqBusca.Close;
  dmPdv.sqBusca.SQL.Clear;
  dmPdv.sqBusca.SQL.Text := 'SELECT CODUSUARIO, NOMEUSUARIO, SENHA, CODBARRA  ' +
      ' FROM USUARIO WHERE NOMEUSUARIO = ' + QuotedStr(edLogin.Text);
  dmPdv.sqBusca.Open;
  if (dmPdv.sqBusca.IsEmpty) then
  begin
    ShowMessage('Sem Cadastro de usuário no sistema');
    Exit;
  end;
  dmPdv.varLogado := IntToStr(dmPdv.sqBusca.Fields.FieldByName('CODUSUARIO').AsInteger);
  fAbrirCaixa.AbrirFechar:= 'Abrir';
  fAbrirCaixa.ShowModal;
end;

procedure TfLogin.btnInfoClick(Sender: TObject);
begin
  if pnInfo.Visible = True then
    pnInfo.Visible:=False
  else
    pnInfo.Visible:=True;
end;

procedure TfLogin.edLoginKeyPress(Sender: TObject; var Key: char);
begin
  if (key = #13) then
  begin
    SelectNext(Sender as TWinControl, True, True);
    Key := #0;
  end;
end;

procedure TfLogin.edSenhaKeyPress(Sender: TObject; var Key: char);
begin
  if Key = #13 then
  begin
    Key := #0;
    btnLogin.Click;
  end;
end;

procedure TfLogin.FormShow(Sender: TObject);
begin
  if dmPdv.nomeLogado <> '' then
  begin
    edLogin.Text := dmPdv.nomeLogado;
    edSenha.Text := dmPdv.senhaLogin;
  end;
  dmPdv.sqBusca.Close;
  dmPdv.sqBusca.SQL.Clear;
  dmPdv.sqBusca.SQL.Text := 'SELECT CODUSUARIO, NOMEUSUARIO, SENHA, CODBARRA  ' +
      ' FROM USUARIO WHERE NOMEUSUARIO = ' + QuotedStr(edLogin.Text);
  dmPdv.sqBusca.Open;
  if (dmPdv.sqBusca.IsEmpty) then
  begin
    Exit;
  end;
  dmPdv.varLogado := IntToStr(dmPdv.sqBusca.Fields.FieldByName('CODUSUARIO').AsInteger);
  dmPdv.sqBusca.Close;
    dmPdv.sqBusca.SQL.Clear;
    dmPdv.sqBusca.SQL.Text := 'SELECT IDCAIXACONTROLE, CODCAIXA, CODUSUARIO,' +
       'SITUACAO, NOMECAIXA ' +
       ' FROM CAIXA_CONTROLE WHERE SITUACAO = ' + QuotedStr('o') +
       ' AND CODUSUARIO = ' + dmPdv.varLogado;
    dmPdv.sqBusca.Open;
    if (dmPdv.sqBusca.IsEmpty) then
    begin
      btnAbrirCaixa.visible:=true;
    end;

end;

procedure TfLogin.Label1Click(Sender: TObject);
begin
  if (edLogin.Text = '') then
  begin
    ShowMessage('Informe o nome do usuario');
    Exit;
  end;
  dmPdv.sqBusca.Close;
  dmPdv.sqBusca.SQL.Clear;
  dmPdv.sqBusca.SQL.Text := 'SELECT CODUSUARIO, NOMEUSUARIO, SENHA ' +
      ' FROM USUARIO WHERE NOMEUSUARIO = ' + QuotedStr(edLogin.Text);
  dmPdv.sqBusca.Open;
  if (dmPdv.sqBusca.IsEmpty) then
  begin
    ShowMessage('Sem Cadastro de usuário no sistema');
    Exit;
  end;
  fSenhaNova.nomeUsuario:= edLogin.Text;
  fSenhaNova.ShowModal;
end;

end.

