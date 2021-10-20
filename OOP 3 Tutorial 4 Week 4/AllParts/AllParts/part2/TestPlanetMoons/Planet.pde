public class Planet
{
  private float angle=0.01;
  // add class member variables here
  String name;
  float radius;
  float distance;
  float speed;
  Moon[] moons;


  // add constructor here
  public Planet(String name, float radius, float distance, float speed, Moon[] moons){
    this.name = name;
    this.radius = radius;
    this.distance = distance;
    this.speed = speed;
    this.moons = moons;
  }

  // add other methods here
  public String getName(){
    return this.name;
  }
  
  public float getRadius(){
    return this.radius; 
  }

  public float getDistance(){
    return this.distance; 
  }
  
  public float getSpeed(){
    return this.speed; 
  }
  
  public Moon[] getMoon(){
    return this.moons; 
  }
  
  public String toString(){
    return "Planet: " + getName() + ": Radius = " + getRadius() + ": Distance = " + getDistance() + "has " + moons.length;
  }
  
  public void printMoons(){
    for(Moon moon : moons){
          println(moon.getName());
    }
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
    moons[0].display();   
    moons[1].display();    
    popMatrix();    
  }
}
