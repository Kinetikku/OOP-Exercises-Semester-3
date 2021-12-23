public class Defender extends SpaceObject
{
  //private Location location;
  private Projectile projectile;
  
  public Defender(Location location)
  {
    super(location);
    this.projectile=null;
    try{
      if(location.getX() < 0 || location.getX() > width || location.getY() < 0 || location.getY() > height){
        throw new InvalidDefenderLocationException(location);
      }
    }
      catch(InvalidDefenderLocationException e){
        println(e.getMessage());
        exit();
      }
     
  }
  
  void incY(int direction) 
  {
    getLocation().incY(direction);
  }
  
  void incX(int direction) 
  {
    getLocation().incX(direction);
  }
  
  public void reloadProjectile()
  {
    projectile=null;
  }
  
  Projectile getProjectile()
  {
    return projectile;
  }

  public void fire()
  {
    projectile = new Projectile(getLocation().getY());
  }

  public String toString(){
    return "[Defender:location=["+getLocation()+"], projectile=["+getProjectile()+"]";
  }




  //
  // Add your code ABOVE this method
  //  
  public void display() // CAREFUL HOW/IF YOU MODIFY THIS CODE!!
  {
    fill(Game.DEFENDER_COLOUR);
    stroke(153);

    pushMatrix();   
    translate(getLocation().getX(), getLocation().getY());
    
    rect( 0, 0,Game.BLOCK_SIZE,Game.BLOCK_SIZE);                                                                rect(Game.BLOCK_SIZE*1, 0,Game.BLOCK_SIZE,Game.BLOCK_SIZE);
    rect( 0, 10,Game.BLOCK_SIZE,Game.BLOCK_SIZE);  rect(Game.BLOCK_SIZE*1,10,Game.BLOCK_SIZE,Game.BLOCK_SIZE);  rect(Game.BLOCK_SIZE*2,10,Game.BLOCK_SIZE,Game.BLOCK_SIZE);
    rect( 0, 20,Game.BLOCK_SIZE,Game.BLOCK_SIZE);                                                               rect(Game.BLOCK_SIZE*1,20,Game.BLOCK_SIZE,Game.BLOCK_SIZE); 
    
    popMatrix();
  }
}
