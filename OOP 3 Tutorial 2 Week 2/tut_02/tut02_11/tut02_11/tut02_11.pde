PImage cardImage;    // image 
int imageWidth=71;   // used to space cards across the window
int cards[];         // cards array
final int NO_OF_CARDS = 10;
final int MAX_CARD_VALUE = 52;
boolean duplicateCard;

void setup()
{   
  size(355, 96);  // width=71*5
  noLoop();  // draw() called just once!

  duplicateCard = false;

  // create card array
  cards = new int[NO_OF_CARDS];

  // pick & put 5 random card values into array
  for (int i = 0; i < NO_OF_CARDS; i++)
  {
    //This will get a random card value
    int randomCardValue = (int)random(1, MAX_CARD_VALUE);
    
    //This will compare if the random card value has been used in the array
    for(int card : cards){ //<>//
      if(randomCardValue == card){
        //If it's already in the array I change to true and I -1 from the count so that I am
        //not left with a value of 0
        duplicateCard = true; //<>//
        i = i - 1;
      }
    }
    if(duplicateCard == false){ //<>//
      cards[i] = randomCardValue;
    }
    duplicateCard = false;
  }
}

void draw()
{
  // display cards 
  for (int i = 0; i <NO_OF_CARDS; i++)
  {
    cardImage = loadImage("images/"+cards[i]+".png");   // load card image
    image(cardImage, imageWidth*i, 0);                  // display card image on window //<>//
  }
}
