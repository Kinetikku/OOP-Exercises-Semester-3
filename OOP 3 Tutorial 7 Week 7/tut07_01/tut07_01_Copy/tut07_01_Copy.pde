Circle circle1;
Circle circle2;
ArrayList<Circle> circles = new ArrayList<Circle>();

 
void setup()
{
  size(800, 600);

  //Shape shape1 = new Shape(100, 100, Shape.WHITE);  
  //shape1.display();
  //println(shape1);

  circles.add(new Circle(100, 100, 50, Shape.WHITE)); 
  circles.add(new Circle(700, 100, 50, Shape.WHITE));  
}

void draw()
{  
  background(0);
  for(Circle circle : circles){
    circle.display();
    circle.update();
  }
  
  try{
    for(int i = 0; i < circles.size(); i++){
      for(int x = 0; i < circles.size(); x++){
        if(i != x)
          if(circles.get(x).intersects(circles.get(i))){
            circles.get(i).changeXDirection();
            circles.get(x).changeXDirection();
        }
      }
    }
  }
  catch(Exception e){
    printStackTrace(e);
  }
}

void mousePressed(){
 circles.add(new Circle(mouseX, mouseY, 50, Shape.WHITE)); 
}

void keyPressed()
{
  
}
