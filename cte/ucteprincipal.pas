unit uCtePrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, ExtCtrls,
  StdCtrls, Menus, Buttons, DBGrids, EditBtn, DateTimePicker, Types, IniFiles,
  ACBrCTe, ACBrCTeDACTEClass, ACBrMail, ACBrBase, ACBrDFe, ACBrNFe,
  pcnConversao, pcteConversaoCTe, DateUtils;

type

  { TfCTePrincipal }

  TfCTePrincipal = class(TForm)
    ACBrCTe1: TACBrCTe;
    ACBrNFe1: TACBrNFe;
    BitBtn1: TBitBtn;
    btnGerarPDFInut: TBitBtn;
    btnImprimirInut: TBitBtn;
    btnEnviarEventoEmail: TBitBtn;
    btnGerarPDFEvento: TBitBtn;
    btnImprimirEvento: TBitBtn;
    btnEnviarEmail: TBitBtn;
    btnGerarPDF: TBitBtn;
    btnCancelarCte: TBitBtn;
    btnImportarXML: TBitBtn;
    btnCorrigirSerie: TBitBtn;
    btnEnvEPEC: TBitBtn;
    btnGerar: TBitBtn;
    btnGravarCTe: TBitBtn;
    valOutrosVal: TCalcEdit;
    combICMSDevido: TComboBox;
    comboEmpresa: TComboBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    dataOutrosEmi: TDateTimePicker;
    edCteCancelar: TLabeledEdit;
    memoResp: TMemo;
    memoRespWS: TMemo;
    OpenDialog1: TOpenDialog;
    sbtnPathSalvar: TBitBtn;
    sbtnLogoMarca: TBitBtn;
    Edit2: TEdit;
    sbtnGetCert: TBitBtn;
    btnPreVisu: TBitBtn;
    btnInfCargaEdita: TBitBtn;
    btnInfCargaInclui: TBitBtn;
    btnInfCargaGrava: TBitBtn;
    btnInfCargaExclui: TBitBtn;
    BitBtn15: TBitBtn;
    btnEditarComp: TBitBtn;
    btnExcluirComp: TBitBtn;
    BitBtn22: TBitBtn;
    btnEditarCte: TBitBtn;
    BitBtn16: TBitBtn;
    btnIncluirNFe: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn19: TBitBtn;
    btnIncCte: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    btnListarCte: TBitBtn;
    btnDuplicar: TBitBtn;
    BitBtn8: TBitBtn;
    btnGerarCte: TBitBtn;
    btnValidarXML: TButton;
    btnCC: TButton;
    Button30: TButton;
    btnImprimir: TButton;
    btnImportarXML1: TButton;
    btnConsultar: TButton;
    btnConsultarChave: TButton;
    btnConsCad: TButton;
    btnConsultarRecibo: TButton;
    btnStatusServ: TButton;
    btnInutilizar: TButton;
    btnAtualizarBD: TButton;
    cbEmailSSL: TCheckBox;
    ckVisualizar: TCheckBox;
    ckSalvar: TCheckBox;
    CheckBox1: TCheckBox;
    combCodSitTrib: TComboBox;
    cbUF: TComboBox;
    combOutrosDocs: TComboBox;
    dataGerarCte: TDateTimePicker;
    dataRodPrev: TDateTimePicker;
    dbGridQC: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    dgGridCTE: TDBGrid;
    dbValInfCarga: TEdit;
    dbValTotPrest: TEdit;
    calValB: TEdit;
    Edit1: TEdit;
    edtDestISUF: TEdit;
    edtFimCodCidade: TEdit;
    edtIniCodCidade: TEdit;
    edtEnvCodCidade: TEdit;
    edtNatOpe: TEdit;
    edtCfop: TEdit;
    edtSmtpPass: TEdit;
    edtSmtpUser: TEdit;
    edtSmtpPort: TEdit;
    edtProxyHost: TEdit;
    edtPathLogs: TEdit;
    edtLogoMarca: TEdit;
    edtNumSerie: TEdit;
    edtSenha: TEdit;
    edtCaminho: TEdit;
    edtAntCNPJ: TEdit;
    edtAntIE: TEdit;
    edtAntNome: TEdit;
    edtAntCHCTE: TEdit;
    edtAntUF: TEdit;
    edtXMLCod: TEdit;
    edtXMLBairro: TEdit;
    edtXMLCEP: TEdit;
    edtXMLCidade: TEdit;
    edtXMLCnpj: TEdit;
    edtXMLCodCidade: TEdit;
    edtXMLComp: TEdit;
    edtXMLNome: TEdit;
    edtXMLFone: TEdit;
    edtXMLIE: TEdit;
    edtXMLLogradouro: TEdit;
    edtXMLNumero: TEdit;
    edtXMLRazao: TEdit;
    edtXMLUF: TEdit;
    DBEdit1: TEdit;
    DBEdit2: TEdit;
    DBEdit3: TEdit;
    edtNumCte13: TEdit;
    edtNumCte15: TEdit;
    edtNumCte16: TEdit;
    edtNumCte17: TEdit;
    edtNumCte18: TEdit;
    edtNumCte19: TEdit;
    edtSmtpHost: TEdit;
    edtRodRNTRC: TEdit;
    edtOutrosDesc: TEdit;
    edtOutrosNum: TEdit;
    edtProxyPorta: TEdit;
    edtProxySenha: TEdit;
    edtProxyUser: TEdit;
    edtEmailAssunto: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBoxTomador: TGroupBox;
    GroupBoxRemetente: TGroupBox;
    GroupBoxRecebedor: TGroupBox;
    GroupBoxExpeditor: TGroupBox;
    GroupBoxDestinatario: TGroupBox;
    GroupBox7: TGroupBox;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    Label128: TLabel;
    Label129: TLabel;
    Label130: TLabel;
    Label131: TLabel;
    Label132: TLabel;
    Label133: TLabel;
    Label134: TLabel;
    Label135: TLabel;
    Label136: TLabel;
    lblEmailAssunto: TLabel;
    Label137: TLabel;
    Label138: TLabel;
    Label139: TLabel;
    Label9: TLabel;
    lblDetRetira1: TStaticText;
    MemoDados: TMemo;
    mmEmailMsg: TMemo;
    memxObs: TMemo;
    rgTipoDACTe: TRadioGroup;
    rgTipoAmb: TRadioGroup;
    rgRodLotacao: TRadioGroup;
    sbtnCaminhoCert: TSpeedButton;
    StatusBar1: TStatusBar;
    TabSheet12: TTabSheet;
    TabRodoviario: TTabSheet;
    TabSheet17: TTabSheet;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    TabCteGeradas: TTabSheet;
    valAliIn: TEdit;
    StaticText30: TStaticText;
    valpICMS: TEdit;
    dbValInfCarga13: TEdit;
    valAliInter: TEdit;
    valIMCSPartF: TEdit;
    dbValInfCarga16: TEdit;
    dbValInfCarga17: TEdit;
    valICMSPartI: TEdit;
    dbValReceber: TEdit;
    dbValTotTri: TEdit;
    valpRedBC: TEdit;
    valvBC: TEdit;
    valvICMS: TEdit;
    valvCred: TEdit;
    edtProPred: TEdit;
    edtOutCat: TEdit;
    edtCodEmitente: TEdit;
    edtEmitBairro: TEdit;
    edtCaracAdTrans: TEdit;
    edtCaracAdServ: TEdit;
    edtFuncEmi: TEdit;
    edtRecBairro: TEdit;
    edtDestBairro: TEdit;
    edtRecBusca: TEdit;
    edtDestBusca: TEdit;
    edtRecCep: TEdit;
    edtDestCEP: TEdit;
    edtRecCidade: TEdit;
    edtDestCidade: TEdit;
    edtRecCNPJ: TEdit;
    edtDestCNPJ: TEdit;
    edtRecCodCidade: TEdit;
    edtDestCodCidade: TEdit;
    edtRecComp: TEdit;
    edtDestComp: TEdit;
    edtRecEnd: TEdit;
    edtDestEnd: TEdit;
    edtRecFone: TEdit;
    edtDestFone: TEdit;
    edtRecIE: TEdit;
    edtDestIE: TEdit;
    edtRecNome: TEdit;
    edtDestNome: TEdit;
    edtRecNum: TEdit;
    edtDestNum: TEdit;
    edtRecRazao: TEdit;
    edtDestRazao: TEdit;
    edtRecUF: TEdit;
    edtDestUF: TEdit;
    edtRemBairro: TEdit;
    edtEmitCEP: TEdit;
    edtExpBairro: TEdit;
    edtExpBusca: TEdit;
    edtBairroTomador: TEdit;
    edtBuscaTomador: TEdit;
    edtRemCep: TEdit;
    edtEmitCidade: TEdit;
    edtExpCep: TEdit;
    edtCepTomador: TEdit;
    edtRemCidade: TEdit;
    edtEmitCNPJ: TEdit;
    edtEmitCodCidade: TEdit;
    edtExpCidade: TEdit;
    edtExpCNPJ: TEdit;
    edtTomadorCidade: TEdit;
    edtCNPJTomador: TEdit;
    edtRemCodCidade: TEdit;
    edtEmitComp: TEdit;
    edtExpCodCidade: TEdit;
    edtTomadorCodCidade: TEdit;
    edtRemComp: TEdit;
    edtEmitFantasia: TEdit;
    edtEmitFone: TEdit;
    edtExpComp: TEdit;
    edtExpEnd: TEdit;
    edtCompTomador: TEdit;
    edtEndTomador: TEdit;
    edtRemFone: TEdit;
    edtEmitIE: TEdit;
    edtEmitLogradouro: TEdit;
    edtRemEnd: TEdit;
    edtEmitNumero: TEdit;
    edtExpFone: TEdit;
    edtExpIE: TEdit;
    edtExpNome: TEdit;
    edtFoneTomador: TEdit;
    edtIETomador: TEdit;
    edtNomeTomador: TEdit;
    edtRemNum: TEdit;
    edtEmitRazao: TEdit;
    edtEmitUF: TEdit;
    edtExpNum: TEdit;
    edtExpRazao: TEdit;
    edtNumTomador: TEdit;
    edtRazaoTomador: TEdit;
    edtRemUF: TEdit;
    edtModelo: TEdit;
    edtNumCte: TEdit;
    edtNumCte1: TEdit;
    edtNumCte2: TEdit;
    edtNumCte3: TEdit;
    edtEnvUF: TEdit;
    edtEnvCidade: TEdit;
    edtIniUF: TEdit;
    edtIniCidade: TEdit;
    edtFimUF: TEdit;
    edtFimCidade: TEdit;
    edtRemBusca: TEdit;
    edtRemCNPJ: TEdit;
    edtRemIE: TEdit;
    edtRemNome: TEdit;
    edtRemRazao: TEdit;
    edtExpUF: TEdit;
    edtTomadorUF: TEdit;
    edtSerieCte: TEdit;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label3: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label4: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label5: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label6: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label7: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label8: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    lblDetRetira: TStaticText;
    memDetRetira: TMemo;
    memDetRetira1: TMemo;
    PageControl1: TPageControl;
    PageControl2: TPageControl;
    PageControl3: TPageControl;
    PageControl4: TPageControl;
    Panel1: TPanel;
    rgFormaEmissao: TRadioGroup;
    rgGlobalizado: TRadioGroup;
    rgModal: TRadioGroup;
    rgModal1: TRadioGroup;
    rgForPag: TRadioGroup;
    rgDest: TRadioGroup;
    rgRetira: TRadioGroup;
    rgTiposCte: TRadioGroup;
    rgTipoServico: TRadioGroup;
    rgRec: TRadioGroup;
    rgTomador: TRadioGroup;
    rgRem: TRadioGroup;
    rgExp: TRadioGroup;
    StaticText1: TStaticText;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    StaticText16: TStaticText;
    StaticText18: TStaticText;
    StaticText19: TStaticText;
    StaticText2: TStaticText;
    StaticText20: TStaticText;
    StaticText21: TStaticText;
    StaticText22: TStaticText;
    StaticText23: TStaticText;
    StaticText24: TStaticText;
    StaticText25: TStaticText;
    StaticText26: TStaticText;
    StaticText27: TStaticText;
    StaticText28: TStaticText;
    StaticText29: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    TabSheet1: TTabSheet;
    TabServicosImpostos: TTabSheet;
    TabSheet11: TTabSheet;
    TabDadosComplementares: TTabSheet;
    TabSheet18: TTabSheet;
    TabSheet19: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet20: TTabSheet;
    TabNfe: TTabSheet;
    TabInfoCarga: TTabSheet;
    TabSheet3: TTabSheet;
    TabTomador: TTabSheet;
    TabDadosCte: TTabSheet;
    TabSheet6: TTabSheet;
    TabExpedidor: TTabSheet;
    TabRecebedor: TTabSheet;
    TabDestinatario: TTabSheet;
    procedure ACBrCTe1StatusChange(Sender: TObject);
    procedure btnGerarPDFInutClick(Sender: TObject);
    procedure btnImprimirInutClick(Sender: TObject);
    procedure btnInfCargaEditaClick(Sender: TObject);
    procedure btnInfCargaExcluiClick(Sender: TObject);
    procedure btnInfCargaIncluiClick(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure btnAtualizarBDClick(Sender: TObject);
    procedure btnCancelarCteClick(Sender: TObject);
    procedure btnCorrigirSerieClick(Sender: TObject);
    procedure btnEnviarEmailClick(Sender: TObject);
    procedure btnEnviarEventoEmailClick(Sender: TObject);
    procedure btnExcluirCompClick(Sender: TObject);
    procedure btnConsCadClick(Sender: TObject);
    procedure btnConsultarChaveClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnConsultarReciboClick(Sender: TObject);
    procedure btnDuplicarClick(Sender: TObject);
    procedure btnEditarCompClick(Sender: TObject);
    procedure btnEditarCteClick(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
    procedure btnGerarCteClick(Sender: TObject);
    procedure btnGerarPDFClick(Sender: TObject);
    procedure btnGerarPDFEventoClick(Sender: TObject);
    procedure btnGravarCTeClick(Sender: TObject);
    procedure btnImportarXMLClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnImprimirEventoClick(Sender: TObject);
    procedure btnIncCteClick(Sender: TObject);
    procedure btnIncluirNFeClick(Sender: TObject);
    procedure btnInutilizarClick(Sender: TObject);
    procedure btnListarCteClick(Sender: TObject);
    procedure btnPreVisuClick(Sender: TObject);
    procedure btnStatusServClick(Sender: TObject);
    procedure btnValidarXMLClick(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure comboEmpresaChange(Sender: TObject);
    procedure dbValInfCargaChange(Sender: TObject);
    procedure edtBuscaTomadorExit(Sender: TObject);
    procedure edtCfopExit(Sender: TObject);
    procedure edtDestBuscaExit(Sender: TObject);
    procedure edtRecBuscaExit(Sender: TObject);
    procedure edtRemBuscaExit(Sender: TObject);
    procedure edtXMLCodChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: char);
    procedure FormShow(Sender: TObject);
    procedure mmEmailMsgChange(Sender: TObject);
    procedure PageControl2Exit(Sender: TObject);
    procedure rgDestClick(Sender: TObject);
    procedure rgExpClick(Sender: TObject);
    procedure rgRecClick(Sender: TObject);
    procedure rgRemClick(Sender: TObject);
    procedure rgTomadorClick(Sender: TObject);
    procedure sbtnGetCertClick(Sender: TObject);
    procedure sbtnLogoMarcaClick(Sender: TObject);
    procedure sbtnPathSalvarClick(Sender: TObject);
    procedure StaticText13Click(Sender: TObject);
    procedure StaticText6Click(Sender: TObject);
    procedure StaticText7Click(Sender: TObject);
    procedure TabCteGeradasShow(Sender: TObject);
    procedure TabDadosComplementaresShow(Sender: TObject);
    procedure TabDadosCteShow(Sender: TObject);
    procedure TabExpedidorShow(Sender: TObject);
    procedure TabInfoCargaShow(Sender: TObject);
    procedure TabNfeShow(Sender: TObject);
    procedure TabRecebedorShow(Sender: TObject);
    procedure TabRodoviarioShow(Sender: TObject);
    procedure TabServicosImpostosShow(Sender: TObject);
    procedure TabSheet12ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure TabInfoCargaContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure TabDestinatarioShow(Sender: TObject);
    procedure TabTomadorShow(Sender: TObject);
  private
    modoGravacao : string;
    val_genCte : integer;
    val0 , val1, val2 : Double;
    valC :string;
    strInsere : string;
    generetor : integer;
    pVALPREDBC,pVALVBC,pVALPICMS,pVALVICMS,pVALVCRED : Double;
    percent_icms: Double;
    vDup : integer;
    procedure GravarConfiguracao;
    procedure DadosBasicos;
    procedure LerConfiguracao;
    procedure EditarRe;
    procedure GerarCTe(NumCTe : String);
    procedure buscaEmpresa(Razao: String);
    procedure CarregarUF;
    procedure duplicar(velhaCte: String);
    procedure CarregarCte(NumCte: String);
    procedure CarregarXML(ChaveCte: String);
    function LimparString(ATExto, ACaracteres: string): string;
  public

  end;

var
  fCTePrincipal: TfCTePrincipal;
const
  SELDIRHELP = 1000;

implementation

uses udmpdv, ufrmStatus, uDmCte, uNFe;

{$R *.lfm}

{ TfCTePrincipal }





procedure TfCTePrincipal.StaticText7Click(Sender: TObject);
begin

end;

procedure TfCTePrincipal.TabCteGeradasShow(Sender: TObject);
  var vDate1 , vDate2 : TdateTime;
begin
  vDate1 := StartOfTheMonth(today);
  DateTimePicker1.Date := vDate1 ;
  vDate2 := today;
  DateTimePicker2.Date := vDate2 ;
  if (not dmPdv.sqEmpresa.Active) then
    dmPdv.sqEmpresa.Open;
  if (dmPdv.sqEmpresa.RecordCount = 1) then
  begin
    buscaEmpresa('');
  end
  else begin
    comboEmpresa.SetFocus;
  end;
end;

procedure TfCTePrincipal.TabDadosComplementaresShow(Sender: TObject);
begin
  edtCaracAdTrans.SetFocus;
end;

procedure TfCTePrincipal.TabDadosCteShow(Sender: TObject);
begin
  edtSerieCte.SetFocus;
end;

procedure TfCTePrincipal.TabExpedidorShow(Sender: TObject);
begin
  edtExpBusca.SetFocus;
end;

procedure TfCTePrincipal.TabInfoCargaShow(Sender: TObject);
begin
  if(modoGravacao = 'INCLUIR')then
  begin
    btnGravarCTe.Click;
  end;
  dbValInfCarga.SetFocus;
  if(edtNumCte.Text <> '') then
  begin
    if not(dmCte.sqQC.Active)then
      dmCte.sqQC.Active;
    dmCte.sqQC.Params[0].AsInteger := val_genCte;
    dmCte.sqQC.Open;
  end;
end;

procedure TfCTePrincipal.TabNfeShow(Sender: TObject);
begin
  if(edtNumCte.Text <> '') then
  begin
    if not(dmCte.sqNFe.Active)then
      dmCte.sqNFe.Active;
    dmCte.sqNFe.Params[0].AsInteger := val_genCte;
    dmCte.sqNFe.Open;
  end;
end;

procedure TfCTePrincipal.TabRecebedorShow(Sender: TObject);
begin
  edtRecBusca.SetFocus;
end;

procedure TfCTePrincipal.TabRodoviarioShow(Sender: TObject);
begin
  edtRodRNTRC.SetFocus;
end;

procedure TfCTePrincipal.TabServicosImpostosShow(Sender: TObject);
begin
 if(modoGravacao = 'INCLUIR')then
 begin
   btnGravarCTe.Click;
 end;
 //Lazarus-Cte
 {
 if(edtNumCte.Text <> '') then
 begin
   if not(dm.qCOMP.Active)then
     dm.qCOMP.Active;
   dm.qCOMP.Params[0].AsInteger := val_genCte;
   dm.qCOMP.Open;
 end;
 }
 CheckBox1.Enabled := False;
 calValB.Enabled := False;
 valAliIn.Enabled := False;
 valAliInter.Enabled := False;
 valICMSPartI.Enabled := False;
 valIMCSPartF.Enabled := False;
 //Lazarus-Cte
 //valCombIni.Enabled := False;
 //valCombFim.Enabled := False;
end;

procedure TfCTePrincipal.TabSheet12ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin

end;

procedure TfCTePrincipal.TabInfoCargaContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin

end;

procedure TfCTePrincipal.TabDestinatarioShow(Sender: TObject);
begin
  edtDestBusca.SetFocus;
end;

procedure TfCTePrincipal.TabTomadorShow(Sender: TObject);
begin
  edtBuscaTomador.SetFocus;
end;

procedure TfCTePrincipal.GravarConfiguracao;
var
  IniFile    : String;
  Ini        : TIniFile;
  StreamMemo : TMemoryStream;
begin
  IniFile := ChangeFileExt( Application.ExeName, '.ini');
  Ini := TIniFile.Create( IniFile );
  try
    Ini.WriteString( 'Certificado','Caminho' ,edtCaminho.Text);
    Ini.WriteString( 'Certificado','Senha'   ,edtSenha.Text);
    Ini.WriteString( 'Certificado','NumSerie',edtNumSerie.Text);

    Ini.WriteInteger( 'Geral','DACTE'       ,rgTipoDACTe.ItemIndex);
    Ini.WriteInteger( 'Geral','FormaEmissao',rgFormaEmissao.ItemIndex);
    Ini.WriteInteger( 'Geral','TipoServico',rgTipoServico.ItemIndex);
    Ini.WriteString( 'Geral','LogoMarca'   ,edtLogoMarca.Text);
    Ini.WriteBool(   'Geral','Salvar'      ,ckSalvar.Checked);
    Ini.WriteString( 'Geral','PathSalvar'  ,edtPathLogs.Text);

    Ini.WriteString( 'WebService','UF'        ,cbUF.Text);
    Ini.WriteInteger( 'WebService','Ambiente'  ,rgTipoAmb.ItemIndex);
    Ini.WriteBool(   'WebService','Visualizar',ckVisualizar.Checked);

    Ini.WriteString( 'Proxy','Host'   ,edtProxyHost.Text);
    Ini.WriteString( 'Proxy','Porta'  ,edtProxyPorta.Text);
    Ini.WriteString( 'Proxy','User'   ,edtProxyUser.Text);
    Ini.WriteString( 'Proxy','Pass'   ,edtProxySenha.Text);

    Ini.WriteString( 'Emitente','CNPJ'       ,edtEmitCNPJ.Text);
    Ini.WriteString( 'Emitente','IE'         ,edtEmitIE.Text);
    Ini.WriteString( 'Emitente','RazaoSocial',edtEmitRazao.Text);
    Ini.WriteString( 'Emitente','Fantasia'   ,edtEmitFantasia.Text);
    Ini.WriteString( 'Emitente','Fone'       ,edtEmitFone.Text);
    Ini.WriteString( 'Emitente','CEP'        ,edtEmitCEP.Text);
    Ini.WriteString( 'Emitente','Logradouro' ,edtEmitLogradouro.Text);
    Ini.WriteString( 'Emitente','Numero'     ,edtEmitNumero.Text);
    Ini.WriteString( 'Emitente','Complemento',edtEmitComp.Text);
    Ini.WriteString( 'Emitente','Bairro'     ,edtEmitBairro.Text);
    Ini.WriteString( 'Emitente','CodCidade'  ,edtEmitCodCidade.Text);
    Ini.WriteString( 'Emitente','Cidade'     ,edtEmitCidade.Text);
    Ini.WriteString( 'Emitente','UF'         ,edtEmitUF.Text);

    Ini.WriteString( 'Email','Host'    ,edtSmtpHost.Text);
    Ini.WriteString( 'Email','Port'    ,edtSmtpPort.Text);
    Ini.WriteString( 'Email','User'    ,edtSmtpUser.Text);
    Ini.WriteString( 'Email','Pass'    ,edtSmtpPass.Text);
    Ini.WriteString( 'Email','Assunto' ,edtEmailAssunto.Text);
    Ini.WriteBool(   'Email','SSL'     ,cbEmailSSL.Checked );

    // cte-lazarus
    //Ini.WriteFloat('ICMS','Percentual' , dmCte.cdsCTEVALPICMS.AsFloat);

    StreamMemo := TMemoryStream.Create;
    mmEmailMsg.Lines.SaveToStream(StreamMemo);
    StreamMemo.Seek(0,soFromBeginning);
    Ini.WriteBinaryStream( 'Email','Mensagem',StreamMemo);

    StreamMemo.Free;
  finally
    Ini.Free;
  end;

end;

procedure TfCTePrincipal.DadosBasicos;
begin
  if (not dmPdv.sqEmpresa.Active) then
  begin
    dmPdv.sqEmpresa.Open;
    edtEmitCNPJ.Text     := dmPdv.sqEmpresaCNPJ_CPF.AsString;
    edtEmitIE.Text       := dmPdv.sqEmpresaIE_RG.AsString;
    edtEmitRazao.Text    := dmPdv.sqEmpresaRAZAO.AsString;
    edtEmitFantasia.Text := dmPdv.sqEmpresaEMPRESA.AsString;
    edtEmitFone.Text     := dmPdv.sqEmpresaFONE.AsString;
    edtEmitCEP.Text      := dmPdv.sqEmpresaCEP.AsString;
    edtEmitLogradouro.Text := dmPdv.sqEmpresaENDERECO.AsString;
    edtEmitNumero.Text   := dmPdv.sqEmpresaNUMERO.AsString;
    edtEmitComp.Text     := dmPdv.sqEmpresaLOGRADOURO.AsString;
    edtEmitBairro.Text   := dmPdv.sqEmpresaBAIRRO.AsString;
    edtEmitCodCidade.Text:= LimparString(dmPdv.sqEmpresaCD_IBGE.AsString,'-');
    edtEmitCidade.Text   := dmPdv.sqEmpresaCIDADE.AsString;
    edtEmitUF.Text       := dmPdv.sqEmpresaUF.AsString;

    edtSmtpHost.Text     := dmPdv.sqEmpresaSMTP.AsString;
    edtSmtpPort.Text     := dmPdv.sqEmpresaPORTA.AsString;
    edtSmtpUser.Text     := dmPdv.sqEmpresaE_MAIL.AsString;
    edtSmtpPass.Text     := dmPdv.sqEmpresaSENHA.AsString;
    edtEmailAssunto.Text := dmPdv.sqEmpresaDIVERSOS1.AsString;
    cbEmailSSL.Checked   := cbEmailSSL.Checked;

    dmPdv.sqEmpresa.Close;
  end;
end;

procedure TfCTePrincipal.LerConfiguracao;
var
 IniFile    : String;
 Ini        : TIniFile;
 Ok         : Boolean;
 StreamMemo : TMemoryStream;
begin
 IniFile := ChangeFileExt( Application.ExeName, '.ini');

 Ini := TIniFile.Create( IniFile );
 try
  {$IFDEF ACBrCTeOpenSSL}
   edtCaminho.Text  := Ini.ReadString( 'Certificado','Caminho' ,'');
   edtSenha.Text    := Ini.ReadString( 'Certificado','Senha'   ,'');

   ACBrCTe1.Configuracoes.Certificados.Certificado  := edtCaminho.Text;
   ACBrCTe1.Configuracoes.Certificados.Senha        := edtSenha.Text;
   edtNumSerie.Visible := False;
   Label25.Visible     := False;
   sbtnGetCert.Visible := False;
  {$ELSE}
   edtNumSerie.Text := Ini.ReadString( 'Certificado','NumSerie','');
   ACBrCTe1.Configuracoes.Certificados.NumeroSerie := edtNumSerie.Text;
   //edtNumSerie.Text := ACBrCTe1.Configuracoes.Certificados.NumeroSerie;
   Label1.Caption := 'Informe o número de série do certificado'#13+
                     'Disponível no Internet Explorer no menu'#13+
                     'Ferramentas - Opções da Internet - Conteúdo '#13+
                     'Certificados - Exibir - Detalhes - '#13+
                     'Número do certificado';
   Label2.Visible     := False;
   edtCaminho.Visible := False;
   edtSenha.Visible   := False;
   sbtnCaminhoCert.Visible := False;
  {$ENDIF}

  rgFormaEmissao.ItemIndex := Ini.ReadInteger('Geral','FormaEmissao',0);

  ckSalvar.Checked         := Ini.ReadBool(   'Geral','Salvar'      ,True);
  edtPathLogs.Text         := Ini.ReadString( 'Geral','PathSalvar'  ,'');

  percent_icms     := Ini.ReadFloat( 'ICMS','Percentual'   , 0);

  case rgFormaEmissao.ItemIndex of
   0: ACBrCTe1.Configuracoes.Geral.FormaEmissao := teNormal;
   1: ACBrCTe1.Configuracoes.Geral.FormaEmissao := teDPEC; // o mesmo que EPEC
   2: ACBrCTe1.Configuracoes.Geral.FormaEmissao := teFSDA;
   3: ACBrCTe1.Configuracoes.Geral.FormaEmissao := teSVCRS;
   4: ACBrCTe1.Configuracoes.Geral.FormaEmissao := tESVCSP;
  end;

  ACBrCTe1.Configuracoes.Geral.Salvar := ckSalvar.Checked;

  ACBrCTe1.Configuracoes.Arquivos.PathSalvar := edtPathLogs.Text;

  cbUF.ItemIndex       := cbUF.Items.IndexOf(Ini.ReadString('WebService','UF','SP'));
  rgTipoAmb.ItemIndex  := Ini.ReadInteger('WebService','Ambiente'  ,0);
  ckVisualizar.Checked :=Ini.ReadBool(    'WebService','Visualizar',False);
  ACBrCTe1.Configuracoes.WebServices.UF         := cbUF.Text;
  ACBrCTe1.Configuracoes.WebServices.Ambiente   := StrToTpAmb(Ok,IntToStr(rgTipoAmb.ItemIndex+1));
  ACBrCTe1.Configuracoes.WebServices.Visualizar := ckVisualizar.Checked;

  edtProxyHost.Text  := Ini.ReadString( 'Proxy','Host'   ,'');
  edtProxyPorta.Text := Ini.ReadString( 'Proxy','Porta'  ,'');
  edtProxyUser.Text  := Ini.ReadString( 'Proxy','User'   ,'');
  edtProxySenha.Text := Ini.ReadString( 'Proxy','Pass'   ,'');
  ACBrCTe1.Configuracoes.WebServices.ProxyHost := edtProxyHost.Text;
  ACBrCTe1.Configuracoes.WebServices.ProxyPort := edtProxyPorta.Text;
  ACBrCTe1.Configuracoes.WebServices.ProxyUser := edtProxyUser.Text;
  ACBrCTe1.Configuracoes.WebServices.ProxyPass := edtProxySenha.Text;

  rgTipoDACTe.ItemIndex   := Ini.ReadInteger('Geral','DACTE'       ,0);
  rgTipoServico.ItemIndex := Ini.ReadInteger('Geral','TipoServico' ,0);
  edtLogoMarca.Text       := Ini.ReadString ('Geral','LogoMarca'   ,'');

  if ACBrCTe1.DACTe <> nil then
   begin
    ACBrCTe1.DACTe.TipoDACTe    := StrToTpImp(OK,IntToStr(rgTipoDaCTe.ItemIndex+1));
    ACBrCTe1.DACTe.Logo         := edtLogoMarca.Text;
    ACBrCTe1.DACTe.PathPDF      := edtPathLogs.Text;
    ACBrCTe1.DACTe.TamanhoPapel := tpA4_2vias;
   end;

  edtEmitCNPJ.Text       := Ini.ReadString( 'Emitente','CNPJ'       ,'');
  edtEmitIE.Text         := Ini.ReadString( 'Emitente','IE'         ,'');
  edtEmitRazao.Text      := Ini.ReadString( 'Emitente','RazaoSocial','');
  edtEmitFantasia.Text   := Ini.ReadString( 'Emitente','Fantasia'   ,'');
  edtEmitFone.Text       := Ini.ReadString( 'Emitente','Fone'       ,'');
  edtEmitCEP.Text        := Ini.ReadString( 'Emitente','CEP'        ,'');
  edtEmitLogradouro.Text := Ini.ReadString( 'Emitente','Logradouro' ,'');
  edtEmitNumero.Text     := Ini.ReadString( 'Emitente','Numero'     ,'');
  edtEmitComp.Text       := Ini.ReadString( 'Emitente','Complemento','');
  edtEmitBairro.Text     := Ini.ReadString( 'Emitente','Bairro'     ,'');
  edtEmitCodCidade.Text  := Ini.ReadString( 'Emitente','CodCidade'  ,'');
  edtEmitCidade.Text     := Ini.ReadString( 'Emitente','Cidade'     ,'');
  edtEmitUF.Text         := Ini.ReadString( 'Emitente','UF'         ,'');

  edtSmtpHost.Text      := Ini.ReadString( 'Email','Host'   ,'');
  edtSmtpPort.Text      := Ini.ReadString( 'Email','Port'   ,'');
  edtSmtpUser.Text      := Ini.ReadString( 'Email','User'   ,'');
  edtSmtpPass.Text      := Ini.ReadString( 'Email','Pass'   ,'');
  edtEmailAssunto.Text  := Ini.ReadString( 'Email','Assunto','');
  cbEmailSSL.Checked    := Ini.ReadBool(   'Email','SSL'    ,False);

  StreamMemo := TMemoryStream.Create;
  Ini.ReadBinaryStream( 'Email','Mensagem',StreamMemo);
  mmEmailMsg.Lines.LoadFromStream(StreamMemo);
  StreamMemo.Free;

  ACBrCTe1.MAIL.Host := edtSmtpHost.Text;
  ACBrCTe1.MAIL.Port := edtSmtpPort.Text;
  ACBrCTe1.MAIL.Username := edtSmtpUser.Text;
  ACBrCTe1.MAIL.Password := edtSmtpPass.Text;
  ACBrCTe1.MAIL.SetSSL   := cbEmailSSL.Checked;
  ACBrCTe1.MAIL.ReadingConfirmation := False;

 finally
  Ini.Free;
 end;


end;

procedure TfCTePrincipal.EditarRe;
var  strEdita :string;
begin
  if ((rgRec.ItemIndex = 1) and (edtNumCte.Text <> '')) then
  begin
    strEdita := 'UPDATE CTE SET ';

    strEdita := strEdita + ' RE_CNPJCPF = ';
    strEdita := strEdita + QuotedStr('');
    strEdita := strEdita + ' ,RE_IESTADUAL = ';
    strEdita := strEdita + QuotedStr('');
    strEdita := strEdita + ' ,RE_RSOCIAL = ';
    strEdita := strEdita + QuotedStr('');
    strEdita := strEdita + ' ,RE_FANTASIA = ';
    strEdita := strEdita + QuotedStr('');
    strEdita := strEdita + ' ,RE_TELEFONE = ';
    strEdita := strEdita + QuotedStr('');
    strEdita := strEdita + ' ,RE_ENDERECO = ';
    strEdita := strEdita + QuotedStr('');
    strEdita := strEdita + ' ,RE_NUMERO = ';
    strEdita := strEdita + QuotedStr('');
    strEdita := strEdita + ' ,RE_COMPLEMENTO = ';
    strEdita := strEdita + QuotedStr('');
    strEdita := strEdita + ' ,RE_BAIRRO = ';
    strEdita := strEdita + QuotedStr('');
    strEdita := strEdita + ' ,RE_CODIGOMUNICIPI = ';
    strEdita := strEdita + QuotedStr('');
    strEdita := strEdita + ' ,RE_CIDADE = ';
    strEdita := strEdita + QuotedStr('');
    strEdita := strEdita + ' ,RE_CEP = ';
    strEdita := strEdita + QuotedStr('');
    strEdita := strEdita + ' ,RE_ESTADO = ';
    strEdita := strEdita + QuotedStr('');

    strEdita := strEdita +' where COD_CTE = ' ;
    strEdita := strEdita +  IntToStr(val_genCte);
    MemoDados.Text := strEdita;

    try
      dmPdv.IbCon.ExecuteDirect(strEdita);
      dmPdv.sTrans.Commit;
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dmPdv.sTrans.Rollback;
        exit;
      end;
    end;
  end;

end;

procedure TfCTePrincipal.GerarCTe(NumCTe: String);
var
 i, j, CodigoMunicipio, Tomador: Integer;
 IE  : string;
begin

  // O código abaixo faz parte da minha aplicação devendo ser feitas as alterações
  // necessárias para ser utilizado na sua.
  with ACBrCTe1.Conhecimentos.Add.CTe do
  begin
    //
    // Dados de Identificação do CT-e
    //
    Ide.cUF:= 35; // Criar campo Tabela Empresa
   Ide.cCT:= StrToInt(edtNumCte.Text); //   Código Aleatório   Estou usando o mesmo do numero da CTE
   Ide.CFOP:= StrToInt(edtCFOP.Text);
   Ide.natOp:= edtNatOpe.Text;

   //if zEmpresaCODIGO.AsInteger = 0  // criar ou ver de onde vira

     // forma pgto
    case  rgForPag.ItemIndex of
    0: Ide.forPag := fpPago;
    1: Ide.forPag := fpAPagar;
    2: Ide.forPag := fpOutros;
   end;


   Ide.modelo:= 57 ;
   Ide.serie:= StrToInt(edtSerieCte.Text) ;// Criar ou ver da onde Vira DM_CNT.Conhec2Serie.AsInteger;
   Ide.nCT:= StrToInt(edtNumCte.Text);
   Ide.dhEmi:= dataGerarCte.DateTime;  // StringToDateTime(dataGerarCte.Text); //  Now;
   Ide.tpImp:= tiRetrato;

               // envio do CT-e       Inicio da Prestação




   // TpcnTipoEmissao = (teNormal, teContingencia, teSCAN, teDPEC, teFSDA);
   case rgFormaEmissao.ItemIndex of
    0: Ide.tpEmis:=teNormal;
    1: Ide.tpEmis:=teContingencia;
    2: Ide.tpEmis:=teSCAN;
    3: Ide.tpEmis:=teDPEC;
    4: Ide.tpEmis:=teFSDA;
   end;

   // TpcnTipoAmbiente = (taProducao, taHomologacao);
   case  rgTipoAmb.ItemIndex of
    0: Ide.tpAmb:=taProducao;
    1: Ide.tpAmb:=taHomologacao;
   end;

   // TpcteTipoCTe = (tcNormal, tcComplemento, tcAnulacao, tcSubstituto);
   case rgTipoDACTe.ItemIndex of
    0: Ide.tpCTe:=tcNormal;
    1: Ide.tpCTe:=tcComplemento;
    2: Ide.tpCTe:=tcAnulacao;
    3: Ide.tpCTe:=tcSubstituto;
   end;

   // TpcnProcessoEmissao = (peAplicativoContribuinte, peAvulsaFisco, peAvulsaContribuinte, peContribuinteAplicativoFisco);
   Ide.procEmi := peAplicativoContribuinte;
   Ide.verProc:='2.0.42';  // = versaão do aplicativo da receita

   // Ide.refCTE:=''; // Chave de Acesso do CT-e Referenciado
   CodigoMunicipio:= StrToInt(LimparString(edtEmitCodCidade.Text,'-')); //StrToInt((35*100000) + LimparString(edtEmitCodCidade.Text,'-'))); /// fazer DM_CTA.EmpresaCodigoEstado.AsInteger * 100000 + DM_CTA.EmpresaCodigoMunicipio.AsInteger;
  //Ide.cMunEmi := StrToInt(LimparString(edtEmitCodCidade.Text,'-'));
  // Ide.xMunEmi := edtEmitLogradouro.Text;
  // Ide.UFEmi := edtEmitUF.Text;

   // TpcteModal = (mdRodoviario, mdAereo, mdAquaviario, mdFerroviario, mdDutoviario);

    // Ide.modal:= mdRodoviario;
    case rgModal.ItemIndex of
     0: Ide.modal:=mdRodoviario;
     1: Ide.modal:=mdAereo;
     //2: Ide.modal:=mdAquaviario;    // manoel não inlui no rgModal
     //3: Ide.modal:=mdFerroviario;
     //4: Ide.modal:=mdDutoviario;
     //5: Ide.modal:=mdMultimodal;
    end;


   // TpcteTipoServico = (tsNormal, tsSubcontratacao, tsRedespacho, tsIntermediario);
    case rgTipoServico.ItemIndex of
     0: Ide.tpServ:=tsNormal;
     1: Ide.tpServ:=tsSubcontratacao;
     2: Ide.tpServ:=tsRedespacho;
     3: Ide.tpServ:=tsIntermediario;
    end;
                               // incluir na aba Dados

    // Emissão
    Ide.cMunEnv := StrToInt(edtEnvCodCidade.Text);
    Ide.xMunEnv := edtEnvCidade.Text;
    Ide.UFEnv := edtEnvUF.Text;

    // Inicio da Prestação
    Ide.cMunIni:= StrToInt(edtIniCodCidade.Text); // DM_CNT.Conhec2CodCidadeColeta.AsInteger;
    Ide.xMunIni:= edtIniCidade.Text; //DM_CNT.Conhec2NomeCidadeColeta.AsString;
    Ide.UFIni:= edtIniUF.Text; // DM_CNT.Conhec2EstadoColeta.AsString;

    // Termino da Prestação
    Ide.cMunFim:= StrToInt(edtFimCodCidade.Text); // DM_CNT.Conhec2CodCidadeEntrega.AsInteger;
    Ide.xMunFim:= edtFimCidade.Text; // DM_CNT.Conhec2NomeCidadeEntrega.AsString;
    Ide.UFFim:= edtFimUF.Text; //DM_CNT.Conhec2EstadoEntrega.AsString;

    /////////// aba dados fim

    // TpcteRetira

    case rgRetira.ItemIndex of
     0: Ide.retira := rtSim;
     1: Ide.retira := rtNao;
    end;
    Ide.xdetretira := memDetRetira.Text;

                                         // Aba Tomador  inicio
   //0-Remetente; 1-Expedidor; 2-Recebedor; 3-Destinatário Serão utilizadas as informações contidas no respectivo grupo,

   // Lazarus-Cte
   //rgTomador.ItemIndex := dmCte.cdsCTETOMADORSERVICO.AsInteger;

    case rgTomador.ItemIndex of
      0: rgTomador.ItemIndex := 0;
      1: rgTomador.ItemIndex := 1;
      2: rgTomador.ItemIndex := 2;
      3: rgTomador.ItemIndex := 3;
      4: rgTomador.ItemIndex := 4;
    end;

    case rgTomador.ItemIndex of
      0 : Ide.toma03.Toma := tmRemetente ;
      1 : Ide.toma03.Toma := tmExpedidor ;
      2 : Ide.toma03.Toma := tmRecebedor ;
      3 : Ide.toma03.Toma := tmDestinatario ;
    end;

   // Tomador do Serviço no CTe    4 = Outros
   if rgTomador.ItemIndex = 4  then
   begin
     Ide.Toma4.Toma:=tmOutros;
     if copy(edtCNPJTomador.text,10,4)<>'0000'
          then begin
           Ide.Toma4.CNPJCPF := edtCNPJTomador.Text ; // Copy(edtCNPJTomador.Text, 2, 14);
           IE := edtIETomador.Text;
          end
          else begin
           Ide.Toma4.CNPJCPF := Copy(edtCNPJTomador.Text, 1, 9) +
                                   Copy(edtCNPJTomador.Text, 14, 2);
           IE := 'ISENTO';
          end;

     Ide.toma4.IE:= IE;

     Ide.Toma4.xNome:= edtNomeTomador.Text;
     Ide.Toma4.xFant:= edtRazaoTomador.Text;
     Ide.Toma4.fone:= edtFoneTomador.Text;
     Ide.Toma4.EnderToma.xLgr:= edtEndTomador.Text;
     Ide.Toma4.EnderToma.nro:= edtNumTomador.Text;
     Ide.Toma4.EnderToma.xCpl:= edtCompTomador.Text;
     Ide.Toma4.EnderToma.xBairro:= edtBairroTomador.Text;

     CodigoMunicipio:= StrToInt(LimparString(edtTomadorCodCidade.Text,'-'));
     Ide.Toma4.EnderToma.cMun:= CodigoMunicipio;
     Ide.Toma4.EnderToma.xMun:= edtTomadorCidade.Text;
     Ide.Toma4.EnderToma.CEP:= StrToInt(LimparString(edtCepTomador.TExt,'-')); //StrToIntDef(edtCepTomador.TExt, 0); 199
     Ide.Toma4.EnderToma.UF:= edtTomadorUF.Text;
     Ide.Toma4.EnderToma.cPais:= 1058 ; //////////////////// manoel
     Ide.Toma4.EnderToma.xPais:= 'BRASIL';                  ///manoel
    end;
                                         // Aba Tomador  fim

   //
   //  Informações Complementares do CTe     Aba Dados Complementares inicio
   //
   compl.xCaracAd := Trim(edtCaracAdTrans.Text);
   compl.xCaracSer := Trim(edtCaracAdServ.Text);
   compl.xEmi := Trim(edtFuncEmi.Text);

   compl.xObs     := memxObs.Text;

   //                          Aba Emitente caregando dados da Empresa  Inicio
   // Dados do Emitente
   //
   // dm.zEmpresa.Close;
   // dm.zEmpresa.SQL.Clear;
   // dm.zEmpresa.SQL.Add('Select * From Empresa');
   // dm.zEmpresa.SQL.Add('Where RAZAO = ' + QuotedStr(comboEmpresa.Text));
   if (not dmPdv.sqEmpresa.Active) then
     dmPdv.sqEmpresa.Open;

   if(copy(dmPdv.sqEmpresaCNPJ_CPF.Text,10,4)<>'0000')then
   begin
     Emit.CNPJ := dmPdv.sqEmpresaCNPJ_CPF.Text;
     Emit.IE := dmPdv.sqEmpresaIE_RG.Text;
   end
   else begin
     Emit.CNPJ := Copy(dmPdv.sqEmpresaCNPJ_CPF.Text, 1, 9) +
       Copy(dmPdv.sqEmpresaCNPJ_CPF.Text, 14, 2);
       Emit.IE := 'ISENTO';
     end;

    Emit.xNome := dmPdv.sqEmpresaRAZAO.AsString;
    Emit.xFant := dmPdv.sqEmpresaEMPRESA.AsString;
    Emit.EnderEmit.xLgr := dmPdv.sqEmpresaENDERECO.AsString;
    Emit.EnderEmit.nro := dmPdv.sqEmpresaNUMERO.AsString;
    Emit.EnderEmit.xCpl := dmPdv.sqEmpresaLOGRADOURO.AsString;
    Emit.EnderEmit.xBairro := dmPdv.sqEmpresaBAIRRO.AsString;
    /// refazer aqui ta errado
    //  CodigoMunicipio := StrToInt(dm.zEmpresaCD_IBGE.AsString);
    CodigoMunicipio := StrToInt(LimparString(dmPdv.sqEmpresaCD_IBGE.AsString,'-'));
    Emit.EnderEmit.cMun := CodigoMunicipio;

    Emit.EnderEmit.xMun := dmPdv.sqEmpresaCIDADE.AsString;
    Emit.EnderEmit.CEP := StrToIntDef(dmPdv.sqEmpresaCEP.AsString, 0);
    Emit.EnderEmit.UF := dmPdv.sqEmpresaUF.AsString;
    ////Emit.enderEmit.cPais := 1058; // manoel Obs ver se precisar refazer
    ////Emit.EnderEmit.xPais := 'Brasil' ; //manoel Obs ver se precisar refazer
    Emit.EnderEmit.fone := dmPdv.sqEmpresaDDD.AsString + '-' + dmPdv.sqEmpresaFONE.AsString;

    //  Aba Emitente Fim

    //
    //  Dados do Remetente
    //
                          // aba Remetente  inicio

    if trim(edtRemCNPJ.Text)<>'' then
    begin
      Rem.xNome:= edtRemRazao.Text;
      Rem.xFant:= edtRemNome.Text;
      Rem.EnderReme.xLgr:= edtRemEnd.Text;
      Rem.EnderReme.nro:= edtRemNum.Text;
      Rem.EnderReme.xCpl:= edtRemComp.Text;
      Rem.EnderReme.xBairro:= edtRemBairro.Text;

      CodigoMunicipio:= StrToInt(LimparString(edtRemCodCidade.Text,'-'));

      Rem.EnderReme.cMun := CodigoMunicipio;
      Rem.EnderReme.xMun := edtRemCidade.Text;
      Rem.EnderReme.CEP :=  StrToInt(LimparString(edtRemCep.Text,'-')); //StrToIntDef(edtRemCep.Text, 0); 199
      Rem.EnderReme.UF := edtRemUF.Text;
      Rem.EnderReme.cPais := 1058 ; ///  manoel DM_CTA.PessoaFJCodigoPais.AsInteger;
      Rem.EnderReme.xPais := 'BRASIL' ; /// manoel DM_CTA.PessoaFJPais.AsString;


      if copy(edtRemCNPJ.Text,10,4)<>'0000'
      then begin
        Rem.CNPJCPF := edtRemCNPJ.Text;
        IE := edtRemIE.Text;
      end
      else begin
        Rem.CNPJCPF := Copy(edtRemCNPJ.Text, 1, 9) +
                          Copy(edtRemCNPJ.Text, 14, 2);
        IE := 'ISENTO';
      end;

      Rem.IE:=IE;
      Rem.fone:= edtRemFone.Text; // manoel trocar depois quando tive endereço

    end;

   // parcial nf   StringToFloat(Format('%8.2f', [calValCarga.Value]));

    //info Documentos

    //Lazarus-Cte
    {
    if not(dm.cdsNFe.Active)then
    begin
      dm.cdsNFe.Params[0].AsInteger := val_genCte;
      dm.cdsNFe.Open;
    end;

    dm.cdsNFe.First;
    while( not dm.cdsNFe.Eof) do begin
      with infCTeNorm.infDoc.infNFe.Add do
      begin
        chave := dm.cdsNFeCHAVE.AsString;
        PIN := dm.cdsNFePIN.AsString;
        dPrev := dm.cdsNFeDPREV.Value; // ; FormatDateTime('mm/dd/yyyy',dm.cdsNFeDPREV.Text); //dm.cdsNFeDPREV.AsString;
      end;
      dm.cdsNFe.Next;
    end;
    dm.cdsNFe.Close;
    }
   case  rgGlobalizado.ItemIndex of
    1: Ide.indGlobalizado :=tiSim;
    0: Ide.indGlobalizado :=tiNao;
   end;
   // Lazarus-Cte
   {
    if(fNF.edtNFserie.Text <> '') then
    begin
      with infCTeNorm.infDoc.infNF.Add do
      begin
        nRoma := fNF.edtNFRoma.Text;
        nPed  := fNF.edtNFNumP.Text;
        serie := fNF.edtNFserie.Text;
        nDoc  := fNF.edtNFNum.Text;

        // case comboNFModelo.ItemIndex of     FALTA AQUI 08/11/2013

        dEmi  := StrToDate(fNF.dataNFEmi.Text); //  DM_CNT.NotasEmissaoNF.AsDateTime;
        vBC   := StringToFloat(Format('%8.2f', [fNF.valNFBase.Value])); //RoundTo(DM_CNT.NotasValorBCICMS.AsFloat, -2);
        vICMS := StringToFloat(Format('%8.2f', [fNF.valNFICMS.Value]));//RoundTo(DM_CNT.NotasValorICMS.AsFloat, -2);
        vBCST := StringToFloat(Format('%8.2f', [fNF.valNFBaseST.Value])); //RoundTo(DM_CNT.NotasValorBCICMSST.AsFloat, -2);
        vST   := StringToFloat(Format('%8.2f', [fNF.valNFICMSST.Value])); //RoundTo(DM_CNT.NotasValorICMSST.AsFloat, -2);
        vProd := StringToFloat(Format('%8.2f', [fNF.valNFValProd.Value])); //RoundTo(DM_CNT.NotasValorProdutos.AsFloat, -2);
        vNF   := StringToFloat(Format('%8.2f', [fNF.valNFValor.Value]));//RoundTo(DM_CNT.NotasValorNF.AsFloat, -2);
        nCFOP := StrToInt(fNF.edtNFCFOP.Text); //DM_CNT.NotasCFOPNF.AsInteger;
        nPeso := StringToFloat(Format('%8.2f', [fNF.valNFPeso.Value])); //RoundTo(DM_CNT.NotasPesoKg.AsFloat, -2);
        PIN   := fNF.edtNFPin.Text; //DM_CNT.NotasPinSuframa.AsString;
      end
    end;
    }

    // Lazarus-Cte
    // aba Remetente fim
    {
    if(combOutrosDocs.Text <> '') then
    begin
      with infCTeNorm.infDoc.infOutros.Add do
      begin
        if(dm.cdsCTEOUTPDOC.AsString = '00' )then
        tpDoc := tdDeclaracao;
        if(dm.cdsCTEOUTPDOC.AsString = '99' )then
        tpDoc := tdOutros;

        dEmi       := dataOutrosEmi.DateTime;
        nDoc       := edtOutrosNum.Text;
        descOutros := edtOutrosDesc.Text;
        vDocFisc   := StringToFloat(Format('%8.2f', [valOutrosVal.Value])); // valOutrosVal.Value;
      end;
    end;}

   //
   //  Dados do Destinatario    // Aba Destinatarios Inicio

   //
    if(trim(edtDestCNPJ.Text)<>'') then
    begin
      Dest.xNome:= edtDestNome.Text ;//DM_CTA.PessoaFJRSocial.AsString;
      Dest.EnderDest.xLgr:= edtDestEnd.Text ;// DM_CTA.PessoaFJEndereco.AsString;
      Dest.EnderDest.nro:= edtDestNum.Text ;// DM_CTA.PessoaFJNumero.AsString;
      Dest.EnderDest.xCpl:= edtDestComp.Text ;//DM_CTA.PessoaFJComplemento.AsString;
      Dest.EnderDest.xBairro:= edtDestBairro.Text ;// DM_CTA.PessoaFJBairro.AsString;

      CodigoMunicipio:= StrToInt(LimparString(edtDestCodCidade.Text,'-'));

      Dest.EnderDest.cMun:= CodigoMunicipio;
      Dest.EnderDest.xMun:= edtDestCidade.Text ;//DM_CTA.PessoaFJCidade.AsString;
      Dest.EnderDest.CEP:= StrToInt(LimparString(edtDestCEP.Text,'-')); //StrToIntDef(edtDestCEP.Text, 0); 199
      Dest.EnderDest.UF:= edtDestUF.Text ;// DM_CTA.PessoaFJEstado.AsString;
      Dest.EnderDest.cPais:= 1058 ;//  manoel DM_CTA.PessoaFJCodigoPais.AsInteger;
      Dest.EnderDest.xPais:= 'BRASIL' ; // manoelDM_CTA.PessoaFJPais.AsString;

      if (copy(edtDestCNPJ.Text,10,4)<>'0000') then
      begin
        Dest.CNPJCPF := edtDestCNPJ.Text;
        Dest.IE := edtDestIE.Text;
      end
      else begin
        Dest.CNPJCPF := Copy(edtDestCNPJ.Text, 1, 9) + Copy(edtDestCNPJ.Text, 14, 2);
        Dest.IE := 'ISENTO';
      end;
      ////Dest.IE:=IE;   manoel
      Dest.IE := edtDestIE.Text;
      // Manoel Inscrição na SUFRAMA
      Dest.fone:= edtDestFone.Text; //DM_CTA.PessoaFJTelefone.AsString;
      Dest.ISUF:= edtDestISUF.Text; // Trim(DM_CTA.PessoaFJInscSUF.AsString);
      // Aba Destinatarios Inicio Fim
    end;
    //
    //  Dados do Expedidor
    //
    if(rgExp.ItemIndex = 0)then
    begin
      Exped.xNome:= edtExpRazao.Text;
      Exped.EnderExped.xLgr:= edtExpEnd.Text;
      Exped.EnderExped.nro:= edtExpNum.Text;//DM_CTA.PessoaFJNumero.AsString;
      Exped.EnderExped.xCpl:= edtExpComp.Text;//DM_CTA.PessoaFJComplemento.AsString;
      Exped.EnderExped.xBairro:= edtExpBairro.Text;//DM_CTA.PessoaFJBairro.AsString;

      CodigoMunicipio:= StrToInt(LimparString(edtExpCodCidade.Text,'-'));
      Exped.EnderExped.cMun:=CodigoMunicipio;
      Exped.EnderExped.xMun:= edtExpCidade.Text;//DM_CTA.PessoaFJCidade.AsString;
      Exped.EnderExped.CEP:= StrToInt(LimparString(edtExpCep.Text,'-')); // StrToIntDef(edtExpCep.Text, 0); 199
      Exped.EnderExped.UF:= edtExpUF.Text;//DM_CTA.PessoaFJEstado.AsString;
      Exped.EnderExped.cPais:= 1058;// DM_CTA.PessoaFJCodigoPais.AsInteger;
      Exped.EnderExped.xPais:= 'BRASIL' ; //DM_CTA.PessoaFJPais.AsString;

      if copy(edtExpCNPJ.Text,10,4)<>'0000'
      then begin
        Exped.CNPJCPF := edtExpCNPJ.Text;
        IE := edtExpIE.Text;
      end
      else begin
        Exped.CNPJCPF := Copy(edtExpCNPJ.Text, 1, 9) +
                          Copy(edtExpCNPJ.Text, 14, 2);
        IE := 'ISENTO';
      end;

      Exped.IE:=IE;
      Exped.fone:= edtExpFone.Text;// DM_CTA.PessoaFJTelefone.AsString;
    end;
    // ABA RECEBEDOR
    //  Dados do Recebedor

    if (rgRec.ItemIndex = 0)then
    begin
      Receb.xNome:= edtRecRazao.Text;// DM_CTA.PessoaFJRSocial.AsString;
      Receb.EnderReceb.xLgr:= edtRecEnd.Text;// DM_CTA.PessoaFJEndereco.AsString;
      Receb.EnderReceb.nro:= edtRecNum.Text;// DM_CTA.PessoaFJNumero.AsString;
      Receb.EnderReceb.xCpl:= edtRecComp.Text;// DM_CTA.PessoaFJComplemento.AsString;
      Receb.EnderReceb.xBairro:= edtRecBairro.Text;// DM_CTA.PessoaFJBairro.AsString;

      CodigoMunicipio:= StrToInt(LimparString(edtRecCodCidade.Text,'-'));
      Receb.EnderReceb.cMun:=CodigoMunicipio;
      Receb.EnderReceb.xMun:= edtRecCidade.Text;// DM_CTA.PessoaFJCidade.AsString;
      Receb.EnderReceb.CEP:= StrToInt(LimparString(edtRecCep.Text,'-')); //StrToIntDef(edtRecCep.Text, 0); 199
      Receb.EnderReceb.UF:= edtRecUF.Text;// DM_CTA.PessoaFJEstado.AsString;
      Receb.EnderReceb.cPais:= 1058 ; //DM_CTA.PessoaFJCodigoPais.AsInteger;
      Receb.EnderReceb.xPais:= 'BRASIL' ; //DM_CTA.PessoaFJPais.AsString;

      if copy(edtRecCNPJ.Text,10,4)<>'0000'
      then begin
        Receb.CNPJCPF := edtRecCNPJ.Text;
        IE := edtRecIE.Text;
      end
      else begin
        Receb.CNPJCPF := Copy(edtRecCNPJ.Text, 1, 9) +
                          Copy(edtRecCNPJ.Text, 14, 2);
        IE := 'ISENTO';
      end;

      Receb.IE:=IE;
      Receb.fone:= edtRecFone.Text; /// DM_CTA.PessoaFJTelefone.AsString;
    end;

     // ABA Serviços e Impostos
     //  Valores da Prestação de Serviço
    // Lazarus-Cte
    {
    if (dbValTotPrest.Field.Value <> null) then
      vPrest.vTPrest :=  dbValTotPrest.Field.Value;// /RoundTo(DM_CNT.Conhec2ValorTotal.AsFloat, -2);
    if (dbValReceber.Field.Value <> null) then
      vPrest.vRec    :=  dbValReceber.Field.Value;//valReceber.Value; // RoundTo(DM_CNT.Conhec2ValorTotal.AsFloat, -2);

    if not(dm.cdsCOMP.Active)then
    begin
      dm.cdsCOMP.Params[0].AsInteger := val_genCte;
      dm.cdsCOMP.Open;
    end;

    while( not dm.cdsCOMP.Eof) do begin
      with vPrest.comp.Add do
      begin
        xNome := dm.cdsCOMPCOMP_NOME.AsString;
        vComp := dm.cdsCOMPCOMP_VALOR.AsFloat;
      end;
      dm.cdsCOMP.Next;
    end;
    dm.cdsCOMP.Close;
    }
    //  Docs Anterior 15/08/19

     with infCTeNorm.docAnt.emiDocAnt.Add do
     begin
       CNPJCPF  := edtAntCNPJ.Text;  // '31776232000160';
       xNome    := edtAntNome.Text; //'TRANS MOINHOS LOGISTICA LTDA';
       uf       := edtAntUF.Text;    // 'PR';
       ie       := edtAntIE.Text;  //'9079516349';

       with idDocAnt.Add do
       begin
         idDocAntEle.Add.chCTe := edtAntCHCTE.Text; //'41190731776232000160570010000415871000157434';
       end;
     end;

   //  Valores dos Impostos
   // TpcnCSTIcms = (cst00, cst10, cst20, cst30, cst40, cst41, cst45, cst50, cst51, cst60, cst70, cst80, cst81, cst90);
   // 80 e 81 apenas para CTe

   //Lazarus-Cte
   {
    case combCodSitTrib.ItemIndex of    //00 - Tributação Normal do ICMS
    0: begin
         Imp.ICMS.SituTrib     := cst00;
         Imp.ICMS.ICMS00.CST   := cst00;
         Imp.ICMS.ICMS00.vBC   := StrToFloat(dbVALVBC.Field.Value);
         Imp.ICMS.ICMS00.pICMS := StrToFloat(dbVALPICMS.Field.Value);
         Imp.ICMS.ICMS00.vICMS := StrToFloat(dbVALVICMS.Field.Value);             // valvICMS.Value;
       end;

    1: begin                        //20 - Tributação com Redulçao da BC do ICMS
         Imp.ICMS.SituTrib      := cst20;
         Imp.ICMS.ICMS20.CST    := cst20; // Tributação com BC reduzida do ICMS
         Imp.ICMS.ICMS20.pRedBC := StrToFloat(dbvalpRedBC.Field.Value); //RoundTo(DM_CNT.Conhec2ReducaoICMS.AsFloat, -2);
         Imp.ICMS.ICMS20.vBC    := StrToFloat(dbvalvBC.Field.Value); //RoundTo(DM_CNT.Conhec2BaseCalc.AsFloat, -2);
         Imp.ICMS.ICMS20.pICMS  := StrToFloat(dbvalpICMS.Field.Value); //RoundTo(DM_CNT.Conhec2AliqICMS.AsFloat, -2);
         Imp.ICMS.ICMS20.vICMS  := StrToFloat(dbvalvICMS.Field.Value); //RoundTo(DM_CNT.Conhec2ValorICMS.AsFloat, -2);
         end;

    2: begin                         // 40 - ICMS Isenção
         Imp.ICMS.SituTrib   := cst40;
         Imp.ICMS.ICMS45.CST := cst40;
       end;

    3: begin                       //41 - ICMS não Tributado
         Imp.ICMS.SituTrib   := cst41;
         Imp.ICMS.ICMS45.CST := cst41;
       end;

    4: begin                       //51 - ICMS Deferido
         Imp.ICMS.SituTrib   := cst51;
         Imp.ICMS.ICMS45.CST := cst51;
       end;

    5: begin                      //   60 - ICMS Cobrado Anteriormente por Substituição Tributária
         Imp.ICMS.SituTrib          := cst60;
         Imp.ICMS.ICMS60.CST        := cst60;
         Imp.ICMS.ICMS60.vBCSTRet   := StringToFloat(dbvalvBC.Field.Value);
         Imp.ICMS.ICMS60.vICMSSTRet := StringToFloat(dbvalpICMS.Field.Value);     // invertido
         Imp.ICMS.ICMS60.pICMSSTRet := StringToFloat(dbvalvICMS.Field.Value);     // invertido
         Imp.ICMS.ICMS60.vCred      := StringToFloat(dbvalvCred.Field.Value);
        end;
                                 // 90 - ICMS outros
    6: begin
         Imp.ICMS.SituTrib      := cst90;
         Imp.ICMS.ICMS90.CST    := cst90; // Tributação atribuida ao tomador ou 3. por ST
         Imp.ICMS.ICMS90.pRedBC := StringToFloat(dbvalpRedBC.Field.Value);
         Imp.ICMS.ICMS90.vBC    := StringToFloat(dbvalvBC.Field.Value);
         Imp.ICMS.ICMS90.pICMS  := StringToFloat(dbvalpICMS.Field.Value);
         Imp.ICMS.ICMS90.vICMS  := StringToFloat(dbvalvICMS.Field.Value);
         Imp.ICMS.ICMS90.vCred  := StringToFloat(dbvalvCred.Field.Value);
       end;

    7: begin                        // 90 - ICMS Outra UF
         Imp.ICMS.SituTrib      := cst90;
         Imp.ICMS.ICMS90.CST    := cst90;
         Imp.ICMS.ICMS90.pRedBC := StringToFloat(dbvalpRedBC.Field.Value); //RoundTo(DM_CNT.Conhec2ReducaoICMS.AsFloat, -2);
         Imp.ICMS.ICMS90.vBC    := StringToFloat(dbvalvBC.Field.Value); //RoundTo(DM_CNT.Conhec2BaseCalc.AsFloat, -2);
         Imp.ICMS.ICMS90.pICMS  := StringToFloat(dbvalpICMS.Field.Value); //RoundTo(DM_CNT.Conhec2AliqICMS.AsFloat, -2);
         Imp.ICMS.ICMS90.vICMS  := StringToFloat(dbvalvICMS.Field.Value); //RoundTo(DM_CNT.Conhec2ValorICMS.AsFloat, -2);
       // Imp.ICMS.ICMS90.vCred  := valvCred.Value; //RoundTo(DM_CNT.Conhec2CreditoICMS.AsFloat, -2);
       end;

    8: begin                    // 90 - SIMPLES NACIONAL
         Imp.ICMS.SituTrib := cstICMSSN ;
         Imp.ICMS.ICMSSN.indSN := 1;
       end;
    end;
    }

    //
    //  Informações da Carga
    //                                  //Format('%8.2f', [edPesoVol1.Value]);


    // Lazarus-Cte
    {
    infCTeNorm.infCarga.vCarga  := StringToFloat(dbValInfCarga.Field.Value);  //StringToFloat(calValCarga.Text); // RoundTo(DM_CNT.Conhec2ValorTotalNF.AsFloat, -2);arga.vMerc   :=  calValCarga.Text; // RoundTo(DM_CNT.Conhec2ValorTotalNF.AsFloat, -2);
    infCTeNorm.infCarga.proPred := edtProPred.Text; //DM_CNT.Conhec2Especie.AsString;
    infCTeNorm.infCarga.xOutCat := edtOutCat.Text; // DM_CNT.Conhec2Natureza.AsString;
    }

    //  Dados do Modal Rodoviário

    infCTeNorm.rodo.RNTRC := edtRodRNTRC.Text;
    infCTeNorm.rodo.dPrev := dataRodPrev.Date;

    case rgRodLotacao.ItemIndex of
      0: infCTeNorm.rodo.lota := ltNao;
      1: infCTeNorm.rodo.lota := ltsim;
    end;

    // Lazarus-Cte
    {
    if (not dm.cdsVeic.Active)then
    begin
      dm.cdsVeic.Params[0].AsInteger := val_genCte;
      dm.cdsVeic.Open;
    end;

    while( not dm.cdsVeic.Eof) do
    begin
      with infCTeNorm.rodo.veic.Add  do
      begin
        cInt  := dm.cdsVeicCINT.AsString ;
        RENAVAM := dm.cdsVeicRENAVAM.AsString ;
        placa := dm.cdsVeicPlaca.AsString ;
        tara := dm.cdsVeicTara.AsInteger ;
        capKG := dm.cdsVeicCAPKG.AsInteger ;
        capM3 := dm.cdsVeicCAPM3.AsInteger ;
        if(dm.cdsVeicTPPROP.AsString = 'P' )then
        tpProp  := tpProprio;
        if(dm.cdsVeicTPPROP.AsString = 'T' )then
        tpProp  := tpTerceiro;
        if(dm.cdsVeicTPVEIC.AsString = '0' )then
        tpVeic  := tvTracao;
        if(dm.cdsVeicTPVEIC.AsString = '1' )then
        tpVeic  := tvReboque;
        if(dm.cdsVeicTPCAR.AsString = '00' )then
        tpRod := trNaoAplicavel;
        if(dm.cdsVeicTPCAR.AsString = '01' )then
        tpRod := trTruck;
        if(dm.cdsVeicTPCAR.AsString = '02' )then
        tpRod := trToco;
        if(dm.cdsVeicTPCAR.AsString = '03' )then
        tpRod := trCavaloMecanico;
        if(dm.cdsVeicTPCAR.AsString = '04' )then
        tpRod := trVAN;
        if(dm.cdsVeicTPCAR.AsString = '05' )then
        tpRod := trUtilitario;
        if(dm.cdsVeicTPCAR.AsString = '06' )then
        tpRod := trOutros;
        if(dm.cdsVeicTPCAR.AsString = '00' )then
        tpCar := tcNaoAplicavel ;
        if(dm.cdsVeicTPCAR.AsString = '01' )then
        tpCar := tcAberta ;
        if(dm.cdsVeicTPCAR.AsString = '02' )then
        tpCar := tcFechada;
        if(dm.cdsVeicTPCAR.AsString = '03' )then
        tpCar := tcGraneleira;
        if(dm.cdsVeicTPCAR.AsString = '04' )then
        tpCar := tcPortaContainer;
        if(dm.cdsVeicTPCAR.AsString = '05' )then
        tpCar := tcSider;
        UF := dm.cdsVeicUF.AsString ;
        Prop.CNPJCPF := dm.cdsVeicCNPJ.AsString;
        Prop.RNTRC   := dm.cdsVeicRNTRC.AsString;
        Prop.xNome   := dm.cdsVeicNOME.AsString;
        if(dm.cdsVeicIE.Text = '')then
        Prop.IE      := 'ISENTO';
        if(dm.cdsVeicIE.Text <> '')then
        Prop.IE      := dm.cdsVeicIE.AsString;
        Prop.UF      := dm.cdsVeicVUF.AsString;

        if(dm.cdsVeicVTPPROP.AsString = '0' )then
        Prop.tpProp := tpTACAgregado;
        if(dm.cdsVeicVTPPROP.AsString = '1' )then
        Prop.tpProp := tpTACIndependente;
        if(dm.cdsVeicVTPPROP.AsString = '2' )then
        Prop.tpProp := tpOutros;

      end;
      dm.cdsVeic.Next;
    end;
    dm.cdsVeic.Close;
    }

    // Lazarus-Cte
    {
    if (not dm.cdsMot.Active)then
    begin
      dm.cdsMot.Params[0].AsInteger := val_genCte;
      dm.cdsMot.Open;
    end;

    while( not dm.cdsMot.Eof) do
    begin
      with infCTeNorm.rodo.moto.Add  do
        begin
          CPF  := dm.cdsMotCPF.AsString ;
          xNome := dm.cdsMotNOME.AsString ;
        end;
       dm.cdsMot.Next;
    end;
    dm.cdsMot.Close;

                                         // ABA SEGURO
    if (not dm.cdsSeg.Active)then
    begin
      dm.cdsSeg.Params[0].AsInteger := val_genCte;
      dm.cdsSeg.Open;
    end;

    while( not dm.cdsSeg.Eof) do begin
      with infCTeNorm.seg.Add do
      begin
        if(dm.cdsSegRESP.AsInteger = 0 )then
        respSeg  := rsRemetente;
        if(dm.cdsSegRESP.AsInteger = 1 )then
        respSeg  := rsExpedidor;
        if(dm.cdsSegRESP.AsInteger = 2 )then
        respSeg  := rsRecebedor;
        if(dm.cdsSegRESP.AsInteger = 3 )then
        respSeg  := rsDestinatario;
        if(dm.cdsSegRESP.AsInteger = 4 )then
        respSeg  := rsEmitenteCTe;
        if(dm.cdsSegRESP.AsInteger = 5 )then
        respSeg  := rsTomadorServico;

        xSeg   := dm.cdsSegNOME_SEGURADORA.AsString;
        nApol  := dm.cdsSegNUMERO_APOLICE.AsString;
        nAver  := dm.cdsSegNUMERO_AVERBACAO.AsString;
        vCarga := dm.cdsSegVALOR.Value;
      end;
      dm.cdsSeg.Next;
    end;
    dm.cdsSeg.Close;


     case  rgForPag.ItemIndex of
     0: Ide.forPag := fpPago;
     1: Ide.forPag := fpAPagar;
     2: Ide.forPag := fpOutros;
    end;


    if not(dm.cdsQC.Active)then
    begin
      dm.cdsQC.Params[0].AsInteger := val_genCte;
      dm.cdsQC.Open;
    end;

    while( not dm.cdsQC.Eof) do
    begin
      // UnidMed = (uM3,uKG, uTON, uUNIDADE, uLITROS , uMMBTU);
      with infCTeNorm.infCarga.InfQ.Add do
      begin
      if(dm.cdsQCUNID.AsString = '00')then
      cUnid  := uM3;
      if(dm.cdsQCUNID.AsString = '01')then
      cUnid  := uKG;
      if(dm.cdsQCUNID.AsString = '02')then
      cUnid  := uTON;
      if(dm.cdsQCUNID.AsString = '03')then
      cUnid  := uUNIDADE;
      if(dm.cdsQCUNID.AsString = '04')then
      cUnid  := uLITROS;
      if(dm.cdsQCUNID.AsString = '05')then
      cUnid  := uMMBTU;
      tpMed  := dm.cdsQCMEDIDA.AsString;
      qCarga := dm.cdsQCQUANT.Value;
    end;
      dm.cdsQC.Next;
    end;
    dm.cdsQC.Close;
    }
  end;

end;

procedure TfCTePrincipal.buscaEmpresa(Razao: String);
begin
 if (Razao <> '') then
 begin
   dmPdv.busca_sql('SELECT * FROM empresa ' +
     ' WHERE razao = ' + QuotedStr(comboEmpresa.Text));
 end
 else begin
   dmPdv.busca_sql('SELECT * FROM empresa');
 end;

 edtCodEmitente.Text := IntToStr(dmPdv.sqBusca.FieldByName('CODIGO').AsInteger);
 edtEmitCNPJ.Text := dmPdv.sqBusca.FieldByName('CNPJ_CPF').AsString;
 edtEmitIE.Text := dmPdv.sqBusca.FieldByName('IE_RG').AsString;
 edtEmitRazao.Text := dmPdv.sqBusca.FieldByName('RAZAO').AsString;
 edtEmitFantasia.Text := dmPdv.sqBusca.FieldByName('EMPRESA').AsString;
 edtEmitFone.Text := dmPdv.sqBusca.FieldByName('FONE').AsString;
 edtEmitCEP.Text := dmPdv.sqBusca.FieldByName('CEP').AsString;
 edtEmitLogradouro.Text := dmPdv.sqBusca.FieldByName('ENDERECO').AsString;
 edtEmitNumero.Text := dmPdv.sqBusca.FieldByName('NUMERO').AsString;
 edtEmitComp.Text := dmPdv.sqBusca.FieldByName('LOGRADOURO').AsString;
 edtEmitBairro.Text := dmPdv.sqBusca.FieldByName('BAIRRO').AsString;
 edtEmitCodCidade.Text := dmPdv.sqBusca.FieldByName('CD_IBGE').AsString;
 edtEmitCidade.Text := dmPdv.sqBusca.FieldByName('CIDADE').AsString;
 edtEmitUF.Text := dmPdv.sqBusca.FieldByName('UF').AsString;

 label55.Caption := ' Emitente Iniciado' ;

// PageControl1.ActivePage := TabSheet2;  // Dados
 //PageControl1.ActivePage := TabSheet24;  // Cte GEradas
 label58.Caption := edtEmitRazao.Text;
 label59.Caption := edtEmitRazao.Text;

end;

procedure TfCTePrincipal.CarregarUF;
begin
  dmPdv.busca_sql('select distinct(CD_UF) from TB_IBGE');
  while not dmPdv.sqBusca.Eof do
  begin
    // TODO  - Criar as Buscas por cidade
    //comboEmi.Items.Add(dmPdv.sqBusca.FieldByName('CD_UF').AsString);
    //comboIni.Items.Add(dmPdv.sqBusca.FieldByName('CD_UF').AsString);
    //comboFim.Items.Add(dmPdv.sqBusca.FieldByName('CD_UF').AsString);
    dmPdv.sqBusca.Next;
  end;
end;

procedure TfCTePrincipal.duplicar(velhaCte: String);
var val_gen:integer;
  //CDSCloneQC: TClientDataSet;
  //CDSClone: TClientDataSet;
  //CDSCloneCOMP: TClientDataSet;
  I: Integer;
  prox: Integer;
  vallor : double;
  strEdita : string;
begin
  // VOU VER COMO FAZER ISSO ....
  {
  // tabela CTE_VICULOS
  CDSClone := TClientDataSet.Create(Application);
  try
    CDSClone.Data := dm.cdsVeic.Data;
    while not CDSClone.Eof do
    begin
      dm.cdsVeic.Append;

      dm.cdsVeicCOD_CTE.AsInteger := val_genCte;
      dm.cdsVeicCINT.AsString := cdsClone.FieldByName('CINT').AsString;
      dm.cdsVeicRENAVAM.AsString := cdsClone.FieldByName('RENAVAM').AsString;
      dm.cdsVeicPLACA.AsString := cdsClone.FieldByName('PLACA').AsString;
      dm.cdsVeicTARA.AsInteger := cdsClone.FieldByName('TARA').Value;
      dm.cdsVeicCAPKG.AsInteger := cdsClone.FieldByName('CAPKG').Value;
      dm.cdsVeicCAPM3.AsInteger := cdsClone.FieldByName('CAPM3').Value;
      dm.cdsVeicTPROD.AsString := cdsClone.FieldByName('TPROD').AsString;
      dm.cdsVeicTPCAR.AsString := cdsClone.FieldByName('TPCAR').AsString;
      dm.cdsVeicTPVEIC.AsString := cdsClone.FieldByName('TPVEIC').AsString;
      dm.cdsVeicTPPROP.AsString := cdsClone.FieldByName('TPPROP').AsString;
      dm.cdsVeicUF.AsString := cdsClone.FieldByName('UF').AsString;

      if(dm.cdsVeicCNPJ.AsString <> '')then
      begin
        dm.cdsVeicCNPJ.AsString := cdsClone.FieldByName('CNPJ').AsString;
        dm.cdsVeicRNTRC.AsString := cdsClone.FieldByName('RNTRC').AsString;
        dm.cdsVeicNOME.AsString := cdsClone.FieldByName('NOME').AsString;
        dm.cdsVeicIE.AsString := cdsClone.FieldByName('IE').AsString;
        dm.cdsVeicVTPPROP.AsInteger := cdsClone.FieldByName('VTPPROP').Value;
        dm.cdsVeicVUF.AsString := cdsClone.FieldByName('VUF').AsString;
      end;
      dm.con.AutoCommit := True;
      dm.cdsVeic.ApplyUpdates(0);
      CDSClone.Next;
    end;

    if (dm.cdsVeic.Active)then
      dm.cdsVeic.Close;
    dm.cdsVeic.Params[0].AsInteger := val_genCte;
    dm.cdsVeic.Open;

    CDSClone.Close;
  finally
    CDSClone.Free;
  end;

  dm.con.AutoCommit := False;


  // Tabela CTE_QC

   if (dm.cdsQC.Active)then
     dm.cdsQC.Close;
   dm.cdsQC.Params[0].AsInteger := val_genCte;
   dm.cdsQC.Open;


  CDSCloneQC := TClientDataSet.Create(Application);
  try
    CDSCloneQC.Data := dm.cdsQC.Data;
    while not CDSCloneQC.Eof do
    begin
      dm.cdsQC.Append;
      dm.cdsQCCOD_CTE.AsInteger := val_genCte;
      dm.cdsQCUNID.AsString     := CDSCloneQC.FieldByName('UNID').AsString;
      dm.cdsQCMEDIDA.AsString   := CDSCloneQC.FieldByName('MEDIDA').AsString;
      dm.cdsQCQUANT.AsCurrency  := CDSCloneQC.FieldByName('QUANT').Value;

      dm.con.AutoCommit := True;
      dm.cdsQC.ApplyUpdates(0);
      CDSCloneQC.Next;
    end;

    if (dm.cdsQC.Active)then
      dm.cdsQC.Close;
    dm.cdsQC.Params[0].AsInteger := val_genCte;
    dm.cdsQC.Open;

    CDSCloneQC.Close;
  finally
    CDSCloneQC.Free;
  end;
  dm.con.AutoCommit := False;


  // TABLE CTE_MOTORISTA

  CDSClone := TClientDataSet.Create(Application);
  try
    CDSClone.Data := dm.cdsMot.Data;
    while not CDSClone.Eof do
    begin
      dm.cdsMot.Append;
      dm.cdsMotCOD_CTE.AsInteger :=  val_genCte;
      dm.cdsMotCPF.AsString := cdsClone.FieldByName('CPF').AsString;
      dm.cdsMotNOME.AsString := cdsClone.FieldByName('NOME').AsString;

      dm.con.AutoCommit := True;
      dm.cdsMot.ApplyUpdates(0);
      CDSClone.Next;
    end;

    if (dm.cdsMot.Active)then
      dm.cdsMot.Close;
    dm.cdsMot.Params[0].AsInteger := val_genCte;
    dm.cdsMot.Open;

    CDSClone.Close;
  finally
    CDSClone.Free;
  end;
  dm.con.AutoCommit := False;

  CDSCloneCOMP := TClientDataSet.Create(Application);
  try
    CDSCloneCOMP.Data := dm.cdsCOMP.Data;
    while not CDSCloneCOMP.Eof do
    begin
      dm.cdsCOMP.Append;
      dm.cdsCOMPCOD_CTE_COMP.AsInteger := val_genCte ;
      dm.cdsCOMPCOMP_NOME.AsString := CDSCloneCOMP.FieldByName('COMP_NOME').AsString;
      dm.cdsCOMPCOMP_VALOR.AsCurrency := CDSCloneCOMP.FieldByName('COMP_VALOR').Value;

      dm.con.AutoCommit := True;

    if (edtNumCte.Text <> '') then
    begin

      FormatSettings.DecimalSeparator := ',';

      FormatSettings.DecimalSeparator := '.';

      strEdita := 'INSERT into CTE_COMP ( COD_CTE, COMP_NOME, COMP_VALOR)';
      strEdita := strEdita + ' VALUES (';
      strEdita := strEdita + IntToStr(val_genCte);
      strEdita := strEdita + ',';
      strEdita := strEdita + QuotedStr(CDSCloneCOMP.FieldByName('COMP_NOME').AsString);
      strEdita := strEdita + ',';
      strEdita := strEdita +  FloatToStr(CDSCloneCOMP.FieldByName('COMP_VALOR').Value)  ; // +  Format('%8.2f', [valComp.Value]);
      strEdita := strEdita + ')';

      dm.con.AutoCommit := true;
      dm.con.StartTransaction;

      try
        dm.con.ExecuteDirect(strEdita);
        dm.con.Commit;
        dm.qCOMP.Refresh;
        vDup := 1;
        frmDemo_ACBrCTe.btnGravarCTe.Click;
        FormatSettings.DecimalSeparator := ',';

      except
        on E : Exception do
        begin
          ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
          dm.con.Rollback;
          exit;
        end;
      end;


     end;

      CDSCloneCOMP.Next;
    end;

    if (dm.cdsCOMP.Active)then
      dm.cdsCOMP.Close;
    dm.cdsCOMP.Params[0].AsInteger := val_genCte;
    dm.cdsCOMP.Open;

    CDSCloneCOMP.Close;
  finally
    CDSCloneCOMP.Free;
  end;
  dm.con.AutoCommit := False;
  }
end;

procedure TfCTePrincipal.CarregarCte(NumCte: String);
begin
  FormatSettings.DecimalSeparator := '.';
  val_genCte := dmCte.cdsCTECOD_CTE.AsInteger;
  if (dmCte.cdsCTE.Active) then
    dmCte.cdsCTE.Edit;
  edtCFOP.Text            := dmCte.cdsCTECTE_CFOP.AsString;
  edtNatOpe.Text          := dmCte.cdsCTECTE_NATOP.AsString;
  edtModelo.Text          := dmCte.cdsCTEMODELO.AsString;
  edtSerieCte.Text        := dmCte.cdsCTECTE_SERIE.AsString;
  edtNumCte.Text          := dmCte.cdsCTECTE_NUMERO.AsString;
  dataGerarCte.date       := dmCte.cdsCTEDHEMI.Value;
  rgModal.ItemIndex       := dmCte.cdsCTEMODAL.AsInteger;
  rgTipoServico.ItemIndex := dmCte.cdsCTETIPOSERVICO.AsInteger;
  rgTiposCte.ItemIndex    := dmCte.cdsCTETIPOCTE.AsInteger;
  rgFormaEmissao.ItemIndex := dmCte.cdsCTETPOEMISSAO.AsInteger;
  rgForPag.ItemIndex      := dmCte.cdsCTEIFORPAG.AsInteger;
  rgTipoDACTe.ItemIndex   := dmCte.cdsCTETPIMP.AsInteger;
  edtEnvCodCidade.Text    := dmCte.cdsCTEENV_CODCIDADE.AsString;
  edtEnvCidade.Text       := dmCte.cdsCTEENV_CIDADE.AsString;
  edtEnvUF.Text           := dmCte.cdsCTEENV_ESTADO.AsString;
  edtIniCodCidade.Text    := dmCte.cdsCTEINI_CODCIDADE.AsString;
  edtIniCidade.Text       := dmCte.cdsCTEINI_CIDADE.AsString;
  edtIniUF.Text           := dmCte.cdsCTEINI_ESTADO.AsString;
  edtFimCodCidade.Text    := dmCte.cdsCTEFIM_CODCIDADE.AsString;
  edtFimCidade.Text       := dmCte.cdsCTEFIM_CIDADE.AsString;
  edtFimUF.Text           := dmCte.cdsCTEFIM_ESTADO.AsString;

  // emitente
  comboEmpresa.Text       := dmCte.cdsCTEE_RSOCIAL.AsString;
  edtCodEmitente.Text     := dmCte.cdsCTEEMITENTE.AsString;
  edtEmitCNPJ.Text        := dmCte.cdsCTEE_CNPJCPF.AsString;
  edtEmitIE.Text          := dmCte.cdsCTEE_IESTADUAL.AsString;
  edtEmitRazao.Text       := dmCte.cdsCTEE_RSOCIAL.AsString;
  edtEmitFantasia.Text    := dmCte.cdsCTEE_FANTASIA.AsString;
  edtEmitFone.Text        := dmCte.cdsCTEE_TELEFONE.AsString;
  edtEmitLogradouro.Text  := dmCte.cdsCTEE_ENDERECO.AsString;
  edtEmitNumero.Text      := dmCte.cdsCTEE_NUMERO.AsString;
  edtEmitComp.Text        := dmCte.cdsCTEE_COMPLEMENTO.AsString;
  edtEmitBairro.Text      := dmCte.cdsCTEE_BAIRRO.AsString;
  edtEmitCodCidade.Text   := dmCte.cdsCTEE_CODIGOMUNICIPI.AsString;
  edtEmitCidade.Text      := dmCte.cdsCTEE_CIDADE.AsString;
  edtEmitCep.Text         := dmCte.cdsCTEE_CEP.AsString;
  edtEmitUF.Text          := dmCte.cdsCTEE_ESTADO.AsString;
  // tomador
  if(dmCte.cdsCTET_CNPJCPF.AsString <> '') then
  begin
    rgTomador.ItemIndex      := dmCte.cdsCTETOMADORSERVICO.AsInteger;
    edtCNPJTomador.Text      := dmCte.cdsCTET_CNPJCPF.AsString;
    edtIETomador.Text        := dmCte.cdsCTET_IESTADUAL.AsString;
    edtRazaoTomador.Text     := dmCte.cdsCTET_RSOCIAL.AsString;
    edtNomeTomador.Text      := dmCte.cdsCTET_FANTASIA.AsString;
    edtFoneTomador.Text      := dmCte.cdsCTET_TELEFONE.AsString;
    edtEndTomador.Text       := dmCte.cdsCTET_ENDERECO.AsString;
    edtNumTomador.Text       := dmCte.cdsCTET_NUMERO.AsString;
    edtCompTomador.Text      := dmCte.cdsCTET_COMPLEMENTO.AsString;
    edtBairroTomador.Text    := dmCte.cdsCTET_BAIRRO.AsString;
    edtTomadorCodCidade.Text := dmCte.cdsCTET_CODIGOMUNICIPI.AsString;
    edtTomadorCidade.Text    := dmCte.cdsCTET_CIDADE.AsString;
    edtCepTomador.Text       := dmCte.cdsCTET_CEP.AsString;
    edtTomadorUF.Text        := dmCte.cdsCTET_ESTADO.AsString;
  end;
  // rememtente
  edtRemCNPJ.Text          := dmCte.cdsCTER_CNPJCPF.AsString;
  edtRemIE.Text            := dmCte.cdsCTER_IESTADUAL.AsString;
  edtRemRazao.Text         := dmCte.cdsCTER_RSOCIAL.AsString;
  edtRemNome.Text          := dmCte.cdsCTER_FANTASIA.AsString;
  edtRemFone.Text          := dmCte.cdsCTER_TELEFONE.AsString;
  edtRemEnd.Text           := dmCte.cdsCTER_ENDERECO.AsString;
  edtRemNum.Text           := dmCte.cdsCTER_NUMERO.AsString;
  edtRemComp.Text          := dmCte.cdsCTER_COMPLEMENTO.AsString;
  edtRemBairro.Text        := dmCte.cdsCTER_BAIRRO.AsString;
  edtRemCodCidade.Text     := dmCte.cdsCTER_CODIGOMUNICIPI.AsString;
  edtRemCidade.Text        := dmCte.cdsCTER_CIDADE.AsString;
  edtRemCep.Text           := dmCte.cdsCTER_CEP.AsString;
  edtRemUF.Text            := dmCte.cdsCTER_ESTADO.AsString;
  // destinatario
  edtDestCNPJ.Text         := dmCte.cdsCTED_CNPJCPF.AsString;
  edtDestIE.Text           := dmCte.cdsCTED_IESTADUAL.AsString;
  edtDestRazao.Text        := dmCte.cdsCTED_RSOCIAL.AsString;
  edtDestNome.Text         := dmCte.cdsCTED_FANTASIA.AsString;
  edtDestFone.Text         := dmCte.cdsCTED_TELEFONE.AsString;
  edtDestEnd.Text          := dmCte.cdsCTED_ENDERECO.AsString;
  edtDestNum.Text          := dmCte.cdsCTED_NUMERO.AsString;
  edtDestComp.Text         := dmCte.cdsCTED_COMPLEMENTO.AsString;
  edtDestBairro.Text       := dmCte.cdsCTED_BAIRRO.AsString;
  edtDestCodCidade.Text    := dmCte.cdsCTED_CODIGOMUNICIPI.AsString;
  edtDestCidade.Text       := dmCte.cdsCTED_CIDADE.AsString;
  edtDestCep.Text          := dmCte.cdsCTED_CEP.AsString;
  edtDestUF.Text           := dmCte.cdsCTED_ESTADO.AsString;
  // receedor
  if(dmCte.cdsCTERE_CNPJCPF.AsString <> '') then
  begin
    rgRec.ItemIndex := 0 ;
    edtRecCNPJ.Text          := dmCte.cdsCTERE_CNPJCPF.AsString;
    edtRecIE.Text            := dmCte.cdsCTERE_IESTADUAL.AsString;
    edtRecNome.Text          := dmCte.cdsCTERE_ENDERECO.AsString;
    edtRecRazao.Text         := dmCte.cdsCTERE_RSOCIAL.AsString;
    edtRecFone.Text          := dmCte.cdsCTERE_TELEFONE.AsString;
    edtRecEnd.Text           := dmCte.cdsCTERE_ENDERECO.AsString;
    edtRecNum.Text           := dmCte.cdsCTERE_NUMERO.AsString;
    edtRecComp.Text          := dmCte.cdsCTERE_COMPLEMENTO.AsString;
    edtRecBairro.Text        := dmCte.cdsCTERE_BAIRRO.AsString;
    edtRecCodCidade.Text     := dmCte.cdsCTERE_CODIGOMUNICIPI.AsString;
    edtRecCidade.Text        := dmCte.cdsCTERE_CIDADE.AsString;
    edtRecCep.TExt           := dmCte.cdsCTERE_CEP.AsString;
    edtRecUF.Text            := dmCte.cdsCTERE_ESTADO.AsString;
  end;

  if(dmCte.cdsCTEEX_CNPJCPF.AsString <> '') then
  begin
    rgExp.ItemIndex := 0;
    edtExpCNPJ.Text          := dmCte.cdsCTEEX_CNPJCPF.AsString;
    edtExpIE.Text            := dmCte.cdsCTEEX_IESTADUAL.AsString;
    edtExpRazao.Text         := dmCte.cdsCTEEX_RSOCIAL.AsString;
    edtExpNome.Text          := dmCte.cdsCTEEX_FANTASIA.AsString;
    edtExpFone.Text          := dmCte.cdsCTEEX_TELEFONE.AsString;
    edtExpEnd.Text           := dmCte.cdsCTEEX_ENDERECO.AsString;
    edtExpNum.Text           := dmCte.cdsCTEEX_COMPLEMENTO.AsString;
    edtExpComp.Text          := dmCte.cdsCTEEX_COMPLEMENTO.AsString;
    edtExpBairro.Text        := dmCte.cdsCTEEX_BAIRRO.AsString;
    edtExpCodCidade.Text     := dmCte.cdsCTEEX_CODIGOMUNICIPI.AsString;
    edtExpCidade.Text        := dmCte.cdsCTEEX_CIDADE.AsString;
    edtExpCep.Text           := dmCte.cdsCTEEX_CEP.AsString;
    edtExpUF.Text            := dmCte.cdsCTEEX_ESTADO.AsString;
  end;

  edtCaracAdTrans.Text := dmCte.cdsCTECARAC_TRANSP.AsString;
  edtCaracAdServ.Text  := dmCte.cdsCTECARAC_SERV.AsString;
  edtFuncEmi.Text      := dmCte.cdsCTEFUNC_EMI.AsString;

  rgRetira.ItemIndex   := dmCte.cdsCTERETIRA.AsInteger;
  memDetRetira.Text    := dmCte.cdsCTEDET_RETIRA.AsString;

  if(dmCte.cdsCTENPROT.AsString = '')then
  begin
    dbValInfCarga.Text := FloatToStr(dmCte.cdsCTEVALINFCARGA.Value);
  end;
  edtProPred.Text      := dmCte.cdsCTEPROPRED.AsString;
  edtOutCat.Text       := dmCte.cdsCTEOUTCAT.AsString;

  edtRodRNTRC.Text     := dmCte.cdsCTERNTRC.AsString;
  dataRodPrev.date     := dmCte.cdsCTEDATARODPREV.Value;
  rgRodLotacao.ItemIndex := dmCte.cdsCTERGRODLOTACAO.Value;

  memxObs.Text         := dmCte.cdsCTEOBS_GERAL.Value;

  // para Clonar  colocar cds da tabela
  if (dmCte.sqComp.Active)then
    dmCte.sqComp.Close;
  dmCte.sqComp.Params[0].AsInteger := val_genCte;
  dmCte.sqComp.Open;

  if (dmCte.sqQC.Active)then
    dmCte.sqQC.Close;
  dmCte.sqQC.Params[0].AsInteger := val_genCte;
  dmCte.sqQC.Open;

  if (dmCte.sqNFe.Active)then
    dmCte.sqNFe.Close;
  dmCte.sqNFe.Params[0].AsInteger := val_genCte;
  dmCte.sqNFe.Open;

  { PULEI
  if (dm.cdsVeic.Active)then
    dm.cdsVeic.Close;
  dm.cdsVeic.Params[0].AsInteger := val_genCte;
  dm.cdsVeic.Open;

  if (dm.cdsMot.Active)then
    dm.cdsMot.Close;
  dm.cdsMot.Params[0].AsInteger := val_genCte;
  dm.cdsMot.Open;
  }
  // outros
  combOutrosDocs.Text    := dmCte.cdsCTEOUTPDOC.AsString;
  dataOutrosEmi.DateTime := dmCte.cdsCTEOUDEMI.AsDateTime;
  edtOutrosNum.Text      := dmCte.cdsCTEOUNDOC.AsString;
  edtOutrosDesc.Text     := dmCte.cdsCTEOUDESCOUTRO.AsString;
  valOutrosVal.AsFloat     := dmCte.cdsCTEOUVDOCFISC.AsFloat;

  // 15/08/19

  edtAntCNPJ.Text  := dmCte.cdsCTEANT_CNPJ.AsString;
  edtAntIE.Text    := dmCte.cdsCTEANT_IE.AsString;
  edtAntUF.Text    := dmCte.cdsCTEANT_UF.AsString;
  edtAntNome.Text  := dmCte.cdsCTEANT_NOME.AsString;
  edtAntCHCTE.Text := dmCte.cdsCTEANT_CHCTE.AsString;

  // impostos

  if(dmCte.cdsCTENPROT.AsString = '')then
  begin
    combCodSitTrib.ItemIndex := dmCte.cdsCTECOMBCODSITTRIB.Value;
    dbVALPREDBC.Field.Value := dmCte.cdsCTEVALPREDBC.Value;
    dbVALVBC.Field.Value    := dmCte.cdsCTEVALVBC.Value;
    dbVALPICMS.Field.Value  := dmCte.cdsCTEVALPICMS.Value;
    dbVALVICMS.Field.Value  := dmCte.cdsCTEVALVICMS.Value;
    dbVALVCRED.Field.Value  := dmCte.cdsCTEVALVCRED.Value;
  end;

  if (dmCte.cdsCTE.Active)then
    dmCte.cdsCTE.Close;
  dmCte.cdsCTE.Params[0].AsInteger := StrToInt(edtCodEmitente.Text);
  dmCte.cdsCTE.Params[1].AsInteger := StrToInt(edtNumCte.Text);
  dmCte.cdsCTE.Open;
  FormatSettings.DecimalSeparator := ',';
end;

procedure TfCTePrincipal.CarregarXML(ChaveCte: String);
begin
  OpenDialog1.Title := 'Selecione o CTe';
  OpenDialog1.DefaultExt := '*-cte.xml';
  OpenDialog1.Filter := 'Arquivos CTe (*-cte.xml)|*-cte.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrCTe1.Configuracoes.Arquivos.PathSalvar;
  ACBrCTe1.Conhecimentos.Clear;
  if (Length(ChaveCte) > 30) then
  begin
    if (FileExists(ACBrCTe1.Configuracoes.Arquivos.PathSalvar +
      dmCte.cdsCteCHCTE.AsString))  then
    begin
      ACBrCTe1.Conhecimentos.LoadFromFile(
        ACBrCTe1.Configuracoes.Arquivos.PathSalvar + ChaveCte);
    end
    else begin
      if OpenDialog1.Execute then
      begin
        ACBrCTe1.Conhecimentos.LoadFromFile(OpenDialog1.FileName);
      end;
    end;
  end
  else begin
    if OpenDialog1.Execute then
    begin
      ACBrCTe1.Conhecimentos.LoadFromFile(OpenDialog1.FileName);
    end;
  end;
end;

function TfCTePrincipal.LimparString(ATExto, ACaracteres: string): string;
 var
   strAux            : string;
   I                 : integer;
 begin
   strAux := '';
   for I := 1 to Length(ATexto) do
     if Pos(Copy(ATexto, I, 1), ACaracteres) <= 0 then
       strAux := strAux + Copy(ATexto, I, 1);
   Result := strAux;
end;

procedure TfCTePrincipal.StaticText6Click(Sender: TObject);
begin

end;

procedure TfCTePrincipal.dbValInfCargaChange(Sender: TObject);
begin

end;

procedure TfCTePrincipal.edtBuscaTomadorExit(Sender: TObject);
begin
  if (edtBuscaTomador.Text <> '') then
  begin
    dmPdv.busca_sql('SELECT c.NOMECLIENTE, c.RAZAOSOCIAL, c.CNPJ, ' +
      ' c.INSCESTADUAL, d.LOGRADOURO, d.NUMERO, d.CIDADE, d.BAIRRO, ' +
      ' d.CEP, d.UF, d.CD_IBGE ' +
      ' FROM CLIENTES c, ENDERECOCLIENTE d ' +
      ' WHERE c.CODCLIENTE = d.CODCLIENTE ' +
      ' AND d.TIPOEND = 0 AND c.CODCLIENTE = ' + edtBuscaTomador.Text);
    if (dmPdv.sqBusca.IsEmpty) then
    begin
      ShowMessage('Código do Cliente não existe.');
      Exit;
    end;
    edtTomadorCodCidade.Text := LimparString(dmPdv.sqBusca.FieldByName('CD_IBGE').AsString,'-');
    edtTomadorCidade.Text := dmPdv.sqBusca.FieldByName('CIDADE').AsString;
    edtTomadorUF.Text := dmPdv.sqBusca.FieldByName('UF').AsString;
    edtTomadorNome.Text := dmPdv.sqBusca.FieldByName('NOMECLIENTE').AsString;
    edtTomadorRazao.Text := dmPdv.sqBusca.FieldByName('RAZAOSOCIAL').AsString;
    edtTomadorCNPJ.Text := dmPdv.sqBusca.FieldByName('CNPJ').AsString;
    edtTomadorIE.Text := dmPdv.sqBusca.FieldByName('INSCESTADUAL').AsString;
    edtTomadorFone.Text := dmPdv.sqBusca.FieldByName('DDD').AsString +
      '-' + dmPdv.sqBusca.FieldByName('TELEFONE').AsString;
    edtTomadorEnd.Text := dmPdv.sqBusca.FieldByName('LOGRADOURO').AsString;
    edtTomadorNum.Text := dmPdv.sqBusca.FieldByName('NUMERO').AsString;
    edtTomadorCidade.Text := dmPdv.sqBusca.FieldByName('CIDADE').AsString;
    edtTomadorBairro.Text := dmPdv.sqBusca.FieldByName('BAIRRO').AsString;
    edtTomadorCep.TExt := dmPdv.sqBusca.FieldByName('CEP').AsString;
    edtTomadorUF.Text := dmPdv.sqBusca.FieldByName('UF').AsString;
  end;
end;


procedure TfCTePrincipal.edtCfopExit(Sender: TObject);
begin
  if (edtCfop.Text <> '') then
  begin
    dmPdv.busca_sql('SELECT * FROM CFOP WHERE CFCOD = ' +
      QuotedStr(edtCfop.Text));
    if (dmPdv.sqBusca.IsEmpty) then
    begin
      ShowMessage('Este CFOP não existe.');
      Exit;
    end;
    edtCFOP.Text := LimparString(dmPdv.sqBusca.FieldByName('CFCOD'.AsString),'-');
    edtNatOpe.Text := Copy(dmPdv.sqBusca.FieldByName('CFNOME').AsString,1,60);
  end;
end;

procedure TfCTePrincipal.edtDestBuscaExit(Sender: TObject);
begin
  if (edtDestBusca.Text <> '') then
  begin
    dmPdv.busca_sql('SELECT c.NOMECLIENTE, c.RAZAOSOCIAL, c.CNPJ, ' +
      ' c.INSCESTADUAL, d.LOGRADOURO, d.NUMERO, d.CIDADE, d.BAIRRO, ' +
      ' d.CEP, d.UF, d.CD_IBGE ' +
      ' FROM CLIENTES c, ENDERECOCLIENTE d ' +
      ' WHERE c.CODCLIENTE = d.CODCLIENTE ' +
      ' AND d.TIPOEND = 0 AND c.CODCLIENTE = ' + edtDestBusca.Text);
    if (dmPdv.sqBusca.IsEmpty) then
    begin
      ShowMessage('Código do Cliente não existe.');
      Exit;
    end;
    edtDestCodCidade.Text := LimparString(dmPdv.sqBusca.FieldByName('CD_IBGE').AsString,'-');
    edtDestCidade.Text := dmPdv.sqBusca.FieldByName('CIDADE').AsString;
    edtDestUF.Text := dmPdv.sqBusca.FieldByName('UF').AsString;
    edtDestNome.Text := dmPdv.sqBusca.FieldByName('NOMECLIENTE').AsString;
    edtDestRazao.Text := dmPdv.sqBusca.FieldByName('RAZAOSOCIAL').AsString;
    edtDestCNPJ.Text := dmPdv.sqBusca.FieldByName('CNPJ').AsString;
    edtDestIE.Text := dmPdv.sqBusca.FieldByName('INSCESTADUAL').AsString;
    edtDestFone.Text := dmPdv.sqBusca.FieldByName('DDD').AsString +
      '-' + dmPdv.sqBusca.FieldByName('TELEFONE').AsString;
    edtDestEnd.Text := dmPdv.sqBusca.FieldByName('LOGRADOURO').AsString;
    edtDestNum.Text := dmPdv.sqBusca.FieldByName('NUMERO').AsString;
    edtDestCidade.Text := dmPdv.sqBusca.FieldByName('CIDADE').AsString;
    edtDestBairro.Text := dmPdv.sqBusca.FieldByName('BAIRRO').AsString;
    edtDestCep.TExt := dmPdv.sqBusca.FieldByName('CEP').AsString;
    edtDestUF.Text := dmPdv.sqBusca.FieldByName('UF').AsString;
  end;
end;

procedure TfCTePrincipal.edtRecBuscaExit(Sender: TObject);
begin
  if (edtRecBusca.Text <> '') then
  begin
    dmPdv.busca_sql('SELECT c.NOMECLIENTE, c.RAZAOSOCIAL, c.CNPJ, ' +
      ' c.INSCESTADUAL, d.LOGRADOURO, d.NUMERO, d.CIDADE, d.BAIRRO, ' +
      ' d.CEP, d.UF, d.CD_IBGE ' +
      ' FROM CLIENTES c, ENDERECOCLIENTE d ' +
      ' WHERE c.CODCLIENTE = d.CODCLIENTE ' +
      ' AND d.TIPOEND = 0 AND c.CODCLIENTE = ' + edtRecBusca.Text);
    if (dmPdv.sqBusca.IsEmpty) then
    begin
      ShowMessage('Código do Cliente não existe.');
      Exit;
    end;
    edtRecCodCidade.Text := LimparString(dmPdv.sqBusca.FieldByName('CD_IBGE').AsString,'-');
    edtRecCidade.Text := dmPdv.sqBusca.FieldByName('CIDADE').AsString;
    edtRecUF.Text := dmPdv.sqBusca.FieldByName('UF').AsString;
    edtRecNome.Text := dmPdv.sqBusca.FieldByName('NOMECLIENTE').AsString;
    edtRecRazao.Text := dmPdv.sqBusca.FieldByName('RAZAOSOCIAL').AsString;
    edtRecCNPJ.Text := dmPdv.sqBusca.FieldByName('CNPJ').AsString;
    edtRecIE.Text := dmPdv.sqBusca.FieldByName('INSCESTADUAL').AsString;
    edtRecFone.Text := dmPdv.sqBusca.FieldByName('DDD').AsString +
      '-' + dmPdv.sqBusca.FieldByName('TELEFONE').AsString;
    edtRecEnd.Text := dmPdv.sqBusca.FieldByName('LOGRADOURO').AsString;
    edtRecNum.Text := dmPdv.sqBusca.FieldByName('NUMERO').AsString;
    edtRecBairro.Text := dmPdv.sqBusca.FieldByName('BAIRRO').AsString;
    edtRecCep.TExt := dmPdv.sqBusca.FieldByName('CEP').AsString;
  end;
end;

procedure TfCTePrincipal.edtRemBuscaExit(Sender: TObject);
begin
  if (edtRemBusca.Text <> '') then
  begin
    dmPdv.busca_sql('SELECT c.NOMECLIENTE, c.RAZAOSOCIAL, c.CNPJ, ' +
      ' c.INSCESTADUAL, d.LOGRADOURO, d.NUMERO, d.CIDADE, d.BAIRRO, ' +
      ' d.CEP, d.UF, d.CD_IBGE ' +
      ' FROM CLIENTES c, ENDERECOCLIENTE d ' +
      ' WHERE c.CODCLIENTE = d.CODCLIENTE ' +
      ' AND d.TIPOEND = 0 AND c.CODCLIENTE = ' + edtRemBusca.Text);
    if (dmPdv.sqBusca.IsEmpty) then
    begin
      ShowMessage('Código do Cliente não existe.');
      Exit;
    end;
    edtRemCodCidade.Text := LimparString(dmPdv.sqBusca.FieldByName('CD_IBGE').AsString,'-');
    edtRemCidade.Text := dmPdv.sqBusca.FieldByName('CIDADE').AsString;
    edtRemUF.Text := dmPdv.sqBusca.FieldByName('UF').AsString;
    edtRemNome.Text := dmPdv.sqBusca.FieldByName('NOMECLIENTE').AsString;
    edtRemRazao.Text := dmPdv.sqBusca.FieldByName('RAZAOSOCIAL').AsString;
    edtRemCNPJ.Text := dmPdv.sqBusca.FieldByName('CNPJ').AsString;
    edtRemIE.Text := dmPdv.sqBusca.FieldByName('INSCESTADUAL').AsString;
    edtRemFone.Text := dmPdv.sqBusca.FieldByName('DDD').AsString +
      '-' + dmPdv.sqBusca.FieldByName('TELEFONE').AsString;
    edtRemEnd.Text := dmPdv.sqBusca.FieldByName('LOGRADOURO').AsString;
    edtRemNum.Text := dmPdv.sqBusca.FieldByName('NUMERO').AsString;
    edtRemBairro.Text := dmPdv.sqBusca.FieldByName('BAIRRO').AsString;
    edtRemCep.TExt := dmPdv.sqBusca.FieldByName('CEP').AsString;
  end;
end;

procedure TfCTePrincipal.BitBtn20Click(Sender: TObject);
begin

end;

procedure TfCTePrincipal.btnAtualizarBDClick(Sender: TObject);
begin
  dmPdv.executaDSql('ALTER TABLE CTE_VEICULOS ADD VALINFCARGA DOUBLE PRECISION');
  dmPdv.executaDSql('ALTER TABLE CTE_VEICULOS ADD CNPJ VARCHAR(20)');
  dmPdv.executaDSql('ALTER TABLE CTE_VEICULOS ADD RNTRC VARCHAR(8)');
  dmPdv.executaDSql('ALTER TABLE CTE_VEICULOS ADD NOME VARCHAR(60)');
  dmPdv.executaDSql('ALTER TABLE CTE_VEICULOS ADD IE VARCHAR(20)');
  dmPdv.executaDSql('ALTER TABLE CTE_VEICULOS ADD VTPPROP INTEGER');
  dmPdv.executaDSql('ALTER TABLE CTE_VEICULOS ADD VUF VARCHAR(2)');
  dmPdv.executaDSql('ALTER TABLE CTE ADD STATUS VARCHAR(60)');
  dmPdv.executaDSql('ALTER TABLE CTE ADD VALINFCARGA DOUBLE PRECISION');
  dmPdv.executaDSql('ALTER TABLE CTE ADD PROPRED VARCHAR(60)');
  dmPdv.executaDSql('ALTER TABLE CTE ADD OUTCAT VARCHAR(30)');
  dmPdv.executaDSql('ALTER TABLE CTE ADD RNTRC VARCHAR(8)');
  dmPdv.executaDSql('ALTER TABLE CTE ADD DATARODPREV DATE');
  dmPdv.executaDSql('ALTER TABLE CTE ADD RGRODLOTACAO INTEGER');
  dmPdv.executaDSql('ALTER TABLE CTE ADD OBS_GERAL VARCHAR(300)');
  dmPdv.executaDSql('ALTER TABLE CTE ADD NPROT VARCHAR(20)');
  dmPdv.executaDSql('ALTER TABLE CTE ADD CHCTE VARCHAR(50)');
  dmPdv.executaDSql('ALTER TABLE SERIES ADD SERIE_CTE VARCHAR(3)');
  dmPdv.executaDSql('ALTER TABLE CTE ADD RECEBEDOR INTEGER');
  dmPdv.executaDSql('ALTER TABLE CTE ADD RE_RG VARCHAR( 20 )');
  dmPdv.executaDSql('ALTER TABLE CTE ADD RE_CNPJCPF VARCHAR( 20 )');
  dmPdv.executaDSql('ALTER TABLE CTE ADD RE_IESTADUAL VARCHAR( 20 )');
  dmPdv.executaDSql('ALTER TABLE CTE ADD RE_RSOCIAL VARCHAR( 60 )');
  dmPdv.executaDSql('ALTER TABLE CTE ADD RE_FANTASIA VARCHAR( 60 )');
  dmPdv.executaDSql('ALTER TABLE CTE ADD RE_TELEFONE VARCHAR( 15 )');
  dmPdv.executaDSql('ALTER TABLE CTE ADD RE_ENDERECO VARCHAR( 60 )');
  dmPdv.executaDSql('ALTER TABLE CTE ADD RE_NUMERO VARCHAR( 10 )');
  dmPdv.executaDSql('ALTER TABLE CTE ADD RE_COMPLEMENTO VARCHAR( 60 )');
  dmPdv.executaDSql('ALTER TABLE CTE ADD RE_BAIRRO VARCHAR( 60 )');
  dmPdv.executaDSql('ALTER TABLE CTE ADD RE_CODIGOMUNICIPI VARCHAR( 10 )');
  dmPdv.executaDSql('ALTER TABLE CTE ADD RE_CIDADE  VARCHAR(60)');
  dmPdv.executaDSql('ALTER TABLE CTE ADD RE_CEP VARCHAR(10)');
  dmPdv.executaDSql('ALTER TABLE CTE ADD RE_ESTADO CHAR(2)');
  dmPdv.executaDSql('ALTER TABLE CTE ADD RE_CODIGOPAIS INTEGER');
  dmPdv.executaDSql('ALTER TABLE CTE ADD RE_PAIS VARCHAR( 60 )');
  dmPdv.executaDSql('ALTER TABLE CTE ADD OutpDoc  VARCHAR(2)');
  dmPdv.executaDSql('ALTER TABLE CTE ADD OudescOutro VARCHAR(100)');
  dmPdv.executaDSql('ALTER TABLE CTE ADD OuNDoc  VARCHAR(20)');
  dmPdv.executaDSql('ALTER TABLE CTE ADD OuDEmi  TIMESTAMP');
  dmPdv.executaDSql('ALTER TABLE CTE ADD OuVDocFisc DOUBLE PRECISION');
  dmPdv.executaDSql('ALTER TABLE CTE ADD ANT_CNPJ VARCHAR(20)');
  dmPdv.executaDSql('ALTER TABLE CTE ADD ANT_IE VARCHAR(20)');
  dmPdv.executaDSql('ALTER TABLE CTE ADD ANT_UF  VARCHAR(2)');
  dmPdv.executaDSql('ALTER TABLE CTE ADD ANT_NOME  VARCHAR(60)');
  dmPdv.executaDSql('ALTER TABLE CTE ADD ANT_CHCTE  VARCHAR(60)');
  dmPdv.executaDSql('ALTER TABLE CTE ADD IN_IMPOSTOS INTEGER');
  dmPdv.executaDSql('ALTER TABLE CTE ADD valpRedBC DOUBLE PRECISION');
  dmPdv.executaDSql('ALTER TABLE CTE ADD valvBC DOUBLE PRECISION');
  dmPdv.executaDSql('ALTER TABLE CTE ADD valpICMS DOUBLE PRECISION');
  dmPdv.executaDSql('ALTER TABLE CTE ADD valvICMS DOUBLE PRECISION');
  dmPdv.executaDSql('ALTER TABLE CTE ADD valvCred DOUBLE PRECISION');
  dmPdv.executaDSql('ALTER TABLE CTE ADD NPROTCANCEL VARCHAR(30)');
  dmPdv.executaDSql('ALTER TABLE CTE ADD STATUS_CTE  VARCHAR(30)');
  //dmPdv.executaDSql('');
end;

procedure TfCTePrincipal.btnCancelarCteClick(Sender: TObject);
var
 vAux ,strEdita : String;
begin
  if (edCteCancelar.Text = '') then
  begin
    ShowMessage('Informe o Número da CTe para fazer o Cancelamento.');
    edCteCancelar.SetFocus;
    exit;
  end;
  ACBrCTe1.Conhecimentos.Clear;
  CarregarXML(dmCte.cdsCteCHCTE.AsString);
  if not(InputQuery('WebServices Cancelamento', 'Justificativa', vAux))
    then exit;

  ACBrCTe1.Cancelamento(vAux);
  MemoResp.Lines.Text   :=  UTF8Encode(ACBrCTe1.WebServices.Retorno.RetWS);
  MemoResp.Lines.Text   := UTF8Encode(ACBrCTe1.WebServices.Retorno.RetWS);
  memoRespWS.Lines.Text := UTF8Encode(ACBrCTe1.WebServices.Retorno.RetWS);
  MemoDados.Lines.Add('');
  MemoDados.Lines.Add('Cancelar CTe status');
  MemoDados.Lines.Add('cStat: '+ IntToStr(ACBrCTe1.WebServices.Retorno.cStat));
  MemoDados.Lines.Add('xMotivo: '+ ACBrCTe1.WebServices.Retorno.xMotivo);
  MemoDados.Lines.Add('xMsg: '+ ACBrCTe1.WebServices.Retorno.Msg);
  MemoDados.Lines.Add('Protocolo: '+ ACBrCTe1.WebServices.Retorno.Protocolo);
  if(dmCte.cdsCTESTATUS_CTE.AsString = '')then
  begin
    strEdita := 'UPDATE CTE SET NPROTCANCEL = ';
    strEdita := strEdita + QuotedStr(ACBrCTe1.WebServices.Retorno.Protocolo);
    strEdita := strEdita + ', STATUS_CTE = ';
    strEdita := strEdita + QuotedStr('Cancelado');
    strEdita := strEdita + ' WHERE CTE_NUMERO = ';
    strEdita := strEdita + (edtNumCte.Text);
    try
      dmPdv.IbCon.ExecuteDirect(strEdita);
      dmPdv.sTrans.Commit;
      MessageDlg('CTe cancelada com Sucesso.', mtInformation, [mbOK], 0);
      FormatSettings.DecimalSeparator := ',';
      if (dmCte.cdsCTE.Active)then
         dmCte.cdsCTE.Close;
      dmCte.cdsCTE.Params[0].AsInteger := StrToInt(edtCodEmitente.Text);
      dmCte.cdsCTE.Params[1].AsInteger := StrToInt(edtNumCte.Text);
      dmCte.cdsCTE.Open;
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dmPdv.sTrans.Rollback;
        exit;
      end;
    end;
  end;
end;

procedure TfCTePrincipal.btnCorrigirSerieClick(Sender: TObject);
begin
  // arrumar aqui
  // TODO
  dmPdv.IbCon.ExecuteDirect('UPDATE SERIES');
  dmPdv.sTrans.Commit;
end;

procedure TfCTePrincipal.btnEnviarEmailClick(Sender: TObject);
var
 Para : String;
 CC   : Tstrings;
begin
 if not(InputQuery('Enviar Email', 'Email de destino', Para))
  then exit;

 OpenDialog1.Title := 'Selecione o CTe';
 OpenDialog1.DefaultExt := '*-cte.xml';
 OpenDialog1.Filter := 'Arquivos CTe (*-cte.xml)|*-cte.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
 OpenDialog1.InitialDir := ACBrCTe1.Configuracoes.Arquivos.PathSalvar;

 if OpenDialog1.Execute then
  begin
   ACBrCTe1.Conhecimentos.Clear;
   ACBrCTe1.Conhecimentos.LoadFromFile(OpenDialog1.FileName);
   CC:=TstringList.Create;
   CC.Add('email_1@provedor.com'); //especifique um email válido
   CC.Add('email_2@provedor.com.br'); //especifique um email válido

   ACBrCTe1.Conhecimentos.Items[0].EnviarEmail(Para
                                             , edtEmailAssunto.Text
                                             , mmEmailMsg.Lines
                                             , False //Enviar PDF junto
                                             , nil //Lista com emails que serão enviado cópias - TStrings
                                             , nil // Lista de anexos - TStrings
                                              );
   CC.Free;
  end;

end;

procedure TfCTePrincipal.btnEnviarEventoEmailClick(Sender: TObject);
var
 Para : String;
 CC, Evento: Tstrings;
begin
  if not(InputQuery('Enviar Email', 'Email de destino', Para)) then
    exit;

  OpenDialog1.Title := 'Selecione o CTe';
  OpenDialog1.DefaultExt := '*-cte.xml';
  OpenDialog1.Filter := 'Arquivos CTe (*-cte.xml)|*-cte.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrCTe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrCTe1.Conhecimentos.Clear;
    ACBrCTe1.Conhecimentos.LoadFromFile(OpenDialog1.FileName);
  end;

  OpenDialog1.Title := 'Selecione o Evento';
  OpenDialog1.DefaultExt := '*-procEventoCTe.xml';
  OpenDialog1.Filter := 'Arquivos Evento (*-procEventoCTe.xml)|*-procEventoCTe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrCTe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    Evento := TStringList.Create;
    Evento.Clear;
    Evento.Add(OpenDialog1.FileName);
    ACBrCTe1.EventoCTe.Evento.Clear;
    ACBrCTe1.EventoCTe.LerXML(OpenDialog1.FileName);
    CC:=TstringList.Create;
    CC.Add('andrefmoraes@gmail.com'); //especifique um email válido
    CC.Add('anfm@zipmail.com.br');    //especifique um email válido
    (*
    ACBrCTe1.EnviarEmailEvento(edtSmtpHost.Text
                             , edtSmtpPort.Text
                             , edtSmtpUser.Text
                             , edtSmtpPass.Text
                             , edtSmtpUser.Text
                             , Para
                             , edtEmailAssunto.Text
                             , mmEmailMsg.Lines
                             , cbEmailSSL.Checked // SSL - Conexão Segura
                             , True //Enviar PDF junto
                             , CC //Lista com emails que serão enviado cópias - TStrings
                             , Evento // Lista de anexos - TStrings
                             , False  //Pede confirmação de leitura do email
                             , False  //Aguarda Envio do Email(não usa thread)
                             , 'ACBrCTe' // Nome do Rementente
                             , cbEmailSSL.Checked ); // Auto TLS
    *)
    CC.Free;
    Evento.Free;
  end;
end;

procedure TfCTePrincipal.btnExcluirCompClick(Sender: TObject);
var strExclui:string;
begin
  if (dmCte.cdsCTENPROT.AsString <> '') then
  begin
    MessageDlg('CTe Ja Enviada.', mtInformation, [mbOK], 0);
    exit;
  end;

  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation, [mbYes,mbNo],0) = mrYes then
  begin
    if ( dbGridQC.Columns[1].Field.Value <> '') then
    begin
      strExclui := 'DELETE FROM CTE_COMP';
      strExclui += ' WHERE COD_CTE_COMP = ';
      strExclui += IntToStr(dmCte.sqCOMP.FieldByName('COD_CTE_COMP').AsInteger);
      try
        dmPdv.Ibcon.ExecuteDirect(strExclui);
        dmPdv.sTrans.Commit;
        MessageDlg('Componente Excluido com Sucesso.', mtInformation, [mbOK], 0);
        dmCte.sqCOMP.Refresh;
      except
        on E : Exception do
        begin
          ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
          dmPdv.sTrans.Rollback;
          exit;
        end;
      end;
    end;
  end;
end;

procedure TfCTePrincipal.btnConsCadClick(Sender: TObject);
var  UF, Documento : String;
begin
  if not(InputQuery('WebServices Consulta Cadastro ', 'UF do Documento a ser Consultado:', UF))
  then exit;
  if not(InputQuery('WebServices Consulta Cadastro ', 'Documento(CPF/CNPJ)', Documento))
  then exit;

  Documento := Trim(OnlyNumber(Documento));

  ACBrCTe1.WebServices.ConsultaCadastro.UF := UF;
  if Length(Documento) > 11
  then ACBrCTe1.WebServices.ConsultaCadastro.CNPJ := Documento
  else ACBrCTe1.WebServices.ConsultaCadastro.CPF := Documento;
  ACBrCTe1.WebServices.ConsultaCadastro.Executar;

  MemoResp.Lines.Text   := UTF8Encode(ACBrCTe1.WebServices.ConsultaCadastro.RetWS);
  memoRespWS.Lines.Text := UTF8Encode(ACBrCTe1.WebServices.ConsultaCadastro.RetWS);

  ShowMessage(ACBrCTe1.WebServices.ConsultaCadastro.xMotivo);
  ShowMessage(ACBrCTe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].xNome);
