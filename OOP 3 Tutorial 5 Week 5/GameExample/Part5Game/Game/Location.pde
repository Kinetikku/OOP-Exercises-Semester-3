public class Location 
{
  private int x;
  private int y;

  public Location(int x, int y) 
  {
    this.x = x;
    this.y = y;
  }
  public int getX() 
  {
    return x;
  }
  public int getY() 
  {
    return y;
  }
  public void setX(int x) 
  {
    this.x = x;
  }
  public void setY(int y) 
  {
    this.y = y;
  }

  public void changeX(int amountToChange) 
  {
    this.x += amountToChange;
  }
  public void changeY(int amountToChange) 
  {
    this.y += amountToChange;
  }
  public String toString() 
  {   
    return "[X: " + x + " Y: " + y + "]";
  }
}