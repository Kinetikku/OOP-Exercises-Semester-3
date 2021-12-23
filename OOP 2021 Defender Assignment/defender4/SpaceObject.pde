public abstract class SpaceObject{
  private Location location;
  private float speed;
  
  SpaceObject(){
    this.location=new Location(0,0);
    this.speed=1.0;
  }
  //I added this to account for the y value in the projectile
  SpaceObject(int y){
    location=new Location(Game.DEFENDER_X,y+Game.CHARACTER_SIZE/2);
    this.speed=16.0;
  }
  
   SpaceObject(Location location){
    this.location=location;
    this.speed=2.0;
  }
  
   SpaceObject(Location location, float speed){
    this.location=location;
    this.speed=speed;
  }
  
  public void setLocation(Location location){
    this.location=location;
  }
  
  public void setSpeed(float speed){
    this.speed=speed;
  }
  
  public Location getLocation(){
    return this.location;
  }
  
  public float getSpeed(){
    return this.speed;
  }
  
  public String toString(){
     return "[SpaceObject:location=["+getLocation()+", speed="+getSpeed()+"]"; 
  }
  
  public abstract void display();

}
