unit movie;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.MPlayer,
  Vcl.Menus;

type
  TForm1 = class(TForm)
    screen: TImage;
    start: TButton;
    fps: TTimer;
    OpenDialog1: TOpenDialog;
    MediaPlayer2: TMediaPlayer;
    MediaPlayer1: TMediaPlayer;
    walking: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure PictureDraw1(Sender: TObject);
    procedure PictureDraw2(Sender: TObject);
    procedure PictureDraw3(Sender: TObject);
    procedure PictureDraw4(Sender: TObject);
    procedure PictureDraw5(Sender: TObject);
    procedure PictureDraw6(Sender: TObject);
    procedure PictureDraw7(Sender: TObject);
    procedure PictureDraw8(Sender: TObject);
    procedure PictureDraw9(Sender: TObject);
    procedure PictureDraw10(Sender: TObject);
    procedure PictureDraw11(Sender: TObject);
    procedure PictureDraw12(Sender: TObject);
    procedure PictureDraw13(Sender: TObject);
    procedure PictureDraw14(Sender: TObject);
    procedure PictureDrawW1(Sender: TObject);
    procedure PictureDrawW2(Sender: TObject);
    procedure PictureDrawW3(Sender: TObject);
    procedure PictureDrawW4(Sender: TObject);
    procedure PictureDrawW5(Sender: TObject);
    procedure PictureDrawW6(Sender: TObject);
    procedure startClick(Sender: TObject);
    procedure fpsTimer(Sender: TObject);
    procedure walkingTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  xc, yc, xc_start, yc_start: integer;
  k: real;
  i: integer;
  sign: boolean;

implementation

{$R *.dfm}

procedure TForm1.PictureDraw1(Sender: TObject);
var
  xc, yc, xLb, yLb: integer;

begin
  screen.Canvas.Pen.Width := round(3 * k);
  xc := xc_start;
  yc := yc_start;
  // head
  screen.Canvas.Ellipse(xc - round(40 * k), yc - round(40 * k),
    xc + round(40 * k), yc + round(40 * k));

  // face
  screen.Canvas.Ellipse(xc - round(17 * k), yc + round(6 * k),
    xc - round(20 * k), yc + round(3 * k));
  screen.Canvas.Ellipse(xc + round(17 * k), yc - round(2 * k),
    xc + round(20 * k), yc - round(5 * k));
  screen.Canvas.MoveTo(xc - round(20 * k), yc + round(18 * k));
  screen.Canvas.LineTo(xc + round(25 * k), yc + round(5 * k));

  // body
  yc := yc + round(40 * k);
  screen.Canvas.MoveTo(xc, yc);
  screen.Canvas.LineTo(xc - round(20 * k), yc + round(160 * k));
  xLb := xc - round(20 * k);
  yLb := yc + round(160 * k);
  // left hip
  screen.Canvas.LineTo(xLb - round(30 * k), yLb + round(80 * k));
  // left shin
  screen.Canvas.LineTo(xLb - round(80 * k), yLb + round(180 * k));
  // left foot
  screen.Canvas.LineTo(xLb - round(30 * k), yLb + round(200 * k));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb + round(90 * k), yLb + round(80 * k));
  // right shin
  screen.Canvas.LineTo(xLb + round(80 * k), yLb + round(180 * k));
  // right foot
  screen.Canvas.LineTo(xLb + round(110 * k), yLb + round(200 * k));
  screen.Canvas.MoveTo(xc, yc);
  // left shoulder
  screen.Canvas.LineTo(xc - round(70 * k), yc + round(110 * k));
  // left forearm
  screen.Canvas.LineTo(xc + round(5 * k), yc + round(25 * k));
  // left wrist
  screen.Canvas.LineTo(xc + round(5 * k), yc + round(5 * k));
  screen.Canvas.MoveTo(xc, yc);
  // right shoulder
  screen.Canvas.LineTo(xc + round(75 * k), yc - round(35 * k));
  // right forearm
  screen.Canvas.LineTo(xc + round(100 * k), yc - round(20 * k));
  // right wrist
  screen.Canvas.LineTo(xc + round(95 * k), yc);
end;

procedure TForm1.PictureDraw2(Sender: TObject);
var
  xc, yc, xLb, yLb: integer;

begin
  screen.Canvas.Pen.Width := round(k * 3);
  xc := xc_start;
  yc := yc_start + round(10 * k);
  // head
  screen.Canvas.Ellipse(xc - round(40 * k), yc - round(40 * k),
    xc + round(40 * k), yc + round(40 * k));
  // face
  screen.Canvas.Ellipse(xc - round(k * 12), yc - round(k * 5),
    xc - round(k * 15), yc - round(k * 8));
  screen.Canvas.Ellipse(xc + round(k * 20), yc - round(k * 15),
    xc + round(k * 23), yc - round(k * 18));
  screen.Canvas.MoveTo(xc - round(k * 5), yc + round(k * 2));
  screen.Canvas.LineTo(xc + round(k * 25), yc - round(k * 10));
  // body
  yc := yc + round(k * 40);
  screen.Canvas.MoveTo(xc, yc);
  screen.Canvas.LineTo(xc, yc + round(k * 160));
  xLb := xc;
  yLb := yc + round(k * 160);
  // left hip
  screen.Canvas.LineTo(xLb - round(k * 30), yLb + round(k * 80));
  // left shin
  screen.Canvas.LineTo(xLb - round(k * 140), yLb + round(k * 50));
  // left foot
  screen.Canvas.LineTo(xLb - round(k * 150), yLb + round(k * 85));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb + round(k * 70), yLb + round(k * 80));
  // right shin
  screen.Canvas.LineTo(xLb + round(k * 60), yLb + round(k * 180));
  // right foot
  screen.Canvas.LineTo(xLb + round(k * 90), yLb + round(k * 200));
  screen.Canvas.MoveTo(xc, yc);
  // left shoulder
  screen.Canvas.LineTo(xc - round(k * 30), yc + round(k * 20));
  // left forearm
  screen.Canvas.LineTo(xc - round(k * 10), yc + round(k * 115));
  // left wrist
  screen.Canvas.LineTo(xc + round(k * 5), yc + round(k * 5));
  screen.Canvas.MoveTo(xc, yc);
  // right shoulder
  screen.Canvas.LineTo(xc + round(k * 75), yc + round(k * 45));
  // right forearm
  screen.Canvas.LineTo(xc + round(k * 100), yc + round(k * 55));
  // right wrist
  screen.Canvas.LineTo(xc + round(k * 95), yc);
end;

procedure TForm1.PictureDraw3(Sender: TObject);
var
  xc, yc, xLb, yLb: integer;

