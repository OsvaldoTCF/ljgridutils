unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Forms, Grids, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

uses
  LJGridUtils;

{ TForm1 }

procedure TForm1.Button2Click(Sender: TObject);
begin
  ClearGrid(StringGrid1);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  LoadJSON(StringGrid1, 'data.json');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Button2Click(Sender);
end;

end.

