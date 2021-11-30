PImage pitch;
ArrayList<Shot> points = new ArrayList<Shot>();

void setup()
{  
  size(597, 535);
  pitch = loadImage("images/pitch.png");
  image(pitch, 0, 0);
}

void draw()
{
}

void mousePressed()
{
  // point shots
  if(mouseButton==LEFT & keyPressed & keyCode==CONTROL)     // CTRL+LEFT mouse button
  {
    Shot point = new Point(mouseX, mouseY, Shot.MISS);
    points.add(point);
    point.display();   
    println(point);
  } else if(mouseButton==LEFT)                              // LEFT mouse button
  {
    Shot point = new Point(mouseX, mouseY, Shot.SCORE);
    points.add(point);
    point.display();
    println(point);
  }
  
  // goal shots
  if (mouseButton==RIGHT & keyPressed & keyCode==CONTROL)    // CTRL+RIGHT mouse button
  {
    Shot goal = new Goal(mouseX, mouseY, Shot.MISS);
    points.add(goal);
    goal.display();
    println(goal);
  } else if(mouseButton==RIGHT)                              // LEFT mouse button
  {
    Goal goal = new Goal(mouseX, mouseY, Shot.SCORE);
    points.add(goal);
    goal.display();
    println(goal);
  }
}

void keyPressed()
{
  if (key=='s')
    saveFrame("scoreChart.png");
}
