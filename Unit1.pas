unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, DateUtils, System.Math, Vcl.Menus, Vcl.ComCtrls,
  System.UITypes, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, SkinAzul, dxSkinSpringtime,
  dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinWXI,
  dxSkinXmas2008Blue, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  cxControls, cxContainer, cxEdit, dxCore, cxDateUtils, cxClasses, dxSkinsForm,
  dxToggleSwitch, cxCheckBox, cxLabel, cxDropDownEdit, cxSpinEdit, cxTextEdit,
  cxMaskEdit, cxCalendar, cxCustomListBox, cxListBox, cxButtons;


type
  TForm1 = class(TForm)
    BtGenerar: TcxButton;
    ListbFechasEnvio: TcxListBox;
    DeFechaInicio: TcxDateEdit;
    SeCantComprada: TcxSpinEdit;
    SeCantEnviar: TcxSpinEdit;
    CbFrecuencia: TcxComboBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    CkbExcluirSabado: TcxCheckBox;
    CkbExcluirDomingo: TcxCheckBox;
    CbSkins: TcxComboBox;
    dxToggleSwitch1: TdxToggleSwitch;
    dxSkinController1: TdxSkinController;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    procedure BtGenerarClick(Sender: TObject);
    procedure dxToggleSwitch1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CbSkinsPropertiesChange(Sender: TObject);
  private
    procedure CambiaColorLabel(SkinName : string);
    function StringInArray(const Valor : string; const ArrayValores : array of string) : Boolean;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses dxSkinsLookAndFeelPainter, dxSkinsdxNavBarPainter, dxNavBarConsts;

procedure TForm1.BtGenerarClick(Sender: TObject);
var
  FechaEnvio : TDate;
  CantidadRestante, CantidadPorEnvio, IntervaloDias : Integer;
  ExcluirSabado, ExcluirDomingo : Boolean;
begin
  if SeCantComprada.Value = 0 then
    begin
      MessageDlg('Debe especificar la Cantidad Comprada.' +#13+
                 'Por favor verifique', TMsgDlgType.mtWarning, [mbOK], 0);
      Exit;
    end;

  if SeCantEnviar.Value = 0 then
    begin
      MessageDlg('Debe especificar la Cantidad a Enviar.' +#13+
                 'Por favor verifique', TMsgDlgType.mtWarning, [mbOK], 0);
      Exit;
    end;

  if DeFechaInicio.Text = EmptyStr then
    begin
      MessageDlg('Debe especificar la Fecha de inicio del Envio.' +#13+
                 'Por favor verifique', TMsgDlgType.mtWarning, [mbOK], 0);
      Exit;
    end;

  ListbFechasEnvio.Items.Clear;
  FechaEnvio       := DeFechaInicio.Date;
  CantidadRestante := SeCantComprada.Value;
  CantidadPorEnvio := SeCantEnviar.Value;
  IntervaloDias    := 0;

   case CbFrecuencia.ItemIndex of
     0 : IntervaloDias := 1;   // Diario: 1 día
     1 : IntervaloDias := 2;   // Interdiario: 2 días
     2 : IntervaloDias := 7;   // Semanal: 7 días
     3 : IntervaloDias := 4;   // Bisemanal: 3-4 días (depende de cómo se distribuyan dentro de la semana)
     4 : IntervaloDias := 15;   // Quincenal: 15 días
     5 : IntervaloDias := DaysInMonth(DeFechaInicio.Date); // Mensual: 30 o 31 días (dependiendo del mes)
     6 : IntervaloDias := 60;   // Bimensual: 60 o 61 días (dependiendo de los meses involucrados)
   end;

  ExcluirSabado  := CkbExcluirSabado.Checked;
  ExcluirDomingo := CkbExcluirDomingo.Checked;

  while CantidadRestante > 0 do
    begin
      // Verificar si se debe excluir el sábado o domingo
      if (DayOfTheWeek(FechaEnvio) = 6) and ExcluirSabado then // Si es sábado y se debe excluir
        FechaEnvio := IncDay(FechaEnvio, 1)      // saltar al siguiente día
      else
        if (DayOfTheWeek(FechaEnvio) = 7) and ExcluirDomingo then // Si es domingo y se debe excluir
          FechaEnvio := IncDay(FechaEnvio, 1)    // saltar al siguiente día
        else
          begin
            // Registrar y Mostrar las fechas generadas y la cantidad de botellones a enviar
            ListbFechasEnvio.Items.Add(Format('Fecha de Envío : %s - Botellones : %d',
                                       [DateToStr(FechaEnvio), Min(CantidadPorEnvio, CantidadRestante)]));

            // Restar la cantidad enviada
            CantidadRestante := CantidadRestante - CantidadPorEnvio;

            // Calcular la siguiente fecha de envío
            FechaEnvio := IncDay(FechaEnvio, IntervaloDias);
          end;
    end;


