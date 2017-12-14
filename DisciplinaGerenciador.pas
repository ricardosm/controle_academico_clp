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
  end;
implementation
  constructor TDisciplinaGerenciador.Create;
  begin
    inherited Create;
    FLista := TMyList.Create;
  end;
  destructor TDisciplinaGerenciador.Destroy;
  begin
    FLista.Free;
    inherited Destroy;
  end;
  procedure TDisciplinaGerenciador.gerenciar;
  var opcao:integer;
  begin
    repeat
      Writeln('Escolha uma opção');
      Writeln('1 - Cadastrar Disciplina');
      Writeln('2 - Listar Disciplinas');
      Writeln('0 - Sair');
      Readln(opcao);
      case opcao of
              1:cadastrar;
              2:listar
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

