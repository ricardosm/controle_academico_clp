unit AlunoModel;
 {$MODE OBJFPC}
interface

uses
Classes, SysUtils,
CursoModel in 'CursoModel.pas';

type
	TAlunoModel = class

	public
    curs: TCursoModel;
		FNome: string;
		FEmail: string;
		FRa: integer;
		constructor Create;
		function getFNome : string;
		procedure setFNome(nome : string);
		function getFEmail : string;
		procedure setFEmail(email : string);
    function getFRa : integer;
		procedure setFRa(ra : integer);

  end;
implementation
	constructor TAlunoModel.Create;
	begin
		inherited Create;
		curs:= TCursoModel.Create;
	end;
	function TAlunoModel.getFNome() : string;
	begin
		Result := FNome;
	end;

	procedure TAlunoModel.setFNome(nome : string);
	begin
		FNome := nome;
	end;

	function TAlunoModel.getFEmail() : string;
	begin
		Result := FEmail;
	end;

	procedure TAlunoModel.setFEmail(email : string);
	begin
		FEmail := email;
	end;

  function TAlunoModel.getFRa() : integer;
	begin
		Result := FRa;
	end;

	procedure TAlunoModel.setFRa(ra : integer);
	begin
		FRa := ra;
	end;
end.