{

  OTRA VARIANTE :

var
  EnvioCount : Integer;
  EnvioCount := 1;

while CantidadRestante > 0 do
  begin
    if CantidadRestante < CantidadPorEnvio then
    begin
      CantidadPorEnvio := CantidadRestante; // Ajusta la cantidad de envío a la cantidad restante
    end;

    // Verifica si el día de envío es sábado o domingo y si deben excluirse
    if (DayOfTheWeek(FechaEnvio) = DaySaturday) and ExcluirSabado then
      begin
        FechaEnvio := IncDay(FechaEnvio, 1); // Salta el sábado
        Continue;
      end;

    if (DayOfTheWeek(FechaEnvio) = DaySunday) and ExcluirDomingo then
      begin
        FechaEnvio := IncDay(FechaEnvio, 1); // Salta el domingo
        Continue;
      end;

    ListbFechasEnvio.Items.Add(Format('Envio %d: %s - %d botellones', [EnvioCount, DateToStr(FechaEnvio), CantidadPorEnvio]));

    FechaEnvio       := IncDay(FechaEnvio, IntervaloDias);
    CantidadRestante := CantidadRestante - CantidadPorEnvio;
    EnvioCount       := EnvioCount + 1;
  end;

}


end;

procedure TForm1.CbSkinsPropertiesChange(Sender: TObject);
begin
  dxSkinController1.SkinName := CbSkins.Text;
  CambiaColorLabel(CbSkins.Text);
end;

procedure TForm1.dxToggleSwitch1Click(Sender: TObject);
var
  Ruta : string;
begin
  Ruta := ExtractFilePath(Application.ExeName);

  if dxToggleSwitch1.Checked then
    begin
      dxSkinController1.SkinName := 'VisualStudio2013Dark';
      dxToggleSwitch1.Caption    := 'Modo Oscuro';
      dxToggleSwitch1.Properties.StateIndicator.OnGlyph.LoadFromFile(Ruta + 'icons\moon white 24x24.png');

      CbSkins.Enabled := False;
    end
  else
    begin
      if CbSkins.Text <> EmptyStr then
        dxSkinController1.SkinName := CbSkins.Text
      else
        begin
          dxSkinController1.SkinName := 'VisualStudio2013Light';
          dxToggleSwitch1.Caption    := 'Modo Claro';
          dxToggleSwitch1.Properties.StateIndicator.OnGlyph.LoadFromFile(Ruta + 'icons\moon black 24x24.png');
        end;

      CbSkins.Enabled := True;
    end;

  CambiaColorLabel(dxSkinController1.SkinName);
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  I : Integer;
begin
  //CARGAMOS LOS SKINS DE LAS DEVELOPER EXPRESS

  //SE CARGAN TODOS LOS SKINS EN EL COMBOBOX
  for I:= 0 to cxLookAndFeelPaintersManager.Count - 1 do
    if cxLookAndFeelPaintersManager.Items[I] is TdxSkinLookAndFeelPainter then
      CbSkins.Properties.Items.Add(cxLookAndFeelPaintersManager.Items[I].LookAndFeelName);
end;

procedure TForm1.CambiaColorLabel(SkinName : string);
const
  SkinsOcuros : array[1..2] of string = ('DevExpressDarkStyle','VisualStudio2013Dark');

var
  I : Integer;
begin
//  dxSkinController1.SkinName := SkinName;

  for I := 0 to Self.ComponentCount - 1 do
    begin
      if Self.Components[I] is TcxLabel then
        with Self.Components[I] as TcxLabel do
          begin
            if StringInArray(SkinName, SkinsOcuros) then
              Style.TextColor := clWhite
            else
              Style.TextColor := clBlack;
          end;
    end;
end;

function TForm1.StringInArray(const Valor : string; const ArrayValores : array of string) : Boolean;
var
  I : Integer;
begin
  Result := False;
  for I := Low(ArrayValores) to High(ArrayValores) do
  begin
    if ArrayValores[I] = Valor then
      begin
        Result := True;
        Break;
      end;
  end;
end;


end.
