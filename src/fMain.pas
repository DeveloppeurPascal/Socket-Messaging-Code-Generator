unit fMain;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  Olf.FMX.AboutDialog,
  FMX.Menus,
  FMX.Controls.Presentation,
  FMX.StdCtrls,
  FMX.Layouts,
  uProject,
  FMX.TabControl,
  FMX.TreeView,
  FMX.Memo.Types,
  FMX.ScrollBox,
  FMX.Memo,
  FMX.Edit,
  uDMAboutBoxImage,
  Olf.FMX.SelectDirectory;

type
{$SCOPEDENUMS ON}
  TSMGScreen = (None, Home, Project);

  TfrmMain = class(TForm)
    MainMenu1: TMainMenu;
    OlfAboutDialog1: TOlfAboutDialog;
    mnuMacOS: TMenuItem;
    mnuFile: TMenuItem;
    mnuNewFile: TMenuItem;
    mnuOpenFile: TMenuItem;
    mnuSave: TMenuItem;
    mnuClose: TMenuItem;
    mnuTools: TMenuItem;
    mnuOptions: TMenuItem;
    mnuHelp: TMenuItem;
    mnuAbout: TMenuItem;
    mnuQuit: TMenuItem;
    lButtons: TLayout;
    btnNewProjectFile: TButton;
    btnOpenProjectFile: TButton;
    lHomeScreen: TLayout;
    lProjectScreen: TLayout;
    OpenProjectDialog: TOpenDialog;
    SaveProjectDialog: TSaveDialog;
    Splitter1: TSplitter;
    tcProject: TTabControl;
    tiProjectEdit: TTabItem;
    tiMessageEdit: TTabItem;
    tiFieldEdit: TTabItem;
    VertScrollBox1: TVertScrollBox;
    VertScrollBox2: TVertScrollBox;
    VertScrollBox3: TVertScrollBox;
    lblProjectDescription: TLabel;
    edtProjectName: TEdit;
    lblProjectName: TLabel;
    lblProjectDelphiUnitName: TLabel;
    edtProjectDelphiUnitName: TEdit;
    edtProjectDescription: TMemo;
    GridPanelLayout1: TGridPanelLayout;
    btnProjectOk: TButton;
    btnProjectCancel: TButton;
    mnuProject: TMenuItem;
    mnuDelphiExport: TMenuItem;
    lblMessageName: TLabel;
    edtMessageName: TEdit;
    lblMessageDelphiClassName: TLabel;
    edtMessageDelphiClassName: TEdit;
    lblMessageDescription: TLabel;
    edtMessageDescription: TMemo;
    GridPanelLayout2: TGridPanelLayout;
    btnMessageOk: TButton;
    btnMessageCancel: TButton;
    cbMessageRegisterOnServer: TCheckBox;
    cbMessageRegisterOnClient: TCheckBox;
    lblMessageID: TLabel;
    lProjectLeft: TLayout;
    tvProject: TTreeView;
    btnNewField: TButton;
    btnNewMessage: TButton;
    btnMessageDelete: TButton;
    lblFieldOrder: TLabel;
    lblFieldName: TLabel;
    edtFieldName: TEdit;
    lblFieldDefaultValue: TLabel;
    edtFieldDefaultValue: TEdit;
    lblFieldDelphiFieldType: TLabel;
    edtFieldDelphiFieldType: TEdit;
    lblFieldDelphiFieldName: TLabel;
    edtFieldDelphiFieldName: TEdit;
    lblFieldDescription: TLabel;
    edtFieldDescription: TMemo;
    GridPanelLayout3: TGridPanelLayout;
    btnFieldOk: TButton;
    btnFieldCancel: TButton;
    btnFieldDelete: TButton;
    btnProjectSave: TButton;
    btnExportDelphiUnit: TButton;
    btnProjectClose: TButton;
    Label1: TLabel;
    lblProjectDelphiClientClassName: TLabel;
    edtProjectDelphiClientClassName: TEdit;
    lblProjectDelphiServerClassName: TLabel;
    edtProjectDelphiServerClassName: TEdit;
    lblProjectDelphiUnitsUsed: TLabel;
    edtProjectDelphiUnitsUsed: TEdit;
    lblProjectDefaultMessageClassName: TLabel;
    lProjectDefaultMessageClassName: TLayout;
    Label2: TLabel;
    edtProjectDelphiMessageClassPrefix: TEdit;
    Label3: TLabel;
    edtProjectDelphiMessageClassSuffix: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lblFieldDelphiStreamType: TLabel;
    GridPanelLayout4: TGridPanelLayout;
    rbFieldStreamSizeOf: TRadioButton;
    rbFieldStreamClass: TRadioButton;
    rbFieldStreamString: TRadioButton;
    rbFieldStreamTODO: TRadioButton;
    cbMessageGenerate: TCheckBox;
    cbFieldGenerate: TCheckBox;
    rbFieldStreamBitmap: TRadioButton;
    ExportProjectDialog: TOlfSelectDirectoryDialog;
    cbFreeNeeded: TCheckBox;
    edtProjectFMXUnitsUsed: TEdit;
    edtProjectVCLUnitsUsed: TEdit;
    edtProjectConsoleUnitsUsed: TEdit;
    lblProjectFMXUnitsUsed: TLabel;
    lblProjectVCLUnitsUsed: TLabel;
    lblProjectConsoleUnitsUsed: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure mnuQuitClick(Sender: TObject);
    procedure mnuAboutClick(Sender: TObject);
    procedure OlfAboutDialog1URLClick(const AURL: string);
    procedure mnuOptionsClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure mnuNewFileClick(Sender: TObject);
    procedure mnuOpenFileClick(Sender: TObject);
    procedure mnuCloseClick(Sender: TObject);
    procedure mnuSaveClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure tvProjectChange(Sender: TObject);
    procedure edtProjectNameChange(Sender: TObject);
    procedure btnProjectCancelClick(Sender: TObject);
    procedure btnProjectOkClick(Sender: TObject);
    procedure mnuDelphiExportClick(Sender: TObject);
    procedure btnMessageCancelClick(Sender: TObject);
    procedure btnMessageOkClick(Sender: TObject);
    procedure edtMessageNameChange(Sender: TObject);
    procedure btnMessageDeleteClick(Sender: TObject);
    procedure btnNewMessageClick(Sender: TObject);
    procedure btnNewFieldClick(Sender: TObject);
    procedure btnFieldDeleteClick(Sender: TObject);
    procedure btnFieldCancelClick(Sender: TObject);
    procedure btnFieldOkClick(Sender: TObject);
    procedure edtFieldNameChange(Sender: TObject);
    procedure edtFieldDelphiFieldTypeChange(Sender: TObject);
    procedure rbFieldStreamBitmapChange(Sender: TObject);
    procedure rbFieldStreamClassChange(Sender: TObject);
    procedure rbFieldStreamSizeOfChange(Sender: TObject);
    procedure rbFieldStreamStringChange(Sender: TObject);
  private
    FCurrentProject: TProject;
    FCurrentScreen: TSMGScreen;
    FCurrentMessage: TMessage;
    FCurrentField: TMessageField;
    procedure SetCurrentProject(const Value: TProject);
    procedure SetCurrentScreen(const Value: TSMGScreen);
    procedure SetCurrentField(const Value: TMessageField);
    procedure SetCurrentMessage(const Value: TMessage);
  protected
    procedure InitHomeScreen;
    procedure InitProjectScreen;
    procedure UpdateButtonsAndMenus;
    procedure RefreshFormCaption;
    procedure InitEditProjectTab;
    procedure InitEditMessageTab;
    procedure InitEditFieldTab;
    procedure ExportTheUnit(AUnitFilePath: string);
    procedure InitAboutDialogDescriptionAndLicense;
  public
    property CurrentProject: TProject read FCurrentProject
      write SetCurrentProject;
    property CurrentMessage: TMessage read FCurrentMessage
      write SetCurrentMessage;
    property CurrentField: TMessageField read FCurrentField
      write SetCurrentField;
    property CurrentScreen: TSMGScreen read FCurrentScreen
      write SetCurrentScreen;
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}

