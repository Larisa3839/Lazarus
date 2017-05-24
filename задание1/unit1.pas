unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
  var a, y:real;
      kod1:integer;

begin
  val(Edit1.Text,a,kod1);

  if kod1=0 then begin
     Label2.Visible:=true;

     if (a<=-2) or (a>=2) then
        y:=4
     else
       y:=sqr(a);

     Label2.Caption:='f(a) = '+FloatToStrF(y, ffFixed,5,2);
     end
  else
      MessageDlg('Введите числовое значение', mtInformation,[mbOk],0);

end;
end.

