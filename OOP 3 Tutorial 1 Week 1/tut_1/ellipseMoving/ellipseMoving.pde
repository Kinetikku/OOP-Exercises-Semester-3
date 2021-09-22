float x, xAlt; 
float inc = 2;
int count = 100; //This keeps track of how many deducations should be taking from X
boolean reverse = false; //This allows the code to know when deducations should be made

// setup() runs first one time
void setup() 
{  
  size(200, 200); // Set the size of the window  
  x=25;            // intialise x coordinated
  xAlt = 200 - 25;
  frameRate(30);
}

// draw() loops continuously until you close the window
void draw() 
{
  background(0, 0, 0);
  fill(255, 255, 255); //I see multiple ellipses because each instance is being filled after every iteration.
  ellipse(x, 100, 50, 50);  // draw ellipse using x
  
  x = x + inc;
  
 // fill(252, 28, 3);
 // ellipse(xAlt, 100, 50, 50);  // draw ellipse using x
 // xAlt = xAlt - inc;
 
 //This if statement will check if the ellipse has reached the opposite side
 //Then enables the reverse boolean
 if(x >= 200){
  reverse = true; //<>//
 } //<>//
 
 //This will then deducate the count, so that we can keep track of how many deducations we should be
 //taking from the float X which moves the ellipse along the X-Axis
 if(reverse == true){
    count = count - 1;
    //This if statement will check if we have reached zero, if we have not then that must mean we havent reached
    //the other side of the window, in which case keep deducating from float X
    if(count != 0){
      x = x -(inc * 2);
    }
    //If we have reached the other side, we will then disable the reverse boolean and reset the count back to it's
    //orginal value in preparation for the next loop
    else{
     reverse = false;
     count = 100;
    }
  }
 }

void mousePressed()
{
  exit();
}
