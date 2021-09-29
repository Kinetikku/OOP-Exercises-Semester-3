Spot spot, spot2;  // declare

void setup()
{
  size(200, 200);    
  spot = new Spot();  // create
  spot2 = new Spot(30, 30); //create new object
}


void draw()
{
  background(0, 0, 0);
  spot.display();  // invoke a method
  spot2.display(); 
}