uses
  FMX.DialogService,
  System.IOUtils,
  u_urlOpen;

procedure TfrmMain.btnFieldCancelClick(Sender: TObject);
begin
  InitEditFieldTab;
end;

procedure TfrmMain.btnFieldDeleteClick(Sender: TObject);
var
  FieldItem: TTreeViewItem;
begin
  if not assigned(CurrentProject) then
    exit;

  if not assigned(tvProject.Selected) then
    exit;

  if not(tvProject.Selected.tag = 2) then
    exit;

  FieldItem := tvProject.Selected;
  tvProject.Selected := tvProject.Selected.ParentItem;
  FieldItem.Free;

  FCurrentField.ParentList.Remove(FCurrentField);
  FCurrentField := nil;

  RefreshFormCaption;
end;

procedure TfrmMain.btnFieldOkClick(Sender: TObject);
begin
  edtFieldName.Text := edtFieldName.Text.trim;
  if edtFieldName.Text.IsEmpty then
  begin
    edtFieldName.SetFocus;
    raise Exception.Create('Your field needs a name !');
  end;
  CurrentField.Name := edtFieldName.Text;
  (tvProject.tagobject as TTreeViewItem).Text := CurrentField.Name;

  CurrentField.DelphiFieldType := edtFieldDelphiFieldType.Text;

  CurrentField.DefaultValue := edtFieldDefaultValue.Text;

  CurrentField.Description := edtFieldDescription.Text;

  edtFieldDelphiFieldName.Text := edtFieldDelphiFieldName.Text.trim;
  if edtFieldDelphiFieldName.Text.IsEmpty then
    CurrentField.DelphiFieldName := ''
  else
    CurrentField.DelphiFieldName := ToDelphiConst(edtFieldDelphiFieldName.Text);

  if rbFieldStreamSizeOf.IsChecked then
    CurrentField.DelphiFieldStreamFormat := TDelphiFieldStreamFormat.RWSizeOf
  else if rbFieldStreamClass.IsChecked then
    CurrentField.DelphiFieldStreamFormat :=
      TDelphiFieldStreamFormat.ClassLoadFromStreamSaveToStream
  else if rbFieldStreamString.IsChecked then
    CurrentField.DelphiFieldStreamFormat := TDelphiFieldStreamFormat.RWString
  else if rbFieldStreamBitmap.IsChecked then
    CurrentField.DelphiFieldStreamFormat := TDelphiFieldStreamFormat.RWBitmap
  else if rbFieldStreamTODO.IsChecked then
    CurrentField.DelphiFieldStreamFormat := TDelphiFieldStreamFormat.TODO;

  CurrentField.GenerateTheField := cbFieldGenerate.IsChecked;
  CurrentField.IsAClassNeedsAFree := cbFreeNeeded.IsChecked;

  RefreshFormCaption;
