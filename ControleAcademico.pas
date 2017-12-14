program ControleAcademico;
 {$MODE OBJFPC}

uses
  SysUtils,
  DisciplinaModel in 'DisciplinaModel.pas',
  AlunoModel in 'AlunoModel.pas',
  AlunoGerenciador in 'AlunoGerenciador.pas',
  CursoGerenciador in 'CursoGerenciador.pas',
  CursoModel in  'CursoModel.pas',
  MatriculaModel in 'MatriculaModel.pas',
  MatriculaGerenciador in 'MatriculaGerenciador.pas',
  DisciplinaGerenciador in 'DisciplinaGerenciador.pas';


var opcao:integer;
var dg:TDisciplinaGerenciador;
    alun:TAlunoGerenciador;
    cur: TCursoGerenciador;
    mat: TMatriculaGerenciador;
begin
  try
    dg := TDisciplinaGerenciador.Create;
    alun := TAlunoGerenciador.Create;
    cur := TCursoGerenciador.Create;
    mat := TMatriculaGerenciador.Create;
    repeat
      Writeln('Escolha uma opção');
      Writeln('1 - Gerenciar Disciplinas');
      Writeln('2 - Gerenciar Aluno');
      Writeln('3 - Gerenciar Cursos');
      Writeln('4 - Gerenciar Matricula');
      Writeln('0 - Sair');
      Readln(opcao);
      case opcao of
                1:   dg.gerenciar;
                2:   alun.gerenciar;
                3:   cur.gerenciar;
                4:   mat.gerenciar;
      end;
    until opcao = 0;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
