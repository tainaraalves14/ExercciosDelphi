unit UFrmAnimal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls, Jpeg,
  Vcl.MPlayer;

type
  TFrmAnimal = class(TForm)
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Image1: TImage;
    MediaPlayer1: TMediaPlayer;
    Label2: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    // bool Pergunta(Texto: string);
    function Pergunta(Texto: PWideChar) : boolean;
    procedure Resposta(Animal: string);
  public
    { Public declarations }
  end;

var
  FrmAnimal: TFrmAnimal;

implementation

{$R *.dfm}


function TFrmAnimal.Pergunta(Texto: PWideChar): boolean;
begin
  if (Application.MessageBox(Texto, 'Animal', MB_ICONQUESTION + MB_YESNO) = IDYes) then
    result := True
  else
    result := False;
end;

procedure TFrmAnimal.Resposta(Animal: string);
var arquivo : string;
begin
  if (FrmAnimal.Height < 615) then
  begin
    FrmAnimal.Height:= 615;
    FrmAnimal.Top := FrmAnimal.Top - 215;
  end;

  // Exibe uma mensagem com o nome do Animal
  Label2.Caption := Animal;

  // Gera o caminho da imagem e carrega a imagem no Image1
  arquivo := ExtractFileDir(ExtractFileDir(ExtractFileDir(ParamStr(0))))
           + '\Imagens\' + Animal + '.jpg';
  Image1.Picture.LoadFromFile(arquivo);

  // GEra o caminha do audio e carrega no MediaPlayer1
  arquivo := ExtractFileDir(ExtractFileDir(ExtractFileDir(ParamStr(0))))
           + '\Sons\' + Animal + '.wav';
  MediaPlayer1.FileName := arquivo;
  MediaPlayer1.Open;
  MediaPlayer1.Play;
end;

procedure TFrmAnimal.SpeedButton1Click(Sender: TObject);
begin
  if (Pergunta('� Mamifero?')) then
    if (Pergunta('� Mamifero Quadr�pede?')) then
      if (Pergunta('� Mamifero Quadr�pede Carn�voro?')) then
        Resposta('LE�O')
      else
        if (Pergunta('� Mamifero Quadr�pede Herb�voro?')) then
          Resposta('CAVALO')
        else
          Resposta('FALHOU')
    else
      if (Pergunta('� Mamifero B�pede?')) then
        if (Pergunta('� Mamifero B�pede On�voro?')) then
          Resposta('HOMEM')
        else
          if (Pergunta('� Mamifero B�pede Frut�fero?')) then
            Resposta('MACACO')
          else
            Resposta('FALHOU')
      else
        if (Pergunta('� Mamifero Voador?')) then
          Resposta('MORCEGO')
        else
          if (Pergunta('� Mamifero Aqu�tico?')) then
            Resposta('BALEIA')
          else
            Resposta('FALHOU')
  else
    if (Pergunta('� Ave?')) then
      if (Pergunta('� Ave N�o-Voadora?')) then
        if (Pergunta('� Ave N�o-Voadora Tropical?')) then
          Resposta('AVESTRUZ')
        else
          if (Pergunta('� Ave N�o-Voadora Polar?')) then
            Resposta('PINGUIM')
          else
            Resposta('FALHOU')
      else
        if (Pergunta('� Ave Nadadora?')) then
          Resposta('PATO')
        else
          if (Pergunta('� Ave De Rapina?')) then
            Resposta('�GUIA')
          else
            Resposta('FALHOU')
    else
      if (Pergunta('� Reptil?')) then
        if (Pergunta('� Reptil Com Casco?')) then
          Resposta('TARTARUGA')
        else
          if (Pergunta('� Reptil Carn�voro?')) then
            Resposta('CROCODILO')
          else
            if (Pergunta('� Reptil Sem Patas?')) then
              Resposta('COBRA')
            else
              Resposta('FALHOU')
      else
        Resposta('FALHOU');
end;

end.





