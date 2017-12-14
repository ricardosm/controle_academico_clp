unit DisciplinaModel;

interface
  type
  TDisciplinaModel = class

  private
  public
    FCodigo: integer;
		FNome: string;
		FCargaHoraria: real;
		FValor: real;
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
  function TDisciplinaModel.getFCodigo() : integer;
	begin
		Result := FCodigo;
	end;

	procedure TDisciplinaModel.setFCodigo(codigo : integer);
	begin
		FCodigo := codigo;
	end;

	function TDisciplinaModel.getFNome() : string;
	begin
		Result := FNome;
	end;

	procedure TDisciplinaModel.setFNome(nome : string);
	begin
		FNome := nome;
	end;

	function TDisciplinaModel.getFCargaHoraria() : real;
	begin
		Result := FCargaHoraria;
	end;

	procedure TDisciplinaModel.setFCargaHoraria(cargaHoraria : real);
	begin
		FCargaHoraria := cargaHoraria;
	end;

	function TDisciplinaModel.getFValor() : real;
	begin
		Result := FValor;
	end;

	procedure TDisciplinaModel.setFValor(valor : real);
	begin
		FValor := valor;
	end;
end.
