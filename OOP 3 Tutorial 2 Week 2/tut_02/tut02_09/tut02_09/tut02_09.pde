import java.util.ArrayList;
float largestNum;
ArrayList<Bubble> Bubble;

void setup(){
  size(600, 600);
  Bubble = new ArrayList<Bubble>();
  
  Bubble.add(new Bubble());
  Bubble.add(new Bubble());
  Bubble.add(new Bubble());
  
  for(Bubble bub : Bubble){
    if(bub.getDiameter() > largestNum)
    largestNum = bub.getDiameter();
  }
  
  println(largestNum);
}

void draw(){
  background(185,223,234);
  
  for(Bubble bub: Bubble){
    bub.display();
    bub.move();
  }
}