end;

procedure TfCTePrincipal.btnConsultarChaveClick(Sender: TObject);
var
 vChave : String;
begin
  if not(InputQuery('WebServices Consultar', 'Chave do CT-e:', vChave)) then
    exit;

  ACBrCTe1.WebServices.Consulta.CTeChave := vChave;
  ACBrCTe1.WebServices.Consulta.Executar;

  MemoResp.Lines.Text :=  UTF8Encode(ACBrCTe1.WebServices.Consulta.RetWS);
  memoRespWS.Lines.Text :=  UTF8Encode(ACBrCTe1.WebServices.Consulta.RetornoWS);
end;

procedure TfCTePrincipal.btnConsultarClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o CTe';
  OpenDialog1.DefaultExt := '*-cte.xml';
  OpenDialog1.Filter := 'Arquivos CTe (*-cte.xml)|*-cte.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrCTe1.Configuracoes.Arquivos.PathSalvar;

  if OpenDialog1.Execute then
   begin
    ACBrCTe1.Conhecimentos.Clear;
    ACBrCTe1.Conhecimentos.LoadFromFile(OpenDialog1.FileName);
    ACBrCTe1.Consultar;

    ShowMessage(ACBrCTe1.WebServices.Consulta.Protocolo);
    MemoResp.Lines.Text := UTF8Encode(ACBrCTe1.WebServices.Consulta.RetWS);
    memoRespWS.Lines.Text := UTF8Encode(ACBrCTe1.WebServices.Consulta.RetWS);

    // Retorno do XML completo: CTe + Eventos vinculados
    MemoDados.Lines.Text :=  UTF8Encode(ACBrCTe1.WebServices.Consulta.RetCTeDFe);
  end;
