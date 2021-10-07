void setup()
{  
  size(800, 600);
  PImage pitch;
  pitch = loadImage("images/instructions.jpg");
  image(pitch, 0, 0);
}

void draw()
{
}

void keyPressed()
{
  try{
  PImage pitch;
  String letter=String.valueOf(key); 
  String image = "images/"+letter.toLowerCase()+".jpg";

  pitch = loadImage(image);
  image(pitch, 0, 0);
  //I tried importing the IOException and the FileNotFoundException but
  //it said that it was unreachable as this exception would never be thrown.
  //That's why I used the general Exception exception.
  } catch(Exception e){
      println(e.getMessage());
      image(loadImage("images/noImage.jpg"), 0, 0);
  }
}
