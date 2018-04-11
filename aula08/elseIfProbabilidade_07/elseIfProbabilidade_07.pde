float dado;

void setup()
{
  frameRate(1);
}

void draw()
{
  dado = random(1);
  
  if (dado > 0.5) //0.5 = 1/2
  {
    println(dado + " - " + "0.5");
  }
  else if (dado > 0.25) //0.25 = 1/4
  {
    println(dado + " - " + "0.25");
  }
  else if (dado > 0.125) //0.125 = 1/8
  {
    println(dado + " - " + "0.125"); 
  }
  else if (dado > 0.0625) //0.0625 = 1/16
  {
    println(dado + " - " + "0.0625");
  }
  
  //mas a chance de dado > 0.0625 não é a MAIOR de todas? pq então essa é a menor probabilidade?
  //como visualizar essa relação?
}