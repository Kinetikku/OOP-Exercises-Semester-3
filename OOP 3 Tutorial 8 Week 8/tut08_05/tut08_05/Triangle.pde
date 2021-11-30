public class Triangle extends Shape implements Comparable<Triangle>
{
  private int length;

  public Triangle(int x, int y, int length) 
  {
    super(x, y);
    this.length = length;
  }

  public void display(int num)
  {     
    fill(255);
    triangle(getX(), getY(), getX()+(length*0.5), getY()-(0.86*length), getX()+length, getY());
    fill(0, 0, 255);
    textSize(24);
    text(num, getX()+10, getY());    
  }

  @Override
  public String toString() 
  {
    return "Triangle[length=" + length + "," + super.toString() + "]";
  }
  
  public int compareTo(Triangle tri){
    if(tri.length < this.length)
      return -1;
    else if (tri.length > this.length)
      return 1;
    else
      return 0;
  }
}
