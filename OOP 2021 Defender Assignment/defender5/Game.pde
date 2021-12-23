public class Game
{
  public static final int GAME_WIDTH = 800;

  public static final int CHARACTER_SIZE = 30;
  public static final int BLOCK_SIZE = 10;
  public static final int NO_OF_STARS = 25;  //
  public static final int NO_OF_LANDERS = 3;
  public static final int NO_OF_MUTANTS = 1;

  public static final int INITIAL_LIVES = 3;   
  public static final int UP = -1;
  public static final int DOWN = 1;
  public static final int FIRE = 0;
  public static final int DEFENDER_STEP = 20;  

  public static final int ALIEN_COLOUR_WHITE = #ffffff;
  public static final int DEFENDER_COLOUR = #6d6a7d;

  public static final int LANDER_COLOUR = #118f01;
  public static final int MUTANT_COLOUR = #800080;
  public static final int BAITER_COLOUR = #ff0000;
  public static final int PROJECTILE_COLOUR = #eb00eb;

  public static final int DEFENDER_X = 50;
  public static final int DEFENDER_MIN_Y = 40;
  public static final int ALIEN_X_MIN = 150;
  public static final int ALIEN_X_MAX = GAME_WIDTH;

  public static final int LANDER_SCORE = 100;
  public static final int MUTANT_SCORE = 300;
  
  private int STAR_X[];
  private int STAR_Y[];

  private Defender defender;  
  //private Lander lander;
  //private ArrayList<Lander> landers;
  private ArrayList<Alien> aliens;
  private Baiter baiter;
  private ScreenData screenData;

  /////////////////////////////////////////////////////////////////////////////////

  public Game()
  {    
    // randomise star locations
    randomiseStars();

    // create defender
    defender = new Defender(new Location(Game.DEFENDER_X, (int)random(0, height)));
    //println(defender);

    // create lander no.1
    //lander = new Lander(1, new Location((int)random(ALIEN_X_MIN, ALIEN_X_MAX), 0));

    // create landers arraylist here
    //landers = new ArrayList<Lander>();
    
    // create aliens arraylist here
    aliens = new ArrayList<Alien>();
    
    // add 3 landers to arraylist   
    //for (int i=0; i<Game.NO_OF_LANDERS; i++){
    //  landers.add(new Lander(i, new Location((int)random(ALIEN_X_MIN, ALIEN_X_MAX), 0)));
    //}
    
    //Part 5 create aliens
    int alienCount=0; //<>//
    for (int i=0; i<Game.NO_OF_LANDERS; i++, alienCount++)
      aliens.add(new Lander(alienCount, new Location((int)random(ALIEN_X_MIN, ALIEN_X_MAX), 0)));    
    for (int i=0; i<Game.NO_OF_MUTANTS; i++, alienCount++)
      aliens.add(new Mutant(alienCount, new Location((int)random(ALIEN_X_MIN, ALIEN_X_MAX), 0)));

    
    // no Baiter opponent for now (hence null value)
    baiter=null;

    // create screenData here
    screenData = new ScreenData();
  }

  /////////////////////////////////////////////////////////////////////////////////

  public void action(int value)
  {
    switch(value)
    {
      case Game.UP:  
        defender.incY(-Game.DEFENDER_STEP);
      break;
      case Game.DOWN:  
        defender.incY(Game.DEFENDER_STEP);
      break;
      case Game.FIRE:   
        if (defender.getProjectile()==null) {
          defender.fire();
      }
      break;
    }
  } // action

  ///////////////////////////////////////////////////////////////////////////////
  public void update()
  {
    // draw stars
    drawStars();

    //// display screen data
    screenData.display();

    // display spaceship
    defender.display();

    // try to create a Baiter (if it doesn't exist)
    if (baiter==null)
    {
      int chance = (int)random(1, 100); // with current framerate we have a 1/10 chance per second that Baiter opponent is created
      if (chance==1)
        baiter=new Baiter(new Location(width, defender.getLocation().getY()), 8);
    }

    // display lander
    //lander.display();  // In Part 1 you may get a runtime error here when you shoot a lander opponent.  You'll sort this with ArrayList solution later.
    for(Alien a: aliens){
       a.display();
    }


    // display Baiter (if it exists)
    if (baiter!=null)
    {
      if (baiter.visible()) 
      {
        baiter.display();
        
        // later you'll add code here to detect collision with defender
        if(baiter.intersect(defender)){
          //Remove Baiter
          baiter=null;
          //Remove Defender
          defender=null;
          //Respawn Defender Random
          defender = new Defender(new Location(Game.DEFENDER_X, (int)random(0, height)));
          //Lose a life
          screenData.loseLife();
          if(screenData.getLives() == 0)
            exit();
          //Red Background
          background(171, 5, 30);
          
          //If zero lives, exit game
        }

        // Part 2 (lander collisions) - Later you'll add code here to detect collisions with landers
          for(int i=0; i<aliens.size(); i++){
            if (baiter!=null && baiter.intersect(aliens.get(i))) 
            {
              int label = aliens.get(i).getNumber();
              aliens.remove(aliens.get(i));
              i--;
              if(label == 3){
                aliens.add(new Mutant(label, new Location((int)random(ALIEN_X_MIN, ALIEN_X_MAX), 0)));  // create/respawn a new mutant
              }
              else {
                aliens.add(new Lander(label, new Location((int)random(ALIEN_X_MIN, ALIEN_X_MAX), 0)));  // create/respawn a new lander
              }
              background(66, 245, 84);
            }
          }   
      } 
      else {
        baiter=null;
        }
          
    }

    // Part 1 (lander off-screen)
   
    
    for(int i=0; i<aliens.size(); i++){
      if (!aliens.get(i).visible()) 
      {
        int label = aliens.get(i).getNumber();
        aliens.remove(aliens.get(i));
        i--;
        if(label == 3){
          aliens.add(new Mutant(label, new Location((int)random(ALIEN_X_MIN, ALIEN_X_MAX), 0)));  // create/respawn a new mutant
        }
        else {
          aliens.add(new Lander(label, new Location((int)random(ALIEN_X_MIN, ALIEN_X_MAX), 0)));  // create/respawn a new lander
        }
      }
    }

    // if the projectile is fired
    if (defender.getProjectile()!=null)
    {
      // display the projectile      
      defender.getProjectile().display();
    for(int i=0; i<aliens.size(); i++){
      
      // Part 1 (projectile collisions with Lander)
        if (aliens.get(i).intersect(defender.getProjectile())==true)
          {
            int label = aliens.get(i).getNumber(); //<>//
            aliens.remove(aliens.get(i));
            i--;
            //landers.remove(lander);
            if(label == 3){
              int score = screenData.getScore();
              screenData.setScore(score + 300);
              
              aliens.add(new Mutant(label, new Location((int)random(ALIEN_X_MIN, ALIEN_X_MAX), 0)));  // create/respawn a new mutant
            }
            else {
              int score = screenData.getScore();
              screenData.setScore(score + 100);
              
              aliens.add(new Lander(label, new Location((int)random(ALIEN_X_MIN, ALIEN_X_MAX), 0)));  // create/respawn a new lander
            }
            background(66, 245, 84);
          }
        }

      // Part 5 (projectile collisions with Baiter)
      if(baiter!=null){
        if(baiter.blocksProjectile(defender.getProjectile())){
          defender.reloadProjectile();
          //insert non null projectile
          background(230, 43, 30);
        }

        // Part 1 (reload) - if the projectile goes beyond the right of screen reload!
        else if(defender.getProjectile().getLocation().getX() >= width){
          defender.reloadProjectile();
        }
      }
      else if(defender.getProjectile().getLocation().getX() >= width){
          defender.reloadProjectile();
        }
      

    }
  } // update

  /////////////////////////////////////////////////////////////////////////////////
  public void help()
  {
    println("Welcome to Defender\n\na=UP\nz=DOWN\nSPACE=FIRE\nh=HELP\nq=QUIT");
  }

  /////////////////////////////////////////////////////////////////////////////////
  void randomiseStars()  // generates Game.NO_OF_STARS (25) random (x,y) locations for stars
  {
    STAR_X=new int[Game.NO_OF_STARS];
    STAR_Y=new int[Game.NO_OF_STARS];    
    for (int i=0; i<Game.NO_OF_STARS; i++) 
    {
      STAR_X[i]=(int)random(0, width);
      STAR_Y[i]=(int)random(0, height);
    }
  }

  /////////////////////////////////////////////////////////////////////////////////
  void drawStars()  // draw the stars that twinkle
  {
    for(int i =0; i<STAR_X.length; i++)
      circle(STAR_X[i], STAR_Y[i], random(1,6));
  }
}
