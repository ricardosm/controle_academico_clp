{$MODE DELPHI}

unit ControleMatricula;

interface

uses
  crt, Classes, SysUtils, Disciplina, Aluno,Matricula,Curso,ControleAluno;

type
	TControleMatricula = class(TObject)
  private
    FMatriculas : array of TMatricula;
  public
    constructor CreateCustom(tam : integer);
    function getFMatriculas(local : integer) : TMatricula;
    procedure setFMatriculas(Matriculas : TMatricula; i : integer);

end;
implementation
  constructor TControleMatricula.CreateCustom(tam : integer);
  begin
    SetLength(FMatriculas, tam);
  end;
  function TControleMatricula.getFMatriculas(local : integer) : TMatricula;
	begin
		Result := FMatriculas[local];
	end;

	procedure TControleMatricula.setFMatriculas(Matriculas : TMatricula; i : integer);
	begin
		FMatriculas[i] := Matriculas;
	end;

BEGIN
END.