end;

procedure TfCTePrincipal.btnConsultarReciboClick(Sender: TObject);
var
 aux : String;
begin
 if not(InputQuery('Consultar Recibo Lote', 'Número do Recibo', aux))
  then exit;

  ACBrCTe1.WebServices.Recibo.Recibo := aux;
  ACBrCTe1.WebServices.Recibo.Executar;

  MemoResp.Lines.Text   := UTF8Encode(ACBrCTe1.WebServices.Recibo.RetWS);
  memoRespWS.Lines.Text := UTF8Encode(ACBrCTe1.WebServices.Recibo.RetWS);
end;

procedure TfCTePrincipal.btnDuplicarClick(Sender: TObject);
var velha_nCte: Integer;
begin
  btnEditarCte.Click;
  velha_nCte := dm.cdsCTECOD_CTE.AsInteger;;
  modoGravacao := 'DUPLICAR';
  FormatSettings.DecimalSeparator := '.';
  val_genCte := dm.cdsCTECOD_CTE.AsInteger;
  if (dmCte.cdsCte.Active) then
    dmCte.cdsCte.Edit;

  edtCFOP.Text := dm.cdsCTECTE_CFOP.AsString;
  edtNatOpe.Text := dm.cdsCTECTE_NATOP.AsString;
  edtModelo.Text := dm.cdsCTEMODELO.AsString;
  edtSerieCte.Text := dm.cdsCTECTE_SERIE.AsString;
  edtNumCte.Text := dm.cdsCTECTE_NUMERO.AsString;
  dataGerarCte.date := dm.cdsCTEDHEMI.Value;
  rgModal.ItemIndex := dm.cdsCTEMODAL.AsInteger;
  rgTipoServico.ItemIndex  :=  dm.cdsCTETIPOSERVICO.AsInteger;
  rgTiposCte.ItemIndex :=     dm.cdsCTETIPOCTE.AsInteger;
  rgFormaEmissao.ItemIndex := dm.cdsCTETPOEMISSAO.AsInteger;
  rgForPag.ItemIndex :=       dm.cdsCTEIFORPAG.AsInteger;
  rgTipoDACTe.ItemIndex :=    dm.cdsCTETPIMP.AsInteger;
  edtEnvCodCidade.Text := dm.cdsCTEENV_CODCIDADE.AsString;
  edtEnvCidade.Text :=    dm.cdsCTEENV_CIDADE.AsString;
  edtEnvUF.Text :=        dm.cdsCTEENV_ESTADO.AsString;
  edtIniCodCidade.Text := dm.cdsCTEINI_CODCIDADE.AsString;
  edtIniCidade.Text :=    dm.cdsCTEINI_CIDADE.AsString;
  edtIniUF.Text :=        dm.cdsCTEINI_ESTADO.AsString;
  edtFimCodCidade.Text := dm.cdsCTEFIM_CODCIDADE.AsString;
  edtFimCidade.Text :=    dm.cdsCTEFIM_CIDADE.AsString;
  edtFimUF.Text :=        dm.cdsCTEFIM_ESTADO.AsString;
  // emitente
  comboEmpresa.Text       := dm.cdsCTEE_RSOCIAL.AsString;
  edtCodEmitente.Text     := dm.cdsCTEEMITENTE.AsString;
  edtEmitCNPJ.Text        := dm.cdsCTEE_CNPJCPF.AsString;
  edtEmitIE.Text          := dm.cdsCTEE_IESTADUAL.AsString;
  edtEmitRazao.Text       := dm.cdsCTEE_RSOCIAL.AsString;
  edtEmitFantasia.Text    := dm.cdsCTEE_FANTASIA.AsString;
  edtEmitFone.Text        := dm.cdsCTEE_TELEFONE.AsString;
  edtEmitLogradouro.Text  := dm.cdsCTEE_ENDERECO.AsString;
  edtEmitNumero.Text      := dm.cdsCTEE_NUMERO.AsString;
  edtEmitComp.Text        := dm.cdsCTEE_COMPLEMENTO.AsString;
  edtEmitBairro.Text      := dm.cdsCTEE_BAIRRO.AsString;
  edtEmitCodCidade.Text   := dm.cdsCTEE_CODIGOMUNICIPI.AsString;
  edtEmitCidade.Text      := dm.cdsCTEE_CIDADE.AsString;
  edtEmitCep.Text         := dm.cdsCTEE_CEP.AsString;
  edtEmitUF.Text          := dm.cdsCTEE_ESTADO.AsString;
  // tomador
  if(dmCTe.cdsCTET_CNPJCPF.AsString <> '') then
  begin
    rgTomador.ItemIndex      := dmCTe.cdsCTETOMADORSERVICO.AsInteger;
    edtCNPJTomador.Text      := dmCTe.cdsCTET_CNPJCPF.AsString;
    edtIETomador.Text        := dmCTe.cdsCTET_IESTADUAL.AsString;
    edtRazaoTomador.Text     := dmCTe.cdsCTET_RSOCIAL.AsString;
    edtNomeTomador.Text      := dmCTe.cdsCTET_FANTASIA.AsString;
    edtFoneTomador.Text      := dmCTe.cdsCTET_TELEFONE.AsString;
    edtEndTomador.Text       := dmCTe.cdsCTET_ENDERECO.AsString;
    edtNumTomador.Text       := dmCTe.cdsCTET_NUMERO.AsString;
    edtCompTomador.Text      := dmCTe.cdsCTET_COMPLEMENTO.AsString;
    edtBairroTomador.Text    := dmCTe.cdsCTET_BAIRRO.AsString;
    edtTomadorCodCidade.Text := dmCTe.cdsCTET_CODIGOMUNICIPI.AsString;
    edtTomadorCidade.Text    := dmCTe.cdsCTET_CIDADE.AsString;
    edtCepTomador.Text       := dmCTe.cdsCTET_CEP.AsString;
    edtTomadorUF.Text        := dmCTe.cdsCTET_ESTADO.AsString;
  end;
  // rememtente
  edtRemCNPJ.Text          := dmCTe.cdsCTER_CNPJCPF.AsString;
  edtRemIE.Text            := dmCTe.cdsCTER_IESTADUAL.AsString;
  edtRemRazao.Text         := dmCTe.cdsCTER_RSOCIAL.AsString;
  edtRemNome.Text          := dmCTe.cdsCTER_FANTASIA.AsString;
  edtRemFone.Text          := dmCTe.cdsCTER_TELEFONE.AsString;
  edtRemEnd.Text           := dmCTe.cdsCTER_ENDERECO.AsString;
  edtRemNum.Text           := dmCTe.cdsCTER_NUMERO.AsString;
  edtRemComp.Text          := dmCTe.cdsCTER_COMPLEMENTO.AsString;
  edtRemBairro.Text        := dmCTe.cdsCTER_BAIRRO.AsString;
  edtRemCodCidade.Text     := dmCTe.cdsCTER_CODIGOMUNICIPI.AsString;
  edtRemCidade.Text        := dmCTe.cdsCTER_CIDADE.AsString;
  edtRemCep.Text           := dmCTe.cdsCTER_CEP.AsString;
  edtRemUF.Text            := dmCTe.cdsCTER_ESTADO.AsString;
  // destinatario
  edtDestCNPJ.Text         := dmCTe.cdsCTED_CNPJCPF.AsString;
  edtDestIE.Text           := dmCTe.cdsCTED_IESTADUAL.AsString;
  edtDestRazao.Text        := dmCTe.cdsCTED_RSOCIAL.AsString;
  edtDestNome.Text         := dmCTe.cdsCTED_FANTASIA.AsString;
  edtDestFone.Text         := dmCTe.cdsCTED_TELEFONE.AsString;
  edtDestEnd.Text          := dmCTe.cdsCTED_ENDERECO.AsString;
  edtDestNum.Text          := dmCTe.cdsCTED_NUMERO.AsString;
  edtDestComp.Text         := dmCTe.cdsCTED_COMPLEMENTO.AsString;
  edtDestBairro.Text       := dmCTe.cdsCTED_BAIRRO.AsString;
  edtDestCodCidade.Text    := dmCTe.cdsCTED_CODIGOMUNICIPI.AsString;
  edtDestCidade.Text       := dmCTe.cdsCTED_CIDADE.AsString;
  edtDestCep.Text          := dmCTe.cdsCTED_CEP.AsString;
  edtDestUF.Text           := dmCTe.cdsCTED_ESTADO.AsString;
  // recebedor
  if(dmCTe.cdsCTERE_CNPJCPF.AsString <> '') then
  begin
    rgRec.ItemIndex := 0 ;
    edtRecCNPJ.Text      := dmCTe.cdsCTERE_CNPJCPF.AsString;
    edtRecIE.Text        := dmCTe.cdsCTERE_IESTADUAL.AsString;
    edtRecNome.Text      := dmCTe.cdsCTERE_ENDERECO.AsString;
    edtRecRazao.Text     := dmCTe.cdsCTERE_RSOCIAL.AsString;
    edtRecFone.Text      := dmCTe.cdsCTERE_TELEFONE.AsString;
    edtRecEnd.Text       := dmCTe.cdsCTERE_ENDERECO.AsString;
    edtRecNum.Text       := dmCTe.cdsCTERE_NUMERO.AsString;
    edtRecComp.Text      := dmCTe.cdsCTERE_COMPLEMENTO.AsString;
    edtRecBairro.Text    := dmCTe.cdsCTERE_BAIRRO.AsString;
    edtRecCodCidade.Text := dmCTe.cdsCTERE_CODIGOMUNICIPI.AsString;
    edtRecCidade.Text    := dmCTe.cdsCTERE_CIDADE.AsString;
    edtRecCep.TExt       := dmCTe.cdsCTERE_CEP.AsString;
    edtRecUF.Text        := dmCTe.cdsCTERE_ESTADO.AsString;
  end;

  if(dm.cdsCTEEX_CNPJCPF.AsString <> '') then
  begin
    rgExp.ItemIndex := 0;
    edtExpCNPJ.Text      := dmCTe.cdsCTEEX_CNPJCPF.AsString;
    edtExpIE.Text        := dmCTe.cdsCTEEX_IESTADUAL.AsString;
    edtExpRazao.Text     := dmCTe.cdsCTEEX_RSOCIAL.AsString;
    edtExpNome.Text      := dmCTe.cdsCTEEX_FANTASIA.AsString;
    edtExpFone.Text      := dmCTe.cdsCTEEX_TELEFONE.AsString;
    edtExpEnd.Text       := dmCTe.cdsCTEEX_ENDERECO.AsString;
    edtExpNum.Text       := dmCTe.cdsCTEEX_COMPLEMENTO.AsString;
    edtExpComp.Text      := dmCTe.cdsCTEEX_COMPLEMENTO.AsString;
    edtExpBairro.Text    := dmCTe.cdsCTEEX_BAIRRO.AsString;
    edtExpCodCidade.Text := dmCTe.cdsCTEEX_CODIGOMUNICIPI.AsString;
    edtExpCidade.Text    := dmCTe.cdsCTEEX_CIDADE.AsString;
    edtExpCep.Text       := dmCTe.cdsCTEEX_CEP.AsString;
    edtExpUF.Text        := dmCTe.cdsCTEEX_ESTADO.AsString;
  end;

  edtCaracAdTrans.Text := dmCTe.cdsCTECARAC_TRANSP.AsString;
  edtCaracAdServ.Text  := dmCTe.cdsCTECARAC_SERV.AsString;
  edtFuncEmi.Text      := dmCTe.cdsCTEFUNC_EMI.AsString;

  rgRetira.ItemIndex   := dmCTe.cdsCTERETIRA.AsInteger;
  memDetRetira.Text    := dmCTe.cdsCTEDET_RETIRA.AsString;

  combCodSitTrib.ItemIndex := dmCTe.cdsCTECOMBCODSITTRIB.Value;

  dbValInfCarga.Field.Value := dmCTe.cdsCTEVALINFCARGA.Value;
  edtProPred.Text := dmCTe.cdsCTEPROPRED.AsString;
  edtOutCat.Text := dmCTe.cdsCTEOUTCAT.AsString;

  edtRodRNTRC.Text := dmCTe.cdsCTERNTRC.AsString;
  dataRodPrev.date := dmCTe.cdsCTEDATARODPREV.Value;
  rgRodLotacao.ItemIndex := dmCTe.cdsCTERGRODLOTACAO.Value;
  memxObs.Text := dmCTe.cdsCTEOBS_GERAL.Value;

  // para Clonar  colocar cds da tabela
  if (dmCte.sqComp.Active)then
    dmCte.sqComp.Close;
  dmCte.sqComp.Params[0].AsInteger := val_genCte;
  dmCte.sqComp.Open;
  // para Clonar  colocar cds da tabela
  if (dmCte.sqQC.Active)then
    dmCte.sqQC.Close;
  dmCte.sqQC.Params[0].AsInteger := val_genCte;
  dmCte.sqQC.cdsQC.Open;

  if (dmCte.sqNFe.Active)then
    dmCte.sqNFe.Close;
  dmCte.sqNFe.Params[0].AsInteger := val_genCte;
  dmCte.sqNFe.Open;

  if (dmCte.sqVeic.Active)then
    dmCte.sqVeic.Close;
  dmCte.sqVeic.Params[0].AsInteger := val_genCte;
  dmCte.sqVeic.Open;

  if (dmCte.sqMot.Active)then
    dmCte.sqMot.Close;
  dmCte.sqMot.Params[0].AsInteger := val_genCte;
  dmCte.sqMot.Open;
  // outros
  combOutrosDocs.Text    := dmCte.cdsCTEOUTPDOC.AsString ;
  dataOutrosEmi.DateTime := dmCte.cdsCTEOUDEMI.AsDateTime  ;
  edtOutrosNum.Text      := dmCte.cdsCTEOUNDOC.AsString ;
  edtOutrosDesc.Text     := dmCte.cdsCTEOUDESCOUTRO.AsString ;
  valOutrosVal.Value     := dmCte.cdsCTEOUVDOCFISC.Value ;

  if (dmCte.cdsCTE.Active)then
    dmCte.cdsCTE.Close;
  dmCte.cdsCTE.Params[0].AsInteger := StrToInt(edtCodEmitente.Text);
  dmCte.cdsCTE.Params[1].AsInteger := StrToInt(edtNumCte.Text);
  dmCte.cdsCTE.Open;

  if (modoGravacao = 'EDITAR') then
  begin
    // vai pra primeira ABA
    PageControl1.ActivePage:=TabSheet2;
    btnGerar.Enabled := True;
    modoGravacao := 'EDITAR';
    FormatSettings.DecimalSeparator := ',';
    if (dmCte.cdsCTENPROT.AsString = '') then
    begin
      btnGravarCTe.Caption := 'Gravar CTE *';
      btnGravarCte.Font.Style := [fsBold];
      dmCte.cdsCTE.Edit;
    end;
    edtCFOPBusca.ReadOnly := False;
    edtCFOP.ReadOnly := False;
    edtNatOpe.ReadOnly := False;
    btnPreVisu.Enabled := True;
  end;

  btnIncCte.Click;
  btnGravarCTe.Click;
  duplicar(IntToStr(velha_nCte));
