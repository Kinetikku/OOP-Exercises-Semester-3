Circle circle1;
Circle circle2;

void setup()
{
  size(800, 600);

  //Shape shape1 = new Shape(100, 100, Shape.WHITE);  
  //shape1.display();
  //println(shape1);

  circle1 = new Circle(100, 100, 50, Shape.WHITE); 
  circle1.changeXDirection();
  println(circle1);

  circle2 = new Circle(700, 100, 50, Shape.WHITE);  
  println(circle2);
  
  if(circle1.equals(circle1, circle2))
    println("They are the same");
  else
    println("They are not the same");
}

void draw()
{  
  background(0);
  circle1.display();
  circle1.update();
  circle2.display();
  circle2.update();
  
  if(circle1.intersects(circle2) && circle1.equals(circle1, circle2)){
    circle2.setRadius(circle2.getRadius() - 1);
    circle1.setRadius(circle1.getRadius() - 1);
    circle1.setColour(Shape.RED);
    circle2.setColour(Shape.RED);
    circle1.changeXDirection();
    //circle1.changeYDirection();
    //circle2.changeYDirection();
    circle2.changeXDirection();
  }
  
  if(circle1.getRadius() <= 0)
    exit();
}



void keyPressed()
{
  if (keyCode == UP) 
  {
    //
    circle2.setRadius(circle2.getRadius() + 5);
    circle1.setRadius(circle1.getRadius() + 5);
  }
  if (keyCode == DOWN && circle1.getRadius() > 5) 
  {
    //
    circle2.setRadius(circle2.getRadius() - 5);
    circle1.setRadius(circle1.getRadius() - 5);
  }
}
