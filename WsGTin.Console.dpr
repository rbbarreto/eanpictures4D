program WsGTin.Console;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  System.JSON,
  Horse,
  Horse.Jhonson,
  Horse.OctetStream,
  Horse.HandleException;


var
  App : THorse;

begin
  App := THorse.Create;
  App.Use(Jhonson);
  App.Use(OctetStream);
  App.Use(HandleException);

  App.Get('/ping',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      Res.Send('pong').Status(200);
    end);

    App.Listen(9000);



end.