end;

procedure TfrmMain.btnMessageCancelClick(Sender: TObject);
begin
  InitEditMessageTab;
end;

procedure TfrmMain.btnMessageDeleteClick(Sender: TObject);
var
  MessageItem: TTreeViewItem;
begin
  if not assigned(CurrentProject) then
    exit;

  if not assigned(tvProject.Selected) then
    exit;

  if not(tvProject.Selected.tag = 1) then
    exit;

  MessageItem := tvProject.Selected;
  tvProject.Selected := tvProject.Selected.ParentItem;
  MessageItem.Free;

  FCurrentMessage.ParentList.Remove(FCurrentMessage);
  FCurrentMessage := nil;

  RefreshFormCaption;
end;

procedure TfrmMain.btnMessageOkClick(Sender: TObject);
begin
  edtMessageName.Text := edtMessageName.Text.trim;
  if edtMessageName.Text.IsEmpty then
  begin
    edtMessageName.SetFocus;
    raise Exception.Create('Your message needs a name !');
  end;
  CurrentMessage.Name := edtMessageName.Text;
  (tvProject.tagobject as TTreeViewItem).Text := CurrentMessage.Name;

  CurrentMessage.Description := edtMessageDescription.Text;

  edtMessageDelphiClassName.Text := edtMessageDelphiClassName.Text.trim;
  if edtMessageDelphiClassName.Text.IsEmpty then
    CurrentMessage.DelphiClassName := ''
  else
    CurrentMessage.DelphiClassName :=
      ToDelphiConst(edtMessageDelphiClassName.Text);

  CurrentMessage.RegisterMessageInTheServer :=
    cbMessageRegisterOnServer.IsChecked;
  CurrentMessage.RegisterMessageInTheClient :=
    cbMessageRegisterOnClient.IsChecked;
  CurrentMessage.GenerateTheMessage := cbMessageGenerate.IsChecked;

  RefreshFormCaption;
end;

procedure TfrmMain.btnNewFieldClick(Sender: TObject);
var
  msg: TMessage;
  fld: TMessageField;
  MessageItem, FieldItem: TTreeViewItem;
begin
  if not assigned(CurrentProject) then
    exit;

  if not assigned(tvProject.Selected) then
    exit;

  case tvProject.Selected.tag of
    1:
      begin
        MessageItem := tvProject.Selected;
        msg := CurrentMessage;
      end;
    2:
      begin
        MessageItem := tvProject.Selected.ParentItem;
        if assigned(MessageItem) and assigned(MessageItem.tagobject) and
          (MessageItem.tagobject is TMessage) then
          msg := MessageItem.tagobject as TMessage
        else
          raise Exception.Create
            ('Can''t find the parent message for this new field. (error code 1)');
      end;
  else
    raise Exception.Create
      ('Can''t find the parent message for this new field. (error code 2)');
  end;

  fld := TMessageField.Create(msg.Fields);
  msg.Fields.Add(fld);
  fld.Name := 'Field ' + fld.order.ToString;
  fld.DelphiFieldType := 'integer';
  fld.DefaultValue := '0';

  FieldItem := TTreeViewItem.Create(tvProject);
  FieldItem.Parent := MessageItem;
  // théoriquement le projet, sinon chercher celui qui a un Tag=0
  FieldItem.Text := fld.Name;
  FieldItem.tagobject := fld;
  FieldItem.tag := 2;

  tvProject.Selected := FieldItem;

  RefreshFormCaption;
