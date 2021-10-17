public class Lizard
{
  public final String imageFile = "images/lizard.png";
  Fly[] flies;
  PImage img;
  int x;
  int y;
  
  public Lizard(Fly[] fly, int x, int y)
  {
    this.flies = fly;
    this.x = x;
    this.y = x;
  }

  // setters and getters go here
   public void setX(int x){
     this.x = x;
   }
   
   public void setY(int y){
     this.y = y;
   }
   
   public int getX(){
     return this.x; 
   }
   
   public int getY(){
    return this.y; 
   }
  
  public void display()
  {
    img = loadImage(imageFile);
    setX(mouseX);
    setY(mouseY);
    image(img, getX(), getY());    
    for(int i = 0; i < flies.length; i++){
      flies[i].move();
      flies[i].display();
    }
  }
  
  public String toString()
  {
    return "Lizard: X=" + x + ";Y=" + y;
  }
  
}
