unit MatriculaModel;
{$MODE OBJFPC}
interface
uses
Classes, SysUtils,
AlunoModel in 'AlunoModel.pas';
  type
  TMatriculaModel = class

  public
  public
    FCodigo: integer;
		alun: TAlunoModel;
		FPeriodo: integer;
    constructor Create;
    function getFCodigo : integer;
		procedure setFCodigo(codigo : integer);
    function getFPeriodo : integer;
		procedure setFPeriodo(Periodo : integer);
  end;
implementation
  constructor TMatriculaModel.Create;
  begin
    inherited Create;
    alun:= TAlunoModel.Create;
  end;
  function TMatriculaModel.getFCodigo() : integer;
	begin
		Result := FCodigo;
	end;

	procedure TMatriculaModel.setFCodigo(codigo : integer);
	begin
		FCodigo := codigo;
	end;


  function TMatriculaModel.getFPeriodo() : integer;
  begin
    Result := FPeriodo;
  end;

  procedure TMatriculaModel.setFPeriodo(Periodo : integer);
  begin
    FPeriodo := Periodo;
  end;

end.
