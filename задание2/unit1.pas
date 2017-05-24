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
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
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
  var x, y:real;
      kod1,kod2:integer;
begin
   val(Edit1.Text,x,kod1);
   val(Edit2.Text,y,kod2);

   if (kod1=0) and (kod2=0) then begin
      Label3.Visible:=true;

      if (x<=1) and (y<=1) and (x>=-1*y) and (y>=-1*x) then
         Label3.Caption:='Точка принадлежит графику'
      else
         Label3.Caption:='Точка не принадлежит графику';
   end

   else
       MessageDlg('Введите числовое значение', mtInformation,[mbOk],0);
end;

end.

