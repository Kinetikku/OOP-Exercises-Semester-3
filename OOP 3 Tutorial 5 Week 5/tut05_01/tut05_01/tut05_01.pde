Circle c, b;

void setup()
{
  size(300, 300);
  c = new Circle();
  b = new Circle(width/2, height/2, 50);
  println(c.toString());
  println(b.toString());
}

void draw()
{
  background(0, 0, 0);
  c.display();
  b.display();
}
