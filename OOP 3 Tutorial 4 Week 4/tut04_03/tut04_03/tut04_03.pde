Lizard lizard;
Fly[] flies;

void setup()
{
  size(800, 800);
  noCursor();  // hides mouse cursor

  flies = new Fly[10];
  for(int i=0;i<flies.length;i++)
    flies[i]=new Fly();

  lizard = new Lizard(flies, 0, 0);
}

void draw()
{
  background(0);  
  lizard.display();
  println(lizard);  
}
