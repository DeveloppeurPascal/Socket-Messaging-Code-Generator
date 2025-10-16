(* C2PP
  ***************************************************************************

  Socket Messaging Code Generator

  Copyright 2023-2025 Patrick PREMARTIN under AGPL 3.0 license.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
  THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
  DEALINGS IN THE SOFTWARE.

  ***************************************************************************

  Author(s) :
  Patrick PREMARTIN

  Site :
  https://smcodegenerator.olfsoftware.fr

  Project site :
  https://github.com/DeveloppeurPascal/Socket-Messaging-Code-Generator

  ***************************************************************************
  File last update : 2025-10-16T10:42:55.290+02:00
  Signature : 2726733cb30935c3b358aef737d095b0ccdc1f91
  ***************************************************************************
*)

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