begin
  screen.Canvas.Pen.Width := round(k * 3);
  xc := xc_start;
  yc := yc_start;
  // head
  screen.Canvas.Ellipse(xc - round(k * 40), yc - round(k * 40),
    xc + round(k * 40), yc + round(k * 40));

  // face
  screen.Canvas.Ellipse(xc - round(k * 12), yc + round(k * 6),
    xc - round(k * 15), yc + round(k * 3));
  screen.Canvas.Ellipse(xc + round(k * 20), yc - round(k * 2),
    xc + round(k * 23), yc - round(k * 5));
  screen.Canvas.MoveTo(xc - round(k * 20), yc + round(k * 18));
  screen.Canvas.LineTo(xc + round(k * 5), yc + round(k * 15));
  screen.Canvas.LineTo(xc + round(k * 25), yc + round(k * 5));

  // body
  yc := yc + round(k * 40);
  screen.Canvas.MoveTo(xc, yc);
  screen.Canvas.LineTo(xc + round(k * 20), yc + round(k * 145));
  xLb := xc + round(k * 20);
  yLb := yc + round(k * 145);
  // left hip
  screen.Canvas.LineTo(xLb - round(k * 30), yLb + round(k * 80));
  // left shin
  screen.Canvas.LineTo(xLb - round(k * 130), yLb + round(k * 10));
  // left foot
  screen.Canvas.LineTo(xLb - round(k * 140), yLb + round(k * 45));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb + round(k * 70), yLb + round(k * 60));
  // right shin
  screen.Canvas.LineTo(xLb + round(k * 45), yLb + round(k * 180));
  // right foot
  screen.Canvas.LineTo(xLb + round(k * 90), yLb + round(k * 200));
  screen.Canvas.MoveTo(xc, yc);
  // left shoulder
  screen.Canvas.LineTo(xc + round(k * 30), yc + round(k * 20));
  // left forearm
  screen.Canvas.LineTo(xc + round(k * 55), yc - round(k * 45));
  // left wrist
  screen.Canvas.LineTo(xc + round(k * 50), yc - round(k * 65));
  screen.Canvas.MoveTo(xc, yc);
  // right shoulder
  screen.Canvas.LineTo(xc + round(k * 75), yc + round(k * 30));
  // right forearm
  screen.Canvas.LineTo(xc + round(k * 90), yc - round(k * 50));
  // right wrist
  screen.Canvas.LineTo(xc + round(k * 85), yc - round(k * 70));
end;

procedure TForm1.PictureDraw4(Sender: TObject);
var
  xc, yc, xLb, yLb: integer;

begin
  screen.Canvas.Pen.Width := round(k * 3);
  xc := xc_start;
  yc := yc_start;
  // head
  screen.Canvas.Ellipse(xc - round(k * 40), yc - round(k * 40),
    xc + round(k * 40), yc + round(k * 40));

  // face
  screen.Canvas.Ellipse(xc - round(k * 18), yc - round(k * 6),
    xc - round(k * 15), yc - round(k * 3));
  screen.Canvas.Ellipse(xc + round(k * 17), yc + round(k * 2),
    xc + round(k * 20), yc + round(k * 5));
  screen.Canvas.MoveTo(xc - round(k * 20), yc + round(k * 8));
  screen.Canvas.LineTo(xc + round(k * 20), yc + round(k * 18));

  // body
  yc := yc + round(k * 40);
  screen.Canvas.MoveTo(xc, yc);
  screen.Canvas.LineTo(xc + round(k * 30), yc + round(k * 140));
  xLb := xc + round(k * 30);
  yLb := yc + round(k * 140);
  // left hip
  screen.Canvas.LineTo(xLb - round(k * 20), yLb + round(k * 80));
  // left shin
  screen.Canvas.LineTo(xLb - round(k * 100), yLb + round(k * 150));
  // left foot
  screen.Canvas.LineTo(xLb - round(k * 105), yLb + round(k * 185));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb + round(k * 70), yLb + round(k * 60));
  // right shin
  screen.Canvas.LineTo(xLb + round(k * 45), yLb + round(k * 180));
  // right foot
  screen.Canvas.LineTo(xLb + round(k * 90), yLb + round(k * 200));
  screen.Canvas.MoveTo(xc, yc);
  // left shoulder
  screen.Canvas.LineTo(xc + round(k * 30), yc + round(k * 70));
  // left forearm
  screen.Canvas.LineTo(xc + round(k * 45), yc - round(k * 15));
  // left wrist
  screen.Canvas.LineTo(xc + round(k * 45), yc - round(k * 45));
  screen.Canvas.MoveTo(xc, yc);
  // right shoulder
  screen.Canvas.LineTo(xc + round(k * 75), yc + round(k * 45));
  // right forearm
  screen.Canvas.LineTo(xc + round(k * 47), yc - round(k * 15));
  // right wrist
  screen.Canvas.LineTo(xc + round(k * 47), yc - round(k * 45));
  // clapEffect
  screen.Canvas.MoveTo(xc + round(k * 60), yc - round(k * 55));
  screen.Canvas.LineTo(xc + round(k * 75), yc - round(k * 80));
  screen.Canvas.MoveTo(xc + round(k * 70), yc - round(k * 40));
  screen.Canvas.LineTo(xc + round(k * 95), yc - round(k * 45));
  screen.Canvas.MoveTo(xc + round(k * 60), yc - round(k * 25));
  screen.Canvas.LineTo(xc + round(k * 85), yc - round(k * 5));
  screen.Canvas.MoveTo(xc + round(k * 30), yc - round(k * 55));
  screen.Canvas.LineTo(xc + round(k * 10), yc - round(k * 80));
  screen.Canvas.MoveTo(xc + round(k * 30), yc - round(k * 40));
  screen.Canvas.LineTo(xc + round(k * 10), yc - round(k * 45));
  screen.Canvas.MoveTo(xc + round(k * 35), yc - round(k * 25));
  screen.Canvas.LineTo(xc + round(k * 15), yc - round(k * 15));
end;

procedure TForm1.PictureDraw5(Sender: TObject);
var
  xc, yc, xLb, yLb: integer;

begin
  screen.Canvas.Pen.Width := round(k * 3);
  xc := xc_start;
  yc := yc_start;
  // head
  screen.Canvas.Ellipse(xc - round(k * 40), yc - round(k * 40),
    xc + round(k * 40), yc + round(k * 40));

  // face
  screen.Canvas.Ellipse(xc - round(k * 14), yc - round(k * 3),
    xc - round(k * 11), yc);
  screen.Canvas.Ellipse(xc + round(k * 20), yc - round(k * 3),
    xc + round(k * 23), yc);
  screen.Canvas.MoveTo(xc - round(k * 16), yc + round(k * 10));
  screen.Canvas.LineTo(xc + round(k * 26), yc + round(k * 13));

  // body
  yc := yc + round(k * 40);
  screen.Canvas.MoveTo(xc, yc);
  screen.Canvas.LineTo(xc + round(k * 20), yc + round(k * 145));
  xLb := xc + round(k * 20);
  yLb := yc + round(k * 145);
  // left hip
  screen.Canvas.LineTo(xLb - round(k * 20), yLb + round(k * 80));
  // left shin
  screen.Canvas.LineTo(xLb - round(k * 60), yLb + round(k * 195));
  // left foot
  screen.Canvas.LineTo(xLb - round(k * 25), yLb + round(k * 200));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb + round(k * 70), yLb + round(k * 60));
  // right shin
  screen.Canvas.LineTo(xLb + round(k * 45), yLb + round(k * 180));
  // right foot
  screen.Canvas.LineTo(xLb + round(k * 90), yLb + round(k * 200));
  screen.Canvas.MoveTo(xc, yc);
  // left shoulder
  screen.Canvas.LineTo(xc - round(k * 25), yc + round(k * 90));
  // left forearm
  screen.Canvas.LineTo(xc + round(k * 45), yc + round(k * 25));
  // left wrist
  screen.Canvas.LineTo(xc + round(k * 50), yc + round(k * 50));
  screen.Canvas.MoveTo(xc, yc);
  // right shoulder
  screen.Canvas.LineTo(xc + round(k * 68), yc + round(k * 55));
  // right forearm
  screen.Canvas.LineTo(xc + round(k * 43), yc - round(k * 15));
  // right wrist
  screen.Canvas.LineTo(xc + round(k * 15), yc);
