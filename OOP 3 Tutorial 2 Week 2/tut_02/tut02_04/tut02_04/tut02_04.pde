import java.util.ArrayList;

ArrayList<Integer> data;
int largest = 0;

void setup()
{
  size(500, 200);
  data = new ArrayList<Integer>();
  data.add(new Integer(10));
  data.add(new Integer(20));
  data.add(new Integer(20));
  data.add(new Integer(40));
  data.add(new Integer(50));
  data.add(100);
  
  for(int number : data){
    if(number > largest)
      largest = number;
  }
}

void draw()
{
  background(0, 0, 0);

  for (int i = 0; i < data.size(); i++)
  {
    ellipse(i*100, 100, largest, largest);
  }
}
