{$MODE DELPHI}

program ControleAcademico;

uses crt, Disciplina, Curso, Aluno, Matricula,ControleAluno;
//var i : byte;
//var pessoa : TPessoa;

var ODisciplina : TDisciplina;
var OCurso : TCurso;

BEGIN
	ODisciplina := TDisciplina.CreateCustom(701, 'CLP', 72.0, 10.0);
	writeln('Nome: ', ODisciplina.getFNome);

	OCurso := TCurso.CreateCustom(101, 'Ciência da Computacão' , 8);
	writeln('Nome: ', OCurso.getFNome);
END.
