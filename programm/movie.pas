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
    MediaPlayer1: TMediaPlayer;
    MediaPlayer2: TMediaPlayer;

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
  xc, yc: integer;
  k: real;
  i:integer;


implementation

{$R *.dfm}


procedure TForm1.fpsTimer(Sender: TObject);
begin
  inc(i);
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
         MediaPlayer1.FileName:= 'D:\BSUIR\Ћабы\Ћабороторна€ работа - 1 ќјиѕ\Delphi\2 сем\Dance\Win32\Debug\Clap.mp3';
         MediaPlayer1.Open;
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
      MediaPlayer1.FileName:= 'D:\BSUIR\Ћабы\Ћабороторна€ работа - 1 ќјиѕ\Delphi\2 сем\Dance\Win32\Debug\Clap.mp3';
      MediaPlayer1.Open;
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
  if i=14 then i:=0;
end;



procedure TForm1.PictureDraw1(Sender: TObject);
var
  xC, yC, xLb, yLb : integer;

begin
  Screen.Canvas.Pen.Width:=3;
  xC:=450;
  yC:=250;
  // head
  screen.Canvas.Ellipse(xC-40, yC-40, xC+40, yC+40);

  // face
  screen.Canvas.Ellipse(xC-17, yC+6, xC-20, yC+3);
  screen.Canvas.Ellipse(xC+17, yC-2, xC+20, yC-5);
  screen.Canvas.MoveTo(xC-20, yC+18);
  screen.Canvas.LineTo(xC+25, yC+5);

  // body
  yC:=yC+40;
  screen.Canvas.MoveTo(xC,yC);
  screen.Canvas.LineTo(xC-20,yC+160);
  xLb:=xC-20;
  yLb:=yC+160;
  // left hip
  screen.Canvas.LineTo(xLb-30, yLb+80);
  // left shin
  screen.Canvas.LineTo(xLb-80, yLb+180);
  // left foot
  screen.Canvas.LineTo(xLb-30, yLb+200);
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb+90, yLb+80);
  // right shin
  screen.Canvas.LineTo(xLb+80, yLb+180);
  // right foot
  screen.Canvas.LineTo(xLb+110, yLb+200);
  screen.Canvas.MoveTo(xC, yC);
  // left shoulder
  screen.Canvas.LineTo(xC-70, yC+110);
  // left forearm
  screen.Canvas.LineTo(xC+5, yC+25);
  // left wrist
  screen.Canvas.LineTo(xC+5, yC+5);
  screen.Canvas.MoveTo(xC, yC);
  // right shoulder
  screen.Canvas.LineTo(xC+75, yC-35);
  // right forearm
  screen.Canvas.LineTo(xC+100, yC-20);
  // right wrist
  screen.Canvas.LineTo(xC+95, yC);
end;


procedure TForm1.PictureDraw2(Sender: TObject);
var
  xC, yC, xLb, yLb : integer;

begin
 Screen.Canvas.Pen.Width:=3;
  xC:=460;
  yC:=260;
  // head
  screen.Canvas.Ellipse(xC-40, yC-40, xC+40, yC+40);
  // face
  screen.Canvas.Ellipse(xC-12, yC-5, xC-15, yC-8);
  screen.Canvas.Ellipse(xC+20, yC-15, xC+23, yC-18);
  screen.Canvas.MoveTo(xC-5, yC+2);
  screen.Canvas.LineTo(xC+25, yC-10);
  // body
  yC:=yC+40;
  screen.Canvas.MoveTo(xC,yC);
  screen.Canvas.LineTo(xC,yC+160);
  xLb:=xC;
  yLb:=yC+160;
  // left hip
  screen.Canvas.LineTo(xLb-30, yLb+80);
  // left shin
  screen.Canvas.LineTo(xLb-140, yLb+50);
  // left foot
  screen.Canvas.LineTo(xLb-150, yLb+85);
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb+70, yLb+80);
  // right shin
  screen.Canvas.LineTo(xLb+60, yLb+180);
  // right foot
  screen.Canvas.LineTo(xLb+90, yLb+200);
  screen.Canvas.MoveTo(xC, yC);
  // left shoulder
  screen.Canvas.LineTo(xC-30, yC+20);
  // left forearm
  screen.Canvas.LineTo(xC-10, yC+115);
  // left wrist
  screen.Canvas.LineTo(xC+5, yC+5);
  screen.Canvas.MoveTo(xC, yC);
  // right shoulder
  screen.Canvas.LineTo(xC+75, yC+45);
  // right forearm
  screen.Canvas.LineTo(xC+100, yC+55);
  // right wrist
  screen.Canvas.LineTo(xC+95, yC);