end;

procedure TForm1.PictureDraw6(Sender: TObject);
var
  xc, yc, xLb, yLb: integer;

begin
  screen.Canvas.Pen.Width := round(k * 3);
  xc := xc_start;
  yc := yc_start;
  // head
  screen.Canvas.Ellipse(xc - round(k * 40), yc - round(k * 40),
    xc + round(k * 40), yc + round(k * 40));

  // face
  screen.Canvas.Ellipse(xc - round(k * 22), yc - round(k * 7),
    xc - round(k * 19), yc - round(k * 4));
  screen.Canvas.Ellipse(xc + round(k * 13), yc - round(k * 3),
    xc + round(k * 15), yc);
  screen.Canvas.MoveTo(xc - round(k * 27), yc + round(k * 10));
  screen.Canvas.LineTo(xc + round(k * 2), yc + round(k * 13));
  screen.Canvas.LineTo(xc + round(k * 22), yc + round(k * 12));

  // body
  yc := yc + round(k * 40);
  screen.Canvas.MoveTo(xc, yc);
  screen.Canvas.LineTo(xc, yc + round(k * 150));
  xLb := xc;
  yLb := yc + round(k * 150);
  // left hip
  screen.Canvas.LineTo(xLb - round(k * 35), yLb + round(k * 90));
  // left shin
  screen.Canvas.LineTo(xLb - round(k * 25), yLb + round(k * 160));
  // left foot
  screen.Canvas.LineTo(xLb - round(k * 35), yLb + round(k * 175));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb + round(k * 65), yLb + round(k * 60));
  // right shin
  screen.Canvas.LineTo(xLb + round(k * 45), yLb + round(k * 200));
  // right foot
  screen.Canvas.LineTo(xLb + round(k * 80), yLb + round(k * 200));
  screen.Canvas.MoveTo(xc, yc);
  // left shoulder
  screen.Canvas.LineTo(xc - round(k * 65), yc + round(k * 80));
  // left forearm
  screen.Canvas.LineTo(xc - round(k * 60), yc + round(k * 140));
  // left wrist
  screen.Canvas.LineTo(xc - round(k * 45), yc + round(k * 150));
  screen.Canvas.MoveTo(xc, yc);
  // right shoulder
  screen.Canvas.LineTo(xc + round(k * 38), yc + round(k * 95));
  // right forearm
  screen.Canvas.LineTo(xc - round(k * 20), yc + round(k * 45));
  // right wrist
  screen.Canvas.LineTo(xc - round(k * 35), yc + round(k * 55));
end;

procedure TForm1.PictureDraw7(Sender: TObject);
var
  xc, yc, xLb, yLb: integer;

begin
  screen.Canvas.Pen.Width := round(k * 3);
  xc := xc_start;
  yc := yc_start;
  // head
  screen.Canvas.Ellipse(xc - round(k * 40), yc - round(k * 40),
    xc + round(k * 40), yc + round(k * 40));

  // face
  screen.Canvas.Ellipse(xc - round(k * 25), yc - round(k * 1),
    xc - round(k * 22), yc - round(k * 4));
  screen.Canvas.Ellipse(xc + round(k * 10), yc, xc + round(k * 13),
    yc + round(k * 3));
  screen.Canvas.MoveTo(xc - round(k * 27), yc + round(k * 10));
  screen.Canvas.LineTo(xc + round(k * 17), yc + round(k * 12));

  // body
  yc := yc + round(k * 40);
  screen.Canvas.MoveTo(xc, yc);
  screen.Canvas.LineTo(xc, yc + round(k * 150));
  xLb := xc;
  yLb := yc + round(k * 150);
  // left hip
  screen.Canvas.LineTo(xLb - round(k * 35), yLb + round(k * 90));
  // left shin
  screen.Canvas.LineTo(xLb - round(k * 25), yLb + round(k * 180));
  // left foot
  screen.Canvas.LineTo(xLb - round(k * 35), yLb + round(k * 195));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb + round(k * 65), yLb + round(k * 60));
  // right shin
  screen.Canvas.LineTo(xLb + round(k * 45), yLb + round(k * 200));
  // right foot
  screen.Canvas.LineTo(xLb + round(k * 80), yLb + round(k * 200));
  screen.Canvas.MoveTo(xc, yc);
  // left shoulder
  screen.Canvas.LineTo(xc - round(k * 70), yc - round(k * 5));
  // left forearm
  screen.Canvas.LineTo(xc - round(k * 120), yc + round(k * 40));
  // left wrist
  screen.Canvas.LineTo(xc - round(k * 120), yc + round(k * 45));
  screen.Canvas.MoveTo(xc, yc);
  // right shoulder
  screen.Canvas.LineTo(xc + round(k * 30), yc + round(k * 55));
  // right forearm
  screen.Canvas.LineTo(xc - round(k * 50), yc + round(k * 40));
  // right wrist
  screen.Canvas.LineTo(xc - round(k * 65), yc + round(k * 45));
end;

procedure TForm1.PictureDraw8(Sender: TObject);
var
  xc, yc, xLb, yLb: integer;

