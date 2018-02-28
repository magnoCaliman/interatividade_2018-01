void setup()
{
  size(255, 255);
  background(255);
  noStroke();
}

void draw()
{
  fill(200, 100, mouseY);
  rect(0, 0, mouseX, mouseY);
}