void setup()
{
  size(600, 600);
  background(255);
  strokeCap(SQUARE);
}

void draw()
{
  strokeWeight(random(60));
  stroke(0, 0, random(255));
  
  line(mouseX, mouseY, pmouseX, pmouseY); 

}