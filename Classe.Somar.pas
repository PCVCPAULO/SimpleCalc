unit Classe.Somar;

interface

uses
  Classe.interfaces, Classe.helpers, System.SysUtils, Classe.Operacoes,
  System.Generics.Collections;

type
  TSoma = class(TOperacoes)
    function Executar: string; override;
    class function new(var value: TList<Double>): iOperacao;
    constructor create(var value: TList<Double>);
  end;

implementation

uses
  Vcl.Dialogs;

constructor TSoma.create(var value: TList<Double>);
begin
  FLista := value;
end;

function TSoma.Executar: string;
var
  resultado: Double;
  I: Integer;
begin

  resultado := FLista[0];
  for I := 1 to FLista.Count - 1 do
  begin
    resultado := resultado + FLista[I];
  end;
  Result := resultado.ToString;
  DisplayTotal(Result);
  inherited;
end;

class function TSoma.new(var value: TList<Double>): iOperacao;
begin
  Result := Self.create(value);
end;

end.
