program Project4;

uses
  Vcl.Forms,
  Unit4 in 'Unit4.pas' {Form4},
  Classe.Calculadora in 'Classe.Calculadora.pas',
  Classe.Interfaces in 'Classe.Interfaces.pas',
  Classe.helpers in 'Classe.helpers.pas',
  Classe.Dividir in 'Classe.Dividir.pas',
  Classe.Somar in 'Classe.Somar.pas',
  Classe.Subtrair in 'Classe.Subtrair.pas',
  Classe.Multiplicar in 'Classe.Multiplicar.pas',
  Classe.Operacoes in 'Classe.Operacoes.pas',
  Classe.Eventos in 'Classe.Eventos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
