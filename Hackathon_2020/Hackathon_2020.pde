final ArrayList<Player> Players = new ArrayList<Player>();

/*
Format (most common constructor uses, there are others):
Platform(float x, float y, float w, float h, color c)
Door(float x, float y, float F, float h, color c, int speed)
Trigger(float x, float y, float w, float h, color c, Door... ConncectedDoors)
*/

ArrayList<CollidableObject> level0 = new ArrayList<CollidableObject>();
ArrayList<CollidableObject> level1 = new ArrayList<CollidableObject>();
ArrayList<CollidableObject> level2 = new ArrayList<CollidableObject>();
ArrayList<CollidableObject> level3 = new ArrayList<CollidableObject>();
ArrayList<CollidableObject> level4 = new ArrayList<CollidableObject>();

Platform _p1 = new Platform(100, 600, 600, 100, color(250, 120, 0));
Platform _p2 = new Platform(0, 750, 1200, 25, color(250, 0, 120));

PImage img;


  HorizontalDoor level4Door1 = new HorizontalDoor(975, 150, 800, 175, #368986, 3);
  VerticalDoor level4Door2 = new VerticalDoor(325, 210, 60, 90, #368986, 3);
  HorizontalDoor level4Door3 = new HorizontalDoor(350, 525, 200, 100, #368986, 3);


void setup() {
  size(1200, 800);

  Players.add(new Player("Tobias", 'w', 'a', 's', 'd'));
  Players.add(new Player("Charlie", (char) UP, (char) LEFT, (char) DOWN, (char) RIGHT));
  
  Levels.add(new Level(level0, 0, 0, 0));
  
  Levels.add(new Level(level1, 0, 0, 0));
  //Levels.add(new Level(level1, 100, 100-Player.h, 255));
  //level1.add(new Platform(50, height-275, 1000, 75, 255));
  
  Levels.add(new Level(level2, 0, 0, 0));
  
  Levels.add(new Level(level3, 0, 0, 0));
  
  
  
  Levels.add(new Level(level4, 100, 100, 0));
  level4.add(new Platform(150, 90, 50, 59, color(235, 180, 80)));
  level4.add(new Platform(0, 150, 975, 50, 255));
  level4.add(new Platform(300, 300, 850, 50, 255));
  level4.add(new Platform(125, 375, 100, 50, 255));
  level4.add(new Platform(125, 525, 100, 50, 255));
  level4.add(new Platform(550, 525, 150, 50, 255));
  level4.add(new DeathPlatform(225, 375, 75, 40, #A873CB));
  level4.add(new DeathPlatform(50, 575, 75, 50, #A873CB));
  level4.add(new DeathPlatform(0, height-50, 1000, 50, #A873CB));
  level4.add(level4Door1);
  level4.add(level4Door2);
  level4.add(level4Door3);
  level4.add(new Button(225, 140, 30, 11, #F77FF0, level4Door1));
  level4.add(new Button(905, 290, 30, 11, #F77FF0, level4Door1));
  level4.add(new Lever(420, 270, 10, 30, #F77FF0, level4Door2));
  level4.add(new Button(185, 515, 30, 11, #F77FF0, level4Door3));
  level4.add(new Button(610, 515, 30, 10, #F77FF0, level4Door3));

  Players.get(0).y = 400;
  Players.get(1).y = 500;
  Players.get(0).x = 400;
  Players.get(1).x = 500;
  
  img = loadImage("Tobias&Charlie.jpg");
}

void draw() {
   if(currentLevel == TITLE) displayTitle();
   else if(currentLevel == CONTROLS) displayControls();
   else if(currentLevel == BACKSTORY) displayBackstory();
   else if(currentLevel == CREDITS) displayCredits();
   else if(currentLevel == LEVEL0) Levels.get(0).display();
   else if(currentLevel == LEVEL1) Levels.get(1).display();
   else if(currentLevel == LEVEL1) Levels.get(1).display();
   else if(currentLevel == LEVEL2) Levels.get(2).display();
   else if(currentLevel == LEVEL3) Levels.get(3).display();
   else if(currentLevel == LEVEL4) Levels.get(4).display();
   

}



void keyPressed() {
  if (key == 'r') {
    try {
      Levels.get(currentLevel).killPlayers();
    } catch (IndexOutOfBoundsException e) {
      for (int i = 0; i < Players.size(); i++) {
        Players.get(i).x = width/2;
        Players.get(i).y = width/2;

        Players.get(i).xs = 0;
        Players.get(i).ys = 0;
      }
    }
  }
  for (int i = 0; i < Players.size(); i++) {
    Players.get(i).setMove((char)keyCode, key, true);
  }
  
  if(key == 'o'){
    Players.get(0).x = 100;
    Players.get(0).y = 100;
    Players.get(1).x = 100;
    Players.get(1).y = 100;
    
    Players.get(0).display();
    Players.get(1).display();
    Players.get(0).move();
    Players.get(1).move();
  }
  
  if(key == 'y') {currentLevel ++;}
  if(key == 'c'){
    if (level4Door1.x >= level4Door1.F-level4Door1.speed && level4Door1.x <= level4Door1.F+level4Door1.speed) level4Door1.x = level4Door1.F;
     else {
     if (level4Door1.x < level4Door1.F) level4Door1.x += level4Door1.speed;
     else if (level4Door1.x > level4Door1.F) level4Door1.x -= level4Door1.speed;
     }
  }
}
void keyReleased() {
  for (int i = 0; i < Players.size(); i++) {
    Players.get(i).setMove((char)keyCode, key, false);
  }
}