int pinoSensor = A0;
int valorSensor;

void setup()
{
  Serial.begin(9600);
  pinMode(pinoSensor, INPUT);  
}

void loop()
{
  valorSensor = analogRead(pinoSensor);
//  Serial.println(valorSensor);

  Serial.write(valorSensor/4);
}
