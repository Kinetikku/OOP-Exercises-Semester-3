color greyColor = color(61,61,61);
color whiteColor = color(255,255,255);

void setup(){
  size(400,400);
}

void draw(){
  background(120,120,140);
  
  //body
  rect(mouseX,mouseY,50,150,0,0,50,50);
  
  //head
  fill(greyColor);
  ellipse(mouseX + 25, mouseY - 25,80,100);
  
  //eye
  fill(whiteColor);
  ellipse(mouseX + 45,mouseY - 30,10,12);
  
  //right arm
  fill(greyColor);
  rect(mouseX + 15,mouseY + 45,20,80,10,10,0,0);
  
  //right hand
  fill(whiteColor);
  ellipse(mouseX + 25,mouseY + 130,20,25);
  
  //right leg
  fill(greyColor);
  rect(mouseX + 15,mouseY + 150,20,110);
  
  //right foot
  fill(whiteColor);
  rect(mouseX + 15,mouseY + 250,40,20,2,10,5,5);
}
