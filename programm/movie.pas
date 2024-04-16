unit movie;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    screen: TImage;
    start: TButton;
    fps: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure startClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

var
  xc, x, yc, y, len: integer;
  k: real;

procedure TForm1.FormCreate(Sender: TObject);
begin
  fps.Enabled := false;
  screen.Canvas.Brush.Color := clWhite;
  Color := clWhite;
  screen.Canvas.Pen.Mode := pMNotXor;
  xc := screen.ClientWidth div 3;
  yc := screen.ClientHeight div 3;
  k := 2;
end;

procedure TForm1.startClick(Sender: TObject);
begin
  // head length
  len := round(20 * k);

  // making the right centre
  yc := yc + len;

  // head draw
  screen.Canvas.Ellipse(xc - len, yc - 2 * len, xc + len, yc);

  screen.Canvas.MoveTo(xc, yc);

  // body
  len := round(90 * k);
  screen.Canvas.LineTo(xc, yc + len);

  // pos to draw legs
  x := xc;
  y := yc + len;

  // left hip
  len := round(60 * k);
  screen.Canvas.LineTo(xc - len div 3, yc + 2 * len);

  // left shin
  len := round(50 * k);
  screen.Canvas.LineTo(xc - len div 2, yc + 3 * len);

  // left foot
  len := round(10 * k);
  screen.Canvas.LineTo(xc - 4 * len + 10, yc + 15 * len);

  screen.Canvas.MoveTo(x, y);

  // right hip
  len := round(60 * k);
  screen.Canvas.LineTo(xc + len div 3, yc + 2 * len);

  // right shin
  len := round(50 * k);
  screen.Canvas.LineTo(xc + len div 2, yc + 3 * len);

  // right foot
  len := round(10 * k);
  screen.Canvas.LineTo(xc + 4 * len - 10, yc + 15 * len);

  screen.Canvas.MoveTo(xc, yc);

  // left shoulder
  len := round(40 * k);
  screen.Canvas.LineTo(xc - len div 2 - 5, yc + len + 10 - round(20 * k));

  // left forearm
  len := round(30 * k);
  screen.Canvas.LineTo(xc - len, yc + 2 * len + 20 - round(20 * k));

  // left wrist
  len := round(10 * k);
  screen.Canvas.LineTo(xc - 4 * len + 5, yc + 7 * len + 4 - round(20 * k));

  screen.Canvas.MoveTo(xc, yc);

  // right shoulder
  len := round(40 * k);
  screen.Canvas.LineTo(xc + len div 2 + 5, yc + len + 10 - round(20 * k));

  // right forearm
  len := round(30 * k);
  screen.Canvas.LineTo(xc + len, yc + 2 * len + 20 - round(20 * k));

  // right wrist
  len := round(10 * k);
  screen.Canvas.LineTo(xc + 4 * len - 5, yc + 7 * len + 4 - round(20 * k));
  // some text
end;

end.
