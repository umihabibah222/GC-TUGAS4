unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    ButtonTitik: TButton;
    ButtonGaris: TButton;
    ButtonKotak: TButton;
    ButtonLingkaran: TButton;
    ButtonHapus: TButton;
    ButtonTiga1: TButton;
    ButtonTiga2: TButton;
    ButtonSegiLima: TButton;
    Label1: TLabel;
    Timer1: TTimer;
    procedure ButtonHapusClick(Sender: TObject);
    procedure ButtonGarisClick(Sender: TObject);
    procedure ButtonKotakClick(Sender: TObject);
    procedure ButtonLingkaranClick(Sender: TObject);
    procedure ButtonSegiLimaClick(Sender: TObject);
    procedure ButtonTiga1Click(Sender: TObject);
    procedure ButtonTiga2Click(Sender: TObject);
    procedure ButtonTitikClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Label1Click(Sender: TObject);
    procedure Label1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ButtonSegiLimaClick(Sender: TObject);
begin
  Canvas.Pen.Color := clBlue;
  Canvas.Polyline([Point(40,10), Point(20,60), Point(70,30), Point(10,30),
  Point(60,60), Point(40,10)]);
end;

procedure TForm1.ButtonTiga1Click(Sender: TObject);
begin
  canvas.MoveTo(88,95);
  Canvas.LineTo(88,235);

  canvas.MoveTo(88,235);
  Canvas.LineTo(213,235);

  canvas.MoveTo(88,95);
  Canvas.LineTo(213,235);
end;

procedure TForm1.ButtonTiga2Click(Sender: TObject);
var x, y : word;
begin
     for x := 15 to 200 do
      for y := 200 downto x do
          Canvas.Pixels[x,y] := clBlue;
end;

procedure TForm1.ButtonGarisClick(Sender: TObject);
begin
  Canvas.MoveTo(150,170);
Canvas.LineTo(350,170);
end;

procedure TForm1.ButtonHapusClick(Sender: TObject);
begin
  Invalidate;
end;

procedure TForm1.ButtonKotakClick(Sender: TObject);
begin
  Canvas.Rectangle(185,115,350,180);
end;

procedure TForm1.ButtonLingkaranClick(Sender: TObject);
begin
  Canvas.Ellipse(180,180,80,80);
end;

procedure TForm1.ButtonTitikClick(Sender: TObject);
begin
   Canvas.Brush.Color := clGreen;
    Canvas.Pen.Color := clGreen;
    Canvas.Ellipse(100,120,140,160);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
       Label1.Caption := 'X : ' + IntToSTR(X) + ' Y : ' + IntToStr(Y);
end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.Label1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin

end;

end.

