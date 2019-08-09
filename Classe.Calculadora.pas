unit Classe.Calculadora;

interface

uses
  Vcl.Controls, Classe.Interfaces, Classe.helpers, Classe.Dividir, Classe.Somar,
  Classe.Subtrair, Classe.Multiplicar, System.Generics.Collections,
  Classe.Eventos;

type

  TCalculadora = class(TInterfacedObject, iCalculadora, iCalculadoraDisplay)
  private
    FLista: TList<Double>;
    FDisplay: TEventDisplay;
  public
    function Dividir: iOperacao;
    function Multiplicar: iOperacao;
    function Subtrair: iOperacao;
    function Somar: iOperacao;
    constructor create;
    destructor destroy; override;
    class function new: iCalculadora;
    function Display : iCalculadoraDisplay;
    function Add(value: string): iCalculadora; overload;
    function Add(value: integer): iCalculadora; overload;
    function Add(value: currency): iCalculadora; overload;
    function Resultado(value: TEventDisplay): iCalculadoraDisplay;
    function EndDisplay: iCalculadora;
  end;

implementation

uses
  System.SysUtils;

{ TCalculadora }

function TCalculadora.Add(value: string): iCalculadora;
begin
  Result := self;
  FLista.Add(value.ToDouble());
end;

function TCalculadora.Add(value: integer): iCalculadora;
begin
  Result := self;
  FLista.Add(value.ToDouble);
end;

function TCalculadora.Add(value: currency): iCalculadora;
begin
  Result := self;
  FLista.Add(value);

end;

constructor TCalculadora.create;
begin
  FLista := TList<Double>.create();
end;

destructor TCalculadora.destroy;
begin
  FLista.destroy;
  inherited;

end;

function TCalculadora.Display: iCalculadoraDisplay;
begin
  Result := Self;
end;

function TCalculadora.Dividir: iOperacao;
begin
  Result := TDividir.new(FLista).Display.Resultado(FDisplay).EndDisplay();
end;

function TCalculadora.EndDisplay: iCalculadora;
begin
  Result := self;
end;

function TCalculadora.Multiplicar: iOperacao;
begin
  Result := TMultiplicar.new(FLista).Display.Resultado(FDisplay).EndDisplay();
end;

class function TCalculadora.new: iCalculadora;
begin
  Result := self.create;
end;

function TCalculadora.Resultado(value: TEventDisplay): iCalculadoraDisplay;
begin
  FDisplay := value;
  Result := self;

end;

function TCalculadora.Somar: iOperacao;
begin
  Result := TSoma.new(FLista).Display.Resultado(FDisplay).EndDisplay();
end;

function TCalculadora.Subtrair: iOperacao;
begin
  Result := TSubtrair.new(FLista).Display.Resultado(FDisplay).EndDisplay();
end;

end.
