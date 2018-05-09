import processing.serial.*;

String nomePorta;
Serial conexaoArduino;

int tamanho = 50;
int posX = tamanho/2;
int step = 5;

void setup()
{
  nomePorta = Serial.list()[9];
  conexaoArduino = new Serial(this, nomePorta, 9600);
  println(nomePorta);
  
  size(400, 200);
  background(255);
}

void draw()
{
  background(255);
  
  ellipse(posX, height/2, tamanho, tamanho);
  posX = posX + step;
  
  if (posX >= width - (tamanho/2))
  {
    step = step * -1;
    conexaoArduino.write(1);
    
    println("direita");
  }
  
  if (posX <= tamanho/2)
  {
    step = step * -1;
    conexaoArduino.write(0);
    
    println("esquerda");
  }
}