{$MODE DELPHI}

unit Disciplina;

interface

uses
  crt, Classes, SysUtils;

type
	TDisciplina = class(TObject)
	private
		FCodigo: integer;
		FNome: string;
		FCargaHoraria: real;
		FValor: real;
	public
		constructor CreateCustom(codigo: integer; nome: string; cargaHoraria: real; valor: real);

		function getFCodigo : integer;
		procedure setFCodigo(codigo : integer);
		function getFNome : string;
		procedure setFNome(nome : string);
		function getFCargaHoraria : real;
		procedure setFCargaHoraria(cargaHoraria : real);
		function getFValor : real;
		procedure setFValor(valor : real);

end;

implementation
	constructor TDisciplina.CreateCustom(codigo: integer; nome: string; cargaHoraria: real; valor: real);
	begin
		FCodigo := codigo;
		FNome := nome;
		FCargaHoraria := cargaHoraria;
		FValor := valor;
	end;

	function TDisciplina.getFCodigo() : integer;
	begin
		Result := FCodigo;
	end;

	procedure TDisciplina.setFCodigo(codigo : integer);
	begin
		FCodigo := codigo;
	end;

	function TDisciplina.getFNome() : string;
	begin
		Result := FNome;
	end;

	procedure TDisciplina.setFNome(nome : string);
	begin
		FNome := nome;
	end;

	function TDisciplina.getFCargaHoraria() : real;
	begin
		Result := FCargaHoraria;
	end;

	procedure TDisciplina.setFCargaHoraria(cargaHoraria : real);
	begin
		FCargaHoraria := cargaHoraria;
	end;

	function TDisciplina.getFValor() : real;
	begin
		Result := FValor;
	end;

	procedure TDisciplina.setFValor(valor : real);
	begin
		FValor := valor;
	end;

BEGIN

END.
