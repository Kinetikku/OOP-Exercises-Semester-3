public class Baiter extends SpaceObject
{
  //Removed because of Part 2
  //private Location location; 
  //private float speed;   
  private int direction;

  public Baiter(Location location, float speed)
  {
    super(location, speed);
    //The Baiter is now slow because I am allowing the SpaceObject to define speed
    //Instead of assigning it below
    this.direction=-1;
  }
  
  public boolean visible()
  {
    if (getLocation().getX()+((int)this.getSpeed()*1)<0)
      return false;
    else
      return true;
  }

  private void updateX()
  {
    getLocation().setX(getLocation().getX()+(direction*(int)getSpeed()));
  }

  // overloaded intersect() methods
  public boolean intersect(Lander lander)
  {
    if (dist(lander.getLocation().getX()+(Game.CHARACTER_SIZE/2),lander.getLocation().getY()+(Game.CHARACTER_SIZE/2), getLocation().getX()+(Game.CHARACTER_SIZE/2), getLocation().getY()+(Game.CHARACTER_SIZE/2)) < Game.CHARACTER_SIZE)   
      return true;
    else
      return false;
  }
  public boolean intersect(Defender defender)
  {
    if (dist(defender.getLocation().getX()+(Game.CHARACTER_SIZE/2),defender.getLocation().getY()+(Game.CHARACTER_SIZE/2), getLocation().getX()+(Game.CHARACTER_SIZE/2), getLocation().getY()+(Game.CHARACTER_SIZE/2)) < Game.CHARACTER_SIZE)   
      return true;
    else
      return false;
  }
  public boolean intersect(Projectile projectile)
  {
    if (dist(projectile.getLocation().getX()+(Game.CHARACTER_SIZE/2),projectile.getLocation().getY()+(Game.CHARACTER_SIZE/2), getLocation().getX()+(Game.CHARACTER_SIZE/2), getLocation().getY()+(Game.CHARACTER_SIZE/2)) < Game.CHARACTER_SIZE)   
      return true;
    else
      return false;
  }  

  public String toString(){
    return "[Baiter:location=["+getLocation()+"], speed=["+this.getSpeed()+", direction="+this.direction+"]";
  }

  public Boolean blocksProjectile(Projectile projectile){
    if(this.intersect(projectile)){
      return true;
    }
    else {
      return false; 
    }
  }

  //
  // Add your code ABOVE this method
  //
  public void display() // CAREFUL HOW/IF YOU MODIFY THIS CODE!!
  {
    fill(Game.BAITER_COLOUR);
    stroke(153);

    pushMatrix();
    updateX();
    translate(getLocation().getX(), getLocation().getY());

    rect(0,0,Game.BLOCK_SIZE,Game.BLOCK_SIZE);   rect(Game.BLOCK_SIZE*1, 0,Game.BLOCK_SIZE,Game.BLOCK_SIZE);  rect(Game.BLOCK_SIZE*2, 0,Game.BLOCK_SIZE,Game.BLOCK_SIZE);
    rect(0,10,Game.BLOCK_SIZE,Game.BLOCK_SIZE);                                                               rect(Game.BLOCK_SIZE*2,10,Game.BLOCK_SIZE,Game.BLOCK_SIZE);
    rect(0,20,Game.BLOCK_SIZE,Game.BLOCK_SIZE);  rect(0,20,Game.BLOCK_SIZE*2,Game.BLOCK_SIZE);                rect(Game.BLOCK_SIZE*2,20,Game.BLOCK_SIZE,Game.BLOCK_SIZE); 

    popMatrix();
  }
}
