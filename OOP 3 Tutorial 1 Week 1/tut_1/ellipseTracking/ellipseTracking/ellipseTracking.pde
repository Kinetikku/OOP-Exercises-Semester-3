// runs one time
void setup() 
{
  // Set the size of the window
  size(640, 360);
  frameRate(30);
  //background(0, 0, 0);
}

// loops continuously 
void draw() 
{
  background(0, 0, 0);
  fill(255, 255, 255); 

  //Draw ellipse using mouse x coordinate
  //I changed the radius to match the X & Y location of the mouse
  //I changed the location of X & Y to follow the mouse location.
  //I can see multiple ellipses because the Setup() only sets the background once. Then
  //each frame the ellipse is stacked one upon the other to create the duplicates.
  ellipse(mouseX, mouseY * 2 / 2, 50, 50);  
}
