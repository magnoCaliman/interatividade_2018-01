import processing.serial.*;

Serial conexaoArduino;
String nomePorta;
int mnsgArduino;

void setup()
{
  nomePorta = Serial.list()[9];
  conexaoArduino = new Serial(this, nomePorta, 9600);
}

void draw()
{
  println(mnsgArduino);
}

void serialEvent(Serial leituraArduino)
{
  mnsgArduino = leituraArduino.read();
}