end;

procedure TForm1.PictureDraw3(Sender: TObject);
var
  xC, yC, xLb, yLb : integer;

begin
 Screen.Canvas.Pen.Width:=3;
  xC:=460;
  yC:=260;
  // head
  screen.Canvas.Ellipse(xC-40, yC-40, xC+40, yC+40);

  // face
  screen.Canvas.Ellipse(xC-12, yC+6, xC-15, yC+3);
  screen.Canvas.Ellipse(xC+20, yC-2, xC+23, yC-5);
  screen.Canvas.MoveTo(xC-20, yC+18);
  screen.Canvas.LineTo(xC+5, yC+15);
  screen.Canvas.LineTo(xC+25, yC+5);


  // body
  yC:=yC+40;
  screen.Canvas.MoveTo(xC,yC);
  screen.Canvas.LineTo(xC+20,yC+145);
  xLb:=xC+20;
  yLb:=yC+145;
  // left hip
  screen.Canvas.LineTo(xLb-30, yLb+80);
  // left shin
  screen.Canvas.LineTo(xLb-130, yLb+10);
  // left foot
  screen.Canvas.LineTo(xLb-140, yLb+45);
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb+70, yLb+60);
  // right shin
  screen.Canvas.LineTo(xLb+45, yLb+180);
  // right foot
  screen.Canvas.LineTo(xLb+90, yLb+200);
  screen.Canvas.MoveTo(xC, yC);
  // left shoulder
  screen.Canvas.LineTo(xC+30, yC+20);
  // left forearm
  screen.Canvas.LineTo(xC+55, yC-45);
  // left wrist
  screen.Canvas.LineTo(xC+50, yC-65);
  screen.Canvas.MoveTo(xC, yC);
  // right shoulder
  screen.Canvas.LineTo(xC+75, yC+30);
  // right forearm
  screen.Canvas.LineTo(xC+90, yC-50);
  // right wrist
  screen.Canvas.LineTo(xC+85, yC-70);
end;


procedure TForm1.PictureDraw4(Sender: TObject);
var
  xC, yC, xLb, yLb : integer;

begin
 Screen.Canvas.Pen.Width:=3;
  xC:=460;
  yC:=260;
  // head
  screen.Canvas.Ellipse(xC-40, yC-40, xC+40, yC+40);

  // face
  screen.Canvas.Ellipse(xC-18, yC-6, xC-15, yC-3);
  screen.Canvas.Ellipse(xC+17, yC+2, xC+20, yC+5);
  screen.Canvas.MoveTo(xC-20, yC+8);
  screen.Canvas.LineTo(xC+20, yC+18);

  // body
  yC:=yC+40;
  screen.Canvas.MoveTo(xC,yC);
  screen.Canvas.LineTo(xC+30,yC+140);
  xLb:=xC+30;
  yLb:=yC+140;
  // left hip
  screen.Canvas.LineTo(xLb-20, yLb+80);
  // left shin
  screen.Canvas.LineTo(xLb-100, yLb+150);
  // left foot
  screen.Canvas.LineTo(xLb-105, yLb+185);
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb+70, yLb+60);
  // right shin
  screen.Canvas.LineTo(xLb+45, yLb+180);
  // right foot
  screen.Canvas.LineTo(xLb+90, yLb+200);
  screen.Canvas.MoveTo(xC, yC);
  // left shoulder
  screen.Canvas.LineTo(xC+30, yC+70);
  // left forearm
  screen.Canvas.LineTo(xC+45, yC-15);
  // left wrist
  screen.Canvas.LineTo(xC+45, yC-45);
  screen.Canvas.MoveTo(xC, yC);
  // right shoulder
  screen.Canvas.LineTo(xC+75, yC+45);
  // right forearm
  screen.Canvas.LineTo(xC+47, yC-15);
  // right wrist
  screen.Canvas.LineTo(xC+47, yC-45);
  //clapEffect
  screen.Canvas.MoveTo(xC+60, yC-55);
  screen.Canvas.LineTo(xC+75, yC-80);
  screen.Canvas.MoveTo(xC+70, yC-40);
  screen.Canvas.LineTo(xC+95, yC-45);
  screen.Canvas.MoveTo(xC+60, yC-25);
  screen.Canvas.LineTo(xC+85, yC-5);
  screen.Canvas.MoveTo(xC+30, yC-55);
  screen.Canvas.LineTo(xC+10, yC-80);
  screen.Canvas.MoveTo(xC+30, yC-40);
  screen.Canvas.LineTo(xC+10, yC-45);
  screen.Canvas.MoveTo(xC+35, yC-25);
  screen.Canvas.LineTo(xC+15, yC-15);
