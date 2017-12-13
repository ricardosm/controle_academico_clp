{$MODE DELPHI}

unit Aluno;

interface

uses
	crt, Classes, SysUtils, Curso;

type 
	TAluno = class(TObject)
	private 
		FRA: integer;
		FNome: string;
		FEmail: string;
		FCurso: TCurso; 
	public
		constructor CreateCustom(ra: integer; nome: string; email: string; curso: TCurso);
		
		function getFRA : integer;
		procedure setFRA(ra : integer);
		function getFNome : string;
		procedure setFNome(nome : string);
		function getFEmail : string;
		procedure setFEmail(email : string);
		function getFCurso : TCurso;
		procedure setFCurso(curso : TCurso);
				
end;		

implementation
	constructor TAluno.CreateCustom(ra: integer; nome: string; email: string; curso: TCurso);
	begin
		FRA := ra;
		FNome := nome;
		FEmail := email;
		FCurso := curso;
	end;
	
	function TAluno.getFRA() : integer;
	begin
		Result := FRA;
	end;
	
	procedure TAluno.setFRA(ra : integer);
	begin
		FRA := ra;
	end;
	
	function TAluno.getFNome() : string;
	begin
		Result := FNome;
	end;
	
	procedure TAluno.setFNome(nome : string);
	begin
		FNome := nome;
	end;
	
	function TAluno.getFEmail() : string;
	begin
		Result := FEmail;
	end;
	
	procedure TAluno.setFEmail(email : string);
	begin
		FEmail := email;
	end;
	
	function TAluno.getFCurso() : TCurso;
	begin
		Result := FCurso;
	end;
	
	procedure TAluno.setFCurso(curso : TCurso);
	begin
		FCurso := curso;
	end;
	
BEGIN	
	
END.

