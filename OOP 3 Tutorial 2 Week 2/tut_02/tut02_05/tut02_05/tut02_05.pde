import java.util.ArrayList;
ArrayList<Integer> data;
int i = 0;

void setup()
{
  size(500, 200);
  
  // create the arraylist "data" of Integer objects
  data = new ArrayList<Integer>();
  // add 5 values to the data arraylist here
  for(i = 1; data.size() < 5; i = (int)random(500)){
    data.add(i);
  }
  
}

void draw()
{
  background(255, 255, 255);
  fill(0, 0, 255);
  
  for (int i=0; i<data.size(); i++)
    rect(0, i*20, data.get(i), 20);
}