end;

procedure TForm1.PictureDraw5(Sender: TObject);
var
  xC, yC, xLb, yLb : integer;

begin
 Screen.Canvas.Pen.Width:=3;
  xC:=460;
  yC:=260;
  // head
  screen.Canvas.Ellipse(xC-40, yC-40, xC+40, yC+40);

  // face
  screen.Canvas.Ellipse(xC-14, yC-3, xC-11, yC);
  screen.Canvas.Ellipse(xC+20, yC-3, xC+23, yC);
  screen.Canvas.MoveTo(xC-16, yC+10);
  screen.Canvas.LineTo(xC+26, yC+13);

  // body
  yC:=yC+40;
  screen.Canvas.MoveTo(xC,yC);
  screen.Canvas.LineTo(xC+20,yC+145);
  xLb:=xC+20;
  yLb:=yC+145;
  // left hip
  screen.Canvas.LineTo(xLb-20, yLb+80);
  // left shin
  screen.Canvas.LineTo(xLb-60, yLb+195);
  // left foot
  screen.Canvas.LineTo(xLb-25, yLb+200);
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb+70, yLb+60);
  // right shin
  screen.Canvas.LineTo(xLb+45, yLb+180);
  // right foot
  screen.Canvas.LineTo(xLb+90, yLb+200);
  screen.Canvas.MoveTo(xC, yC);
  // left shoulder
  screen.Canvas.LineTo(xC-25, yC+90);
  // left forearm
  screen.Canvas.LineTo(xC+45, yC+25);
  // left wrist
  screen.Canvas.LineTo(xC+50, yC+50);
  screen.Canvas.MoveTo(xC, yC);
  // right shoulder
  screen.Canvas.LineTo(xC+68, yC+55);
  // right forearm
  screen.Canvas.LineTo(xC+43, yC-15);
  // right wrist
  screen.Canvas.LineTo(xC+15, yC);
end;

procedure TForm1.PictureDraw6(Sender: TObject);
var
  xC, yC, xLb, yLb : integer;

begin
 Screen.Canvas.Pen.Width:=3;
  xC:=460;
  yC:=260;
  // head
  screen.Canvas.Ellipse(xC-40, yC-40, xC+40, yC+40);

  // face
  screen.Canvas.Ellipse(xC-22, yC-7, xC-19, yC-4);
  screen.Canvas.Ellipse(xC+13, yC-3, xC+15, yC);
  screen.Canvas.MoveTo(xC-27, yC+10);
  screen.Canvas.LineTo(xC+2, yC+13);
  screen.Canvas.LineTo(xC+22, yC+12);

  // body
  yC:=yC+40;
  screen.Canvas.MoveTo(xC,yC);
  screen.Canvas.LineTo(xC,yC+150);
  xLb:=xC;
  yLb:=yC+150;
  // left hip
  screen.Canvas.LineTo(xLb-35, yLb+90);
  // left shin
  screen.Canvas.LineTo(xLb-25, yLb+160);
  // left foot
  screen.Canvas.LineTo(xLb-35, yLb+175);
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb+65, yLb+60);
  // right shin
  screen.Canvas.LineTo(xLb+45, yLb+200);
  // right foot
  screen.Canvas.LineTo(xLb+80, yLb+200);
  screen.Canvas.MoveTo(xC, yC);
  // left shoulder
  screen.Canvas.LineTo(xC-65, yC+80);
  // left forearm
  screen.Canvas.LineTo(xC-60, yC+140);
  // left wrist
  screen.Canvas.LineTo(xC-45, yC+150);
  screen.Canvas.MoveTo(xC, yC);
  // right shoulder
  screen.Canvas.LineTo(xC+38, yC+95);
  // right forearm
  screen.Canvas.LineTo(xC-20, yC+45);
  // right wrist
  screen.Canvas.LineTo(xC-35, yC+55);
