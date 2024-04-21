unit movie;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.MPlayer;

type
  TForm1 = class(TForm)
    screen: TImage;
    start: TButton;
    fps: TTimer;
    OpenDialog1: TOpenDialog;
    MediaPlayer2: TMediaPlayer;
    MediaPlayer1: TMediaPlayer;

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
    procedure startClick(Sender: TObject);
    procedure fpsTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  xc, yc,xc_start, yc_start: integer;
  k: real;
  i:integer;
  sign : boolean;



implementation

{$R *.dfm}


procedure TForm1.fpsTimer(Sender: TObject);
begin
  inc(i);
  if sign then k:=k+0.02
  else k:=k-0.02;


  case i of
  1: begin
       Screen.Picture:=nil;
       PictureDraw1(Sender);
     end;
  2: begin
       Screen.Picture:=nil;
       PictureDraw2(Sender);
     end;
  3: begin
       Screen.Picture:=nil;
       PictureDraw3(Sender);
     end;
  4: begin
       Screen.Picture:=nil;
       PictureDraw4(Sender);
       MediaPlayer1.Play;
       //хлопок
     end;
  5: begin
       Screen.Picture:=nil;
       PictureDraw5(Sender);
     end;
  6: begin
       Screen.Picture:=nil;
       PictureDraw6(Sender);
     end;
  7: begin
       Screen.Picture:=nil;
       PictureDraw7(Sender);
     end;
  8: begin
      Screen.Picture:=nil;
      PictureDraw8(Sender);
    end;
  9: begin
      Screen.Picture:=nil;
      PictureDraw9(Sender);
    end;
  10: begin
      Screen.Picture:=nil;
      PictureDraw10(Sender);
    end;
  11: begin
      Screen.Picture:=nil;

      PictureDraw11(Sender);
      MediaPlayer1.Play;
    end;
  12: begin
      Screen.Picture:=nil;
      PictureDraw12(Sender);
    end;
  13: begin
      Screen.Picture:=nil;
      PictureDraw13(Sender);
    end;
  14: begin
      Screen.Picture:=nil;
      PictureDraw14(Sender);
    end;
  end;
  //if i=14 then fps.Enabled:=false;
  if i=14 then begin
    i:=0;
    sign:=not sign;
  end;
end;



procedure TForm1.PictureDraw1(Sender: TObject);
var
  xC, yC, xLb, yLb : integer;

begin
  Screen.Canvas.Pen.Width:=round(3*k);
  xC:=xc_start;
  yC:=yc_start;
  // head
  screen.Canvas.Ellipse(xC-round(40*k), yC-round(40*k), xC+round(40*k), yC+round(40*k));

  // face
  screen.Canvas.Ellipse(xC-round(17*k), yC+round(6*k), xC-round(20*k), yC+round(3*k));
  screen.Canvas.Ellipse(xC+round(17*k), yC-round(2*k), xC+round(20*k), yC-round(5*k));
  screen.Canvas.MoveTo(xC-round(20*k), yC+round(18*k));
  screen.Canvas.LineTo(xC+round(25*k), yC+round(5*k));

  // body
  yC:=yC+round(40*k);
  screen.Canvas.MoveTo(xC,yC);
  screen.Canvas.LineTo(xC-round(20*k),yC+round(160*k));
  xLb:=xC-round(20*k);
  yLb:=yC+round(160*k);
  // left hip
  screen.Canvas.LineTo(xLb-round(30*k), yLb+round(80*k));
  // left shin
  screen.Canvas.LineTo(xLb-round(80*k), yLb+round(180*k));
  // left foot
  screen.Canvas.LineTo(xLb-round(30*k), yLb+round(200*k));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb+round(90*k), yLb+round(80*k));
  // right shin
  screen.Canvas.LineTo(xLb+round(80*k), yLb+round(180*k));
  // right foot
  screen.Canvas.LineTo(xLb+round(110*k), yLb+round(200*k));
  screen.Canvas.MoveTo(xC, yC);
  // left shoulder
  screen.Canvas.LineTo(xC-round(70*k), yC+round(110*k));
  // left forearm
  screen.Canvas.LineTo(xC+round(5*k), yC+round(25*k));
  // left wrist
  screen.Canvas.LineTo(xC+round(5*k), yC+round(5*k));
  screen.Canvas.MoveTo(xC, yC);
  // right shoulder
  screen.Canvas.LineTo(xC+round(75*k), yC-round(35*k));
  // right forearm
  screen.Canvas.LineTo(xC+round(100*k), yC-round(20*k));
  // right wrist
  screen.Canvas.LineTo(xC+round(95*k), yC);
end;


procedure TForm1.PictureDraw2(Sender: TObject);
var
  xC, yC, xLb, yLb : integer;

