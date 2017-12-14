unit DisciplinaGerenciador;
 {$MODE OBJFPC}
interface
  uses Classes,fgl ,SysUtils,DisciplinaModel;
  type
  TMyList = specialize TFPGObjectList<TDisciplinaModel>;
  TDisciplinaGerenciador = class
  private
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
  constructor TDisciplinaGerenciador.Create;
  begin
    inherited Create;
    FLista := TMyList.Create;
  end;
  procedure TDisciplinaGerenciador.excluir;
      var codigo:integer;
    var index:integer;
    var encontrou:boolean;
    begin
    try
    Writeln('Digite o codigo da disciplina que deseja deletar');
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
    WriteLn('Disciplina excluida com sucesso');
    end
    else WriteLn('Nao foi encontrada uma disciplina com o codigo especificado');
    finally

    end;
end;
destructor TDisciplinaGerenciador.Destroy;
  begin
    FLista.Free;
    inherited Destroy;
  end;

 procedure TDisciplinaGerenciador.editar;
    var codigo:integer;
    var index:integer;
    var encontrou:boolean;
    begin
    try
    Writeln('Digite o codigo da disciplina que deseja editar');
    Readln(codigo);
    encontrou:=False;
    for index:=0 to FLista.Count-1 do
    begin
      if(FLista.Items[index].FCodigo = codigo) then
      begin
        WriteLn('Digite o novo codigo da disciplina');
        Readln(FLista.Items[index].FCodigo);
        WriteLn('Digite o novo nome da disciplina');
        Readln(FLista.Items[index].FNome);
        WriteLn('Digite a novo carga horaria da disciplina');
        Readln(FLista.Items[index].FCargaHoraria);
        WriteLn('Digite o novo valor da disciplina');
        Readln(FLista.Items[index].FValor);
        encontrou := True;
      end;
    end;
    if(encontrou = True) then
    begin
    WriteLn('Disciplina atualizada com sucesso');
    end
    else WriteLn('Nao foi encontrada uma disciplina com o codigo especificado');

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
    end;
  end;
procedure TDisciplinaGerenciador.gerenciar;
  var opcao:integer;
  begin
    repeat
      Writeln('Escolha uma opção');
      Writeln('1 - Cadastrar Disciplina');
      Writeln('2 - Listar Disciplinas');
      Writeln('3 - Editar Disciplinas');
      Writeln('4 - Excluir Disciplinas');
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

  procedure TDisciplinaGerenciador.cadastrar;
  var tempModel : TDisciplinaModel;
  begin
    try
      tempModel := TDisciplinaModel.Create;
      WriteLn('Digite o codigo da disciplina');
      Readln(tempModel.FCodigo);
      WriteLn('Digite o nome da disciplina');
      Readln(tempModel.FNome);
      WriteLn('Digite a carga horaria da disciplina');
      Readln(tempModel.FCargaHoraria);
      WriteLn('Digite o valor da disciplina');
      Readln(tempModel.FValor);

      //adicionar na lista
      FLista.Add(tempModel);
    except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
    end;
  end;

  procedure TDisciplinaGerenciador.listar;  
  var temp : TDisciplinaModel;
  begin
    Writeln('Lista de Disciplinas Cadastradas:');
    for temp in FLista do
    begin
      Writeln('----------------------');
      Writeln('Código: ',temp.getFCodigo);
      Writeln('Nome: ',temp.getFNome);
      Writeln('----------------------');
    end;
      
  end;


end.