end;

procedure TfCTePrincipal.btnEditarCompClick(Sender: TObject);
begin
  if (dmCte.cdsCTENPROT.AsString <> '') then
  begin
    MessageDlg('CTe Ja Enviada.', mtInformation, [mbOK], 0);
    exit;
  end;

  if not(dmCte.sqCOMP.Active)then
    dmCte.sqCOMP.Active;
  dmCte.sqCOMP.Params[0].AsInteger := val_genCte;
  dmCte.sqCOMP.Open;
  dmCte.sqCOMP.Edit;

  fCompValor := TfCompValor.Create(Application);
  try
    fCompValor.btnOk.Visible :=False;
    fCompValor.edtCompNome.Text := dbGridComp.Columns[0].Field.Value;
    fCompValor.valComp.Text := dbGridComp.Columns[1].Field.Value;
    fCompValor.ShowModal;
  finally
    fCompValor.Free;
  end;

end;

procedure TfCTePrincipal.btnEditarCteClick(Sender: TObject);
begin
  StatusBar1.SimpleText := 'Editando CTe : ' +
    IntToStr(dmCte.cdsCTECOD_CTE.AsInteger);
  if (dmCte.cdsCTENPROT.AsString <> '') then
  begin
    MessageDlg('CTe já enviada. Não é possível GRAVAR alterações.', mtInformation, [mbOK], 0);
    StatusBar1.SimpleText := 'Consultando CTe : ' +
      IntToStr(dmCte.cdsCTECOD_CTE.AsInteger) + ' já enviada.;
  end;

  CarregarCte(IntToStr(dmCte.cdsCTECOD_CTE.AsInteger));

  if (modoGravacao = 'EDITAR') then
  begin
    // vai pra primeira ABA
    //PageControl1.ActivePage:=TabSheet2;
    btnGerar.Enabled := True;
    modoGravacao := 'EDITAR';
    if (dmCte.cdsCTENPROT.AsString = '') then
    begin
      btnGravarCTe.Caption := 'Gravar CTE *';
      dmCte.cdsCTE.Edit;
      btnGravarCTe.Enabled := True;
    end
    else begin
      btnGravarCTe.Enabled := False;
    end;
    edtCFOPBusca.ReadOnly  := False;
    edtCFOP.ReadOnly       := False;
    edtNatOpe.ReadOnly     := False;
    btnPreVisu.Enabled     := True;
  end;
