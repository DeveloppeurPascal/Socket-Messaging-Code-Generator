program SMCodeGenerator;

uses
  System.StartUpCopy,
  FMX.Forms,
  fMain in 'fMain.pas' {Form1},
  Olf.FMX.AboutDialog in '..\lib-externes\AboutDialog-Delphi-Component\sources\Olf.FMX.AboutDialog.pas',
  Olf.FMX.AboutDialogForm in '..\lib-externes\AboutDialog-Delphi-Component\sources\Olf.FMX.AboutDialogForm.pas' {OlfAboutDialogForm},
  u_urlOpen in '..\lib-externes\librairies\u_urlOpen.pas',
  uProject in 'uProject.pas',
  Olf.Net.Socket.Messaging in '..\lib-externes\Socket-Messaging-Library\src\Olf.Net.Socket.Messaging.pas',
  uDMAboutBoxImage in 'uDMAboutBoxImage.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
