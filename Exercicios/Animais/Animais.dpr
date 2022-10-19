program Animais;

uses
  Vcl.Forms,
  UFrmAnimal in 'UFrmAnimal.pas' {FrmAnimal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmAnimal, FrmAnimal);
  Application.Run;
end.