end;

procedure TfCTePrincipal.btnGerarClick(Sender: TObject);
var   vAux : String;
 strEdita :string;
begin
  if (dm.cdsCTENPROT.AsString <> '') then
  begin
    ShowMessage('Arquivo ja Gerado e Enviado' );
    exit;
  end;
  // if not(InputQuery('WebServices Enviar', 'Numero do Conhecimento', vAux))
  // then exit;
  vAux := edtNumCte.Text;
  ACBrCTe1.Conhecimentos.Clear;
  GerarCTe(vAux);
  ACBrCTe1.Conhecimentos.Items[0].GravarXML('','');

  ShowMessage('Arquivo gerado em: '+ACBrCTe1.Conhecimentos.Items[0].NomeArq);
  MemoDados.Lines.Add('Arquivo gerado em: '+ACBrCTe1.Conhecimentos.Items[0].NomeArq);
  MemoResp.Lines.LoadFromFile(ACBrCTe1.Conhecimentos.Items[0].NomeArq);
  //LoadXML(MemoResp, WBResposta);
  PageControl2.ActivePageIndex := 1;

  // validar
  //OpenDialog1.Title := 'Selecione o CTe';
  //OpenDialog1.DefaultExt := '*-cte.xml';
  //OpenDialog1.Filter := 'Arquivos CTe (*-cte.xml)|*-cte.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
  //OpenDialog1.InitialDir := ACBrCTe1.Configuracoes.Arquivos.PathSalvar;

  //if OpenDialog1.Execute then
  //begin
  //  ACBrCTe1.Conhecimentos.Clear;
  //  ACBrCTe1.Conhecimentos.LoadFromFile(OpenDialog1.FileName);
     ACBrCTe1.Conhecimentos.Assinar;
     ACBrCTe1.Conhecimentos.Validar;
     showmessage('Conhecimento de Transporte Eletrônico Valido');
  //end;

  ACBrCTe1.Enviar(1); //(StrToInt(vNumLote));

  MemoResp.Lines.Text   := UTF8Encode(ACBrCTe1.WebServices.Retorno.RetWS);
  memoRespWS.Lines.Text := UTF8Encode(ACBrCTe1.WebServices.Retorno.RetWS);
  //LoadXML(MemoResp, WBResposta);

  PageControl2.ActivePageIndex := 5;
  MemoDados.Lines.Add('');
  MemoDados.Lines.Add('Envio CTe');
  MemoDados.Lines.Add('tpAmb: '+ TpAmbToStr(ACBrCTe1.WebServices.Retorno.TpAmb));
  MemoDados.Lines.Add('verAplic: '+ ACBrCTe1.WebServices.Retorno.verAplic);
  MemoDados.Lines.Add('cStat: '+ IntToStr(ACBrCTe1.WebServices.Retorno.cStat));
  MemoDados.Lines.Add('cUF: '+ IntToStr(ACBrCTe1.WebServices.Retorno.cUF));
  MemoDados.Lines.Add('xMotivo: '+ ACBrCTe1.WebServices.Retorno.xMotivo);
  MemoDados.Lines.Add('xMsg: '+ ACBrCTe1.WebServices.Retorno.Msg);
  MemoDados.Lines.Add('Recibo: '+ ACBrCTe1.WebServices.Retorno.Recibo);
  MemoDados.Lines.Add('Protocolo: '+ ACBrCTe1.WebServices.Retorno.Protocolo);

  if (ACBrCTe1.WebServices.Retorno.Recibo <> '') then
  begin
    dm.con.AutoCommit := True;

    strEdita := 'UPDATE CTE SET NPROT = ';
    strEdita := strEdita + QuotedStr(ACBrCTe1.WebServices.Retorno.Protocolo);
    strEdita := strEdita + ', CHCTE = ';
    strEdita := strEdita + QuotedStr(ACBrCTe1.WebServices.Retorno.Recibo);

    strEdita := strEdita + ', STATUS_CTE = ';
    strEdita := strEdita + QuotedStr('Autorizada');

    strEdita := strEdita + ' WHERE COD_CTE = ';
    strEdita := strEdita + IntToStr(val_genCte);

    dm.con.StartTransaction;

    try
      dm.con.ExecuteDirect(strEdita);
      dm.con.Commit;

      MessageDlg('Protocolo Gravada com Sucesso.', mtInformation, [mbOK], 0);
      FormatSettings.DecimalSeparator := ',';
      dm.con.AutoCommit := False;
       ACBrCTe1.Conhecimentos.ImprimirPDF;
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.con.Rollback;
        exit;
      end;
    end;

  end;


  ACBrCTe1.Conhecimentos.Clear;

