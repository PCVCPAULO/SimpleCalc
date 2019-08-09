unit Classe.Subtrair;

interface

uses
  Classe.Interfaces, Classe.helpers, System.SysUtils, Classe.Operacoes,
  System.Generics.Collections;

type
  TSubtrair = class(TOperacoes)
    function Executar: string; override;
    class function new(var value: TList<Double>): iOperacao;
    constructor create(var value: TList<Double>);
  end;

implementation

{ TSubrair }

class function TSubtrair.new(var value: TList<Double>): iOperacao;
begin
  Result := Self.create(value);
end;

constructor TSubtrair.create(var value: TList<Double>);
begin
  FLista := value;
end;

function TSubtrair.Executar: string;
var
  resultado: Double;
  I: Integer;
begin
   resultado := FLista[0];
   for I := 1 to FLista.Count - 1 do
   begin
   resultado := resultado - FLista[I];
   end;
   Result := resultado.ToString;
   DisplayTotal(Result);
  inherited;
end;

end.
