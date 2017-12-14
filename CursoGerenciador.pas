unit CursoGerenciador;
 {$MODE OBJFPC}
 interface
  uses Classes,fgl ,SysUtils,CursoModel;
  type
  TMyList = specialize TFPGObjectList<TCursoModel>;
  TCursoGerenciador = class
  public
    FLista : TMyList;
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
  constructor TCursoGerenciador.Create;
  begin
    inherited Create;
    FLista := TMyList.Create;
  end;
  procedure TCursoGerenciador.excluir;
      var codigo:integer;
    var index:integer;
    var encontrou:boolean;
    begin
    try
    Writeln('Digite o codigo do Curso que deseja deletar');
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
    WriteLn('Curso excluida com sucesso');
    end
    else WriteLn('Nao foi encontrada uma Curso com o codigo especificado');
    finally

    end;
end;
destructor TCursoGerenciador.Destroy;
  begin
    FLista.Free;
    inherited Destroy;
  end;

 procedure TCursoGerenciador.editar;
    var codigo:integer;
    var index:integer;
    var encontrou:boolean;
    begin
    try
    Writeln('Digite o codigo do Curso que deseja editar');
    Readln(codigo);
    encontrou:=False;
    for index:=0 to FLista.Count-1 do
    begin
      if(FLista.Items[index].FCodigo = codigo) then
      begin
        WriteLn('Digite o novo codigo do Curso');
        Readln(FLista.Items[index].FCodigo);
        WriteLn('Digite o novo nome do Curso');
        Readln(FLista.Items[index].FNome);
        WriteLn('Digite a nova duracao do Curso');
        Readln(FLista.Items[index].FDuracao);
        encontrou := True;
      end;
    end;
    if(encontrou = True) then
    begin
    WriteLn('Curso atualizada com sucesso');
    end
    else WriteLn('Nao foi encontrada uma Curso com o codigo especificado');

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
    end;
  end;
procedure TCursoGerenciador.gerenciar;
  var opcao:integer;
  begin
    repeat
      Writeln('Escolha uma op��o');
      Writeln('1 - Cadastrar Curso');
      Writeln('2 - Listar Cursos');
      Writeln('3 - Editar Cursos');
      Writeln('4 - Excluir Cursos');
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

  procedure TCursoGerenciador.cadastrar;
  var tempModel : TCursoModel;
  begin
    try
      tempModel := TCursoModel.Create;
      WriteLn('Digite o codigo do Curso');
      Readln(tempModel.FCodigo);
      WriteLn('Digite o nome do Curso');
      Readln(tempModel.FNome);
      WriteLn('Digite a duracao do Curso');
      Readln(tempModel.FDuracao);

      //adicionar na lista
      FLista.Add(tempModel);
    except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
    end;
  end;

  procedure TCursoGerenciador.listar;
  var temp : TCursoModel;
  begin
    Writeln('Lista de Cursos Cadastradas:');
    for temp in FLista do
    begin
      Writeln('----------------------');
      Writeln('C�digo: ',temp.getFCodigo);
      Writeln('Nome: ',temp.getFNome);
      Writeln('Nome: ',temp.getFDuracao);
      Writeln('----------------------');
    end;

  end;


end.
