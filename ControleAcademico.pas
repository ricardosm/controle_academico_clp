program ControleAcademico;
 {$MODE OBJFPC}

uses
  SysUtils,
  DisciplinaModel in 'DisciplinaModel.pas',
  DisciplinaGerenciador in 'DisciplinaGerenciador.pas';

var opcao:integer;
var dg:TDisciplinaGerenciador;
begin
  try
    dg := TDisciplinaGerenciador.Create;
    repeat
      Writeln('Escolha uma opção');
      Writeln('1 - Gerenciar Disciplinas');
      Writeln('0 - Sair');
      Readln(opcao);
      case opcao of
                1:   dg.gerenciar;
      end;
    until opcao = 0;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
