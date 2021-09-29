import java.util.ArrayList; //<>// //<>//

ArrayList<Spot> spots;                  // Declare arraylist of spot objects

void setup()
{
  frameRate(60);
  size(300, 200);
  spots = new ArrayList<Spot>();        // Create arraylist of spot objects
  spots.add(new Spot(0, 100, 50));      // add spot objects to arraylist
  spots.add(new Spot(-100, 100, 50));
  spots.add(new Spot(-200, 100, 50));
  spots.add(new Spot(-300, 100, 50));
}

void draw()
{ 
  background(0, 0, 0); 

  for (Spot spot : spots) {
    spot.move();
    spot.display();

    println(spots.size() + " spots");
  }

  for (Spot spot : spots) {
    if (spot.getX() > width) {
      spots.remove(spot);
      break;
    }
  }



  //for (int i=0; i<spots.size(); i++)
  //{
  //  spots.get(i).move();
  //  spots.get(i).display();

  //  println(spots.size() + " spots");
  //}
}

void mousePressed()
{
  spots.add(new Spot(mouseX, mouseY, 50));
}