end;

procedure TfCTePrincipal.btnGerarCteClick(Sender: TObject);
var
  vAux : String;
  strEdita :string;
  vChave_cte: String;
begin
  if (dm.cdsCTENPROT.AsString <> '') then
  begin
    ShowMessage('Arquivo ja Gerado e Enviado' );
    exit;
  end;
  // if not(InputQuery('WebServices Enviar', 'Numero do Conhecimento', vAux))
  // then exit;
  vAux := edtNumCte.Text;
  ACBrCTe1.Conhecimentos.Clear;
  GerarCTe(vAux);
  ACBrCTe1.Conhecimentos.Items[0].GravarXML('','');
  vChave_cte := ACBrCTe1.Conhecimentos.Items[0].NomeArq;
  StatusBar1.SimpleText := 'Gerando CTe, Arquivo gerado em: ' + vChave_cte;
  MemoDados.Lines.Add('Arquivo gerado em: '+ vChave_cte);
  MemoResp.Lines.LoadFromFile(vChave_cte);
  //PageControl2.ActivePageIndex := 1;

  ACBrCTe1.Conhecimentos.Assinar;
  ACBrCTe1.Conhecimentos.Validar;
  StatusBar1.SimpleText := StatusBar1.SimpleText + ' - Situação : Valido');

  ACBrCTe1.Enviar(1); //(StrToInt(vNumLote));

  MemoResp.Lines.Text   := UTF8Encode(ACBrCTe1.WebServices.Retorno.RetWS);
  memoRespWS.Lines.Text := UTF8Encode(ACBrCTe1.WebServices.Retorno.RetWS);

  //PageControl2.ActivePageIndex := 5;
  MemoDados.Lines.Add('');
  MemoDados.Lines.Add('Envio CTe');
  MemoDados.Lines.Add('tpAmb: '+ TpAmbToStr(ACBrCTe1.WebServices.Retorno.TpAmb));
  MemoDados.Lines.Add('verAplic: '+ ACBrCTe1.WebServices.Retorno.verAplic);
  MemoDados.Lines.Add('cStat: '+ IntToStr(ACBrCTe1.WebServices.Retorno.cStat));
  MemoDados.Lines.Add('cUF: '+ IntToStr(ACBrCTe1.WebServices.Retorno.cUF));
  MemoDados.Lines.Add('xMotivo: '+ ACBrCTe1.WebServices.Retorno.xMotivo);
  MemoDados.Lines.Add('xMsg: '+ ACBrCTe1.WebServices.Retorno.Msg);
  MemoDados.Lines.Add('Recibo: '+ ACBrCTe1.WebServices.Retorno.Recibo);
  MemoDados.Lines.Add('Protocolo: '+ ACBrCTe1.WebServices.Retorno.Protocolo);

  if (ACBrCTe1.WebServices.Retorno.Recibo <> '') then
  begin
    strEdita := 'UPDATE CTE SET NPROT = ';
    strEdita := strEdita + QuotedStr(ACBrCTe1.WebServices.Retorno.Protocolo);
    strEdita := strEdita + ', CHCTE = ';
    strEdita := strEdita + QuotedStr(vChave_cte);
    strEdita := strEdita + ', STATUS_CTE = ';
    strEdita := strEdita + QuotedStr('Autorizada, Recibo: ' +
      ACBrCTe1.WebServices.Retorno.Recibo);
    strEdita := strEdita + ' WHERE COD_CTE = ';
    strEdita := strEdita + IntToStr(val_genCte);
    try
      dmPdv.IbCon.ExecuteDirect(strEdita);
      dmPdv.sTrans.Commit;
      MessageDlg('CTe enviada com Sucesso.', mtInformation, [mbOK], 0);
      FormatSettings.DecimalSeparator := ',';
      ACBrCTe1.Conhecimentos.ImprimirPDF;
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dmPdv.sTrans.Rollback;
        exit;
      end;
    end;
  end;