begin
  Screen.Canvas.Pen.Width:=round(k*3);
  xC:=xc_start;
  yC:=yc_start+round(10*k);
  // head
  screen.Canvas.Ellipse(xC-round(40*k), yC-round(40*k), xC+round(40*k), yC+round(40*k));
  // face
  screen.Canvas.Ellipse(xC-round(k*12), yC-round(k*5), xC-round(k*15), yC-round(k*8));
  screen.Canvas.Ellipse(xC+round(k*20), yC-round(k*15), xC+round(k*23), yC-round(k*18));
  screen.Canvas.MoveTo(xC-round(k*5), yC+round(k*2));
  screen.Canvas.LineTo(xC+round(k*25), yC-round(k*10));
  // body
  yC:=yC+round(k*40);
  screen.Canvas.MoveTo(xC,yC);
  screen.Canvas.LineTo(xC,yC+round(k*160));
  xLb:=xC;
  yLb:=yC+round(k*160);
  // left hip
  screen.Canvas.LineTo(xLb-round(k*30), yLb+round(k*80));
  // left shin
  screen.Canvas.LineTo(xLb-round(k*140), yLb+round(k*50));
  // left foot
  screen.Canvas.LineTo(xLb-round(k*150), yLb+round(k*85));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb+round(k*70), yLb+round(k*80));
  // right shin
  screen.Canvas.LineTo(xLb+round(k*60), yLb+round(k*180));
  // right foot
  screen.Canvas.LineTo(xLb+round(k*90), yLb+round(k*200));
  screen.Canvas.MoveTo(xC, yC);
  // left shoulder
  screen.Canvas.LineTo(xC-round(k*30), yC+round(k*20));
  // left forearm
  screen.Canvas.LineTo(xC-round(k*10), yC+round(k*115));
  // left wrist
  screen.Canvas.LineTo(xC+round(k*5), yC+round(k*5));
  screen.Canvas.MoveTo(xC, yC);
  // right shoulder
  screen.Canvas.LineTo(xC+round(k*75), yC+round(k*45));
  // right forearm
  screen.Canvas.LineTo(xC+round(k*100), yC+round(k*55));
  // right wrist
  screen.Canvas.LineTo(xC+round(k*95), yC);
end;

procedure TForm1.PictureDraw3(Sender: TObject);
var
  xC, yC, xLb, yLb : integer;

begin
 Screen.Canvas.Pen.Width:=round(k*3);
  xC:=xc_start;
  yC:=yc_start;
  // head
  screen.Canvas.Ellipse(xC-round(k*40), yC-round(k*40), xC+round(k*40), yC+round(k*40));

  // face
  screen.Canvas.Ellipse(xC-round(k*12), yC+round(k*6), xC-round(k*15), yC+round(k*3));
  screen.Canvas.Ellipse(xC+round(k*20), yC-round(k*2), xC+round(k*23), yC-round(k*5));
  screen.Canvas.MoveTo(xC-round(k*20), yC+round(k*18));
  screen.Canvas.LineTo(xC+round(k*5), yC+round(k*15));
  screen.Canvas.LineTo(xC+round(k*25), yC+round(k*5));


  // body
  yC:=yC+round(k*40);
  screen.Canvas.MoveTo(xC,yC);
  screen.Canvas.LineTo(xC+round(k*20),yC+round(k*145));
  xLb:=xC+round(k*20);
  yLb:=yC+round(k*145);
  // left hip
  screen.Canvas.LineTo(xLb-round(k*30), yLb+round(k*80));
  // left shin
  screen.Canvas.LineTo(xLb-round(k*130), yLb+round(k*10));
  // left foot
  screen.Canvas.LineTo(xLb-round(k*140), yLb+round(k*45));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb+round(k*70), yLb+round(k*60));
  // right shin
  screen.Canvas.LineTo(xLb+round(k*45), yLb+round(k*180));
  // right foot
  screen.Canvas.LineTo(xLb+round(k*90), yLb+round(k*200));
  screen.Canvas.MoveTo(xC, yC);
  // left shoulder
  screen.Canvas.LineTo(xC+round(k*30), yC+round(k*20));
  // left forearm
  screen.Canvas.LineTo(xC+round(k*55), yC-round(k*45));
  // left wrist
  screen.Canvas.LineTo(xC+round(k*50), yC-round(k*65));
  screen.Canvas.MoveTo(xC, yC);
  // right shoulder
  screen.Canvas.LineTo(xC+round(k*75), yC+round(k*30));
  // right forearm
  screen.Canvas.LineTo(xC+round(k*90), yC-round(k*50));
  // right wrist
  screen.Canvas.LineTo(xC+round(k*85), yC-round(k*70));
end;


procedure TForm1.PictureDraw4(Sender: TObject);
var
  xC, yC, xLb, yLb : integer;



