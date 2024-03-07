program SMCodeGenerator;

uses
  System.StartUpCopy,
  FMX.Forms,
  fMain in 'fMain.pas' {frmMain},
  Olf.FMX.AboutDialog in '..\lib-externes\AboutDialog-Delphi-Component\sources\Olf.FMX.AboutDialog.pas',
  Olf.FMX.AboutDialogForm in '..\lib-externes\AboutDialog-Delphi-Component\sources\Olf.FMX.AboutDialogForm.pas' {OlfAboutDialogForm},
  u_urlOpen in '..\lib-externes\librairies\u_urlOpen.pas',
  uProject in 'uProject.pas',
  Olf.Net.Socket.Messaging in '..\lib-externes\Socket-Messaging-Library\src\Olf.Net.Socket.Messaging.pas',
  uDMAboutBoxImage in 'uDMAboutBoxImage.pas' {dmAboutBoxImage: TDataModule},
  Olf.FMX.SelectDirectory in '..\lib-externes\Delphi-FMXExtend-Library\src\Olf.FMX.SelectDirectory.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TdmAboutBoxImage, dmAboutBoxImage);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
