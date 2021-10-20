public class Circle
{
  private int x;
  private int y;
  private int radius;

  public Circle()
  {
    x=0;
    y=0;
    radius=20;
  }

  public Circle(int x, int y, int radius){
    this.x = x;
    this.y = y;
    this.radius = radius;
  }
  
  public void display()
  {
    ellipse(x, y, radius, radius);
  }

  public int getRadius()
  {
    return radius;
  }

  public double getArea()  
  {
    return radius*radius*Math.PI;
  }
  
  public int getX(){
    return x;
  }
  
  public int getY(){
    return y;
  }
  
  public void setX(int x){
    this.x = x;
  }
  
  public void setY(int y){
    this.y = y;
  }
  
  public void setRadius(int r){
    this.radius = r;
  }
  
  public String toString(){
    return "Circle: X =" + getX() + "; Y = " + getY() + "; Radius = " + getRadius() + ";";
  }
}