end;

procedure TForm1.PictureDraw7(Sender: TObject);
var
  xC, yC, xLb, yLb : integer;

begin
 Screen.Canvas.Pen.Width:=3;
  xC:=460;
  yC:=260;
  // head
  screen.Canvas.Ellipse(xC-40, yC-40, xC+40, yC+40);

   // face
  screen.Canvas.Ellipse(xC-25, yC-1, xC-22, yC-4);
  screen.Canvas.Ellipse(xC+10, yC, xC+13, yC+3);
  screen.Canvas.MoveTo(xC-27, yC+10);
  screen.Canvas.LineTo(xC+17, yC+12);

  // body
  yC:=yC+40;
  screen.Canvas.MoveTo(xC,yC);
  screen.Canvas.LineTo(xC,yC+150);
  xLb:=xC;
  yLb:=yC+150;
  // left hip
  screen.Canvas.LineTo(xLb-35, yLb+90);
  // left shin
  screen.Canvas.LineTo(xLb-25, yLb+180);
  // left foot
  screen.Canvas.LineTo(xLb-35, yLb+195);
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb+65, yLb+60);
  // right shin
  screen.Canvas.LineTo(xLb+45, yLb+200);
  // right foot
  screen.Canvas.LineTo(xLb+80, yLb+200);
  screen.Canvas.MoveTo(xC, yC);
  // left shoulder
  screen.Canvas.LineTo(xC-70, yC-5);
  // left forearm
  screen.Canvas.LineTo(xC-120, yC+40);
  // left wrist
  screen.Canvas.LineTo(xC-120, yC+45);
  screen.Canvas.MoveTo(xC, yC);
  // right shoulder
  screen.Canvas.LineTo(xC+30, yC+55);
  // right forearm
  screen.Canvas.LineTo(xC-50, yC+40);
  // right wrist
  screen.Canvas.LineTo(xC-65, yC+45);
end;


procedure TForm1.PictureDraw8(Sender: TObject);
var
  xC, yC, xLb, yLb : integer;

begin
  Screen.Canvas.Pen.Width:=3;
  xC:=460;
  yC:=250;
  // head
  screen.Canvas.Ellipse(xC-40, yC-40, xC+40, yC+40);

  // face
  screen.Canvas.Ellipse(xC-17, yC+6, xC-20, yC+3);
  screen.Canvas.Ellipse(xC+17, yC-2, xC+20, yC-5);
  screen.Canvas.MoveTo(xC-20, yC+18);
  screen.Canvas.LineTo(xC+25, yC+5);

  // body
  yC:=yC+40;
  screen.Canvas.MoveTo(xC,yC);
  screen.Canvas.LineTo(xC+20,yC+160);
  xLb:=xC+20;
  yLb:=yC+160;
  // left hip
  screen.Canvas.LineTo(xLb+30, yLb+80);
  // left shin
  screen.Canvas.LineTo(xLb+80, yLb+180);
  // left foot
  screen.Canvas.LineTo(xLb+30, yLb+200);
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb-90, yLb+80);
  // right shin
  screen.Canvas.LineTo(xLb-80, yLb+180);
  // right foot
  screen.Canvas.LineTo(xLb-110, yLb+200);
  screen.Canvas.MoveTo(xC, yC);
  // left shoulder
  screen.Canvas.LineTo(xC+70, yC+110);
  // left forearm
  screen.Canvas.LineTo(xC-5, yC+25);
  // left wrist
  screen.Canvas.LineTo(xC-5, yC+5);
  screen.Canvas.MoveTo(xC, yC);
  // right shoulder
  screen.Canvas.LineTo(xC-75, yC-35);
  // right forearm
  screen.Canvas.LineTo(xC-100, yC-20);
  // right wrist
  screen.Canvas.LineTo(xC-95, yC);
end;


procedure TForm1.PictureDraw9(Sender: TObject);
var
  xC, yC, xLb, yLb : integer;