end;

procedure TfCTePrincipal.btnGerarPDFClick(Sender: TObject);
begin
  CarregarXML(dmCte.cdsCteCHCTE.AsString);
  ACBrCTe1.Conhecimentos.ImprimirPDF;
end;

procedure TfCTePrincipal.btnGerarPDFEventoClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o CTe';
  OpenDialog1.DefaultExt := '*-cte.xml';
  OpenDialog1.Filter := 'Arquivos CTe (*-cte.xml)|*-cte.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrCTe1.Configuracoes.Arquivos.PathSalvar;

  ACBrCTe1.Conhecimentos.Clear;
  if OpenDialog1.Execute then
  begin
    ACBrCTe1.Conhecimentos.LoadFromFile(OpenDialog1.FileName);
  end;

  OpenDialog1.Title := 'Selecione o Evento';
  OpenDialog1.DefaultExt := '*-procEventoCTe.xml';
  OpenDialog1.Filter := 'Arquivos Evento (*-procEventoCTe.xml)|*-procEventoCTe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrCTe1.Configuracoes.Arquivos.PathSalvar;

  if OpenDialog1.Execute then
  begin
    ACBrCTe1.EventoCTe.Evento.Clear;
    ACBrCTe1.EventoCTe.LerXML(OpenDialog1.FileName);
    ACBrCTe1.ImprimirEventoPDF;
  end;
end;

procedure TfCTePrincipal.ACBrCTe1StatusChange(Sender: TObject);
begin
  case ACBrCTe1.Status of
    stCTeIdle : begin
             if ( frmStatus <> nil ) then frmStatus.Hide;
            end;
    stCTeStatusServico : begin
                      if ( frmStatus = nil )
                       then frmStatus := TfrmStatus.Create(Application);
                      frmStatus.lblStatus.Caption := 'Verificando Status do servico...';
                      frmStatus.Show;
                      frmStatus.BringToFront;
                     end;
    stCTeRecepcao : begin
                 if ( frmStatus = nil )
                  then frmStatus := TfrmStatus.Create(Application);
                 frmStatus.lblStatus.Caption := 'Enviando dados do CTe...';
                 frmStatus.Show;
                 frmStatus.BringToFront;
                end;
    stCTeRetRecepcao : begin
                    if ( frmStatus = nil )
                     then frmStatus := TfrmStatus.Create(Application);
                    frmStatus.lblStatus.Caption := 'Recebendo dados do CTe...';
                    frmStatus.Show;
                    frmStatus.BringToFront;
                   end;
    stCTeConsulta : begin
                 if ( frmStatus = nil )
                  then frmStatus := TfrmStatus.Create(Application);
                 frmStatus.lblStatus.Caption := 'Consultando CTe...';
                 frmStatus.Show;
                 frmStatus.BringToFront;
                end;
    stCTeCancelamento : begin
                     if ( frmStatus = nil )
                      then frmStatus := TfrmStatus.Create(Application);
                     frmStatus.lblStatus.Caption := 'Enviando cancelamento de CTe...';
                     frmStatus.Show;
                     frmStatus.BringToFront;
                    end;
    stCTeInutilizacao : begin
                     if ( frmStatus = nil )
                      then frmStatus := TfrmStatus.Create(Application);
                     frmStatus.lblStatus.Caption := 'Enviando pedido de Inutilização...';
                     frmStatus.Show;
                     frmStatus.BringToFront;
                    end;
    stCTeRecibo : begin
               if ( frmStatus = nil )
                then frmStatus := TfrmStatus.Create(Application);
               frmStatus.lblStatus.Caption := 'Consultando Recibo de Lote...';
               frmStatus.Show;
               frmStatus.BringToFront;
              end;
    stCTeCadastro : begin
                 if ( frmStatus = nil )
                  then frmStatus := TfrmStatus.Create(Application);
                 frmStatus.lblStatus.Caption := 'Consultando Cadastro...';
                 frmStatus.Show;
                 frmStatus.BringToFront;
                end;
    {
    stCTeEnvDPEC : begin
                if ( frmStatus = nil )
                 then frmStatus := TfrmStatus.Create(Application);
                frmStatus.lblStatus.Caption := 'Enviando DPEC...';
                frmStatus.Show;
                frmStatus.BringToFront;
               end;
    }
    stCTeEmail : begin
              if ( frmStatus = nil )
               then frmStatus := TfrmStatus.Create(Application);
              frmStatus.lblStatus.Caption := 'Enviando Email...';
              frmStatus.Show;
              frmStatus.BringToFront;
             end;
  end;
  Application.ProcessMessages;
end;

procedure TfCTePrincipal.btnGerarPDFInutClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o ProcInutCTe';
  OpenDialog1.DefaultExt := '*-ProcInutCTe.xml';
  OpenDialog1.Filter := 'Arquivos ProcInutCTe (*-ProcInutCTe.xml)|*-ProcInutCTe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrCTe1.Configuracoes.Arquivos.PathSalvar;

  if OpenDialog1.Execute then
  begin
    ACBrCTe1.InutCTe.LerXML(OpenDialog1.FileName);
    ACBrCTe1.ImprimirInutilizacao;
  end;
end;

procedure TfCTePrincipal.btnImprimirInutClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o ProcInutCTe';
  OpenDialog1.DefaultExt := '*-ProcInutCTe.xml';
  OpenDialog1.Filter := 'Arquivos ProcInutCTe (*-ProcInutCTe.xml)|*-ProcInutCTe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrCTe1.Configuracoes.Arquivos.PathSalvar;

  if OpenDialog1.Execute then
  begin
    ACBrCTe1.InutCTe.LerXML(OpenDialog1.FileName);
    ACBrCTe1.ImprimirInutilizacaoPDF;
  end;
end;

procedure TfCTePrincipal.btnInfCargaEditaClick(Sender: TObject);
begin

end;

procedure TfCTePrincipal.btnInfCargaExcluiClick(Sender: TObject);
begin
  if (dmCte.cdsCTENPROT.AsString <> '') then
  begin
    MessageDlg('CTe Ja Enviada.', mtInformation, [mbOK], 0);
    exit;
  end;

  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation, [mbYes,mbNo],0) = mrYes then
  begin
    if ( dbGridQC.Columns[1].Field.Value <> '') then
    begin
      strExclui := 'DELETE FROM CTE_QC';
      strExclui += ' WHERE COD_CTE_QC = ';
      strExclui += IntToStr(dmCTe.sqQC.FieldByName('COD_CTE_QC').AsInteger);

      try
        dmPdv.IbCon.ExecuteDirect(strExclui);
        dmPdv.sTrans.Commit;
        MessageDlg('Quantidade de Carga Excluida com Sucesso.', mtInformation, [mbOK], 0);
        dmCte.sqQC.Refresh;
      except
        on E : Exception do
        begin
          ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
          dmPdv.sTrans.Rollback;
          exit;
        end;
      end;
    end;
  end;
end;

procedure TfCTePrincipal.btnInfCargaIncluiClick(Sender: TObject);
begin

end;

procedure TfCTePrincipal.btnGravarCTeClick(Sender: TObject);
var sql_retorno, strEdita: String;
begin
  if(edtCFOP.Text = '') then
  begin
    MessageDlg('Preecha o CFOP.', mtInformation, [mbOK], 0);
    edtCFOP.SetFocus;
    exit;
  end;

  if ((modoGravacao = 'INCLUIR') or (modoGravacao = 'DUPLICAR')) then
  begin
    strEdita := 'UPDATE SERIES SET ULTIMO_NUMERO = ';
    strEdita := strEdita + QuotedStr(edtNumCte.Text);
    strEdita := strEdita + ' WHERE MODELO = ';
    strEdita := strEdita + QuotedStr('CT');
    strEdita := strEdita + ' and CODSERIE = ';
    strEdita := strEdita + QuotedStr(edtCodEmitente.Text);
    sql_retorno := GravarCTe;
    try
      dmPdv.IbCon.ExecuteDirect(sql_retorno);
      dmPdv.IbCon.ExecuteDirect(strEdita);
      dmPdv.sTrans.Commit;
      if (vDup <> 1 ) then
        MessageDlg('CTe Gravada com sucesso.', mtInformation, [mbOK], 0);
      FormatSettings.DecimalSeparator := ',';
      modoGravacao := 'EDITAR';
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dmPdv.sTrans.Rollback;
        exit;
      end;
    end;

  end
  else begin
    if (dmCte.cdsCTENPROT.AsString <> '') then
    begin
      MessageDlg('CTe Ja Enviada. Não Pode ser Editada', mtInformation, [mbOK], 0);
      exit;
    end;
    EditarA; //
    EditarB; // Aba Dados Complementares
    EditarC;
    EditarD; // Aba serviços e Impostos
    EditarE;
    EditarF; // aba outros docs
    EditarG;
    EditarEX;
    EditarT;
    EditarR;
    EditarREC;
    EditarRE;
    EditarDE;
  end;

  btnGravarCTe.Caption := 'Gravar CTE';
  btnPreVisu.Enabled := True;

  if (dmCTe.cdsCTE.Active)then
    dmCTe.cdsCTE.Close;
  dmCTe.cdsCTE.Params[0].AsInteger := StrToInt(edtCodEmitente.Text);
  dmCTe.cdsCTE.Params[1].AsInteger := StrToInt(edtNumCte.Text);
  dmCTe.cdsCTE.Open;

  vDup := 1;
  if ((fQuantCarga.fcarga <> 1) and (fCompValor.fvalor <> 1)
    and (fNFe.fnfe <> 1) and (vDup <> 1)) then
    MessageDlg('CTe Gravada.', mtInformation, [mbOK], 0);
