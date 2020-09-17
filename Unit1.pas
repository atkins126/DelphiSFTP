unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  function SftpCall(sHostName,sUserName,sPassword,sPath,sFile,sAction : PAnsiChar):PAnsiChar; stdcall; external 'SftpConn.dll';
var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var sResult : String;
begin
   sResult := SftpCall(PAnsiChar(Edit1.Text),PAnsiChar(Edit2.Text),PAnsiChar(Edit3.Text),'/home/myvm/','D:\Shared\film.json','Pull');
   ShowMessage(sResult);
end;

end.