end;

procedure TfrmMain.btnNewMessageClick(Sender: TObject);
var
  msg: TMessage;
  MessageItem: TTreeViewItem;
begin
  if not assigned(CurrentProject) then
    exit;

  msg := TMessage.Create(CurrentProject.Messages);
  CurrentProject.Messages.Add(msg);
  msg.Name := 'Message ' + msg.messageid.ToString;

  MessageItem := TTreeViewItem.Create(tvProject);
  MessageItem.Parent := tvProject.Items[0];
  // théoriquement le projet, sinon chercher celui qui a un Tag=0
  MessageItem.Text := msg.Name;
  MessageItem.tagobject := msg;
  MessageItem.tag := 1;

  tvProject.Selected := MessageItem;

  RefreshFormCaption;
end;

procedure TfrmMain.btnProjectCancelClick(Sender: TObject);
begin
  InitEditProjectTab;
end;

procedure TfrmMain.btnProjectOkClick(Sender: TObject);
begin
  edtProjectName.Text := edtProjectName.Text.trim;
  if edtProjectName.Text.IsEmpty then
  begin
    edtProjectName.SetFocus;
    raise Exception.Create('Your project needs a name !');
  end;
  CurrentProject.Name := edtProjectName.Text;
  (tvProject.tagobject as TTreeViewItem).Text := CurrentProject.Name;

  edtProjectDelphiUnitName.Text := edtProjectDelphiUnitName.Text.trim;
  if edtProjectDelphiUnitName.Text.IsEmpty then
    CurrentProject.DelphiUnitName := ''
  else
    CurrentProject.DelphiUnitName :=
      ToDelphiConst(edtProjectDelphiUnitName.Text, true);

  CurrentProject.DelphiUnitsUsed := edtProjectDelphiUnitsUsed.Text;
  CurrentProject.ConsoleUnitsUsed := edtProjectConsoleUnitsUsed.Text;
  CurrentProject.VCLUnitsUsed := edtProjectVCLUnitsUsed.Text;
  CurrentProject.FMXUnitsUsed := edtProjectFMXUnitsUsed.Text;

  edtProjectDelphiServerClassName.Text :=
    edtProjectDelphiServerClassName.Text.trim;
  if edtProjectDelphiServerClassName.Text.IsEmpty then
    CurrentProject.DelphiServerClassName := ''
  else
    CurrentProject.DelphiServerClassName :=
      ToDelphiConst(edtProjectDelphiServerClassName.Text);

  edtProjectDelphiClientClassName.Text :=
    edtProjectDelphiClientClassName.Text.trim;
  if edtProjectDelphiClientClassName.Text.IsEmpty then
    CurrentProject.DelphiClientClassName := ''
  else
    CurrentProject.DelphiClientClassName :=
      ToDelphiConst(edtProjectDelphiClientClassName.Text);

  CurrentProject.DelphiMessageClassNamePrefix :=
    edtProjectDelphiMessageClassPrefix.Text;

  CurrentProject.DelphiMessageClassNameSuffix :=
    edtProjectDelphiMessageClassSuffix.Text;

  CurrentProject.Description := edtProjectDescription.Text;

  RefreshFormCaption;
end;

procedure TfrmMain.edtFieldDelphiFieldTypeChange(Sender: TObject);
begin
  if (edtFieldDelphiFieldType.Text.tolower = 'string') then
  begin
    rbFieldStreamString.IsChecked := true;
    if edtFieldDefaultValue.Text.IsEmpty or (edtFieldDefaultValue.Text = '0') or
      (edtFieldDefaultValue.Text = 'nil') then
      edtFieldDefaultValue.Text := '''''';
  end;
  if (edtFieldDelphiFieldType.Text.tolower = 'tbitmap') then
  begin
    rbFieldStreamBitmap.IsChecked := true;
    if edtFieldDefaultValue.Text.IsEmpty or (edtFieldDefaultValue.Text = '0') or
      (edtFieldDefaultValue.Text = '''''') then
      edtFieldDefaultValue.Text := 'nil';
  end;
end;

procedure TfrmMain.edtFieldNameChange(Sender: TObject);
begin
  edtFieldDelphiFieldName.TextPrompt := CurrentField.DefaultDelphiFieldName
    (edtFieldName.Text);
end;

procedure TfrmMain.edtMessageNameChange(Sender: TObject);
begin
  edtMessageDelphiClassName.TextPrompt := CurrentMessage.DefaultDelphiClassName
    (edtMessageName.Text);
end;

