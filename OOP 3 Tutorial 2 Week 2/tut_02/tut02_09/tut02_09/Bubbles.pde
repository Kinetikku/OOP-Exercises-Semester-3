public class Bubble
{
  float x;
  float y;
  float diameter;

  public Bubble()
  {
    x=random(width);      // random position along x axis
    y=height;             // start at bottom of window
    diameter=random(50);  // random diameter
  }

  public void setX(float newX){
    this.x = newX;
  }
  
  public void setY(float newY){
    this.y = newY;
  }

  public float getX()
  {
    return this.x;
  }
  
  public float getY()
  {
    return this.y;
  }

  public float getDiameter()
  {
    return diameter;
  }

  public void display()
  {
    fill(125, 50);
    ellipse(x, y, diameter, diameter);
  }

  public void move()
  {
    if(y < height){
      y--;
      x=x+random(-1, 1);
    }
  }

  public String toString()
  {
    return "Bubble";
  }
}
