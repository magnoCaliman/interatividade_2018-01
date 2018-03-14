void setup()
{
  size(300, 300);
  //rectMode(CENTER);
}

void draw()
{
  background(255);  
  rect(mouseX, 150, 30, 30);
  
  println(mouseX);
}