unit ControleAluno;

interface

uses
Classes, SysUtils, Disciplina, Aluno,Matricula,Curso;

type
	TControleAluno = class(TObject)
  private
    FAlunos : array of TAluno;
  public
    constructor CreateCustom(tam : integer);
    function getFAlunos(local : integer) : TAluno;
    procedure setFAlunos(alunos : TAluno; i : integer);

end;
implementation
  constructor TControleAluno.CreateCustom(tam : integer);
  begin
    SetLength(FAlunos, tam);
  end;
  function TControleAluno.getFAlunos(local : integer) : TAluno;
	begin
		Result := FAlunos[local];
	end;

	procedure TControleAluno.setFAlunos(alunos : TAluno; i : integer);
	begin
		FAlunos[i] := alunos;
	end;

BEGIN
END.
