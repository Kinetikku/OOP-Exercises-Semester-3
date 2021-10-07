public class Spot
{
  private float x, y;
  private float diameter;
  private float speed;
  private float direction;

  public Spot(float x, float y, float diameter) throws Exception
  {
    this.x=x;
    this.y=y;
    this.diameter = diameter;
    this.speed=1;
    this.direction=1; // left to right
    
    try{
      if(this.diameter > width || this.diameter > height){
        throw new Exception("Invalid diameter: bigger than window");
      }
    }
    catch(Exception e){
      println(e.getMessage());
      exit();
    }
  }

  public void display()
  {
    ellipse(x, y, diameter, diameter);
  }

  public void move()
  {
    x=x+(speed*direction);
  }
  
  public float getX(){
    return this.x;
  }
  
  public float getY(){
    return this.y;
  }
  
  //public String toString()
  //{
  //  return "Spot";
  //}
}
