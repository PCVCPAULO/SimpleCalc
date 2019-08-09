unit Classe.Operacoes;

interface

uses
  Classe.Interfaces, System.Generics.Collections, Classe.Eventos;

type

  TOperacoes = class(TInterfacedObject, iOperacao, iOperacoesDisplay)

  protected
    FLista: TList<Double>;
    FEvDisplay: TEventDisplay;
    procedure DisplayTotal(value: string);
  public
    function Executar: string; overload; virtual;
    function Resultado(value: TEventDisplay): iOperacoesDisplay;
    function EndDisplay: iOperacao;
    function Display: iOperacoesDisplay;

  end;

implementation

{ TOperacoes }

function TOperacoes.Display: iOperacoesDisplay;
begin
  Result := self;
end;

procedure TOperacoes.DisplayTotal(value: string);
begin
  if Assigned(FEvDisplay) then
    FEvDisplay(value);
end;

function TOperacoes.EndDisplay: iOperacao;
begin
  Result := self;

end;

function TOperacoes.Executar: string;
begin
  FLista.Clear();
end;

function TOperacoes.Resultado(value: TEventDisplay): iOperacoesDisplay;
begin
  FEvDisplay := value;
  Result := self;
end;

end.
