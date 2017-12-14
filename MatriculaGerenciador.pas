unit MatriculaGerenciador;
 {$MODE OBJFPC}

 interface
  uses Classes,fgl ,SysUtils,MatriculaModel;
  type
  TMyList = specialize TFPGObjectList<TMatriculaModel>;
  TMatriculaGerenciador = class


  public
    FLista : TMyList;
    ler:string;
  public
     constructor Create;
    destructor Destroy; override;
    procedure gerenciar;
    procedure cadastrar;
    procedure listar;
    procedure editar;
    procedure excluir;
  end;
implementation
  constructor TMatriculaGerenciador.Create;
  begin
    inherited Create;
    FLista := TMyList.Create;
  end;
  procedure TMatriculaGerenciador.excluir;
      var codigo:integer;
    var index:integer;
    var encontrou:boolean;
    begin
    try
    Writeln('Digite o codigo da Matricula que deseja deletar');
    Readln(codigo);
    encontrou:=False;
    for index:=0 to FLista.Count-1 do
    begin
      if(FLista.Items[index].FCodigo = codigo) then
      begin
        FLista.Delete(index);
        encontrou := True;
      end;
    end;
    if(encontrou = True) then
    begin
    WriteLn('Matricula excluida com sucesso');
    end
    else WriteLn('Nao foi encontrada uma Matricula com o codigo especificado');
    finally

    end;
end;
destructor TMatriculaGerenciador.Destroy;
  begin
    FLista.Free;
    inherited Destroy;
  end;

 procedure TMatriculaGerenciador.editar;
    var codigo:integer;
    var index:integer;
    var encontrou:boolean;
    begin
    try
    Writeln('Digite o codigo da Matricula que deseja editar');
    Readln(codigo);
    encontrou:=False;
    for index:=0 to FLista.Count-1 do
    begin
      if(FLista.Items[index].FCodigo = codigo) then
      begin
        WriteLn('Digite o novo codigo da Matricula');
        Readln(FLista.Items[index].FCodigo);
        WriteLn('Digite o novo nome do Aluno');
        Readln(FLista.Items[index].alun.FNome);
        WriteLn('Digite a novo periodo');
        Readln(FLista.Items[index].FPeriodo);
        encontrou := True;
      end;
    end;
    if(encontrou = True) then
    begin
    WriteLn('Matricula atualizada com sucesso');
    end
    else WriteLn('Nao foi encontrada uma Matricula com o codigo especificado');

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
    end;
  end;
procedure TMatriculaGerenciador.gerenciar;
  var opcao:integer;
  begin
    repeat
      Writeln('Escolha uma opção');
      Writeln('1 - Cadastrar Matricula');
      Writeln('2 - Listar Matriculas');
      Writeln('3 - Editar Matriculas');
      Writeln('4 - Excluir Matriculas');
      Writeln('0 - Sair');
      Readln(opcao);
      case opcao of
              1:cadastrar;
              2:listar;
              3:editar;
              4:excluir;
      end;
    until opcao = 0;

  end;

  procedure TMatriculaGerenciador.cadastrar;
  var tempModel : TMatriculaModel;
  begin
    try
      tempModel := TMatriculaModel.Create;
      WriteLn('Digite o codigo da Matricula');
      Readln(tempModel.FCodigo);
      WriteLn('Digite o nome do Aluno');
      Readln(tempModel.alun.FNome);
      WriteLn('Digite o periodo');
      Readln(tempModel.FPeriodo);


      //adicionar na lista
      FLista.Add(tempModel);
    except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
    end;
  end;

  procedure TMatriculaGerenciador.listar;
  var temp : TMatriculaModel;
  begin
    Writeln('Lista de Matriculas Cadastradas:');
    for temp in FLista do
    begin
      Writeln('----------------------');
      Writeln('C�digo: ',temp.getFCodigo);
      Writeln('Nome: ',temp.alun.getFNome);
      Writeln('Periodo: ',temp.getFPeriodo);
      Writeln('----------------------');
    end;

  end;


end.
