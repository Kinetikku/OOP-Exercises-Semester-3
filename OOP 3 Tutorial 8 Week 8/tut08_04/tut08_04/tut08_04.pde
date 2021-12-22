import java.util.Collections;

ArrayList<Circle> circles;

void setup()
{
  size(800, 600);
  circles = new ArrayList<Circle>();
  circles.add(new Circle(100, 300, 50));
  circles.add(new Circle(200, 200, 40));
  circles.add(new Circle(300, 100, 30));

  println("UnSorted :"+circles);
  
  java.util.Collections.sort(circles);
  println("Sorted :"+circles);
  
  //println("Object 1: " + circles.get(i).getRadius() + " : Object 2: ++" + circles.get(z).getRadius() + " Result: " + circles.get(i).compareTo(circles.get(z)));
  
  for(int i = 0, z = 1; i < circles.size(); i++, z++){
    if(z == circles.size())
      z = 0;
    println("Object 1: " + circles.get(i).getRadius() + " : Object 2: " + circles.get(z).getRadius() + " Result: " + circles.get(i).compareTo(circles.get(z)));
  }
}

void draw()
{
  background(0);
  int num=1;
  for (Circle c : circles)
    c.display(num++);
}