begin
  screen.Canvas.Pen.Width := round(k * 3);
  xc := xc_start;
  yc := yc_start - round(k * 10);
  // head
  screen.Canvas.Ellipse(xc - round(k * 40), yc - round(k * 40),
    xc + round(k * 40), yc + round(k * 40));

  // face
  screen.Canvas.Ellipse(xc - round(k * 17), yc + round(k * 6),
    xc - round(k * 20), yc + round(k * 3));
  screen.Canvas.Ellipse(xc + round(k * 17), yc - round(k * 2),
    xc + round(k * 20), yc - round(k * 5));
  screen.Canvas.MoveTo(xc - round(k * 20), yc + round(k * 18));
  screen.Canvas.LineTo(xc + round(k * 25), yc + round(k * 5));

  // body
  yc := yc + round(k * 40);
  screen.Canvas.MoveTo(xc, yc);
  screen.Canvas.LineTo(xc + round(k * 20), yc + round(k * 160));
  xLb := xc + round(k * 20);
  yLb := yc + round(k * 160);
  // left hip
  screen.Canvas.LineTo(xLb + round(k * 30), yLb + round(k * 80));
  // left shin
  screen.Canvas.LineTo(xLb + round(k * 80), yLb + round(k * 180));
  // left foot
  screen.Canvas.LineTo(xLb + round(k * 30), yLb + round(k * 200));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb - round(k * 90), yLb + round(k * 80));
  // right shin
  screen.Canvas.LineTo(xLb - round(k * 80), yLb + round(k * 180));
  // right foot
  screen.Canvas.LineTo(xLb - round(k * 110), yLb + round(k * 200));
  screen.Canvas.MoveTo(xc, yc);
  // left shoulder
  screen.Canvas.LineTo(xc + round(k * 70), yc + round(k * 110));
  // left forearm
  screen.Canvas.LineTo(xc - round(k * 5), yc + round(k * 25));
  // left wrist
  screen.Canvas.LineTo(xc - round(k * 5), yc + round(k * 5));
  screen.Canvas.MoveTo(xc, yc);
  // right shoulder
  screen.Canvas.LineTo(xc - round(k * 75), yc - round(k * 35));
  // right forearm
  screen.Canvas.LineTo(xc - round(k * 100), yc - round(k * 20));
  // right wrist
  screen.Canvas.LineTo(xc - round(k * 95), yc);
end;

procedure TForm1.PictureDraw9(Sender: TObject);
var
  xc, yc, xLb, yLb: integer;

begin
  screen.Canvas.Pen.Width := round(k * 3);
  xc := xc_start;
  yc := yc_start + round(k * 10);
  // head
  screen.Canvas.Ellipse(xc - round(k * 40), yc - round(k * 40),
    xc + round(k * 40), yc + round(k * 40));
  // face
  screen.Canvas.Ellipse(xc + round(k * 12), yc - round(k * 5),
    xc + round(k * 15), yc - round(k * 8));
  screen.Canvas.Ellipse(xc - round(k * 20), yc - round(k * 15),
    xc - round(k * 23), yc - round(k * 18));
  screen.Canvas.MoveTo(xc + round(k * 5), yc + round(k * 2));
  screen.Canvas.LineTo(xc - round(k * 25), yc - round(k * 10));
  // body
  yc := yc + round(k * 40);
  screen.Canvas.MoveTo(xc, yc);
  screen.Canvas.LineTo(xc, yc + round(k * 160));
  xLb := xc;
  yLb := yc + round(k * 160);
  // left hip
  screen.Canvas.LineTo(xLb + round(k * 30), yLb + round(k * 80));
  // left shin
  screen.Canvas.LineTo(xLb + round(k * 140), yLb + round(k * 50));
  // left foot
  screen.Canvas.LineTo(xLb + round(k * 150), yLb + round(k * 85));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb - round(k * 70), yLb + round(k * 80));
  // right shin
  screen.Canvas.LineTo(xLb - round(k * 60), yLb + round(k * 180));
  // right foot
  screen.Canvas.LineTo(xLb - round(k * 90), yLb + round(k * 200));
  screen.Canvas.MoveTo(xc, yc);
  // left shoulder
  screen.Canvas.LineTo(xc + round(k * 30), yc + round(k * 20));
  // left forearm

  screen.Canvas.LineTo(xc + round(k * 10), yc + round(k * 115));
  // left wrist
  screen.Canvas.LineTo(xc - round(k * 5), yc + round(k * 5));
  screen.Canvas.MoveTo(xc, yc);
  // right shoulder
  screen.Canvas.LineTo(xc - round(k * 75), yc + round(k * 45));
  // right forearm
  screen.Canvas.LineTo(xc - round(k * 100), yc + round(k * 55));
  // right wrist
  screen.Canvas.LineTo(xc - round(k * 95), yc);
end;

procedure TForm1.PictureDraw10(Sender: TObject);
var
  xc, yc, xLb, yLb: integer;

begin
  screen.Canvas.Pen.Width := round(k * 3);
  xc := xc_start;
  yc := yc_start;
  // head
  screen.Canvas.Ellipse(xc - round(k * 40), yc - round(k * 40),
    xc + round(k * 40), yc + round(k * 40));

  // face
  screen.Canvas.Ellipse(xc + round(k * 12), yc + round(k * 6),
    xc + round(k * 15), yc + round(k * 3));
  screen.Canvas.Ellipse(xc - round(k * 20), yc - round(k * 2),
    xc - round(k * 23), yc - round(k * 5));
  screen.Canvas.MoveTo(xc + round(k * 20), yc + round(k * 18));
  screen.Canvas.LineTo(xc - round(k * 5), yc + round(k * 15));
  screen.Canvas.LineTo(xc - round(k * 25), yc + round(k * 5));

  // body
  yc := yc + round(k * 40);
  screen.Canvas.MoveTo(xc, yc);
  screen.Canvas.LineTo(xc - round(k * 20), yc + round(k * 145));
  xLb := xc - round(k * 20);
  yLb := yc + round(k * 145);
  // left hip
  screen.Canvas.LineTo(xLb + round(k * 30), yLb + round(k * 80));
  // left shin
  screen.Canvas.LineTo(xLb + round(k * 130), yLb + round(k * 10));
  // left foot
  screen.Canvas.LineTo(xLb + round(k * 140), yLb + round(k * 45));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb - round(k * 70), yLb + round(k * 60));
  // right shin
  screen.Canvas.LineTo(xLb - round(k * 45), yLb + round(k * 180));
  // right foot
  screen.Canvas.LineTo(xLb - round(k * 90), yLb + round(k * 200));
  screen.Canvas.MoveTo(xc, yc);
  // left shoulder
  screen.Canvas.LineTo(xc - round(k * 30), yc + round(k * 20));
  // left forearm
  screen.Canvas.LineTo(xc - round(k * 55), yc - round(k * 45));
  // left wrist
  screen.Canvas.LineTo(xc - round(k * 50), yc - round(k * 65));
  screen.Canvas.MoveTo(xc, yc);
  // right shoulder
  screen.Canvas.LineTo(xc - round(k * 75), yc + round(k * 30));
  // right forearm
  screen.Canvas.LineTo(xc - round(k * 90), yc - round(k * 50));
  // right wrist
  screen.Canvas.LineTo(xc - round(k * 85), yc - round(k * 70));
end;

procedure TForm1.PictureDraw11(Sender: TObject);
var
  xc, yc, xLb, yLb: integer;