end;

procedure TfCTePrincipal.btnImportarXMLClick(Sender: TObject);
var
  i, j, k, n  : integer;
  //Nota, Node, NodePai, NodeItem: TTreeNode;
  //NFeRTXT: TNFeRTXT;
  nome : string;
  strEndereco: String;
begin
  //dm.cdsCli.Open;
  //dm.cdsCli.Close;
  edtXMLCod.Text  := '';
  edtXMLNome.Text  := '';
  edtXMLRazao.Text  := '';
  edtXMLCnpj.Text  := '';
  edtXMLIE.Text  := '';
  edtXMLLogradouro.Text  := '';
  edtXMLNumero.Text  := '';
  edtXMLComp.Text  := '';
  edtXMLBairro.Text  := '';
  edtXMLCEP.Text := '';
  edtXMLCodCidade.Text := '';
  edtXMLCidade.Text := '';
  edtXMLUF.Text := '';
  edtXMLFone.Text := '';
  trvwNFe.Items.Clear;
  OpenDialog1.FileName  :=  '';
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Arquivos TXT (*.TXT)|*.TXT|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    //tenta TXT
    //ACBrNFe1.NotasFiscais.Add;
    //NFeRTXT := TNFeRTXT.Create(ACBrNFe1.NotasFiscais.Items[0].NFe);
    //NFeRTXT.CarregarArquivo(OpenDialog1.FileName);
    //if NFeRTXT.LerTxt then
    //   NFeRTXT.Free
    //else
    //begin
    //   NFeRTXT.Free;
    //tenta XML
    ACBrNFe1.NotasFiscais.Clear;
    try
      ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    except
      ShowMessage('Arquivo NFe Inválido');
      exit;
    end;
  end;

  for n:=0 to ACBrNFe1.NotasFiscais.Count-1 do
  begin
    with ACBrNFe1.NotasFiscais.Items[n].NFe do
    begin
      edtXMLCnpj.Text := Copy(Dest.CNPJCPF,1,2) + '.' + Copy(Dest.CNPJCPF,3,3) + '.' + Copy(Dest.CNPJCPF,6,3) + '/' + Copy(Dest.CNPJCPF,9,4) + '-' + Copy(Dest.CNPJCPF,13,2);
      edtXMLNome.Text := Dest.xNome ;
      edtXMLIE.Text := Dest.IE ;

      edtXMLLogradouro.Text := Dest.EnderDest.xLgr;
      edtXMLComp.Text   := Dest.EnderDest.xCpl;
      edtXMLCidade.Text := Dest.EnderDest.xMun ;
      edtXMLUF.Text     := Dest.EnderDest.UF ;
      edtXMLBairro.Text := Dest.EnderDest.xBairro ;
      edtXMLCEP.Text    := IntToStr(Dest.EnderDest.CEP) ;
      edtXMLFone.Text   := Dest.EnderDest.Fone;
      edtXMLNumero.Text := Dest.EnderDest.nro ;
      edtXMLCodCidade.Text := IntToStr(Dest.EnderDest.cMun);
    end;
  end;

  if(edtXMLCnpj.Text <> '') then
  begin
    dmPdv.busca_sql('SELECT CODCLIENTE FROM CLIENTES WHERE CNPJ = ' +
      QuotedStr(edtXMLCnpj.Text));
    if (dmPdv.sqBusca.IsEmpty) then
    begin
      generetor := dmPdv.busca_generator('GEN_CLI');
      strInsere := 'INSERT INTO CLIENTES (CODCLIENTE, NOMECLIENTE, RAZAOSOCIAL, TIPOFIRMA ' +
                   ', CNPJ, INSCESTADUAL, SEGMENTO, REGIAO, DATACADASTRO  , CODUSUARIO, STATUS ' +
                   ') VALUES ( ';
      strInsere := strInsere +   IntToStr(generetor);
      strInsere := strInsere + ', ' + QuotedStr(edtXMLNome.Text);
      strInsere := strInsere + ', ' + QuotedStr(edtXMLRazao.Text);
      strInsere := strInsere + ', ' + IntToStr(1);
      strInsere := strInsere + ', ' + QuotedStr(edtXMLCnpj.Text);
      strInsere := strInsere + ', ' + QuotedStr(edtXMLIE.Text);
      strInsere := strInsere + ', ' + IntToStr(1);
      strInsere := strInsere + ', ' + IntToStr(1);
      strInsere := strInsere + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy',now));
      strInsere := strInsere + ', ' + IntToStr(1);
      strInsere := strInsere + ', ' + IntToStr(1);
      strInsere := strInsere + ')';

      strEndereco := 'INSERT INTO ENDERECOCLIENTE (CODCLIENTE, CODENDERECO , ' +
                    ' LOGRADOURO , BAIRRO, COMPLEMENTO '+
                    ', CIDADE , UF , CEP , TELEFONE , TIPOEND , DDD , ' +
                    ' NUMERO, CD_IBGE, PAIS  ' +
                    ') VALUES ( ';

      strEndereco := strEndereco +   IntToStr(generetor);
      generetor := dmPdv.busca_generator('GEN_CLI_END');
      strEndereco := strEndereco + ', ' + IntToStr(generetor);
      strEndereco := strEndereco + ', ' + QuotedStr(edtXMLLogradouro.Text);
      strEndereco := strEndereco + ', ' + QuotedStr(edtXMLBairro.Text);
      strEndereco := strEndereco + ', ' + QuotedStr(edtXMLComp.Text);
      strEndereco := strEndereco + ', ' + QuotedStr(edtXMLCidade.Text);
      strEndereco := strEndereco + ', ' + QuotedStr(edtXMLUF.Text);
      strEndereco := strEndereco + ', ' + QuotedStr(edtXMLCEP.Text);
      strEndereco := strEndereco + ', ' + QuotedStr(Copy(edtXMLFone.Text,2,12));
      strEndereco := strEndereco + ', ' + IntToStr(0);
      strEndereco := strEndereco + ', ' + QuotedStr(Copy(edtXMLFone.Text,0,2));
      strEndereco := strEndereco + ', ' + QuotedStr(edtXMLNumero.Text);
      strEndereco := strEndereco + ', ' + QuotedStr(edtXMLCodCidade.Text);
      strEndereco := strEndereco + ', ' + QuotedStr('Brasil');
      strEndereco := strEndereco + ')';
      try
        dmPdv.IbCon.ExecuteDirect(strInsere);
        dmPdv.IbCon.ExecuteDirect(strEndereco);
        dmPdv.sTrans.Commit;
      except
        on E : Exception do
        begin
          ShowMessage('Cadastro do Cliente, não pode ser criado, Classe: ' +
            e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
          dmPdv.sTrans.Rollback;
          exit;
        end;
      end;
    end;
  end;

end;

procedure TfCTePrincipal.btnImprimirClick(Sender: TObject);
begin
  CarregarXML(dmCte.cdsCteCHCTE.AsString);
  ACBrCTe1.Conhecimentos.Imprimir;
end;

procedure TfCTePrincipal.btnImprimirEventoClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o CTe';
  OpenDialog1.DefaultExt := '*-cte.xml';
  OpenDialog1.Filter := 'Arquivos CTe (*-cte.xml)|*-cte.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrCTe1.Configuracoes.Arquivos.PathSalvar;

  ACBrCTe1.Conhecimentos.Clear;
  if OpenDialog1.Execute then
  begin
    ACBrCTe1.Conhecimentos.LoadFromFile(OpenDialog1.FileName);
  end;

  OpenDialog1.Title := 'Selecione o Evento';
  OpenDialog1.DefaultExt := '*-procEventoCTe.xml';
  OpenDialog1.Filter := 'Arquivos Evento (*-procEventoCTe.xml)|*-procEventoCTe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrCTe1.Configuracoes.Arquivos.PathSalvar;

  if OpenDialog1.Execute then
  begin
    ACBrCTe1.EventoCTe.Evento.Clear;
    ACBrCTe1.EventoCTe.LerXML(OpenDialog1.FileName);
    ACBrCTe1.ImprimirEvento;
  end;
end;

procedure TfCTePrincipal.btnIncCteClick(Sender: TObject);
var
  strEdita :string;
begin
  if(edtCodEmitente.Text = '') then
  begin
    MessageDlg('Inicie um Emitente .', mtInformation, [mbOK], 0);
    PageControl1.ActivePage := TabCteGeradas;
  end;

  dmPdv.busca_sql('SELECT SERIE_CTE ,ULTIMO_NUMERO FROM SERIES ' +
    ' WHERE MODELO = ' + QuotedStr('CT') +
    '   AND CODSERIE = ' + QuotedStr(edtCodEmitente.Text));
  if (dmPdv.sqBusca.FieldByName('ULTIMO_NUMERO').asInteger > 0) then
  begin
    edtSerieCte.Text := '';
    edtNumCte.Text := '';
    edtSerieCte.Text := dmPdv.sqBusca.FieldByName('serie_cte').AsString;
    edtNumCte.Text := IntToStr(dmPdv.sqBusca.FieldByName('ULTIMO_NUMERO').asInteger + 1);
  end;
  dataGerarCte.DateTime := now;
  edtCFOPBusca.ReadOnly := False;
  edtCFOP.ReadOnly := False;
  edtNatOpe.ReadOnly := False;
  btnGerar.Enabled := True;
  PageControl1.TabIndex := 0;
  edtCFOPBusca.SetFocus;
  StatusBar1.SimpleText := 'CTe Iniciada com Sucesso. MODO : INCLUSÃO' ;
  modoGravacao := 'INCLUIR';

  /// Começa aqui Correção dia 15/08/17
  if (dmCte.sqComp.Active)then
    dmCte.sqComp.Close;
  dmCte.sqComp.Params[0].AsInteger := 0;
  dmCte.sqComp.Open;

  if (dmCte.sqQC.Active)then
    dmCte.sqQC.Close;
  dmCte.sqQC.Params[0].AsInteger := 0;
  dmCte.sqQC.Open;

  if (dmCte.sqNFe.Active)then
    dmCte.sqNFe.Close;
  dmCte.sqNFe.Params[0].AsInteger := 0;
  dmCte.sqNFe.Open;

  if (dmCte.sqSeg.Active)then
    dmCte.sqSeg.Close;
  dmCte.sqSeg.Params[0].AsInteger := 0;
  dmCte.sqSeg.Open;

  if (dmCte.sqVeic.Active)then
    dmCte.sqVeic.Close;
  dmCte.sqVeic.Params[0].AsInteger := 0;
  dmCte.sqVeic.Open;

  if (dmCte.sqMot.Active)then
    dmCte.sqMot.Close;
  dmCte.sqMot.Params[0].AsInteger := 0;
  dmCte.sqMot.Open;

  {  if (dm.cdsNF.Active)then
      dm.cdsNF.Close;
    dm.cdsNF.Params[0].AsInteger := 0;
    dm.cdsNF.Open;}

  edtAntCHCTE.Text := '';

  if (not dmCte.cdsCte.Active)then
    dmCte.cdsCte.Open;
  dmCte.cdsCte.Append;

  VALPICMS.Text := FloatToStr(percent_icms);

  btnGravarCTe.Caption := 'Gravar CTE *';
end;

procedure TfCTePrincipal.btnIncluirNFeClick(Sender: TObject);
begin
  if (dmCte.cdsCTENPROT.AsString <> '') then
  begin
    MessageDlg('CTe Ja Enviada.', mtInformation, [mbOK], 0);
    exit;
  end;

  if(edtNumCte.Text = '') then
  begin
   MessageDlg('Inclua uma CTe', mtWarning,[mbOK],0);
   exit;
  end;
  if not(dmCte.sqNFe.Active)then
    dmCte.sqNFe.Active;
  dmCte.sqNFe.Params[0].AsInteger := val_genCte;
  dmCte.sqNFe.Open;
  dmCte.sqNFe.Edit;

  fNFe := TfNFe.Create(Application);
  try
    fNFe.btnEdita.Visible :=False;
    fNFe.ShowModal;
  finally
    fNFe.Free;
  end;
end;

procedure TfCTePrincipal.btnInutilizarClick(Sender: TObject);
var
 Modelo, Serie, Ano, NumeroInicial, NumeroFinal, Justificativa : String;
begin
  if not(InputQuery('WebServices Inutilização ', 'Ano',    Ano))
  then exit;
  if not(InputQuery('WebServices Inutilização ', 'Modelo', Modelo))
  then exit;
  if not(InputQuery('WebServices Inutilização ', 'Serie',  Serie))
  then exit;
  if not(InputQuery('WebServices Inutilização ', 'Número Inicial', NumeroInicial))
  then exit;
  if not(InputQuery('WebServices Inutilização ', 'Número Inicial', NumeroFinal))
  then exit;
  if not(InputQuery('WebServices Inutilização ', 'Justificativa', Justificativa))
  then exit;
  ACBrCTe1.WebServices.Inutiliza(edtEmitCNPJ.Text, Justificativa, StrToInt(Ano),
                                StrToInt(Modelo), StrToInt(Serie),
                                StrToInt(NumeroInicial), StrToInt(NumeroFinal));
  MemoResp.Lines.Text   := UTF8Encode(ACBrCTe1.WebServices.Inutilizacao.RetWS);
  memoRespWS.Lines.Text := UTF8Encode(ACBrCTe1.WebServices.Inutilizacao.RetWS);
end;

procedure TfCTePrincipal.btnListarCteClick(Sender: TObject);
begin
  if (dmCte.cdsCTE.State in [dsEdit, dsInsert]) then
  begin
    MessageDlg('Grave ou Cancele suas modificaçes antes de continuar.', mtInformation, [mbOK], 0);
    exit;
  end;
  modoGravacao := 'EDITAR';

  if(edtCodEmitente.Text = '') then
  begin
   MessageDlg('Inicie um Emitente .', mtInformation, [mbOK], 0);
   PageControl1.ActivePage := TabSheet4;
   exit
  end;

  dmCte.cdsCTE.Close;
  if not(dmCte.cdsCTE.Active)then
    dmCte.cdsCTE.Active;
  dmCte.cdsCTE.Params[0].AsInteger := StrToInt(edtCodEmitente.Text);
  dmCte.cdsCTE.Params[1].AsInteger := 0;
  dmCte.cdsCTE.Params[2].AsDate := DateTimePicker1.Date;
  dmCte.cdsCTE.Params[3].AsDate := DateTimePicker2.Date;
  dmCte.cdsCTE.Open;
end;

procedure TfCTePrincipal.btnPreVisuClick(Sender: TObject);
var   vAux : String;
begin
  vAux := edtNumCte.Text;
  ACBrCTe1.Conhecimentos.Clear;
  if (dm.cdsCTENPROT.AsString = '') then
  begin
    GerarCTe(vAux);
    ACBrCTe1.Conhecimentos.Items[0].GravarXML('','');
  end
  else begin
    OpenDialog1.Title := 'Selecione o CTe';
    OpenDialog1.DefaultExt := '*-cte.xml';
    OpenDialog1.Filter := 'Arquivos CTe (*-cte.xml)|*-cte.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
    OpenDialog1.InitialDir := ACBrCTe1.Configuracoes.Arquivos.PathSalvar;
  end;
  ACBrCTe1.Conhecimentos.Imprimir;
end;

procedure TfCTePrincipal.btnStatusServClick(Sender: TObject);
begin
  ACBrCTe1.WebServices.StatusServico.Executar;
  MemoResp.Lines.Text := UTF8Encode(ACBrCTe1.WebServices.StatusServico.RetWS);
  memoRespWS.Lines.Text := UTF8Encode(ACBrCTe1.WebServices.StatusServico.RetWS);
  //LoadXML(MemoResp);

  MemoDados.Lines.Add('');
  MemoDados.Lines.Add('Status Serviço');
  MemoDados.Lines.Add('tpAmb: '    +TpAmbToStr(ACBrCTe1.WebServices.StatusServico.tpAmb));
  MemoDados.Lines.Add('verAplic: ' +ACBrCTe1.WebServices.StatusServico.verAplic);
  MemoDados.Lines.Add('cStat: '    +IntToStr(ACBrCTe1.WebServices.StatusServico.cStat));
  MemoDados.Lines.Add('xMotivo: '  +ACBrCTe1.WebServices.StatusServico.xMotivo);
  MemoDados.Lines.Add('cUF: '      +IntToStr(ACBrCTe1.WebServices.StatusServico.cUF));
  MemoDados.Lines.Add('dhRecbto: ' +DateTimeToStr(ACBrCTe1.WebServices.StatusServico.dhRecbto));
  MemoDados.Lines.Add('tMed: '     +IntToStr(ACBrCTe1.WebServices.StatusServico.TMed));
  MemoDados.Lines.Add('dhRetorno: '+DateTimeToStr(ACBrCTe1.WebServices.StatusServico.dhRetorno));
  MemoDados.Lines.Add('xObs: '     +ACBrCTe1.WebServices.StatusServico.xObs);
end;

procedure TfCTePrincipal.btnValidarXMLClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o CTe';
  OpenDialog1.DefaultExt := '*-cte.xml';
  OpenDialog1.Filter := 'Arquivos CTe (*-cte.xml)|*-cte.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrCTe1.Configuracoes.Arquivos.PathSalvar;

  if OpenDialog1.Execute then
   begin
    ACBrCTe1.Conhecimentos.Clear;
    ACBrCTe1.Conhecimentos.LoadFromFile(OpenDialog1.FileName);
    ACBrCTe1.Conhecimentos.Validar;
    showmessage('Conhecimento de Transporte Eletrônico Valido');
   end;
end;

procedure TfCTePrincipal.Button11Click(Sender: TObject);
begin

end;

procedure TfCTePrincipal.comboEmpresaChange(Sender: TObject);
begin
  buscaEmpresa(comboEmpresa.Text);
end;

procedure TfCTePrincipal.edtXMLCodChange(Sender: TObject);
begin

end;

procedure TfCTePrincipal.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  if (dmCte.sqCTE.State in [dsInsert, dsEdit]) then
  begin
    btnGravarCTe.Click;
  end;
  GravarConfiguracao;
end;

procedure TfCTePrincipal.FormKeyPress(Sender: TObject; var Key: char);
begin
  if (key = #13) then
  begin
    key:= #0;
    SelectNext((Sender as TwinControl),True,True);
  end;
end;

procedure TfCTePrincipal.FormShow(Sender: TObject);
//var emp,nomexeC ,nomexebd : string ;
begin
  dmPdv.sqEmpresa.Open;
  while not dmPdv.sqEmpresa.Eof do
  begin
    comboEmpresa.Items.Add(dmPdv.sqEmpresaRAZAO.AsString);
    dmPdv.sqEmpresa.Next;
  end;

  LerConfiguracao;

  dmPdv.sqParametro.Open;
  While not  dmPdv.sqParametro.EOF do
  begin
    if (dmPdv.sqParametroPARAMETRO.AsString = 'EMPRESA') then
    begin
      nomexebd := dmPdv.sqParametroD1.Text;
      if(nomexebd <> 'Cte.exe') then
      begin
        if(nomexeC = 'ats_CTe.exe') then
        begin
          MessageDlg('Abra o Programa pelo Aplicativo Cte ' , mtInformation, [mbOK], 0);
          Application.Terminate;
        end;
      end;
      if(dmPdv.sqParametroINSTRUCOES.Text = 'A Licença de uso expirada.') then
      begin
        PageControl1.ActivePage := TabSheet44;
        comboEmpresa.Enabled    := False;
        btnListarCte.Enabled    := False;
        btnIncCte.Enabled       := False;
        btnEditarCte.Enabled    := False;
        btnDuplicarCTe.Enabled  := False;
        btnImpPeriodo.Enabled   := False;
        btnGerar.Enabled        := False;
        BitBtn1.Enabled         := False;
        btnGravarCTe.Enabled    := False;
        btnSalvarConfig.Enabled := False;
        SpeedButton1.Enabled    := False;
      end
      else begin
        DadosBasicos;
        CarregarUF;
      end;
    end;
  end;
  modoGravacao := 'EDITAR';
end;

procedure TfCTePrincipal.mmEmailMsgChange(Sender: TObject);
begin

end;

procedure TfCTePrincipal.PageControl2Exit(Sender: TObject);
begin

end;

procedure TfCTePrincipal.rgDestClick(Sender: TObject);
begin
  if rgDest.ItemIndex = 0 then
  begin
    GroupBoxDestinatario.Visible := False;
  end;

  if rgDest.ItemIndex <> 0 then
  begin
    GroupBoxDestinatario.Visible := True;
  end;
end;

procedure TfCTePrincipal.rgExpClick(Sender: TObject);
begin
  if rgExp.ItemIndex = 0 then
  begin
    GroupBoxExpeditor.Visible := False;
  end;

  if rgExp.ItemIndex = 1 then
  begin
    GroupBoxExpeditor.Visible := True;
  end;
end;

procedure TfCTePrincipal.rgRecClick(Sender: TObject);
begin
  if rgRec.ItemIndex = 0 then
  begin
    GroupBoxRecebedor.Visible := False;
  end;

  if rgRec.ItemIndex = 1 then
  begin
    GroupBoxRecebedor.Visible := True;
    edtRecBusca.Text     := '';
    edtRecNome.Text      := '';
    edtRecRazao.Text     := '';
    edtRecCNPJ.Text      := '';
    edtRecIE.Text        := '';
    edtRecFone.Text      := '';
    edtRecEnd.Text       := '';
    edtRecNum.Text       := '';
    edtRecCodCidade.Text := '';
    edtRecCidade.Text    := '';
    edtRecBairro.Text    := '';
    edtRecCep.TExt       := '';
    edtRecUF.Text        := '';
    EditarRe;
  end;
end;

procedure TfCTePrincipal.rgRemClick(Sender: TObject);
begin
  if rgRem.ItemIndex = 0 then
  begin
    GroupBoxRemetente.Visible := False;
  end;

  if rgRem.ItemIndex <> 0 then
  begin
    GroupBoxRemetente.Visible := True;
  end;
end;

procedure TfCTePrincipal.rgTomadorClick(Sender: TObject);
begin
  if rgTomador.ItemIndex = 4 then
  begin
    GroupBoxTomador.Visible := False;
  end;

  if rgTomador.ItemIndex <> 4 then
  begin
    GroupBoxTomador.Visible := True;
  end;
end;

procedure TfCTePrincipal.sbtnGetCertClick(Sender: TObject);
begin
  edtNumSerie.Text := ACBrCTe1.SSL.SelecionarCertificado;
end;

procedure TfCTePrincipal.sbtnLogoMarcaClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o Logo';
  OpenDialog1.DefaultExt := '*.bmp';
  OpenDialog1.Filter := 'Arquivos BMP (*.bmp)|*.bmp|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);

  if OpenDialog1.Execute then
  begin
    edtLogoMarca.Text := OpenDialog1.FileName;
  end;
end;

procedure TfCTePrincipal.sbtnPathSalvarClick(Sender: TObject);
var
 Dir : string;
begin
  if Length(edtPathLogs.Text) <= 0 then
    Dir := ExtractFileDir(application.ExeName)
  else
    Dir := edtPathLogs.Text;

 if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP) then
   edtPathLogs.Text := Dir;
end;

procedure TfCTePrincipal.StaticText13Click(Sender: TObject);
begin

end;

end.
