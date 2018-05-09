int pinoBotao = 5;
int estadoBotao;

void setup()
{
  Serial.begin(9600);
  pinMode(pinoBotao, INPUT);  
}

void loop()
{
  estadoBotao = digitalRead(pinoBotao);
  
  Serial.println(estadoBotao);
//  Serial.write(estadoBotao);
}