begin
  screen.Canvas.Pen.Width := round(k * 3);
  xc := xc_start;
  yc := yc_start;
  // head
  screen.Canvas.Ellipse(xc - round(k * 40), yc - round(k * 40),
    xc + round(k * 40), yc + round(k * 40));

  // face
  screen.Canvas.Ellipse(xc + round(k * 18), yc - round(k * 6),
    xc + round(k * 15), yc - round(k * 3));
  screen.Canvas.Ellipse(xc - round(k * 17), yc + round(k * 2),
    xc - round(k * 20), yc + round(k * 5));
  screen.Canvas.MoveTo(xc + round(k * 20), yc + round(k * 8));
  screen.Canvas.LineTo(xc - round(k * 20), yc + round(k * 18));

  // body
  yc := yc + round(k * 40);
  screen.Canvas.MoveTo(xc, yc);
  screen.Canvas.LineTo(xc - round(k * 30), yc + round(k * 140));
  xLb := xc - round(k * 30);
  yLb := yc + round(k * 140);
  // left hip
  screen.Canvas.LineTo(xLb + round(k * 20), yLb + round(k * 80));
  // left shin
  screen.Canvas.LineTo(xLb + round(k * 100), yLb + round(k * 150));
  // left foot
  screen.Canvas.LineTo(xLb + round(k * 105), yLb + round(k * 185));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb - round(k * 70), yLb + round(k * 60));
  // right shin
  screen.Canvas.LineTo(xLb - round(k * 45), yLb + round(k * 180));
  // right foot
  screen.Canvas.LineTo(xLb - round(k * 90), yLb + round(k * 200));
  screen.Canvas.MoveTo(xc, yc);
  // left shoulder
  screen.Canvas.LineTo(xc - round(k * 30), yc + round(k * 70));
  // left forearm
  screen.Canvas.LineTo(xc - round(k * 45), yc - round(k * 15));
  // left wrist
  screen.Canvas.LineTo(xc - round(k * 45), yc - round(k * 45));
  screen.Canvas.MoveTo(xc, yc);
  // right shoulder
  screen.Canvas.LineTo(xc - round(k * 75), yc + round(k * 45));
  // right forearm
  screen.Canvas.LineTo(xc - round(k * 47), yc - round(k * 15));
  // right wrist
  screen.Canvas.LineTo(xc - round(k * 47), yc - round(k * 45));
  // clapEffect
  screen.Canvas.MoveTo(xc - round(k * 60), yc - round(k * 55));
  screen.Canvas.LineTo(xc - round(k * 75), yc - round(k * 80));
  screen.Canvas.MoveTo(xc - round(k * 70), yc - round(k * 40));
  screen.Canvas.LineTo(xc - round(k * 95), yc - round(k * 45));
  screen.Canvas.MoveTo(xc - round(k * 60), yc - round(k * 25));
  screen.Canvas.LineTo(xc - round(k * 85), yc - round(k * 5));
  screen.Canvas.MoveTo(xc - round(k * 30), yc - round(k * 55));
  screen.Canvas.LineTo(xc - round(k * 10), yc - round(k * 80));
  screen.Canvas.MoveTo(xc - round(k * 30), yc - round(k * 40));
  screen.Canvas.LineTo(xc - round(k * 10), yc - round(k * 45));
  screen.Canvas.MoveTo(xc - round(k * 35), yc - round(k * 25));
  screen.Canvas.LineTo(xc - round(k * 15), yc - round(k * 15));
end;

procedure TForm1.PictureDraw12(Sender: TObject);
var
  xc, yc, xLb, yLb: integer;

begin
  screen.Canvas.Pen.Width := round(k * 3);
  xc := xc_start;
  yc := yc_start;
  // head
  screen.Canvas.Ellipse(xc - round(k * 40), yc - round(k * 40),
    xc + round(k * 40), yc + round(k * 40));

  // face
  screen.Canvas.Ellipse(xc + round(k * 14), yc - round(k * 3),
    xc + round(k * 11), yc);
  screen.Canvas.Ellipse(xc - round(k * 20), yc - round(k * 3),
    xc - round(k * 23), yc);
  screen.Canvas.MoveTo(xc + round(k * 16), yc + round(k * 10));
  screen.Canvas.LineTo(xc - round(k * 26), yc + round(k * 13));

  // body
  yc := yc + round(k * 40);
  screen.Canvas.MoveTo(xc, yc);
  screen.Canvas.LineTo(xc - round(k * 20), yc + round(k * 145));
  xLb := xc - round(k * 20);
  yLb := yc + round(k * 145);
  // left hip
  screen.Canvas.LineTo(xLb + round(k * 20), yLb + round(k * 80));
  // left shin
  screen.Canvas.LineTo(xLb + round(k * 60), yLb + round(k * 195));
  // left foot
  screen.Canvas.LineTo(xLb + round(k * 25), yLb + round(k * 200));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb - round(k * 70), yLb + round(k * 60));
  // right shin
  screen.Canvas.LineTo(xLb - round(k * 45), yLb + round(k * 180));
  // right foot
  screen.Canvas.LineTo(xLb - round(k * 90), yLb + round(k * 200));
  screen.Canvas.MoveTo(xc, yc);
  // left shoulder
  screen.Canvas.LineTo(xc + round(k * 25), yc + round(k * 90));
  // left forearm
  screen.Canvas.LineTo(xc - round(k * 45), yc + round(k * 25));
  // left wrist
  screen.Canvas.LineTo(xc - round(k * 50), yc + round(k * 50));
  screen.Canvas.MoveTo(xc, yc);
  // right shoulder
  screen.Canvas.LineTo(xc - round(k * 68), yc + round(k * 55));
  // right forearm
  screen.Canvas.LineTo(xc - round(k * 43), yc - round(k * 15));
  // right wrist
  screen.Canvas.LineTo(xc - round(k * 15), yc);
end;

procedure TForm1.PictureDraw13(Sender: TObject);
var
  xc, yc, xLb, yLb: integer;

begin
  screen.Canvas.Pen.Width := round(k * 3);
  xc := xc_start;
  yc := yc_start;
  // head
  screen.Canvas.Ellipse(xc - round(k * 40), yc - round(k * 40),
    xc + round(k * 40), yc + round(k * 40));

  // face
  screen.Canvas.Ellipse(xc + round(k * 22), yc - round(k * 7),
    xc + round(k * 19), yc - round(k * 4));
  screen.Canvas.Ellipse(xc - round(k * 13), yc - round(k * 3),
    xc - round(k * 15), yc);
  screen.Canvas.MoveTo(xc + round(k * 27), yc + round(k * 10));
  screen.Canvas.LineTo(xc - round(k * 2), yc + round(k * 13));
  screen.Canvas.LineTo(xc - round(k * 22), yc + round(k * 12));

  // body
  yc := yc + round(k * 40);
  screen.Canvas.MoveTo(xc, yc);
  screen.Canvas.LineTo(xc, yc + round(k * 150));
  xLb := xc;
  yLb := yc + round(k * 150);
  // left hip
  screen.Canvas.LineTo(xLb + round(k * 35), yLb + round(k * 90));
  // left shin
  screen.Canvas.LineTo(xLb + round(k * 25), yLb + round(k * 160));
  // left foot
  screen.Canvas.LineTo(xLb + round(k * 35), yLb + round(k * 175));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb - round(k * 65), yLb + round(k * 60));
  // right shin
  screen.Canvas.LineTo(xLb - round(k * 45), yLb + round(k * 200));
  // right foot
  screen.Canvas.LineTo(xLb - round(k * 80), yLb + round(k * 200));
  screen.Canvas.MoveTo(xc, yc);
  // left shoulder
  screen.Canvas.LineTo(xc + round(k * 65), yc + round(k * 80));
  // left forearm
  screen.Canvas.LineTo(xc + round(k * 60), yc + round(k * 140));
  // left wrist
  screen.Canvas.LineTo(xc + round(k * 45), yc + round(k * 150));
  screen.Canvas.MoveTo(xc, yc);
  // right shoulder
  screen.Canvas.LineTo(xc - round(k * 38), yc + round(k * 95));
  // right forearm
  screen.Canvas.LineTo(xc + round(k * 20), yc + round(k * 45));
  // right wrist
  screen.Canvas.LineTo(xc + round(k * 35), yc + round(k * 55));