begin
 Screen.Canvas.Pen.Width:=round(k*3);
  xC:=xc_start;
  yC:=yc_start;
  // head
  screen.Canvas.Ellipse(xC-round(k*40), yC-round(k*40), xC+round(k*40), yC+round(k*40));

  // face
  screen.Canvas.Ellipse(xC-round(k*18), yC-round(k*6), xC-round(k*15), yC-round(k*3));
  screen.Canvas.Ellipse(xC+round(k*17), yC+round(k*2), xC+round(k*20), yC+round(k*5));
  screen.Canvas.MoveTo(xC-round(k*20), yC+round(k*8));
  screen.Canvas.LineTo(xC+round(k*20), yC+round(k*18));

  // body
  yC:=yC+round(k*40);
  screen.Canvas.MoveTo(xC,yC);
  screen.Canvas.LineTo(xC+round(k*30),yC+round(k*140));
  xLb:=xC+round(k*30);
  yLb:=yC+round(k*140);
  // left hip
  screen.Canvas.LineTo(xLb-round(k*20), yLb+round(k*80));
  // left shin
  screen.Canvas.LineTo(xLb-round(k*100), yLb+round(k*150));
  // left foot
  screen.Canvas.LineTo(xLb-round(k*105), yLb+round(k*185));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb+round(k*70), yLb+round(k*60));
  // right shin
  screen.Canvas.LineTo(xLb+round(k*45), yLb+round(k*180));
  // right foot
  screen.Canvas.LineTo(xLb+round(k*90), yLb+round(k*200));
  screen.Canvas.MoveTo(xC, yC);
  // left shoulder
  screen.Canvas.LineTo(xC+round(k*30), yC+round(k*70));
  // left forearm
  screen.Canvas.LineTo(xC+round(k*45), yC-round(k*15));
  // left wrist
  screen.Canvas.LineTo(xC+round(k*45), yC-round(k*45));
  screen.Canvas.MoveTo(xC, yC);
  // right shoulder
  screen.Canvas.LineTo(xC+round(k*75), yC+round(k*45));
  // right forearm
  screen.Canvas.LineTo(xC+round(k*47), yC-round(k*15));
  // right wrist
  screen.Canvas.LineTo(xC+round(k*47), yC-round(k*45));
  //clapEffect
  screen.Canvas.MoveTo(xC+round(k*60), yC-round(k*55));
  screen.Canvas.LineTo(xC+round(k*75), yC-round(k*80));
  screen.Canvas.MoveTo(xC+round(k*70), yC-round(k*40));
  screen.Canvas.LineTo(xC+round(k*95), yC-round(k*45));
  screen.Canvas.MoveTo(xC+round(k*60), yC-round(k*25));
  screen.Canvas.LineTo(xC+round(k*85), yC-round(k*5));
  screen.Canvas.MoveTo(xC+round(k*30), yC-round(k*55));
  screen.Canvas.LineTo(xC+round(k*10), yC-round(k*80));
  screen.Canvas.MoveTo(xC+round(k*30), yC-round(k*40));
  screen.Canvas.LineTo(xC+round(k*10), yC-round(k*45));
  screen.Canvas.MoveTo(xC+round(k*35), yC-round(k*25));
  screen.Canvas.LineTo(xC+round(k*15), yC-round(k*15));
end;

procedure TForm1.PictureDraw5(Sender: TObject);
var
  xC, yC, xLb, yLb : integer;

begin
 Screen.Canvas.Pen.Width:=round(k*3);
  xC:=xc_start;
  yC:=yc_start;
  // head
  screen.Canvas.Ellipse(xC-round(k*40), yC-round(k*40), xC+round(k*40), yC+round(k*40));

  // face
  screen.Canvas.Ellipse(xC-round(k*14), yC-round(k*3), xC-round(k*11), yC);
  screen.Canvas.Ellipse(xC+round(k*20), yC-round(k*3), xC+round(k*23), yC);
  screen.Canvas.MoveTo(xC-round(k*16), yC+round(k*10));
  screen.Canvas.LineTo(xC+round(k*26), yC+round(k*13));

  // body
  yC:=yC+round(k*40);
  screen.Canvas.MoveTo(xC,yC);
  screen.Canvas.LineTo(xC+round(k*20),yC+round(k*145));
  xLb:=xC+round(k*20);
  yLb:=yC+round(k*145);
  // left hip
  screen.Canvas.LineTo(xLb-round(k*20), yLb+round(k*80));
  // left shin
  screen.Canvas.LineTo(xLb-round(k*60), yLb+round(k*195));
  // left foot
  screen.Canvas.LineTo(xLb-round(k*25), yLb+round(k*200));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb+round(k*70), yLb+round(k*60));
  // right shin
  screen.Canvas.LineTo(xLb+round(k*45), yLb+round(k*180));
  // right foot
  screen.Canvas.LineTo(xLb+round(k*90), yLb+round(k*200));
  screen.Canvas.MoveTo(xC, yC);
  // left shoulder
  screen.Canvas.LineTo(xC-round(k*25), yC+round(k*90));
  // left forearm
  screen.Canvas.LineTo(xC+round(k*45), yC+round(k*25));
  // left wrist
  screen.Canvas.LineTo(xC+round(k*50), yC+round(k*50));
  screen.Canvas.MoveTo(xC, yC);
  // right shoulder
  screen.Canvas.LineTo(xC+round(k*68), yC+round(k*55));
  // right forearm
  screen.Canvas.LineTo(xC+round(k*43), yC-round(k*15));
  // right wrist
  screen.Canvas.LineTo(xC+round(k*15), yC);
