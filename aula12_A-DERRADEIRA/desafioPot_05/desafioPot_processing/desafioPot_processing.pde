import processing.serial.*;

Serial conexaoArduino;
String nomePorta;

float tamanho = 100;
int mnsgArduino;

void setup()
{
  nomePorta = Serial.list()[9];
  println(nomePorta);
  
  conexaoArduino = new Serial(this, nomePorta, 9600);
  
  size(400, 400);
  rectMode(CENTER);
}

void draw()
{
  background(255);
  
  tamanho = map(mnsgArduino, 0, 255, 100, 400);
  rect(width/2, height/2, tamanho, tamanho);
  
  println("valor convertido: " + tamanho);
}

void serialEvent(Serial conexaoArduino)
{
  mnsgArduino = conexaoArduino.read();
  println("valor chegada: " + mnsgArduino);
}