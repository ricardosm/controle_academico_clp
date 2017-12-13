{$MODE DELPHI}

unit Curso;

interface

uses
  crt, Classes, SysUtils, Disciplina;

type 
	ArrayOfDisciplina = array of TDisciplina;
	
	TCurso = class(TObject)
	private 
		FCodigo: integer;
		FNome: string;
		FDuracao: integer;
		FDisciplinas : array of ArrayOfDisciplina; 
	public
		constructor CreateCustom(codigo: integer; nome: string; duracao: integer);
		
		function getFCodigo : integer;
		procedure setFcodigo(codigo : integer);
		function getFNome : string;
		procedure setFNome(nome : string);
		function getFDuracao : integer;
		procedure setFDuracao(duracao : integer);
		function setDisciplina(semestre: integer; disciplina: TDisciplina) : boolean;
				
end;		

implementation
	constructor TCurso.CreateCustom(codigo: integer; nome: string; duracao: integer);
	var i : integer;
	begin
		FCodigo := codigo;
		FNome := nome;
		FDuracao := duracao;
		SetLength(FDisciplinas, duracao);
		
		for i := Low(FDisciplinas) to High(FDisciplinas) do
			SetLength(FDisciplinas[i], duracao);
		
	end;
	
	function TCurso.getFCodigo() : integer;
	begin
		Result := FCodigo;
	end;
	
	procedure TCurso.setFCodigo(codigo : integer);
	begin
		FCodigo := codigo;
	end;

	function TCurso.getFNome() : string;
	begin
		Result := FNome;
	end;
	
	procedure TCurso.setFNome(nome : string);
	begin
		FNome := nome;
	end;
	
	function TCurso.getFDuracao() : integer;
	begin
		Result := FDuracao;
	end;
	
	procedure TCurso.setFDuracao(duracao : integer);
	begin
		FDuracao := duracao;
	end;
	
	function TCurso.setDisciplina(semestre: integer; disciplina: TDisciplina) : boolean;
	var linha : integer;
	begin
		
		
		Result := true;
	end;
	
BEGIN	
	
END.