end;

procedure TForm1.PictureDraw6(Sender: TObject);
var
  xC, yC, xLb, yLb : integer;

begin
 Screen.Canvas.Pen.Width:=round(k*3);
  xC:=xc_start;
  yC:=yc_start;
  // head
  screen.Canvas.Ellipse(xC-round(k*40), yC-round(k*40), xC+round(k*40), yC+round(k*40));

  // face
  screen.Canvas.Ellipse(xC-round(k*22), yC-round(k*7), xC-round(k*19), yC-round(k*4));
  screen.Canvas.Ellipse(xC+round(k*13), yC-round(k*3), xC+round(k*15), yC);
  screen.Canvas.MoveTo(xC-round(k*27), yC+round(k*10));
  screen.Canvas.LineTo(xC+round(k*2), yC+round(k*13));
  screen.Canvas.LineTo(xC+round(k*22), yC+round(k*12));

  // body
  yC:=yC+round(k*40);
  screen.Canvas.MoveTo(xC,yC);
  screen.Canvas.LineTo(xC,yC+round(k*150));
  xLb:=xC;
  yLb:=yC+round(k*150);
  // left hip
  screen.Canvas.LineTo(xLb-round(k*35), yLb+round(k*90));
  // left shin
  screen.Canvas.LineTo(xLb-round(k*25), yLb+round(k*160));
  // left foot
  screen.Canvas.LineTo(xLb-round(k*35), yLb+round(k*175));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb+round(k*65), yLb+round(k*60));
  // right shin
  screen.Canvas.LineTo(xLb+round(k*45), yLb+round(k*200));
  // right foot
  screen.Canvas.LineTo(xLb+round(k*80), yLb+round(k*200));
  screen.Canvas.MoveTo(xC, yC);
  // left shoulder
  screen.Canvas.LineTo(xC-round(k*65), yC+round(k*80));
  // left forearm
  screen.Canvas.LineTo(xC-round(k*60), yC+round(k*140));
  // left wrist
  screen.Canvas.LineTo(xC-round(k*45), yC+round(k*150));
  screen.Canvas.MoveTo(xC, yC);
  // right shoulder
  screen.Canvas.LineTo(xC+round(k*38), yC+round(k*95));
  // right forearm
  screen.Canvas.LineTo(xC-round(k*20), yC+round(k*45));
  // right wrist
  screen.Canvas.LineTo(xC-round(k*35), yC+round(k*55));
end;

procedure TForm1.PictureDraw7(Sender: TObject);
var
  xC, yC, xLb, yLb : integer;

begin
 Screen.Canvas.Pen.Width:=round(k*3);
  xC:=xc_start;
  yC:=yc_start;
  // head
  screen.Canvas.Ellipse(xC-round(k*40), yC-round(k*40), xC+round(k*40), yC+round(k*40));

   // face
  screen.Canvas.Ellipse(xC-round(k*25), yC-round(k*1), xC-round(k*22), yC-round(k*4));
  screen.Canvas.Ellipse(xC+round(k*10), yC, xC+round(k*13), yC+round(k*3));
  screen.Canvas.MoveTo(xC-round(k*27), yC+round(k*10));
  screen.Canvas.LineTo(xC+round(k*17), yC+round(k*12));

  // body
  yC:=yC+round(k*40);
  screen.Canvas.MoveTo(xC,yC);
  screen.Canvas.LineTo(xC,yC+round(k*150));
  xLb:=xC;
  yLb:=yC+round(k*150);
  // left hip
  screen.Canvas.LineTo(xLb-round(k*35), yLb+round(k*90));
  // left shin
  screen.Canvas.LineTo(xLb-round(k*25), yLb+round(k*180));
  // left foot
  screen.Canvas.LineTo(xLb-round(k*35), yLb+round(k*195));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb+round(k*65), yLb+round(k*60));
  // right shin
  screen.Canvas.LineTo(xLb+round(k*45), yLb+round(k*200));
  // right foot
  screen.Canvas.LineTo(xLb+round(k*80), yLb+round(k*200));
  screen.Canvas.MoveTo(xC, yC);
  // left shoulder
  screen.Canvas.LineTo(xC-round(k*70), yC-round(k*5));
  // left forearm
  screen.Canvas.LineTo(xC-round(k*120), yC+round(k*40));
  // left wrist
  screen.Canvas.LineTo(xC-round(k*120), yC+round(k*45));
  screen.Canvas.MoveTo(xC, yC);
  // right shoulder
  screen.Canvas.LineTo(xC+round(k*30), yC+round(k*55));
  // right forearm
  screen.Canvas.LineTo(xC-round(k*50), yC+round(k*40));
  // right wrist
  screen.Canvas.LineTo(xC-round(k*65), yC+round(k*45));