end;

procedure TForm1.PictureDraw14(Sender: TObject);
var
  xc, yc, xLb, yLb: integer;

begin
  screen.Canvas.Pen.Width := round(k * 3);
  xc := xc_start;
  yc := yc_start;
  // head
  screen.Canvas.Ellipse(xc - round(k * 40), yc - round(k * 40),
    xc + round(k * 40), yc + round(k * 40));

  // face
  screen.Canvas.Ellipse(xc + round(k * 25), yc - round(k * 1),
    xc + round(k * 22), yc - round(k * 4));
  screen.Canvas.Ellipse(xc - round(k * 10), yc, xc - round(k * 13),
    yc + round(k * 3));
  screen.Canvas.MoveTo(xc + round(k * 27), yc + round(k * 10));
  screen.Canvas.LineTo(xc - round(k * 17), yc + round(k * 12));

  // body
  yc := yc + round(k * 40);
  screen.Canvas.MoveTo(xc, yc);
  screen.Canvas.LineTo(xc, yc + round(k * 150));
  xLb := xc;
  yLb := yc + round(k * 150);
  // left hip
  screen.Canvas.LineTo(xLb + round(k * 35), yLb + round(k * 90));
  // left shin
  screen.Canvas.LineTo(xLb + round(k * 25), yLb + round(k * 180));
  // left foot
  screen.Canvas.LineTo(xLb + round(k * 35), yLb + round(k * 195));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb - round(k * 65), yLb + round(k * 60));
  // right shin
  screen.Canvas.LineTo(xLb - round(k * 45), yLb + round(k * 200));
  // right foot
  screen.Canvas.LineTo(xLb - round(k * 80), yLb + round(k * 200));
  screen.Canvas.MoveTo(xc, yc);
  // left shoulder
  screen.Canvas.LineTo(xc + round(k * 70), yc - round(k * 5));
  // left forearm
  screen.Canvas.LineTo(xc + round(k * 120), yc + round(k * 40));
  // left wrist
  screen.Canvas.LineTo(xc + round(k * 120), yc + round(k * 45));
  screen.Canvas.MoveTo(xc, yc);
  // right shoulder
  screen.Canvas.LineTo(xc - round(k * 30), yc + round(k * 55));
  // right forearm
  screen.Canvas.LineTo(xc + round(k * 50), yc + round(k * 40));
  // right wrist
  screen.Canvas.LineTo(xc + round(k * 65), yc + round(k * 45));
end;

procedure TForm1.fpsTimer(Sender: TObject);
begin
  inc(i);
  if sign then
    k := k + 0.02
  else
    k := k - 0.02;

  case i of
    1:
      begin
        screen.Picture := nil;
        PictureDraw1(Sender);
      end;
    2:
      begin
        screen.Picture := nil;
        PictureDraw2(Sender);
      end;
    3:
      begin
        screen.Picture := nil;
        PictureDraw3(Sender);
      end;
    4:
      begin
        screen.Picture := nil;
        PictureDraw4(Sender);
        MediaPlayer1.Play;
        // хлопок
      end;
    5:
      begin
        screen.Picture := nil;
        PictureDraw5(Sender);
      end;
    6:
      begin
        screen.Picture := nil;
        PictureDraw6(Sender);
      end;
    7:
      begin
        screen.Picture := nil;
        PictureDraw7(Sender);
      end;
    8:
      begin
        screen.Picture := nil;
        PictureDraw8(Sender);
      end;
    9:
      begin
        screen.Picture := nil;
        PictureDraw9(Sender);
      end;
    10:
      begin
        screen.Picture := nil;
        PictureDraw10(Sender);
      end;
    11:
      begin
        screen.Picture := nil;
        PictureDraw11(Sender);
        MediaPlayer1.Play;
      end;
    12:
      begin
        screen.Picture := nil;
        PictureDraw12(Sender);
      end;
    13:
      begin
        screen.Picture := nil;
        PictureDraw13(Sender);
      end;
    14:
      begin
        screen.Picture := nil;
        PictureDraw14(Sender);
      end;
  end;
  // if i=14 then fps.Enabled:=false;
  if i = 14 then
  begin
    i := 0;
    sign := not sign;
  end;
end;

procedure TForm1.PictureDrawW1(Sender: TObject);
var
  xc, yc, xLb, yLb: integer;

begin
  screen.Canvas.Pen.Width := round(3 * k);
  xc := xc_start;
  yc := yc_start;
  // head
  screen.Canvas.Ellipse(xc - round(40 * k), yc - round(40 * k),
    xc + round(40 * k), yc + round(40 * k));

  // face
  screen.Canvas.Ellipse(xc - round(17 * k), yc + round(6 * k),
    xc - round(20 * k), yc + round(3 * k));
  screen.Canvas.Ellipse(xc + round(17 * k), yc - round(2 * k),
    xc + round(20 * k), yc - round(5 * k));
  screen.Canvas.MoveTo(xc - round(20 * k), yc + round(18 * k));
  screen.Canvas.LineTo(xc + round(25 * k), yc + round(5 * k));

  // body
  yc := yc + round(40 * k);
  screen.Canvas.MoveTo(xc, yc);
  screen.Canvas.LineTo(xc + round(40 * k), yc + round(140 * k));
  xLb := xc + round(40 * k);
  yLb := yc + round(140 * k);
  // left hip
  screen.Canvas.LineTo(xLb - round(10 * k), yLb + round(90 * k));
  // left shin
  screen.Canvas.LineTo(xLb - round(20 * k), yLb + round(180 * k));
  // left foot
  screen.Canvas.LineTo(xLb - round(40 * k), yLb + round(120 * k));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb + round(30 * k), yLb - round(100 * k));
  // right shin
  screen.Canvas.LineTo(xLb + round(50 * k), yLb - round(20 * k));
  // right foot
  screen.Canvas.LineTo(xLb + round(80 * k), yLb - round(0 * k));
  screen.Canvas.MoveTo(xc, yc);
  // left shoulder
  screen.Canvas.LineTo(xc - round(55 * k), yc + round(15 * k));
  // left forearm
  screen.Canvas.LineTo(xc - round(70 * k), yc + round(80 * k));
  // left wrist
  screen.Canvas.LineTo(xc - round(50 * k), yc + round(95 * k));
  screen.Canvas.MoveTo(xc, yc);
  // right shoulder
  screen.Canvas.LineTo(xc + round(75 * k), yc - round(20 * k));
  // right forearm
  screen.Canvas.LineTo(xc + round(30 * k), yc + round(5 * k));
  // right wrist
  screen.Canvas.LineTo(xc + round(28 * k), yc - round(1 * k));