begin
 Screen.Canvas.Pen.Width:=3;
  xC:=460;
  yC:=260;
  // head
  screen.Canvas.Ellipse(xC-40, yC-40, xC+40, yC+40);
  // face
  screen.Canvas.Ellipse(xC+12, yC-5, xC+15, yC-8);
  screen.Canvas.Ellipse(xC-20, yC-15, xC-23, yC-18);
  screen.Canvas.MoveTo(xC+5, yC+2);
  screen.Canvas.LineTo(xC-25, yC-10);
  // body
  yC:=yC+40;
  screen.Canvas.MoveTo(xC,yC);
  screen.Canvas.LineTo(xC,yC+160);
  xLb:=xC;
  yLb:=yC+160;
  // left hip
  screen.Canvas.LineTo(xLb+30, yLb+80);
  // left shin
  screen.Canvas.LineTo(xLb+140, yLb+50);
  // left foot
  screen.Canvas.LineTo(xLb+150, yLb+85);
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb-70, yLb+80);
  // right shin
  screen.Canvas.LineTo(xLb-60, yLb+180);
  // right foot
  screen.Canvas.LineTo(xLb-90, yLb+200);
  screen.Canvas.MoveTo(xC, yC);
  // left shoulder
  screen.Canvas.LineTo(xC+30, yC+20);
  // left forearm

  screen.Canvas.LineTo(xC+10, yC+115);
  // left wrist
  screen.Canvas.LineTo(xC-5, yC+5);
  screen.Canvas.MoveTo(xC, yC);
  // right shoulder
  screen.Canvas.LineTo(xC-75, yC+45);
  // right forearm
  screen.Canvas.LineTo(xC-100, yC+55);
  // right wrist
  screen.Canvas.LineTo(xC-95, yC);
end;

procedure TForm1.PictureDraw10(Sender: TObject);
var
  xC, yC, xLb, yLb : integer;

begin
 Screen.Canvas.Pen.Width:=3;
  xC:=460;
  yC:=260;
  // head
  screen.Canvas.Ellipse(xC-40, yC-40, xC+40, yC+40);

  // face
  screen.Canvas.Ellipse(xC+12, yC+6, xC+15, yC+3);
  screen.Canvas.Ellipse(xC-20, yC-2, xC-23, yC-5);
  screen.Canvas.MoveTo(xC+20, yC+18);
  screen.Canvas.LineTo(xC-5, yC+15);
  screen.Canvas.LineTo(xC-25, yC+5);


  // body
  yC:=yC+40;
  screen.Canvas.MoveTo(xC,yC);
  screen.Canvas.LineTo(xC-20,yC+145);
  xLb:=xC-20;
  yLb:=yC+145;
  // left hip
  screen.Canvas.LineTo(xLb+30, yLb+80);
  // left shin
  screen.Canvas.LineTo(xLb+130, yLb+10);
  // left foot
  screen.Canvas.LineTo(xLb+140, yLb+45);
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb-70, yLb+60);
  // right shin
  screen.Canvas.LineTo(xLb-45, yLb+180);
  // right foot
  screen.Canvas.LineTo(xLb-90, yLb+200);
  screen.Canvas.MoveTo(xC, yC);
  // left shoulder
  screen.Canvas.LineTo(xC-30, yC+20);
  // left forearm
  screen.Canvas.LineTo(xC-55, yC-45);
  // left wrist
  screen.Canvas.LineTo(xC-50, yC-65);
  screen.Canvas.MoveTo(xC, yC);
  // right shoulder
  screen.Canvas.LineTo(xC-75, yC+30);
  // right forearm
  screen.Canvas.LineTo(xC-90, yC-50);
  // right wrist
  screen.Canvas.LineTo(xC-85, yC-70);
end;

procedure TForm1.PictureDraw11(Sender: TObject);
var
  xC, yC, xLb, yLb : integer;

