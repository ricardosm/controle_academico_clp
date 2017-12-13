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
		constructor Create();
		procedure gerenciar;
		procedure listar;
		procedure adicionar;
		
		

end;

implementation

constructor TCursos.Create();
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
	var tempstring: string;
	begin
		c := TCurso.Create;
		writeln('Digite o codigo do curso:');
		readln(tempInt);
		c.setFCodigo(tempInt);
		writeln('Digite o nome do curso:');
		readln(tempstring);
		c.setFNome(tempstring);
		writeln('Digite a duração do curso:');
		readln(tempint);
		writeln('Digite a duração do curso:');
		c.setFDuracao(tempint);
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