{$MODE DELPHI}

unit ControleAluno;

interface

uses
  crt, Classes, SysUtils, Disciplina, Aluno,Matricula,Curso;

type
	TControleAluno = class(TObject)
  private
    FMatriculas : array of TMatricula;
  public
    constructor CreateCustom(tam : integer);
    function getFMatriculas(local : integer) : TMatricula;
    procedure setFMatriculas(matricula : TMatricula; i : integer);

end;
implementation
  constructor TControleAluno.CreateCustom(tam : integer);
  begin
    SetLength(FMatriculas, tam);
  end;
  function TControleAluno.getFMatriculas(local : integer) : TMatricula;
	begin
		Result := FMatriculas[local];
	end;

	procedure TControleAluno.setFMatriculas(matricula : TMatricula; i : integer);
	begin
		FMatriculas[i] := matricula;
	end;

BEGIN
END.
