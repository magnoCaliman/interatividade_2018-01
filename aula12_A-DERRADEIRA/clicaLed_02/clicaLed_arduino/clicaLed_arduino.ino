int pinoLed = 13;
int mnsgProcessing;

void setup()
{
  Serial.begin(9600);
}

void loop()
{
  mnsgProcessing = Serial.read();
  
  if (mnsgProcessing == 1)
  {
    digitalWrite(pinoLed, HIGH);  
  } 
  else if (mnsgProcessing == 0)
  {
    digitalWrite(pinoLed, LOW);  
  }
}
