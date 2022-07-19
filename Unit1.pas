unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForma = record
  nome : String;
  case isQuadrado : Boolean of
    True : (x1,y1,x2,y2 : Integer);
    false : (x,y : Integer);
  end;

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var Forma : TForma;
begin
  Forma.nome := 'Forma 1';
  Forma.isQuadrado := true;
  forma.x1 := 1;
  forma.x2 := 2;
  forma.y1 := 3;
  forma.y2 := 4;
  ShowMessage(format('Nome: %s%sx1: %d%sx2: %d%sy1: %d%sy2: %d%s',
                     [Forma.nome,sLineBreak,
                      forma.x1,sLineBreak,
                      forma.x2,sLineBreak,
                      forma.y1,sLineBreak,
                      forma.y2,sLineBreak]));
end;

procedure TForm1.Button2Click(Sender: TObject);
var Forma : TForma;
begin
  Forma.nome := 'Forma 1';
  Forma.isQuadrado := false;
  forma.x := 1;
  forma.y := 2;
  ShowMessage(format('Nome: %s%sx: %d%sy: %d',
                     [Forma.nome,sLineBreak,
                      forma.x,sLineBreak,
                      forma.y,sLineBreak]));
end;

end.
