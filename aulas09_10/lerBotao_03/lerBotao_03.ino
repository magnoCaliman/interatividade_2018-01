int pinoBotao = 5;

void setup()
{
  Serial.begin(9600);
  pinMode(pinoBotao, INPUT);
}

void loop()
{
  int estadoDoBotao = digitalRead(pinoBotao);
  Serial.println(estadoDoBotao);
}