procedure TfrmMain.edtProjectNameChange(Sender: TObject);
begin
  edtProjectDelphiUnitName.TextPrompt := CurrentProject.DefaultDelphiUnitName
    (edtProjectName.Text);
  edtProjectDelphiServerClassName.TextPrompt :=
    CurrentProject.DefaultDelphiServerClassName(edtProjectName.Text);
  edtProjectDelphiClientClassName.TextPrompt :=
    CurrentProject.DefaultDelphiClientClassName(edtProjectName.Text);
end;

procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  mnuCloseClick(Sender);
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  FCurrentProject := nil;
  FCurrentScreen := TSMGScreen.None;
  tcProject.TabPosition := TTabPosition.None;

  InitAboutDialogDescriptionAndLicense;

  // Window title
  RefreshFormCaption;

  // Menu
{$IF Defined(MACOS) and not Defined(IOS)}
  mnuAbout.Parent := mnuMacOS;
  mnuOptions.Parent := mnuMacOS;
  mnuQuit.Visible := false;
{$ENDIF}
  mnuOptions.Free;
  // TODO : show the "tools/options" menu when an option dialog box will be available
  mnuMacOS.Visible := (mnuMacOS.ItemsCount > 0);
  mnuTools.Visible := (mnuTools.ItemsCount > 0);
  mnuHelp.Visible := (mnuHelp.ItemsCount > 0);

  CurrentScreen := TSMGScreen.Home;
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  if assigned(CurrentProject) then
    FreeAndNil(CurrentProject);
end;

procedure TfrmMain.InitAboutDialogDescriptionAndLicense;
begin
  OlfAboutDialog1.Licence.Text :=
    'This program is distributed as shareware. If you use it (especially for ' +
    'commercial or income-generating purposes), please remember the author and '
    + 'contribute to its development by purchasing a license.' + slinebreak +
    slinebreak +
    'This software is supplied as is, with or without bugs. No warranty is offered '
    + 'as to its operation or the data processed. Make backups!';
  OlfAboutDialog1.Description.Text :=
    'Socket Messaging Code Generator creates a Delphi unit from an interface description between a server and clients in the form of messages exchanged via IP sockets.'
    + slinebreak + slinebreak + '*****************' + slinebreak +
    '* Publisher info' + slinebreak + slinebreak +
    'This application was developed by Patrick Prémartin.' + slinebreak +
    slinebreak +
    'It is published by OLF SOFTWARE, a company registered in Paris (France) under the reference 439521725.'
    + slinebreak + slinebreak + '****************' + slinebreak +
    '* Personal data' + slinebreak + slinebreak +
    'This program is autonomous in its current version. It does not depend on the Internet and communicates nothing to the outside world.'
    + slinebreak + slinebreak + 'We have no knowledge of what you do with it.' +
    slinebreak + slinebreak +
    'No information about you is transmitted to us or to any third party.' +
    slinebreak + slinebreak +
    'We use no cookies, no tracking, no stats on your use of the application.' +
    slinebreak + slinebreak + '**********************' + slinebreak +
    '* User support' + slinebreak + slinebreak +
    'If you have any questions or require additional functionality, please leave us a message on the application''s website or on its code repository.'
    + slinebreak + slinebreak +
    'To find out more, visit https://smcodegenerator.olfsoftware.fr';
end;

procedure TfrmMain.InitEditFieldTab;
begin
  if not assigned(CurrentField) then
    raise Exception.Create('No field to display !');

  edtFieldName.Text := CurrentField.Name;

  if (CurrentField.DelphiFieldName = CurrentField.DefaultDelphiFieldName) then
    edtFieldDelphiFieldName.Text := ''
  else
    edtFieldDelphiFieldName.Text := CurrentField.DelphiFieldName;

  edtFieldDelphiFieldType.Text := CurrentField.DelphiFieldType;

  edtFieldDefaultValue.Text := CurrentField.DefaultValue;

  edtFieldDescription.Text := CurrentField.Description;

  lblFieldOrder.Text := 'Internal : ' + CurrentField.order.ToString;

  rbFieldStreamSizeOf.IsChecked := CurrentField.DelphiFieldStreamFormat =
    TDelphiFieldStreamFormat.RWSizeOf;
  rbFieldStreamClass.IsChecked := CurrentField.DelphiFieldStreamFormat =
    TDelphiFieldStreamFormat.ClassLoadFromStreamSaveToStream;
  rbFieldStreamString.IsChecked := CurrentField.DelphiFieldStreamFormat =
    TDelphiFieldStreamFormat.RWString;
  rbFieldStreamBitmap.IsChecked := CurrentField.DelphiFieldStreamFormat =
    TDelphiFieldStreamFormat.RWBitmap;
  rbFieldStreamTODO.IsChecked := CurrentField.DelphiFieldStreamFormat =
    TDelphiFieldStreamFormat.TODO;

  cbFieldGenerate.IsChecked := CurrentField.GenerateTheField;
  cbFreeNeeded.IsChecked := CurrentField.IsAClassNeedsAFree;

  // TODO : PP, 2024-03-07, see https://github.com/DeveloppeurPascal/Socket-Messaging-Code-Generator/issues/50
  // tthread.ForceQueue(nil,
  // procedure
  // begin
  // edtFieldName.SetFocus;
  // end);
