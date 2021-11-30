public class Point extends Shot
{
  public Point(int x, int y, color colour){
    super(x, y, colour);
  }
  
  @Override
  public void display(){
    fill(getColour());
    ellipse(getX(), getY(), Shot.SIZE, Shot.SIZE);
  }
  
  public String toString(){
   if(mouseButton==LEFT & keyPressed & keyCode==CONTROL)
      return "Missed Point: @(" + getX() + "," + getY() + ")";
    else if(mouseButton==LEFT)
      return "Goal Point: @(" + getX() + "," + getY() + ")";
    else{
     return ""; 
    }
  }
}