end;

procedure TForm1.PictureDrawW2(Sender: TObject);
var
  xc, yc, xLb, yLb: integer;

begin
  screen.Canvas.Pen.Width := round(3 * k);
  xc := xc_start;
  yc := yc_start;
  // head
  screen.Canvas.Ellipse(xc - round(40 * k), yc - round(40 * k),
    xc + round(40 * k), yc + round(40 * k));

  // face
  screen.Canvas.Ellipse(xc - round(17 * k), yc + round(6 * k),
    xc - round(20 * k), yc + round(3 * k));
  screen.Canvas.Ellipse(xc + round(17 * k), yc - round(2 * k),
    xc + round(20 * k), yc - round(5 * k));
  screen.Canvas.MoveTo(xc - round(20 * k), yc + round(18 * k));
  screen.Canvas.LineTo(xc + round(25 * k), yc + round(5 * k));

  // body
  yc := yc + round(40 * k);
  screen.Canvas.MoveTo(xc, yc);
  screen.Canvas.LineTo(xc + round(40 * k), yc + round(130 * k));
  xLb := xc + round(40 * k);
  yLb := yc + round(130 * k);
  // left hip
  screen.Canvas.LineTo(xLb - round(40 * k), yLb + round(90 * k));
  // left shin
  screen.Canvas.LineTo(xLb - round(20 * k), yLb + round(180 * k));
  // left foot
  screen.Canvas.LineTo(xLb - round(40 * k), yLb + round(200 * k));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb + round(65 * k), yLb - round(50 * k));
  // right shin
  screen.Canvas.LineTo(xLb + round(60 * k), yLb + round(30 * k));
  // right foot
  screen.Canvas.LineTo(xLb + round(80 * k), yLb + round(5 * k));
  screen.Canvas.MoveTo(xc, yc);
  // left shoulder
  screen.Canvas.LineTo(xc - round(15 * k), yc + round(70 * k));
  // left forearm
  screen.Canvas.LineTo(xc - round(13 * k), yc + round(143 * k));
  // left wrist
  screen.Canvas.LineTo(xc + round(7 * k), yc + round(148 * k));
  screen.Canvas.MoveTo(xc, yc);
  // right shoulder
  screen.Canvas.LineTo(xc + round(60 * k), yc + round(10 * k));
  // right forearm
  screen.Canvas.LineTo(xc + round(30 * k), yc + round(50 * k));
  // right wrist
  screen.Canvas.LineTo(xc + round(18 * k), yc + round(28 * k));

end;

procedure TForm1.PictureDrawW3(Sender: TObject);
var
  xc, yc, xLb, yLb: integer;

begin
  screen.Canvas.Pen.Width := round(3 * k);
  xc := xc_start;
  yc := yc_start;
  // head
  screen.Canvas.Ellipse(xc - round(40 * k), yc - round(40 * k),
    xc + round(40 * k), yc + round(40 * k));

  // face
  screen.Canvas.Ellipse(xc - round(17 * k), yc + round(6 * k),
    xc - round(20 * k), yc + round(3 * k));
  screen.Canvas.Ellipse(xc + round(17 * k), yc - round(2 * k),
    xc + round(20 * k), yc - round(5 * k));
  screen.Canvas.MoveTo(xc - round(20 * k), yc + round(18 * k));
  screen.Canvas.LineTo(xc + round(25 * k), yc + round(5 * k));

  // body
  yc := yc + round(40 * k);
  screen.Canvas.MoveTo(xc, yc);
  screen.Canvas.LineTo(xc + round(30 * k), yc + round(150 * k));
  xLb := xc + round(30 * k);
  yLb := yc + round(150 * k);
  // left hip
  screen.Canvas.LineTo(xLb - round(80 * k), yLb + round(30 * k));
  // left shin
  screen.Canvas.LineTo(xLb - round(35 * k), yLb + round(85 * k));
  // left foot
  screen.Canvas.LineTo(xLb - round(45 * k), yLb + round(130 * k));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb + round(25 * k), yLb - round(0 * k));
  // right shin
  screen.Canvas.LineTo(xLb + round(53 * k), yLb + round(53 * k));
  // right foot
  screen.Canvas.LineTo(xLb + round(53 * k), yLb - round(30 * k));
  screen.Canvas.MoveTo(xc, yc);
  // left shoulder
  screen.Canvas.LineTo(xc - round(35 * k), yc + round(70 * k));
  // left forearm
  screen.Canvas.LineTo(xc + round(13 * k), yc + round(83 * k));
  // left wrist
  screen.Canvas.LineTo(xc + round(23 * k), yc + round(95 * k));
  screen.Canvas.MoveTo(xc, yc);
  // right shoulder
  screen.Canvas.LineTo(xc + round(70 * k), yc + round(20 * k));
  // right forearm
  screen.Canvas.LineTo(xc + round(70 * k), yc + round(80 * k));
  // right wrist
  screen.Canvas.LineTo(xc + round(60 * k), yc + round(88 * k));

end;

procedure TForm1.PictureDrawW4(Sender: TObject);
var
  xc, yc, xLb, yLb: integer;

begin
  screen.Canvas.Pen.Width := round(3 * k);
  xc := xc_start;
  yc := yc_start;
  // head
  screen.Canvas.Ellipse(xc - round(40 * k), yc - round(40 * k),
    xc + round(40 * k), yc + round(40 * k));

  // face
  screen.Canvas.Ellipse(xc - round(17 * k), yc + round(6 * k),
    xc - round(20 * k), yc + round(3 * k));
  screen.Canvas.Ellipse(xc + round(17 * k), yc - round(2 * k),
    xc + round(20 * k), yc - round(5 * k));
  screen.Canvas.MoveTo(xc - round(20 * k), yc + round(18 * k));
  screen.Canvas.LineTo(xc + round(25 * k), yc + round(5 * k));

  // body
  yc := yc + round(40 * k);
  screen.Canvas.MoveTo(xc, yc);
  screen.Canvas.LineTo(xc + round(30 * k), yc + round(130 * k));
  xLb := xc + round(30 * k);
  yLb := yc + round(130 * k);
  // left hip
  screen.Canvas.LineTo(xLb - round(60 * k), yLb - round(50 * k));
  // left shin
  screen.Canvas.LineTo(xLb - round(35 * k), yLb + round(40 * k));
  // left foot
  screen.Canvas.LineTo(xLb - round(55 * k), yLb + round(65 * k));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb + round(27 * k), yLb + round(73 * k));
  // right shin
  screen.Canvas.LineTo(xLb + round(56 * k), yLb + round(148 * k));
  // right foot
  screen.Canvas.LineTo(xLb + round(70 * k), yLb + round(100 * k));
  screen.Canvas.MoveTo(xc, yc);
  // left shoulder
  screen.Canvas.LineTo(xc - round(65 * k), yc + round(13 * k));
  // left forearm
  screen.Canvas.LineTo(xc + round(3 * k), yc + round(53 * k));
  // left wrist
  screen.Canvas.LineTo(xc + round(3 * k), yc + round(33 * k));
  screen.Canvas.MoveTo(xc, yc);
  // right shoulder
  screen.Canvas.LineTo(xc + round(70 * k), yc + round(5 * k));
  // right forearm
  screen.Canvas.LineTo(xc + round(70 * k), yc + round(80 * k));
  // right wrist
  screen.Canvas.LineTo(xc + round(60 * k), yc + round(88 * k));

