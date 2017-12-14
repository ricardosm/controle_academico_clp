{$MODE DELPHI}

program ControleAcademico;

uses crt, Disciplina, Cursos, Curso, Aluno, Matricula,ControleAluno, ControleMatricula;
//var i : byte;
//var pessoa : TPessoa;

var ODisciplina : TDisciplina;
var OCursos : TCursos;
var opcaoPrincipal,OpcaoSecundaria:Integer;
BEGIN
	repeat
		writeln('Escolha uma opção para gerenciar:');
		writeln('1 - Cursos');
		writeln('2 - Disciplinas');
		writeln('3 - Alunos');
		writeln('4 - Matriculas');
		writeln('0 - Sair');
		readln(opcaoPrincipal);

		case opcaoPrincipal of
			1:
			BEGIN
				OCursos.Create();
				OCursos.gerenciar;
			END;

			2:
			BEGIN

			END;
		end;

	until opcaoPrincipal = 0;


END.
