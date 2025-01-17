program WsGTin.Console;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  System.JSON,
  Horse,
  Horse.Jhonson,
  Horse.OctetStream,
  Horse.HandleException,
  controller.Method in 'src\controller\controller.Method.pas',
  utils.bibliotecas in 'src\utils\utils.bibliotecas.pas',
  interfaces.bibliotecas in 'src\Interfaces\interfaces.bibliotecas.pas';

var
  App : THorse;

begin
  App := THorse.Create;
  App.Use(Jhonson);
  App.Use(OctetStream);
  App.Use(HandleException);

  controller.Method.Registry(App);
  Writeln('Console Port : 9000' + App.Listen(9000));
  App.Listen(9000);

end.
