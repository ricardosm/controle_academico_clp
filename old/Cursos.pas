unit Cursos;
interface
  uses
    System.SysUtils, Classes,
    Curso;
  Type
  TCursos = class
    private
      FLista : TList;
    public
      constructor Create;
      procedure Adicionar(pcurso : TCurso);
      procedure Remover(Index:integer);
      function Count:integer;
      procedure gerenciar;
  end;
{ TCursos }
implementation
  constructor TCursos.Create;
  begin
    inherited Create;
    FLista := TList.Create;
  end;

  procedure TCursos.Adicionar(pcurso: TCurso);
  begin

  end;

  function TCursos.Count: integer;
  begin

  end;


  procedure TCursos.gerenciar;
  var opcao:Integer;
  begin
    repeat
      Writeln('1 - Cadastrar Curso');
      Writeln('0 - Voltar');
      Readln(opcao);
    until (opcao = 0);

  end;

procedure TCursos.Remover(Index: integer);
  begin

  end;

end.
