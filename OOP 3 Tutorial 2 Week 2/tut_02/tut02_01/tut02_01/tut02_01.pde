int[] data = {10, 20, 30, 90, 50, 20};  // diameters //<>//
int largerNum = 0;

void setup()
{
  size(500, 200);
  
  for(int i = 0; i < data.length; i++){
    if(data[i] > largerNum){
      largerNum = data[i];
    }
  }
}

void draw()
{
  background(0, 0, 0);

  for (int i = 0; i < data.length; i++)
  {
    ellipse(i*100, 100, largerNum, largerNum);
  }
}
