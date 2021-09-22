float R,G,B;

void setup()
{
  size(640, 360);
  background(0, 0, 0);
  R = random(250);
  G = random(250);
  B = random(250);
}

void draw()
{
  R = random(250);
  G = random(250);
  B = random(250);
  
  //float x = random(width);
  //float y= random(height);
  
  fill(R, G, B);
  ellipse(mouseX, mouseY, random(30, 50), random(30, 50));
}
