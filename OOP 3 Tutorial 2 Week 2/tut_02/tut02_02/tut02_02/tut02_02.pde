int[] data = new int[5]; //<>//

void setup()
{
  size(500, 200);
  
  // add 5 values to the data array here
  // data[0]=10;
  // etc.
  
  data[0] = 12;
  data[1] = 20;
  data[2] = 46;
  data[3] = 78;
  data[4] = 40;
  
}

void draw()
{
  background(255, 255, 255);
  fill(0, 0, 255);

  for (int i=0; i<data.length; i++)
    rect(0, i*20, data[i], 20);
}
