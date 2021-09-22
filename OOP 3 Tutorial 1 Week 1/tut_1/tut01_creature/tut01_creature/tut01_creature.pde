float xPosBody = 173;
float xPosHead = 200;
float xPosEye = 230;
float xPosRightHand = 198;
float xPosRightLeg = 188;
float xPosRightFoot = 188;
float xPosRightArm = 188;

color greyColor = color(61,61,61);
color whiteColor = color(255,255,255);

void setup(){
  size(400,400); //<>//
}

void draw(){
  background(120,120,140);
  
  //body
  rect(xPosBody,100,50,150,0,0,50,50);
  
  //head
  fill(greyColor);
  ellipse(xPosHead,80,80,100);
  
  //eye
  fill(whiteColor);
  ellipse(xPosEye,70,10,12);
  
  //right arm
  fill(greyColor);
  rect(xPosRightArm,150,20,80,10,10,0,0);
  
  //right hand
  fill(whiteColor);
  ellipse(xPosRightHand,230,20,25);
  
  //right leg
  fill(greyColor);
  rect(xPosRightLeg,249,20,110);
  
  //right foot
  fill(whiteColor);
  rect(xPosRightFoot,359,40,20,2,10,5,5);
  
  xPosBody += 1;
  xPosHead += 1;
  xPosEye += 1;
  xPosRightArm += 1;
  xPosRightHand += 1;
  xPosRightLeg += 1;
  xPosRightFoot += 1;
  
  if(xPosBody >= 400){
    xPosBody -= 380;
    xPosHead -= 380;
    xPosEye -= 380;
    xPosRightArm -= 380;
    xPosRightHand -= 380;
    xPosRightLeg -= 380;
    xPosRightFoot -= 380;
  }
}
