import processing.serial.*;

String nomePorta;
Serial conexaoArduino;

void setup()
{
  nomePorta = Serial.list()[9];
  println(nomePorta);
  
  conexaoArduino = new Serial(this, nomePorta, 9600);
}

void draw()
{
  if (mousePressed == true && mouseButton == LEFT)
  {
    conexaoArduino.write(1);
  }
  else if (mousePressed == false && mouseButton == RIGHT)
  {
    conexaoArduino.write(0);
  }
}