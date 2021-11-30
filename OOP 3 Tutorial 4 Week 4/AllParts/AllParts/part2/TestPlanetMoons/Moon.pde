public class Moon
{
  // add class member variables here
  private float angle=0.01;
  String name;
  float radius;
  float distance;
  float speed;
  int orbitalPeriod;

  // add constructor here
  public Moon(String name,float radius, float distance, float speed, int orbit){
    this.name = name;
    this.radius = radius;
    this.distance = distance;
    this.speed = speed;
    this.orbitalPeriod = orbit;
  }

  // add other methods here
  public void setDistance(float distance){
    this.distance = distance;
  }
  
  public void setSpeed(float speed){
    this.speed = speed;
  }
  
  public float getDistance(){
    return this.distance;
  }
  
  public float getSpeed(){
    return this.speed;
  }
  
  public void setMoonName(String name){
   this.name = name; 
  }
  
  public String getMoonName(){
   return this.name; 
  }
  
  public void setRadius(float radius){
   this.radius = radius; 
  }
  
  public float getRadius(){
    return this.radius;
  }
  
  public String toString(){
    return "Planet name: " + getMoonName() + " Orbit = " + this.orbitalPeriod;
  }

  // This will display the moon when other code is completed.  You don't need to understand this code.
  public void display()
{
  angle=angle+(0.01*speed);
  pushMatrix();
  rotate(angle);
  translate(distance,0);
  fill(255, 255, 255);
  ellipse(0, 0, radius*2, radius*2);    

  for(Moon moon: getMoons())
    moon.display();

  popMatrix();    
}


}
