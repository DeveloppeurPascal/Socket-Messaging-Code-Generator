program TestProject;

uses
  System.StartUpCopy,
  FMX.Forms,
  fTestProject in 'fTestProject.pas' {Form2},
  uProject in '..\..\src\uProject.pas',
  Olf.RTL.Streams in '..\..\lib-externes\librairies\Olf.RTL.Streams.pas',
  Olf.Net.Socket.Messaging in '..\..\lib-externes\Socket-Messaging-Library\src\Olf.Net.Socket.Messaging.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