end;


procedure TForm1.PictureDraw8(Sender: TObject);
var
  xC, yC, xLb, yLb : integer;

begin
  Screen.Canvas.Pen.Width:=round(k*3);
  xC:=xc_start;
  yC:=yc_start-round(k*10);
  // head
  screen.Canvas.Ellipse(xC-round(k*40), yC-round(k*40), xC+round(k*40), yC+round(k*40));

  // face
  screen.Canvas.Ellipse(xC-round(k*17), yC+round(k*6), xC-round(k*20), yC+round(k*3));
  screen.Canvas.Ellipse(xC+round(k*17), yC-round(k*2), xC+round(k*20), yC-round(k*5));
  screen.Canvas.MoveTo(xC-round(k*20), yC+round(k*18));
  screen.Canvas.LineTo(xC+round(k*25), yC+round(k*5));

  // body
  yC:=yC+round(k*40);
  screen.Canvas.MoveTo(xC,yC);
  screen.Canvas.LineTo(xC+round(k*20),yC+round(k*160));
  xLb:=xC+round(k*20);
  yLb:=yC+round(k*160);
  // left hip
  screen.Canvas.LineTo(xLb+round(k*30), yLb+round(k*80));
  // left shin
  screen.Canvas.LineTo(xLb+round(k*80), yLb+round(k*180));
  // left foot
  screen.Canvas.LineTo(xLb+round(k*30), yLb+round(k*200));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb-round(k*90), yLb+round(k*80));
  // right shin
  screen.Canvas.LineTo(xLb-round(k*80), yLb+round(k*180));
  // right foot
  screen.Canvas.LineTo(xLb-round(k*110), yLb+round(k*200));
  screen.Canvas.MoveTo(xC, yC);
  // left shoulder
  screen.Canvas.LineTo(xC+round(k*70), yC+round(k*110));
  // left forearm
  screen.Canvas.LineTo(xC-round(k*5), yC+round(k*25));
  // left wrist
  screen.Canvas.LineTo(xC-round(k*5), yC+round(k*5));
  screen.Canvas.MoveTo(xC, yC);
  // right shoulder
  screen.Canvas.LineTo(xC-round(k*75), yC-round(k*35));
  // right forearm
  screen.Canvas.LineTo(xC-round(k*100), yC-round(k*20));
  // right wrist
  screen.Canvas.LineTo(xC-round(k*95), yC);
end;


procedure TForm1.PictureDraw9(Sender: TObject);
var
  xC, yC, xLb, yLb : integer;

begin
 Screen.Canvas.Pen.Width:=round(k*3);
 xC:=xc_start;
  yC:=yc_start+round(k*10);
  // head
  screen.Canvas.Ellipse(xC-round(k*40), yC-round(k*40), xC+round(k*40), yC+round(k*40));
  // face
  screen.Canvas.Ellipse(xC+round(k*12), yC-round(k*5), xC+round(k*15), yC-round(k*8));
  screen.Canvas.Ellipse(xC-round(k*20), yC-round(k*15), xC-round(k*23), yC-round(k*18));
  screen.Canvas.MoveTo(xC+round(k*5), yC+round(k*2));
  screen.Canvas.LineTo(xC-round(k*25), yC-round(k*10));
  // body
  yC:=yC+round(k*40);
  screen.Canvas.MoveTo(xC,yC);
  screen.Canvas.LineTo(xC,yC+round(k*160));
  xLb:=xC;
  yLb:=yC+round(k*160);
  // left hip
  screen.Canvas.LineTo(xLb+round(k*30), yLb+round(k*80));
  // left shin
  screen.Canvas.LineTo(xLb+round(k*140), yLb+round(k*50));
  // left foot
  screen.Canvas.LineTo(xLb+round(k*150), yLb+round(k*85));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb-round(k*70), yLb+round(k*80));
  // right shin
  screen.Canvas.LineTo(xLb-round(k*60), yLb+round(k*180));
  // right foot
  screen.Canvas.LineTo(xLb-round(k*90), yLb+round(k*200));
  screen.Canvas.MoveTo(xC, yC);
  // left shoulder
  screen.Canvas.LineTo(xC+round(k*30), yC+round(k*20));
  // left forearm

  screen.Canvas.LineTo(xC+round(k*10), yC+round(k*115));
  // left wrist
  screen.Canvas.LineTo(xC-round(k*5), yC+round(k*5));
  screen.Canvas.MoveTo(xC, yC);
  // right shoulder
  screen.Canvas.LineTo(xC-round(k*75), yC+round(k*45));
  // right forearm
  screen.Canvas.LineTo(xC-round(k*100), yC+round(k*55));
  // right wrist
  screen.Canvas.LineTo(xC-round(k*95), yC);
