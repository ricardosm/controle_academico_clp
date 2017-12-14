unit Matricula;

interface

uses
Classes, SysUtils, Disciplina, Aluno;

type
	TMatricula = class(TObject)
	private
		FNumero: integer;
		FAluno: TAluno;
		FPeriodo: string;
		FValorTotal: real;
		FDisciplinasMatriculadas: array of TDisciplina;
    FTamanho: integer;
	public
		constructor CreateCustom(numero: integer; aluno: TAluno; periodo: string);

		function getFNumero : integer;
		procedure setFNumero(numero : integer);
		function getFAluno : TAluno;
		procedure setFAluno(aluno : TAluno);
		function getFPeriodo : string;
		procedure setFPeriodo(periodo : string);
		function getFValorTotal : real;
		procedure setFValorTotal(total : real);
		function getDisciplinaMatriculada(i : integer) : TDisciplina;
		function getNumeroDisciplinasMatriculadas : integer;
    procedure deletDisciplina(i : string);
    procedure insertDisciplina(nome : string; codig : integer;periodo : real;valor : real);

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

	procedure TMatricula.setFValorTotal(total : real);
	begin
    FValorTotal := total;
	end;

	function TMatricula.getDisciplinaMatriculada(i : integer) : TDisciplina;
	begin
		Result := FDisciplinasMatriculadas[i];
	end;

	function TMatricula.getNumeroDisciplinasMatriculadas : integer;
	begin
		Result := High(FDisciplinasMatriculadas);
	end;

  procedure TMatricula.deletDisciplina(i : string);
  begin
    FTamanho:= 0;
    while FTamanho < getNumeroDisciplinasMatriculadas() do
    begin
      if i = FDisciplinasMatriculadas[FTamanho].getFNome() then
        FDisciplinasMatriculadas[FTamanho].Free;
      FTamanho:= FTamanho+1;
    end;
  end;

  procedure TMatricula.insertDisciplina(nome : string; codig : integer;periodo : real;valor : real);
  begin
    FTamanho:= 0;
    while FTamanho < getNumeroDisciplinasMatriculadas() do
    begin
      if FDisciplinasMatriculadas[FTamanho] = nil then
        FDisciplinasMatriculadas[FTamanho].setFNome(nome);
        FDisciplinasMatriculadas[FTamanho].setFCodigo(codig);
        FDisciplinasMatriculadas[FTamanho].setFCargaHoraria(periodo);
        FDisciplinasMatriculadas[FTamanho].setFValor(valor);
      FTamanho:= FTamanho+1;
    end;

  end;

BEGIN

END.
