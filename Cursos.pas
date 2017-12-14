{$MODE DELPHI}


unit Cursos;

interface
uses
  crt, contnrs,Classes, SysUtils, Curso, Disciplinas;

type
	TCursos = class
	private
		FCursosLists: array of TCurso;
		qtdecursos:integer;

	public
		constructor CreateCustom;
		procedure gerenciar;
		procedure listar;
		procedure adicionar;



end;

implementation

constructor TCursos.CreateCustom;
begin
  
	setLength(FCursosLists,20);
	qtdecursos:=0;
end;

procedure TCursos.gerenciar;
	var opcao : integer;
	begin
		repeat
			writeln('1 - Listar Cursos');
			writeln('2 - Novo Curso');
			writeln('3 - Editar Curso');
			writeln('4 - Excluir Curso');
			writeln('0 - Voltar ao Menu Anterior');
			readln(opcao);
			case opcao of
			1: listar;
			2: adicionar;

			end;
		until opcao = 0;
	end;



procedure TCursos.adicionar;
	var c : TCurso;
	var tempInt: integer;
      tempdici : integer;
      tempcur : integer;
	var tempstring: string;
	begin
		writeln('Digite o codigo do curso:');
		readln(tempInt);
		writeln('Digite o nome do curso:');
		readln(tempstring);
    writeln('Digite a duração do curso:');
		readln(tempcur);
    writeln('Digite a quantidade de disciplinas:');
		readln(tempdici);
		c := TCurso.CreateCustom(tempInt,tempstring,tempcur,tempdici);
		//inserir as disciplinas
    FCursosLists[qtdecursos] := c;
		qtdecursos := qtdecursos+1;
	end;

procedure TCursos.listar;
	var i:integer;
	begin
		for i:=1 to 6 do
		begin

		end;
	end;
end.
