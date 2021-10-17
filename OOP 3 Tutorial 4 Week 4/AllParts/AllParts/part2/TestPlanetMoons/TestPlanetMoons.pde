Planet mars;
Moon moon;

void setup()
{
  size(800, 800);

  // add tester code here - create two moon objects, add them to array, create a planet mars and call some of its methods, etc.
  Moon[] moons = new Moon[2];
  moons[0] = new Moon("Phoboa", 5, 50, 2, 28);
  moons[1] = new Moon("Deimos", 2.5, -35, 1.5, 42);
  
  mars = new Planet("Mars", 20, 300, 1.5, moons);
}

void draw()
{
  background(0, 0, 0);
  fill(255, 255, 0);
  ellipse(width/2, height/2, 100, 100);  
  translate(width/2, height/2);

  mars.display();
}
