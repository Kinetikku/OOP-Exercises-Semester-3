public class Square extends Shape
{  
 
  public Square(int x, int y, int radius){
    super(x, y, radius);
  }
  
  public float getPerimeter(){
     return 2 * (getRadius() + getRadius()) * 2; 
  }
  
  @Override
  public void display(){
    square(getX(), getY(), getRadius());
  }
  
  @Override
  public String toString(){
    return "Square: X = " + getX() + " Y = " + getY() + " Perimeter = " + getPerimeter() + " Length = " + getRadius();
  }
}