end;

procedure TfrmMain.InitEditMessageTab;
begin
  if not assigned(CurrentMessage) then
    raise Exception.Create('No message to display !');

  edtMessageName.Text := CurrentMessage.Name;
  if (CurrentMessage.DelphiClassName = CurrentMessage.DefaultDelphiClassName)
  then
    edtMessageDelphiClassName.Text := ''
  else
    edtMessageDelphiClassName.Text := CurrentMessage.DelphiClassName;
  edtMessageDescription.Text := CurrentMessage.Description;
  cbMessageRegisterOnServer.IsChecked :=
    CurrentMessage.RegisterMessageInTheServer;
  cbMessageRegisterOnClient.IsChecked :=
    CurrentMessage.RegisterMessageInTheClient;
  cbMessageGenerate.IsChecked := CurrentMessage.GenerateTheMessage;

  lblMessageID.Text := 'Internal message ID : ' +
    CurrentMessage.messageid.ToString;

  // TODO : PP, 2024-03-07, see https://github.com/DeveloppeurPascal/Socket-Messaging-Code-Generator/issues/50
  // tthread.ForceQueue(nil,
  // procedure
  // begin
  // edtMessageName.SetFocus;
  // end);
end;

procedure TfrmMain.InitEditProjectTab;
begin
  if not assigned(CurrentProject) then
    raise Exception.Create('No project to display !');

  edtProjectName.Text := CurrentProject.Name;

  if (CurrentProject.DelphiUnitName = CurrentProject.DefaultDelphiUnitName) then
    edtProjectDelphiUnitName.Text := ''
  else
    edtProjectDelphiUnitName.Text := CurrentProject.DelphiUnitName;

  edtProjectDelphiUnitsUsed.Text := CurrentProject.DelphiUnitsUsed;
  edtProjectConsoleUnitsUsed.Text := CurrentProject.ConsoleUnitsUsed;
  edtProjectVCLUnitsUsed.Text := CurrentProject.VCLUnitsUsed;
  edtProjectFMXUnitsUsed.Text := CurrentProject.FMXUnitsUsed;

  if (CurrentProject.DelphiServerClassName = CurrentProject.
    DefaultDelphiServerClassName) then
    edtProjectDelphiServerClassName.Text := ''
  else
    edtProjectDelphiServerClassName.Text :=
      CurrentProject.DelphiServerClassName;

  if (CurrentProject.DelphiClientClassName = CurrentProject.
    DefaultDelphiClientClassName) then
    edtProjectDelphiClientClassName.Text := ''
  else
    edtProjectDelphiClientClassName.Text :=
      CurrentProject.DelphiClientClassName;

  edtProjectDelphiMessageClassPrefix.Text :=
    CurrentProject.DelphiMessageClassNamePrefix;
  edtProjectDelphiMessageClassSuffix.Text :=
    CurrentProject.DelphiMessageClassNameSuffix;

  edtProjectDescription.Text := CurrentProject.Description;

  // TODO : PP, 2024-03-07, see https://github.com/DeveloppeurPascal/Socket-Messaging-Code-Generator/issues/50
  // tthread.ForceQueue(nil,
  // procedure
  // begin
  // edtProjectName.SetFocus;
  // end);
end;

procedure TfrmMain.InitHomeScreen;
begin
  RefreshFormCaption;
end;

procedure TfrmMain.InitProjectScreen;
var
  msg: TMessage;
  fld: TMessageField;
  ProjectItem, MessageItem, FieldItem: TTreeViewItem;
begin
  tvProject.Clear;
  tvProject.tagobject := nil;

  ProjectItem := TTreeViewItem.Create(tvProject);
  ProjectItem.Parent := tvProject;
  ProjectItem.Text := CurrentProject.Name;
  ProjectItem.tagobject := CurrentProject;
  ProjectItem.tag := 0;

  for msg in CurrentProject.Messages do
  begin
    MessageItem := TTreeViewItem.Create(tvProject);
    MessageItem.Parent := ProjectItem;
    MessageItem.Text := msg.Name;
    MessageItem.tagobject := msg;
    MessageItem.tag := 1;
    for fld in msg.Fields do
    begin
      FieldItem := TTreeViewItem.Create(tvProject);
      FieldItem.Parent := MessageItem;
      FieldItem.Text := fld.Name;
      FieldItem.tagobject := fld;
      FieldItem.tag := 2;
    end;
  end;

  tvProject.ExpandAll;

  tvProject.Selected := ProjectItem;

  RefreshFormCaption;
