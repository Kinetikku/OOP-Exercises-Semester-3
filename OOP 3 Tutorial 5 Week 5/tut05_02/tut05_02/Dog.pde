public class Dog extends Animal 
{
  String hairColour;
  
  public Dog(String hairColour) 
  {
    super();
    this.hairColour = hairColour;
  }

  public void bark() 
  {
    println("woof!");
  }

  public void eat()
  {
    // Call eat() from Animal
    super.eat();  

    // Add code for how a dog specifically eats
    println("Dog: eating...");
  }

  public void display()
  {
    PImage img = loadImage("images/dog.png");
    image(img, width/2, 0);
  }
  
  public void setHairColour(String hair){
    this.hairColour = hair;
  }
  
   public String getHairColour(){
    return hairColour;
  }

  public String toString()
  {
    return "Dog: age=" + getAge() + "Hair Colour = " + getHairColour();
  }
} 