end;

procedure TForm1.PictureDrawW5(Sender: TObject);
var
  xc, yc, xLb, yLb: integer;

begin
  screen.Canvas.Pen.Width := round(3 * k);
  xc := xc_start;
  yc := yc_start;
  // head
  screen.Canvas.Ellipse(xc - round(40 * k), yc - round(40 * k),
    xc + round(40 * k), yc + round(40 * k));

  // face
  screen.Canvas.Ellipse(xc - round(17 * k), yc + round(6 * k),
    xc - round(20 * k), yc + round(3 * k));
  screen.Canvas.Ellipse(xc + round(17 * k), yc - round(2 * k),
    xc + round(20 * k), yc - round(5 * k));
  screen.Canvas.MoveTo(xc - round(20 * k), yc + round(18 * k));
  screen.Canvas.LineTo(xc + round(25 * k), yc + round(5 * k));

  // body
  yc := yc + round(40 * k);
  screen.Canvas.MoveTo(xc, yc);
  screen.Canvas.LineTo(xc + round(20 * k), yc + round(140 * k));
  xLb := xc + round(20 * k);
  yLb := yc + round(140 * k);
  // left hip
  screen.Canvas.LineTo(xLb - round(50 * k), yLb - round(40 * k));
  // left shin
  screen.Canvas.LineTo(xLb - round(50 * k), yLb + round(50 * k));
  // left foot
  screen.Canvas.LineTo(xLb - round(70 * k), yLb + round(35 * k));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb + round(48 * k), yLb + round(70 * k));
  // right shin
  screen.Canvas.LineTo(xLb - round(1 * k), yLb + round(110 * k));
  // right foot
  screen.Canvas.LineTo(xLb + round(16 * k), yLb + round(125 * k));
  screen.Canvas.MoveTo(xc, yc);
  // left shoulder
  screen.Canvas.LineTo(xc - round(55 * k), yc + round(30 * k));
  // left forearm
  screen.Canvas.LineTo(xc - round(3 * k), yc + round(45 * k));
  // left wrist
  screen.Canvas.LineTo(xc + round(1 * k), yc + round(25 * k));
  screen.Canvas.MoveTo(xc, yc);
  // right shoulder
  screen.Canvas.LineTo(xc + round(50 * k), yc + round(50 * k));
  // right forearm
  screen.Canvas.LineTo(xc + round(40 * k), yc + round(110 * k));
  // right wrist
  screen.Canvas.LineTo(xc + round(30 * k), yc + round(100 * k));

end;

procedure TForm1.PictureDrawW6(Sender: TObject); //fix
var
  xc, yc, xLb, yLb: integer;

begin
  screen.Canvas.Pen.Width := round(3 * k);
  xc := xc_start;
  yc := yc_start;
  // head
  screen.Canvas.Ellipse(xc - round(40 * k), yc - round(40 * k),
    xc + round(40 * k), yc + round(40 * k));

  // face
  screen.Canvas.Ellipse(xc - round(17 * k), yc + round(6 * k),
    xc - round(20 * k), yc + round(3 * k));
  screen.Canvas.Ellipse(xc + round(17 * k), yc - round(2 * k),
    xc + round(20 * k), yc - round(5 * k));
  screen.Canvas.MoveTo(xc - round(20 * k), yc + round(18 * k));
  screen.Canvas.LineTo(xc + round(25 * k), yc + round(5 * k));

  // body
  yc := yc + round(40 * k);
  screen.Canvas.MoveTo(xc, yc);
  screen.Canvas.LineTo(xc + round(30 * k), yc + round(150 * k));
  xLb := xc + round(30 * k);
  yLb := yc + round(150 * k);
  // left hip
  screen.Canvas.LineTo(xLb + round(80 * k), yLb + round(30 * k));
  // left shin
  screen.Canvas.LineTo(xLb + round(35 * k), yLb + round(85 * k));
  // left foot
  screen.Canvas.LineTo(xLb + round(45 * k), yLb + round(130 * k));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb - round(25 * k), yLb - round(0 * k));
  // right shin
  screen.Canvas.LineTo(xLb - round(53 * k), yLb + round(53 * k));
  // right foot
  screen.Canvas.LineTo(xLb - round(53 * k), yLb - round(30 * k));
  screen.Canvas.MoveTo(xc, yc);
  // left shoulder
  screen.Canvas.LineTo(xc + round(65 * k), yc + round(60 * k));
  // left forearm
  screen.Canvas.LineTo(xc + round(25 * k), yc + round(83 * k));
  // left wrist
  screen.Canvas.LineTo(xc + round(23 * k), yc + round(100 * k));
  screen.Canvas.MoveTo(xc, yc);
  // right shoulder
  screen.Canvas.LineTo(xc - round(30 * k), yc + round(60 * k));
  // right forearm
  screen.Canvas.LineTo(xc - round(10 * k), yc + round(90 * k));
  // right wrist
  screen.Canvas.LineTo(xc - round(3 * k), yc + round(80 * k));

end;

procedure TForm1.walkingTimer(Sender: TObject);

begin
  inc(i);
  case i of
    1:
      begin
        screen.Picture := nil;
        PictureDrawW1(Sender);
      end;
    2:
      begin
        screen.Picture := nil;
        PictureDrawW2(Sender);
      end;
    3:
      begin
        screen.Picture := nil;
        PictureDrawW3(Sender);
      end;
    4:
      begin
        screen.Picture := nil;
        PictureDrawW4(Sender);
      end;
    5:
      begin
        screen.Picture := nil;
        PictureDrawW5(Sender);
      end;
    6:
      begin
        screen.Picture := nil;
        PictureDrawW6(Sender);
      end;
  end;
  if i = 6 then
    i := 0;
end;

procedure TForm1.startClick(Sender: TObject);
begin
  i := 0;
  // fps.Enabled := true;
  // fps.Interval := 100;
  walking.Enabled := true;
  walking.Interval := 150;
  MediaPlayer2.FileName := 'Cadillac.mp3';
  MediaPlayer1.FileName := 'Clap.mp3';
  MediaPlayer1.Open;
  MediaPlayer2.Open;
  // MediaPlayer2.Play;
  xc_start := 550;
  yc_start := 170;
  k := 1;
  // sign := true;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  fps.Enabled := false;
  walking.Enabled := false;
  screen.Canvas.Brush.Color := clWhite;
  Color := clWhite;
end;

end.
