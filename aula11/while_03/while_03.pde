int tamRect = 15;

void setup()
{
  size(300, 200);
  background(255);
  rectMode(CENTER);
  
  noLoop();
}

void draw()
{
  int i = 10;
  
  while (i <= width) 
  {                  
    ellipse(i, height/2, tamRect, tamRect);
    i = i + 20;  // qual a função dessa linha?
                 // o que acontece se for comentada?
  }
  
  println("final do draw. valor de i = " + i);
}