begin
 Screen.Canvas.Pen.Width:=3;
  xC:=460;
  yC:=260;
  // head
  screen.Canvas.Ellipse(xC-40, yC-40, xC+40, yC+40);

  // face
  screen.Canvas.Ellipse(xC+18, yC-6, xC+15, yC-3);
  screen.Canvas.Ellipse(xC-17, yC+2, xC-20, yC+5);
  screen.Canvas.MoveTo(xC+20, yC+8);
  screen.Canvas.LineTo(xC-20, yC+18);

  // body
  yC:=yC+40;
  screen.Canvas.MoveTo(xC,yC);
  screen.Canvas.LineTo(xC-30,yC+140);
  xLb:=xC-30;
  yLb:=yC+140;
  // left hip
  screen.Canvas.LineTo(xLb+20, yLb+80);
  // left shin
  screen.Canvas.LineTo(xLb+100, yLb+150);
  // left foot
  screen.Canvas.LineTo(xLb+105, yLb+185);
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb-70, yLb+60);
  // right shin
  screen.Canvas.LineTo(xLb-45, yLb+180);
  // right foot
  screen.Canvas.LineTo(xLb-90, yLb+200);
  screen.Canvas.MoveTo(xC, yC);
  // left shoulder
  screen.Canvas.LineTo(xC-30, yC+70);
  // left forearm
  screen.Canvas.LineTo(xC-45, yC-15);
  // left wrist
  screen.Canvas.LineTo(xC-45, yC-45);
  screen.Canvas.MoveTo(xC, yC);
  // right shoulder
  screen.Canvas.LineTo(xC-75, yC+45);
  // right forearm
  screen.Canvas.LineTo(xC-47, yC-15);
  // right wrist
  screen.Canvas.LineTo(xC-47, yC-45);
  //clapEffect
  screen.Canvas.MoveTo(xC-60, yC-55);
  screen.Canvas.LineTo(xC-75, yC-80);
  screen.Canvas.MoveTo(xC-70, yC-40);
  screen.Canvas.LineTo(xC-95, yC-45);
  screen.Canvas.MoveTo(xC-60, yC-25);
  screen.Canvas.LineTo(xC-85, yC-5);
  screen.Canvas.MoveTo(xC-30, yC-55);
  screen.Canvas.LineTo(xC-10, yC-80);
  screen.Canvas.MoveTo(xC-30, yC-40);
  screen.Canvas.LineTo(xC-10, yC-45);
  screen.Canvas.MoveTo(xC-35, yC-25);
  screen.Canvas.LineTo(xC-15, yC-15);
end;

procedure TForm1.PictureDraw12(Sender: TObject);
var
  xC, yC, xLb, yLb : integer;

begin
 Screen.Canvas.Pen.Width:=3;
  xC:=460;
  yC:=260;
  // head
  screen.Canvas.Ellipse(xC-40, yC-40, xC+40, yC+40);

  // face
  screen.Canvas.Ellipse(xC+14, yC-3, xC+11, yC);
  screen.Canvas.Ellipse(xC-20, yC-3, xC-23, yC);
  screen.Canvas.MoveTo(xC+16, yC+10);
  screen.Canvas.LineTo(xC-26, yC+13);

  // body
  yC:=yC+40;
  screen.Canvas.MoveTo(xC,yC);
  screen.Canvas.LineTo(xC-20,yC+145);
  xLb:=xC-20;
  yLb:=yC+145;
  // left hip
  screen.Canvas.LineTo(xLb+20, yLb+80);
  // left shin
  screen.Canvas.LineTo(xLb+60, yLb+195);
  // left foot
  screen.Canvas.LineTo(xLb+25, yLb+200);
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb-70, yLb+60);
  // right shin
  screen.Canvas.LineTo(xLb-45, yLb+180);
  // right foot
  screen.Canvas.LineTo(xLb-90, yLb+200);
  screen.Canvas.MoveTo(xC, yC);
  // left shoulder
  screen.Canvas.LineTo(xC+25, yC+90);
  // left forearm
  screen.Canvas.LineTo(xC-45, yC+25);
  // left wrist
  screen.Canvas.LineTo(xC-50, yC+50);
  screen.Canvas.MoveTo(xC, yC);
  // right shoulder
  screen.Canvas.LineTo(xC-68, yC+55);
  // right forearm
  screen.Canvas.LineTo(xC-43, yC-15);
  // right wrist
  screen.Canvas.LineTo(xC-15, yC);
end;

procedure TForm1.PictureDraw13(Sender: TObject);
var
  xC, yC, xLb, yLb : integer;

