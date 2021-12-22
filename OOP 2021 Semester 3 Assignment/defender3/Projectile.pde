public class Projectile  extends SpaceObject
{
  //private Location location;
  private int projectileWidth;
  private int projectileHeight;
  //private float speed;


  public Projectile(int y)
  {   
    super(y);
    //location=new Location(Game.DEFENDER_X,y+Game.CHARACTER_SIZE/2);
    //this.speed=16.0;
    this.projectileWidth=30;
    this.projectileHeight=1;
  }

  public boolean visible()
  {
    if (this.getLocation().getX()>width)
      return false;
    else
      return true;
  }
 

  public String toString(){
    return "[Projectile:location=["+getLocation()+"], projectileWidth=["+this.projectileWidth+", projectileHeight="+this.projectileHeight+", speed="+this.getSpeed()+"]";
  }

  //
  // Add your code ABOVE this method
  //
  public void display() // CAREFUL HOW/IF YOU MODIFY THIS CODE!!
  {
    fill(Game.PROJECTILE_COLOUR);
    stroke(Game.PROJECTILE_COLOUR);

    pushMatrix();
    getLocation().setX(this.getLocation().getX()+((int)this.getSpeed()*1));
    translate(getLocation().getX(), getLocation().getY());
    
    rect(0, 0, projectileWidth, projectileHeight);                                 // 3

    popMatrix();
  }
}
