Circle c;
Square s;

void setup()
{
  size(300, 300);
  c = new Circle(100, 100, 30); 
  println("Area of Circle = " + c.getRadius());
  println(c.toString());
  
  s = new Square(100, 200, 30);
  println(s.toString());
}

void draw()
{
  background(0, 0, 0);
  c.display();
  s.display();
}
