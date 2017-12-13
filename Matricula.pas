{$MODE DELPHI}

unit Matricula;

interface

uses
  crt, Classes, SysUtils, Disciplina, Aluno;

type 	
	TMatricula = class(TObject)
	private 
		FNumero: integer;
		FAluno: TAluno;
		FPeriodo: string;
		FValorTotal: real;
		FDisciplinasMatriculadas: array of TDisciplina; 
	public
		constructor CreateCustom(numero: integer; aluno: TAluno; periodo: string);
		
		function getFNumero : integer;
		procedure setFNumero(numero : integer);
		function getFAluno : TAluno;
		procedure setFAluno(aluno : TAluno);
		function getFPeriodo : string;
		procedure setFPeriodo(periodo : string);
		function getFValorTotal : real;
		procedure setFValorTotal();
		function getDisciplinaMatriculada(i : integer) : TDisciplina;
		function getNumeroDisciplinasMatriculadas : integer;
				
end;		

implementation
	constructor TMatricula.CreateCustom(numero: integer; aluno: TAluno; periodo: string);
	begin
		FNumero := numero;
		FAluno := aluno;
		FPeriodo := periodo;
		
		SetLength(FDisciplinasMatriculadas, 7);
		
	end;
	
	function TMatricula.getFNumero() : integer;
	begin
		Result := FNumero;
	end;
	
	procedure TMatricula.setFNumero(numero : integer);
	begin
		FNumero := numero;
	end;

	function TMatricula.getFAluno() : TAluno;
	begin
		Result := FAluno;
	end;
	
	procedure TMatricula.setFAluno(aluno : TAluno);
	begin
		FAluno := aluno;
	end;		
			
	
	function TMatricula.getFPeriodo() : string;
	begin
		Result := FPeriodo;
	end;
	
	procedure TMatricula.setFPeriodo(periodo : string);
	begin
		FPeriodo := periodo;
	end;
	
	function TMatricula.getFValorTotal() : real;
	begin
		Result := FValorTotal;
	end;
	
	procedure TMatricula.setFValorTotal();
	begin
		
	end;
	
	function TMatricula.getDisciplinaMatriculada(i : integer) : TDisciplina;
	begin
		Result := FDisciplinasMatriculadas[i];
	end;
	
	function TMatricula.getNumeroDisciplinasMatriculadas : integer;
	begin 
		Result := High(FDisciplinasMatriculadas);
	end;
	
BEGIN	
	
END.


