int pinoLed_1 = 2;
int pinoLed_2 = 13;
int mnsgProcessing;

void setup()
{
  Serial.begin(9600);
  
  pinMode(pinoLed_1, OUTPUT);
  pinMode(pinoLed_2, OUTPUT); 
}

void loop()
{
  mnsgProcessing = Serial.read();
  
  if (mnsgProcessing == 1) //elipse direita
  {
    digitalWrite(pinoLed_1, HIGH);
    digitalWrite(pinoLed_2, LOW);
  } 
  else if (mnsgProcessing == 0) //elipse esquerda
  {
    digitalWrite(pinoLed_1, LOW);
    digitalWrite(pinoLed_2, HIGH);
  }
}
