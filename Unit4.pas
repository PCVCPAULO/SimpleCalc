unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Classe.Calculadora, Classe.helpers,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Classe.Interfaces;

type
  TForm4 = class(TForm)
    et_value1: TEdit;
    ed_value2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ed_result: TEdit;
    Lb_teste: TLabel;
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    FCalculadora: iCalculadora;
    procedure exibeResultado(value: string);

  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin

  FCalculadora.Add(et_value1.Text).Add(ed_value2.Text).Subtrair().Executar;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  FCalculadora.Add(et_value1.Text).Add(ed_value2.Text).Multiplicar().Executar;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
  FCalculadora.Add(et_value1.Text).Add(ed_value2.Text).Dividir().Executar;
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
  FCalculadora.Add(et_value1.Text).Add(ed_value2.Text).Somar.Executar;
end;


procedure TForm4.exibeResultado(value: string);
begin
  ed_result.Text := value;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  FCalculadora := TCalculadora.new().Display.Resultado(exibeResultado)
    .EndDisplay();
end;

end.
