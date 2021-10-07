Spot sp;

void setup()
{
  size(300, 200);
  try{
    sp = new Spot(-100, 100, 50);
  }
  catch(Exception e){
    println(e.getMessage());
    exit();
  }
  
  //Checks for X axis
  try{
    if(sp.getX() > width || sp.getX() < 0)
      throw new Exception("X is outside the window value");
  }
  catch (Exception e){
    println(e.getMessage());
  }
  
  //Checks for Y axis
  try{
    if(sp.getY() > height || sp.getY() < 0)
      throw new Exception("Y is outside the window value");
  }
  catch(Exception e){
    println(e.getMessage());
  }
}

void draw()
{
  background(0, 0, 0);
  sp.move();
  sp.display();
}
