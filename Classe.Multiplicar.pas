unit Classe.Multiplicar;

interface

uses
  Classe.Operacoes, Classe.helpers, System.SysUtils, Classe.Interfaces,
  System.Generics.Collections;

type
  TMultiplicar = class(TOperacoes)

  public
    class function new(var value: TList<Double>): iOperacao;
    constructor create(var value: TList<Double>);
    function Executar: string; override;
  end;

implementation

constructor TMultiplicar.create(var value: TList<Double>);
begin
  FLista := value;
end;

function TMultiplicar.Executar: string;
var
  resultado: Double;
  I: Integer;
begin

  resultado := FLista[0];
  for I := 1 to FLista.Count - 1 do
  begin
    resultado := (resultado * FLista[I]);
  end;

  Result := resultado.ToString;
  DisplayTotal(Result);
  inherited;
end;

class function TMultiplicar.new(var value: TList<Double>): iOperacao;
begin
  Result := Self.create(value);
end;

end.
