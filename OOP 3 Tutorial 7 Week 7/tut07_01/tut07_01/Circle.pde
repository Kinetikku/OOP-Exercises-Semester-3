public class Circle extends Shape 
{
  private int radius;

  // Constructor
  public Circle(int x, int y, int radius) 
  {
    super(x, y);
    this.radius = radius;
  }
  
  public Circle(int x, int y, int radius, color colour) 
  {
    super(x, y, colour);
    this.radius = radius;
  }

  @Override
  public void update(){
    if (getX() > width - radius)
      changeXDirection();
    if (getY() > height - radius)
      changeYDirection();
    else if (getX() < 0 + radius)
      changeXDirection();
    else if (getY() < 0 + radius)
      changeYDirection();
      
    incX(5);
    incY(5);
  }

  public void setRadius(int radius){
      this.radius = radius;
  }
  
  public int getRadius(){
     return this.radius; 
  }

  public boolean equals(Circle one, Circle two){
    if(one.getRadius() == two.getRadius())
       return true;
    else
      return false;
  }

  @Override
  public double getArea() 
  {
    return PI*sq(radius);
  }

  @Override
  public void display()
  {    
    fill(getColour());
    ellipse(getX(), getY(), radius*2, radius*2);
  } 

  @Override
  public boolean intersects(Shape shape)
  {
    if (dist(shape.x, shape.y, getX(), getY()) < radius*2)    
      return true;
    else
      return false;
  }

  @Override
  public String toString() 
  {
    return "Circle[radius*2=" + radius + "," + super.toString() + "]";
  }

}
