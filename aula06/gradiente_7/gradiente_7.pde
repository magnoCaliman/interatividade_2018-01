float posHorizontal = 0;
float offsetPosX = 1; //incremento, step
float incrementoAlpha = 1;
float alpha = 0;

void setup()
{
  size(512, 150);
  background(255);
}

void draw()
{
  stroke(0, alpha);
  
  line(posHorizontal, 0, posHorizontal, height);
  
  posHorizontal = posHorizontal + offsetPosX;
  alpha = (alpha + incrementoAlpha) % 256;
}