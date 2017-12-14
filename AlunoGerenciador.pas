unit AlunoGerenciador;
 {$MODE OBJFPC}
 interface
  uses Classes,fgl ,SysUtils,AlunoModel;
  type
  TMyList = specialize TFPGObjectList<TAlunoModel>;
  TAlunoGerenciador = class
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
  constructor TAlunoGerenciador.Create;
  begin
    inherited Create;
    FLista := TMyList.Create;
  end;
  procedure TAlunoGerenciador.excluir;
      var codigo:integer;
    var index:integer;
    var encontrou:boolean;
    begin
    try
    Writeln('Digite o Ra da Aluno que deseja deletar');
    Readln(codigo);
    encontrou:=False;
    for index:=0 to FLista.Count-1 do
    begin
      if(FLista.Items[index].FRa = codigo) then
      begin
        FLista.Delete(index);
        encontrou := True;
      end;
    end;
    if(encontrou = True) then
    begin
    WriteLn('Aluno excluida com sucesso');
    end
    else WriteLn('Nao foi encontrada uma Aluno com o Ra especificado');
    finally

    end;
end;
destructor TAlunoGerenciador.Destroy;
  begin
    FLista.Free;
    inherited Destroy;
  end;

 procedure TAlunoGerenciador.editar;
    var codigo:integer;
    var index:integer;
    var encontrou:boolean;
    begin
    try
    Writeln('Digite o Ra do aluno que deseja editar');
    Readln(codigo);
    encontrou:=False;
    for index:=0 to FLista.Count-1 do
    begin
      if(FLista.Items[index].FRa = codigo) then
      begin
        WriteLn('Digite o novo nome da Aluno');
        Readln(FLista.Items[index].FNome);
        WriteLn('Digite o novo curso Aluno');
        Readln(FLista.Items[index].curs.FNome);
        WriteLn('Digite o novo email Aluno');
        Readln(FLista.Items[index].FEmail);
        WriteLn('Digite o novo Ra Aluno');
        Readln(FLista.Items[index].FRa);

        encontrou := True;
      end;
    end;
    if(encontrou = True) then
    begin
    WriteLn('Aluno atualizada com sucesso');
    end
    else WriteLn('Nao foi encontrada uma Aluno com o Ra especificado');

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
    end;
  end;
procedure TAlunoGerenciador.gerenciar;
  var opcao:integer;
  begin
    repeat
      Writeln('Escolha uma op��o');
      Writeln('1 - Cadastrar Aluno');
      Writeln('2 - Listar Alunos');
      Writeln('3 - Editar Alunos');
      Writeln('4 - Excluir Alunos');
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

  procedure TAlunoGerenciador.cadastrar;
  var tempModel : TAlunoModel;
  begin
    try
      tempModel := TAlunoModel.Create;
      WriteLn('Digite o nome do Aluno');
      Readln(tempModel.FNome);
      WriteLn('Digite o email do Aluno');
      Readln(tempModel.FEmail);
      WriteLn('Digite o curso do Aluno');
      Readln(tempModel.curs.FNome);
      WriteLn('Digite o Ra do Aluno');
      Readln(tempModel.FRa);

      //adicionar na lista
      FLista.Add(tempModel);
    except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
    end;
  end;

  procedure TAlunoGerenciador.listar;
  var temp : TAlunoModel;
  begin
    Writeln('Lista de Alunos Cadastradas:');
    for temp in FLista do
    begin
      Writeln('----------------------');
      Writeln('Nome: ',temp.getFNome);
      Writeln('Email: ',temp.getFEmail);
      Writeln('Curso: ',temp.curs.FNome);
      Writeln('Ra: ',temp.getFRa);
      Writeln('----------------------');
    end;

  end;


end.
