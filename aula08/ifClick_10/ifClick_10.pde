float tamanho = 0;

void setup()
{
  size(600, 600);
  background(255);
  noStroke();
}

void draw()
{
  //tamanho = 0; //bug!
  println("foi");
  
  if (mousePressed && mouseButton == LEFT)
  {
    tamanho++;  // tamanho = tamanho + 1;
    fill(255, 0, 0, 5);
    ellipse(mouseX, mouseY, tamanho, tamanho);
    println(tamanho);
  }
  else
  {
    tamanho = 0;
  }

  // como usar botão direito para limpar canvas + resetar tamanho cículo?
}