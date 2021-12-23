public class Mutant extends Alien
{
  private int direction;
  
  public Mutant(int number, Location location)
  {
    super(number, location);
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
  
  public void display(){
    fill(Game.MUTANT_COLOUR);
    stroke(153);
    
    pushMatrix();
    updateY();
    translate(getLocation().getX(), getLocation().getY());
    
    rect(0,0,Game.BLOCK_SIZE,Game.BLOCK_SIZE); // Top Left
    rect(Game.BLOCK_SIZE,0,Game.BLOCK_SIZE,Game.BLOCK_SIZE); //Top Mid
    rect(Game.BLOCK_SIZE*2, 0,Game.BLOCK_SIZE,Game.BLOCK_SIZE); //Top right
    
    rect(Game.BLOCK_SIZE*1,10,Game.BLOCK_SIZE,Game.BLOCK_SIZE); //Mid

    rect(0,20,Game.BLOCK_SIZE,Game.BLOCK_SIZE); //Bottom Left
    rect(Game.BLOCK_SIZE,20,Game.BLOCK_SIZE,Game.BLOCK_SIZE); //Bottom Mid
    rect(Game.BLOCK_SIZE*2,20,Game.BLOCK_SIZE,Game.BLOCK_SIZE);  //Bottom Right
       
       
    // Part 1 - display the mutant number here
    textSize(12);
    fill(255,255,255);
    text(getNumber() +1, 12, 20);
    
    
    popMatrix();
  }
}