end;

procedure TfrmMain.mnuAboutClick(Sender: TObject);
begin
  OlfAboutDialog1.Execute;
end;

procedure TfrmMain.mnuCloseClick(Sender: TObject);
begin
  if not assigned(CurrentProject) then
    exit;

  if CurrentProject.HasChanged then
    TDialogService.MessageDialog
      ('Current project has been changed. Do you want to save it ?',
      tmsgdlgtype.mtConfirmation, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo],
      TMsgDlgBtn.mbYes, 0,
      procedure(Const AModalResult: TModalResult)
      begin
        if AModalResult = mryes then
          mnuSaveClick(Sender);
        FreeAndNil(CurrentProject);
        CurrentScreen := TSMGScreen.Home;
      end)
  else
  begin
    FreeAndNil(CurrentProject);
    CurrentScreen := TSMGScreen.Home;
  end;
end;

procedure TfrmMain.ExportTheUnit(AUnitFilePath: string);
begin
  caption := OlfAboutDialog1.Titre + ' (v' + OlfAboutDialog1.VersionNumero +
    ')'; // why ?
  tfile.WriteAllText(AUnitFilePath, CurrentProject.AsDelphi, tencoding.UTF8);
  RefreshFormCaption;
  ShowMessage('Export done.');
end;

procedure TfrmMain.mnuDelphiExportClick(Sender: TObject);
var
  UnitFileName, UnitFilePath: string;
begin
  if ExportProjectDialog.Directory.IsEmpty then
    if CurrentProject.FileName.IsEmpty then
      ExportProjectDialog.Directory := tpath.getdocumentspath
    else
      ExportProjectDialog.Directory := tpath.GetDirectoryName
        (CurrentProject.FileName);
  // TODO : restore previous "exportsavedialog" from settings or the project settings

  if ExportProjectDialog.Execute and (not ExportProjectDialog.Directory.IsEmpty)
    and tdirectory.exists(ExportProjectDialog.Directory) then
  begin
    UnitFileName := CurrentProject.DelphiUnitName + '.pas';
    UnitFilePath := tpath.combine(ExportProjectDialog.Directory, UnitFileName);
    if tfile.exists(UnitFilePath) then
      TDialogService.MessageDialog('This unit "' + UnitFileName +
        '" already exists. Do you want to replace it ?',
        tmsgdlgtype.mtConfirmation, mbyesno, TMsgDlgBtn.mbNo, 0,
        procedure(Const AModalResult: TModalResult)
        begin
          if AModalResult = mryes then
            ExportTheUnit(UnitFilePath);
        end)
    else
      ExportTheUnit(UnitFilePath);
  end;
end;

procedure TfrmMain.mnuNewFileClick(Sender: TObject);
begin
  mnuCloseClick(Sender);

  CurrentProject := TProject.Create;
  CurrentProject.Name := 'Project ' + datetostr(now);
  CurrentScreen := TSMGScreen.Project;
end;

procedure TfrmMain.mnuOpenFileClick(Sender: TObject);
begin
  mnuCloseClick(Sender);

  if OpenProjectDialog.InitialDir.IsEmpty then
    OpenProjectDialog.InitialDir := tpath.getdocumentspath;
  // TODO : restore previous "initialdir" from settings

  if OpenProjectDialog.Execute and (length(trim(OpenProjectDialog.FileName)) >
    0) and (tpath.GetExtension(OpenProjectDialog.FileName) = '.' +
    OpenProjectDialog.DefaultExt) and tfile.exists(OpenProjectDialog.FileName)
  then
  begin
    CurrentProject := TProject.Create;
    CurrentProject.LoadFromFile(OpenProjectDialog.FileName);
    CurrentScreen := TSMGScreen.Project;
  end;
end;

procedure TfrmMain.mnuOptionsClick(Sender: TObject);
begin
  ShowMessage('No settings for now.');
  // TODO : à compléter
end;

procedure TfrmMain.mnuQuitClick(Sender: TObject);
begin
  close;
end;

procedure TfrmMain.mnuSaveClick(Sender: TObject);
begin
  if not assigned(CurrentProject) then
    exit;

  if not CurrentProject.FileName.IsEmpty then
  begin
    CurrentProject.SaveToFile;
    RefreshFormCaption;
    exit;
  end;

  if SaveProjectDialog.InitialDir.IsEmpty then
    SaveProjectDialog.InitialDir := tpath.getdocumentspath;
  // TODO : restore previous "savedialog" from settings

  if SaveProjectDialog.Execute and (length(trim(SaveProjectDialog.FileName)) >
    0) and (tpath.GetExtension(SaveProjectDialog.FileName) = '.' +
    SaveProjectDialog.DefaultExt) then
  begin
    CurrentProject.SaveToFile(SaveProjectDialog.FileName);
    RefreshFormCaption;
  end;
