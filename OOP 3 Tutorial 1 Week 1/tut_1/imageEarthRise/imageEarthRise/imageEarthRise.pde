PImage img;
color greyColor = color(61,61,61);
color whiteColor = color(255,255,255);

void setup() {
  size(300, 300);
  
  //img = loadImage("./earthrise.jpg");  // image in same directory to program
  img = loadImage("./alleyWay.jpg");  // image in same directory to program
}

void draw() {
  image(img, 0, 0);
  
  //body
  rect(mouseX,mouseY,50 / 2,150 / 2,0,0,50,50);
  
  //head
  fill(greyColor);
  ellipse(mouseX + 25 / 2, mouseY - 25 / 2,80 / 2,100 / 2);
  
  //eye
  fill(whiteColor);
  ellipse(mouseX + 45 / 2,mouseY - 30 / 2,10 / 2,12 / 2);
  
  //right arm
  fill(greyColor);
  rect(mouseX + 15 / 2,mouseY + 45 / 2,20 / 2,80 / 2,10,10,0,0);
  
  //right hand
  fill(whiteColor);
  ellipse(mouseX + 25 / 2,mouseY + 130 / 2,20 / 2,25 / 2);
  
  //right leg
  fill(greyColor);
  rect(mouseX + 15 / 2,mouseY + 150 / 2,20 / 2,110 / 2);
  
  //right foot
  fill(whiteColor);
  rect(mouseX + 15 / 2,mouseY + 250 / 2,40 / 2,20 / 2,2,10,5,5);
}
