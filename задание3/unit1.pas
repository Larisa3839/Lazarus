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
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
var x1,x2,y1,y2,b,c,d,k,m,ds:real;
    kod1,kod2,kod3,kod4,kod5:integer;
begin
	val(Edit1.Text,b,kod1);
   	val(Edit2.Text,c,kod2);
   	val(Edit3.Text,d,kod3);
   	val(Edit4.Text,k,kod4);
   	val(Edit5.Text,m,kod5);

   	if (kod1=0) and (kod2=0) and (kod3=0) and (kod4=0) and (kod5=0) then
   	   begin
	        ds:=sqr((c-k))-4*b*(d-m);

		  if ds < 0 then begin
                     Label6.Visible:=true;
		     Label6.Caption:='Линии не пересекаются';end
                  else
		     if ds = 0 then begin
		        x1:=(-(c-k))/(2*b);
			y1:=k*x1+m;
			Label6.Visible:=true;
			Label6.Caption:='x1 = '+FloatToStrF(x1, ffFixed,5,2); end

		     else begin
		          x1:=(-(c-k)+sqrt(d))/(2*b);
			  x2:=(-(c-k)-sqrt(d))/(2*b);
			  y1:=k*x1+m;
			  y2:=k*x2+m;

			  Label6.Visible:=true;
			  Label7.Visible:=true;
			  Label8.Visible:=true;
			  Label9.Visible:=true;

			  Label6.Caption:='x1 = '+FloatToStrF(x1, ffFixed,5,2);
			  Label7.Caption:='x2 = '+FloatToStrF(x2, ffFixed,5,2);
			  Label8.Caption:='y1 = '+FloatToStrF(y1, ffFixed,5,2);
			  Label9.Caption:='y2 = '+FloatToStrF(y2, ffFixed,5,2);end;end

	else
	    MessageDlg('Введите числовое значение', mtInformation,[mbOk],0);
end;

end.