end;

procedure TfrmMain.OlfAboutDialog1URLClick(const AURL: string);
begin
  url_Open_In_Browser(AURL);
end;

procedure TfrmMain.rbFieldStreamBitmapChange(Sender: TObject);
begin
  if rbFieldStreamBitmap.IsChecked then
    cbFreeNeeded.IsChecked := true;
end;

procedure TfrmMain.rbFieldStreamClassChange(Sender: TObject);
begin
  if rbFieldStreamClass.IsChecked then
    cbFreeNeeded.IsChecked := true;
end;

procedure TfrmMain.rbFieldStreamSizeOfChange(Sender: TObject);
begin
  if rbFieldStreamSizeOf.IsChecked then
    cbFreeNeeded.IsChecked := false;
end;

procedure TfrmMain.rbFieldStreamStringChange(Sender: TObject);
begin
  if rbFieldStreamString.IsChecked then
    cbFreeNeeded.IsChecked := false;
end;

procedure TfrmMain.RefreshFormCaption;
begin
  caption := OlfAboutDialog1.Titre + ' ' + OlfAboutDialog1.VersionNumero;
{$IFDEF DEBUG}
  caption := '[DEBUG] ' + caption;
{$ENDIF}
  if assigned(CurrentProject) then
  begin
    caption := caption + ' - ' + CurrentProject.Name;
    if CurrentProject.HasChanged then
      caption := caption + '*';
  end;
end;

procedure TfrmMain.SetCurrentScreen(const Value: TSMGScreen);
begin
  if FCurrentScreen = Value then
    exit;

  FCurrentScreen := Value;

  case FCurrentScreen of
    TSMGScreen.Home:
      InitHomeScreen;
    TSMGScreen.Project:
      InitProjectScreen;
    TSMGScreen.None:
      ;
  else
    raise Exception.Create('Can''t show screen ' + ord(FCurrentScreen)
      .ToString + ' !');
  end;

  lHomeScreen.Visible := (FCurrentScreen = TSMGScreen.Home);
  lProjectScreen.Visible := (FCurrentScreen = TSMGScreen.Project);

  UpdateButtonsAndMenus;
end;

procedure TfrmMain.SetCurrentField(const Value: TMessageField);
begin
  FCurrentField := Value;
  InitEditFieldTab;
end;

procedure TfrmMain.SetCurrentMessage(const Value: TMessage);
begin
  FCurrentMessage := Value;
  InitEditMessageTab;
end;

procedure TfrmMain.SetCurrentProject(const Value: TProject);
begin
  FCurrentProject := Value;
  InitEditProjectTab;
end;

procedure TfrmMain.tvProjectChange(Sender: TObject);
begin
  if assigned(tvProject.tagobject) then
  begin
    // TODO : check if something has changed and ask for a SAVE or CANCEL operation on it
  end;

  tvProject.tagobject := tvProject.Selected;
  if assigned(tvProject.Selected) then
  begin
    tcProject.Visible := true;
    case tvProject.Selected.tag of
      0:
        begin
          tcProject.ActiveTab := tiProjectEdit;
          InitEditProjectTab;
        end;
      1:
        begin
          if not(tvProject.Selected.tagobject is TMessage) then
            raise Exception.Create('This should be a message but it''s not.');
          tcProject.ActiveTab := tiMessageEdit;
          CurrentMessage := (tvProject.Selected.tagobject as TMessage);
        end;
      2:
        begin
          if not(tvProject.Selected.tagobject is TMessageField) then
            raise Exception.Create
              ('This should be a message field but it''s not.');
          tcProject.ActiveTab := tiFieldEdit;
          CurrentField := (tvProject.Selected.tagobject as TMessageField);
        end;
    else
      tcProject.Visible := false;
    end;
  end
  else
    tcProject.Visible := false;

  btnNewMessage.Visible := assigned(tvProject.Selected);
  btnNewField.Visible := assigned(tvProject.Selected) and
    (tvProject.Selected.tag in [1, 2]);
end;

procedure TfrmMain.UpdateButtonsAndMenus;
begin
  mnuSave.Enabled := assigned(CurrentProject);
  mnuClose.Enabled := assigned(CurrentProject);
  mnuProject.Enabled := assigned(CurrentProject);
  mnuDelphiExport.Enabled := assigned(CurrentProject);
end;

initialization

{$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown := true;
{$ENDIF}
TDialogService.PreferredMode := TDialogService.TPreferredMode.Sync;

finalization

end.