begin
 Screen.Canvas.Pen.Width:=3;
  xC:=460;
  yC:=260;
  // head
  screen.Canvas.Ellipse(xC-40, yC-40, xC+40, yC+40);

  // face
  screen.Canvas.Ellipse(xC+22, yC-7, xC+19, yC-4);
  screen.Canvas.Ellipse(xC-13, yC-3, xC-15, yC);
  screen.Canvas.MoveTo(xC+27, yC+10);
  screen.Canvas.LineTo(xC-2, yC+13);
  screen.Canvas.LineTo(xC-22, yC+12);

  // body
  yC:=yC+40;
  screen.Canvas.MoveTo(xC,yC);
  screen.Canvas.LineTo(xC,yC+150);
  xLb:=xC;
  yLb:=yC+150;
  // left hip
  screen.Canvas.LineTo(xLb+35, yLb+90);
  // left shin
  screen.Canvas.LineTo(xLb+25, yLb+160);
  // left foot
  screen.Canvas.LineTo(xLb+35, yLb+175);
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb-65, yLb+60);
  // right shin
  screen.Canvas.LineTo(xLb-45, yLb+200);
  // right foot
  screen.Canvas.LineTo(xLb-80, yLb+200);
  screen.Canvas.MoveTo(xC, yC);
  // left shoulder
  screen.Canvas.LineTo(xC+65, yC+80);
  // left forearm
  screen.Canvas.LineTo(xC+60, yC+140);
  // left wrist
  screen.Canvas.LineTo(xC+45, yC+150);
  screen.Canvas.MoveTo(xC, yC);
  // right shoulder
  screen.Canvas.LineTo(xC-38, yC+95);
  // right forearm
  screen.Canvas.LineTo(xC+20, yC+45);
  // right wrist
  screen.Canvas.LineTo(xC+35, yC+55);
end;

procedure TForm1.PictureDraw14(Sender: TObject);
var
  xC, yC, xLb, yLb : integer;

begin
 Screen.Canvas.Pen.Width:=3;
  xC:=460;
  yC:=260;
  // head
  screen.Canvas.Ellipse(xC-40, yC-40, xC+40, yC+40);

   // face
  screen.Canvas.Ellipse(xC+25, yC-1, xC+22, yC-4);
  screen.Canvas.Ellipse(xC-10, yC, xC-13, yC+3);
  screen.Canvas.MoveTo(xC+27, yC+10);
  screen.Canvas.LineTo(xC-17, yC+12);

  // body
  yC:=yC+40;
  screen.Canvas.MoveTo(xC,yC);
  screen.Canvas.LineTo(xC,yC+150);
  xLb:=xC;
  yLb:=yC+150;
  // left hip
  screen.Canvas.LineTo(xLb+35, yLb+90);
  // left shin
  screen.Canvas.LineTo(xLb+25, yLb+180);
  // left foot
  screen.Canvas.LineTo(xLb+35, yLb+195);
  screen.Canvas.MoveTo(xLb, yLb);
  // right hip
  screen.Canvas.LineTo(xLb-65, yLb+60);
  // right shin
  screen.Canvas.LineTo(xLb-45, yLb+200);
  // right foot
  screen.Canvas.LineTo(xLb-80, yLb+200);
  screen.Canvas.MoveTo(xC, yC);
  // left shoulder
  screen.Canvas.LineTo(xC+70, yC-5);
  // left forearm
  screen.Canvas.LineTo(xC+120, yC+40);
  // left wrist
  screen.Canvas.LineTo(xC+120, yC+45);
  screen.Canvas.MoveTo(xC, yC);
  // right shoulder
  screen.Canvas.LineTo(xC-30, yC+55);
  // right forearm
  screen.Canvas.LineTo(xC+50, yC+40);
  // right wrist
  screen.Canvas.LineTo(xC+65, yC+45);
end;


procedure TForm1.startClick(Sender: TObject);
begin
  i:=0;
  fps.Enabled := true;
  fps.Interval := 100;
  MediaPlayer2.FileName:= 'D:\BSUIR\Ћабы\Ћабороторна€ работа - 1 ќјиѕ\Delphi\2 сем\Dance\Win32\Debug\Cadillac.mp3';
  MediaPlayer2.Open;
  MediaPlayer2.Play;
end;
procedure TForm1.FormCreate(Sender: TObject);
begin
  fps.Enabled := false;
  screen.Canvas.Brush.Color := clWhite;
  Color := clWhite;
  //screen.Canvas.Pen.Mode := pMNotXor;
end;

end.
