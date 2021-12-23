public abstract class Alien extends SpaceObject
{
  private int number;
  
  public Alien()
  {
  }
  
  public Alien(int number)
  {
    this.number=number;
  }
  //Added this constructor to account for lander super
    public Alien(int number, Location location)
  {
    super(location);
    this.number=number;
  }

  public int getNumber()
  {
    return number;
  }
  
  public boolean intersect(Projectile projectile)
  {
    if (dist(projectile.getLocation().getX()+30,projectile.getLocation().getY(), getLocation().getX()+(Game.CHARACTER_SIZE/2), getLocation().getY()+(Game.CHARACTER_SIZE/2)) < Game.CHARACTER_SIZE/2)   
      return true;
    else
      return false;
  }
  
  public boolean visible()
  {    
    if (getLocation().getY()>height)
      return false;
    else
      return true;
  }
  
  //
  // Add your code ABOVE this method
  //
  public abstract void display(); // this display is NOT used (yet)
}
