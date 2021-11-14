unit Unit_LP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart, Vcl.ComCtrls;

type
  TForm_LP = class(TForm)
    StatusBar1: TStatusBar;
    Chart1: TChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
  private
    { Private éŒ¾ }
  public
    { Public éŒ¾ }
  end;


implementation

{$R *.dfm}

end.
