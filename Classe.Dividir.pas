unit Classe.Dividir;

interface

uses Classe.Interfaces, Classe.Operacoes, System.Generics.Collections;

type
  TDividir = class(TOperacoes)
    function Executar: string; override;
    class function new(var value : TList<Double>): iOperacao;
    constructor create(var value : TList<Double>);
  private

  end;

implementation

uses
  System.SysUtils;

class function TDividir.new(var value : TList<Double>): iOperacao;
begin
  Result := Self.Create(value);
end;

constructor TDividir.create(var value: TList<Double>);
begin
  FLista := value
end;

function TDividir.Executar: string;
var
  resultado: Double;
  I: Integer;
begin
  resultado := FLista[0];
  for I := 1 to FLista.Count - 1 do
  begin
    resultado := resultado / FLista[I];
  end;
  Result := resultado.ToString;
  DisplayTotal(Result);
  inherited;
end;

end.
