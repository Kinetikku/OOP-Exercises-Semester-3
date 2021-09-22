float xPos, yPos;
String location;

void setup(){
  size(400,400);
  frameRate(30);
  background(0,0,0);
  
  xPos = 0;
  yPos = 0;
  location = "";
}

void draw(){

}

void mouseClicked(){
  xPos = mouseX;
  yPos = mouseY;
  
  location = Float.toString(xPos) + "," + Float.toString(yPos);
  
  textSize(15);
  fill(255,255,255);
  text(location, mouseX, mouseY);
  
  println(location);
}
