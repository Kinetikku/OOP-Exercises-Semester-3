float x; 
float inc=2;

// setup() runs first one time
void setup() 
{  
  size(200, 200); // Set the size of the window  
  x=25;            // intialise x coordinated
}

// draw() loops continuously until you close the window
void draw() 
{
  background(0, 0, 0);
  fill(255, 255, 255); //I see ellipses because each instance is being filled aftyer every iteration.
  ellipse(x, 100, 50, 50);  // draw ellipse using x

  x=x+inc;
  
  if(x >= 200){
     for(x = 200; x > 0; x = x-inc){
       background(x, 0, 0);
       fill(255, 255, 255);
       ellipse(x, 100, 50, 50);
     }
  }
}

void mousePressed()
{
  exit();
}