end;

procedure TForm1.PictureDraw10(Sender: TObject);
var
  xC, yC, xLb, yLb : integer;

begin
 Screen.Canvas.Pen.Width:=round(k*3);
  xC:=xc_start;
  yC:=yc_start;
  // head
  screen.Canvas.Ellipse(xC-round(k*40), yC-round(k*40), xC+round(k*40), yC+round(k*40));

  // face
  screen.Canvas.Ellipse(xC+round(k*12), yC+round(k*6), xC+round(k*15), yC+round(k*3));
  screen.Canvas.Ellipse(xC-round(k*20), yC-round(k*2), xC-round(k*23), yC-round(k*5));
  screen.Canvas.MoveTo(xC+round(k*20), yC+round(k*18));
  screen.Canvas.LineTo(xC-round(k*5), yC+round(k*15));
  screen.Canvas.LineTo(xC-round(k*25), yC+round(k*5));


  // body
  yC:=yC+round(k*40);
  screen.Canvas.MoveTo(xC,yC);
  screen.Canvas.LineTo(xC-round(k*20),yC+round(k*145));
  xLb:=xC-round(k*20);
  yLb:=yC+round(k*145);
  // left hip
  screen.Canvas.LineTo(xLb+round(k*30), yLb+round(k*80));
  // left shin
  screen.Canvas.LineTo(xLb+round(k*130), yLb+round(k*10));
  // left foot
  screen.Canvas.LineTo(xLb+round(k*140), yLb+round(k*45));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb-round(k*70), yLb+round(k*60));
  // right shin
  screen.Canvas.LineTo(xLb-round(k*45), yLb+round(k*180));
  // right foot
  screen.Canvas.LineTo(xLb-round(k*90), yLb+round(k*200));
  screen.Canvas.MoveTo(xC, yC);
  // left shoulder
  screen.Canvas.LineTo(xC-round(k*30), yC+round(k*20));
  // left forearm
  screen.Canvas.LineTo(xC-round(k*55), yC-round(k*45));
  // left wrist
  screen.Canvas.LineTo(xC-round(k*50), yC-round(k*65));
  screen.Canvas.MoveTo(xC, yC);
  // right shoulder
  screen.Canvas.LineTo(xC-round(k*75), yC+round(k*30));
  // right forearm
  screen.Canvas.LineTo(xC-round(k*90), yC-round(k*50));
  // right wrist
  screen.Canvas.LineTo(xC-round(k*85), yC-round(k*70));
end;

procedure TForm1.PictureDraw11(Sender: TObject);
var
  xC, yC, xLb, yLb : integer;

