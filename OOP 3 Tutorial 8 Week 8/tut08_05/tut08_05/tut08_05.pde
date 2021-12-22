import java.util.Collections;
ArrayList<Triangle> triangles;

void setup()
{
  size(800, 600);
  triangles = new ArrayList<Triangle>();
  triangles.add(new Triangle(width/4,300,100));
  triangles.add(new Triangle(width/2,300,70));
  triangles.add(new Triangle((width/2) + width/4,300,40));

  println("UnSorted :" + triangles);
  
  Collections.sort(triangles);
  println("Sorted :" + triangles);
}

void draw()
{
  background(0);
  int num=1;
  for (Triangle t : triangles)
    t.display(num++);
}
