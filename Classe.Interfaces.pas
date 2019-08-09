unit Classe.Interfaces;

interface

uses Classe.Eventos;

type
  iCalculadora = interface;
  iOperacoesDisplay = interface;

  iOperacao = interface
    ['{28D8927A-A058-4D00-BA13-504165708AB5}']
    function Executar: string; overload;
    function Display : iOperacoesDisplay;
  end;

  iOperacoesDisplay = interface
    ['{9C3CAB76-75A0-4290-BCFA-A7B0892A3E52}']
    function Resultado(value : TEventDisplay) : iOperacoesDisplay;
    function EndDisplay : iOperacao;
  end;

  iCalculadoraDisplay = interface
    ['{C005F08A-6B27-45AE-BEFD-ECC90A8C744B}']
    function Resultado(value: TEventDisplay): iCalculadoraDisplay;
      overload;
    function EndDisplay: iCalculadora; overload;
  end;

  iCalculadora = interface
    ['{DD6D1506-EFE0-4F08-8531-017933C3F598}']
    function Add(value: string): iCalculadora; overload;
    function Add(value: integer): iCalculadora; overload;
    function Add(value: currency): iCalculadora; overload;
    function Dividir: iOperacao;
    function Multiplicar: iOperacao;
    function Subtrair: iOperacao;
    function Somar: iOperacao;
    function Display : iCalculadoraDisplay;
  end;

implementation

end.