begin
 Screen.Canvas.Pen.Width:=round(k*3);
 xC:=xc_start;
  yC:=yc_start;
  // head
  screen.Canvas.Ellipse(xC-round(k*40), yC-round(k*40), xC+round(k*40), yC+round(k*40));

  // face
  screen.Canvas.Ellipse(xC+round(k*18), yC-round(k*6), xC+round(k*15), yC-round(k*3));
  screen.Canvas.Ellipse(xC-round(k*17), yC+round(k*2), xC-round(k*20), yC+round(k*5));
  screen.Canvas.MoveTo(xC+round(k*20), yC+round(k*8));
  screen.Canvas.LineTo(xC-round(k*20), yC+round(k*18));

  // body
  yC:=yC+round(k*40);
  screen.Canvas.MoveTo(xC,yC);
  screen.Canvas.LineTo(xC-round(k*30),yC+round(k*140));
  xLb:=xC-round(k*30);
  yLb:=yC+round(k*140);
  // left hip
  screen.Canvas.LineTo(xLb+round(k*20), yLb+round(k*80));
  // left shin
  screen.Canvas.LineTo(xLb+round(k*100), yLb+round(k*150));
  // left foot
  screen.Canvas.LineTo(xLb+round(k*105), yLb+round(k*185));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb-round(k*70), yLb+round(k*60));
  // right shin
  screen.Canvas.LineTo(xLb-round(k*45), yLb+round(k*180));
  // right foot
  screen.Canvas.LineTo(xLb-round(k*90), yLb+round(k*200));
  screen.Canvas.MoveTo(xC, yC);
  // left shoulder
  screen.Canvas.LineTo(xC-round(k*30), yC+round(k*70));
  // left forearm
  screen.Canvas.LineTo(xC-round(k*45), yC-round(k*15));
  // left wrist
  screen.Canvas.LineTo(xC-round(k*45), yC-round(k*45));
  screen.Canvas.MoveTo(xC, yC);
  // right shoulder
  screen.Canvas.LineTo(xC-round(k*75), yC+round(k*45));
  // right forearm
  screen.Canvas.LineTo(xC-round(k*47), yC-round(k*15));
  // right wrist
  screen.Canvas.LineTo(xC-round(k*47), yC-round(k*45));
  //clapEffect
  screen.Canvas.MoveTo(xC-round(k*60), yC-round(k*55));
  screen.Canvas.LineTo(xC-round(k*75), yC-round(k*80));
  screen.Canvas.MoveTo(xC-round(k*70), yC-round(k*40));
  screen.Canvas.LineTo(xC-round(k*95), yC-round(k*45));
  screen.Canvas.MoveTo(xC-round(k*60), yC-round(k*25));
  screen.Canvas.LineTo(xC-round(k*85), yC-round(k*5));
  screen.Canvas.MoveTo(xC-round(k*30), yC-round(k*55));
  screen.Canvas.LineTo(xC-round(k*10), yC-round(k*80));
  screen.Canvas.MoveTo(xC-round(k*30), yC-round(k*40));
  screen.Canvas.LineTo(xC-round(k*10), yC-round(k*45));
  screen.Canvas.MoveTo(xC-round(k*35), yC-round(k*25));
  screen.Canvas.LineTo(xC-round(k*15), yC-round(k*15));
end;

procedure TForm1.PictureDraw12(Sender: TObject);
var
  xC, yC, xLb, yLb : integer;

begin
 Screen.Canvas.Pen.Width:=round(k*3);
  xC:=xc_start;
  yC:=yc_start;
  // head
  screen.Canvas.Ellipse(xC-round(k*40), yC-round(k*40), xC+round(k*40), yC+round(k*40));

  // face
  screen.Canvas.Ellipse(xC+round(k*14), yC-round(k*3), xC+round(k*11), yC);
  screen.Canvas.Ellipse(xC-round(k*20), yC-round(k*3), xC-round(k*23), yC);
  screen.Canvas.MoveTo(xC+round(k*16), yC+round(k*10));
  screen.Canvas.LineTo(xC-round(k*26), yC+round(k*13));

  // body
  yC:=yC+round(k*40);
  screen.Canvas.MoveTo(xC,yC);
  screen.Canvas.LineTo(xC-round(k*20),yC+round(k*145));
  xLb:=xC-round(k*20);
  yLb:=yC+round(k*145);
  // left hip
  screen.Canvas.LineTo(xLb+round(k*20), yLb+round(k*80));
  // left shin
  screen.Canvas.LineTo(xLb+round(k*60), yLb+round(k*195));
  // left foot
  screen.Canvas.LineTo(xLb+round(k*25), yLb+round(k*200));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb-round(k*70), yLb+round(k*60));
  // right shin
  screen.Canvas.LineTo(xLb-round(k*45), yLb+round(k*180));
  // right foot
  screen.Canvas.LineTo(xLb-round(k*90), yLb+round(k*200));
  screen.Canvas.MoveTo(xC, yC);
  // left shoulder
  screen.Canvas.LineTo(xC+round(k*25), yC+round(k*90));
  // left forearm
  screen.Canvas.LineTo(xC-round(k*45), yC+round(k*25));
  // left wrist
  screen.Canvas.LineTo(xC-round(k*50), yC+round(k*50));
  screen.Canvas.MoveTo(xC, yC);
  // right shoulder
  screen.Canvas.LineTo(xC-round(k*68), yC+round(k*55));
  // right forearm
  screen.Canvas.LineTo(xC-round(k*43), yC-round(k*15));
  // right wrist
  screen.Canvas.LineTo(xC-round(k*15), yC);
end;

procedure TForm1.PictureDraw13(Sender: TObject);
var
  xC, yC, xLb, yLb : integer;

