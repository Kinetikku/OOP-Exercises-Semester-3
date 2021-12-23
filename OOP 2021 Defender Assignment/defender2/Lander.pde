public class Lander extends Alien
{
  //private Location location; 
  //private float speed;   
  private int direction;
  
  public Lander(int number, Location location)
  {
    super(number, location);
    //this.location = location;
    //The lander is now slow because I am allowing the SpaceObject to define speed
    //this.speed=2.0;
    this.direction=1;
  }
  
  public int getDirection()
  {
    return this.direction;
  }
  
  private void updateY()
  {
    getLocation().setY(getLocation().getY()+(direction*(int)getSpeed()));
  }
  
  public boolean intersect(Projectile projectile)
  {
    if (dist(projectile.getLocation().getX()+30,projectile.getLocation().getY(), getLocation().getX()+(Game.CHARACTER_SIZE/2), getLocation().getY()+(Game.CHARACTER_SIZE/2)) < Game.CHARACTER_SIZE/2)   
      return true;
    else
      return false;
  }

  public String toString(){
    return "[Lander:number=["+getNumber()+"], location=["+getLocation()+"], speed="+getSpeed()+", direction="+getDirection()+"]";
  }
  
  
  
  //
  // Add your code ABOVE this method
  //  
  public void display() // CAREFUL HOW/IF YOU MODIFY THIS CODE!!
  {
    
    fill(Game.LANDER_COLOUR);
    stroke(153);
    
    pushMatrix();
    updateY();
    translate(getLocation().getX(), getLocation().getY());
    
    rect(0,0,Game.BLOCK_SIZE,Game.BLOCK_SIZE); // Top Left
    rect(Game.BLOCK_SIZE*2, 0,Game.BLOCK_SIZE,Game.BLOCK_SIZE); //Top right
    rect(0,10,Game.BLOCK_SIZE,Game.BLOCK_SIZE); //Mid Left
    rect(Game.BLOCK_SIZE*1,10,Game.BLOCK_SIZE,Game.BLOCK_SIZE); //Mid
    rect(Game.BLOCK_SIZE*2,10,Game.BLOCK_SIZE,Game.BLOCK_SIZE); //Mid Right
    rect(0,20,Game.BLOCK_SIZE,Game.BLOCK_SIZE); //Bottom Left
    rect(Game.BLOCK_SIZE*2,20,Game.BLOCK_SIZE,Game.BLOCK_SIZE);  //Bottom Right
       
       
    // Part 1 - display the lander number here
    textSize(12);
    fill(255,255,255);
    text(getNumber() +1, 12, 20);
    
    
    popMatrix();
  }

}
