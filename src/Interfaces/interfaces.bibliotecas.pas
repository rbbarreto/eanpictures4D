unit interfaces.bibliotecas;

interface

type
  ibibliotecas = interface
    ['{4846AFC3-4B5A-4BB9-A95B-2DF98C8A61D8}']
    function SomenteNumero(snum: string): string;
    function removeacento(const ptext: string):string;
  end;

implementation

end.
