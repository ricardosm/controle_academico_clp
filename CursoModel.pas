unit CursoModel;
{$MODE OBJFPC}
interface
uses
Classes, SysUtils;
  type
  TCursoModel = class

  public
  public
    FCodigo: integer;
		FNome: string;
		FDuracao: integer;
    function getFCodigo : integer;
		procedure setFCodigo(codigo : integer);
		function getFNome : string;
		procedure setFNome(nome : string);
    function getFDuracao : integer;
		procedure setFDuracao(duracao : integer);

  end;
implementation
  function TCursoModel.getFCodigo() : integer;
	begin
		Result := FCodigo;
	end;

	procedure TCursoModel.setFCodigo(codigo : integer);
	begin
		FCodigo := codigo;
	end;

	function TCursoModel.getFNome() : string;
	begin
		Result := FNome;
	end;

	procedure TCursoModel.setFNome(nome : string);
	begin
		FNome := nome;
	end;

  function TCursoModel.getFDuracao() : integer;
  begin
    Result := FCodigo;
  end;

  procedure TCursoModel.setFDuracao(duracao : integer);
  begin
    FDuracao := duracao;
  end;

end.