begin
 Screen.Canvas.Pen.Width:=round(k*3);
 xC:=xc_start;
  yC:=yc_start;
  // head
  screen.Canvas.Ellipse(xC-round(k*40), yC-round(k*40), xC+round(k*40), yC+round(k*40));

  // face
  screen.Canvas.Ellipse(xC+round(k*22), yC-round(k*7), xC+round(k*19), yC-round(k*4));
  screen.Canvas.Ellipse(xC-round(k*13), yC-round(k*3), xC-round(k*15), yC);
  screen.Canvas.MoveTo(xC+round(k*27), yC+round(k*10));
  screen.Canvas.LineTo(xC-round(k*2), yC+round(k*13));
  screen.Canvas.LineTo(xC-round(k*22), yC+round(k*12));

  // body
  yC:=yC+round(k*40);
  screen.Canvas.MoveTo(xC,yC);
  screen.Canvas.LineTo(xC,yC+round(k*150));
  xLb:=xC;
  yLb:=yC+round(k*150);
  // left hip
  screen.Canvas.LineTo(xLb+round(k*35), yLb+round(k*90));
  // left shin
  screen.Canvas.LineTo(xLb+round(k*25), yLb+round(k*160));
  // left foot
  screen.Canvas.LineTo(xLb+round(k*35), yLb+round(k*175));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb-round(k*65), yLb+round(k*60));
  // right shin
  screen.Canvas.LineTo(xLb-round(k*45), yLb+round(k*200));
  // right foot
  screen.Canvas.LineTo(xLb-round(k*80), yLb+round(k*200));
  screen.Canvas.MoveTo(xC, yC);
  // left shoulder
  screen.Canvas.LineTo(xC+round(k*65), yC+round(k*80));
  // left forearm
  screen.Canvas.LineTo(xC+round(k*60), yC+round(k*140));
  // left wrist
  screen.Canvas.LineTo(xC+round(k*45), yC+round(k*150));
  screen.Canvas.MoveTo(xC, yC);
  // right shoulder
  screen.Canvas.LineTo(xC-round(k*38), yC+round(k*95));
  // right forearm
  screen.Canvas.LineTo(xC+round(k*20), yC+round(k*45));
  // right wrist
  screen.Canvas.LineTo(xC+round(k*35), yC+round(k*55));
end;

procedure TForm1.PictureDraw14(Sender: TObject);
var
  xC, yC, xLb, yLb : integer;

begin
 Screen.Canvas.Pen.Width:=round(k*3);
  xC:=xc_start;
  yC:=yc_start;
  // head
  screen.Canvas.Ellipse(xC-round(k*40), yC-round(k*40), xC+round(k*40), yC+round(k*40));

   // face
  screen.Canvas.Ellipse(xC+round(k*25), yC-round(k*1), xC+round(k*22), yC-round(k*4));
  screen.Canvas.Ellipse(xC-round(k*10), yC, xC-round(k*13), yC+round(k*3));
  screen.Canvas.MoveTo(xC+round(k*27), yC+round(k*10));
  screen.Canvas.LineTo(xC-round(k*17), yC+round(k*12));

  // body
  yC:=yC+round(k*40);
  screen.Canvas.MoveTo(xC,yC);
  screen.Canvas.LineTo(xC,yC+round(k*150));
  xLb:=xC;
  yLb:=yC+round(k*150);
  // left hip
  screen.Canvas.LineTo(xLb+round(k*35), yLb+round(k*90));
  // left shin
  screen.Canvas.LineTo(xLb+round(k*25), yLb+round(k*180));
  // left foot
  screen.Canvas.LineTo(xLb+round(k*35), yLb+round(k*195));
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb-round(k*65), yLb+round(k*60));
  // right shin
  screen.Canvas.LineTo(xLb-round(k*45), yLb+round(k*200));
  // right foot
  screen.Canvas.LineTo(xLb-round(k*80), yLb+round(k*200));
  screen.Canvas.MoveTo(xC, yC);
  // left shoulder
  screen.Canvas.LineTo(xC+round(k*70), yC-round(k*5));
  // left forearm
  screen.Canvas.LineTo(xC+round(k*120), yC+round(k*40));
  // left wrist
  screen.Canvas.LineTo(xC+round(k*120), yC+round(k*45));
  screen.Canvas.MoveTo(xC, yC);
  // right shoulder
  screen.Canvas.LineTo(xC-round(k*30), yC+round(k*55));
  // right forearm
  screen.Canvas.LineTo(xC+round(k*50), yC+round(k*40));
  // right wrist
  screen.Canvas.LineTo(xC+round(k*65), yC+round(k*45));
end;


procedure TForm1.startClick(Sender: TObject);
begin
  i:=0;
  fps.Enabled := true;
  fps.Interval := 100;
   MediaPlayer2.FileName:= 'lida swx.mp3';
   MediaPlayer1.FileName:= 'Clap.mp3';
   MediaPlayer1.Open;
  //MediaPlayer2.Open;
  //MediaPlayer2.Play;
  xc_start:=550;
  yc_start:=170;
  k:=1;
  sign:=true;

end;
procedure TForm1.FormCreate(Sender: TObject);
begin
  fps.Enabled := false;
  screen.Canvas.Brush.Color := clWhite;
  Color := clWhite;
  //screen.Canvas.Pen.Mode := pMNotXor;
end;

end.
