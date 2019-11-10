/*
Format:
Platform(float x, float y, float w, float h, color c)
Door(float x, float y, float F, float h, color c, int speed)
Trigger(float x, float y, float w, float h, color c, Door... ConncectedDoors)
*/

final ArrayList<Player> Players = new ArrayList<Player>();
final ArrayList<Level> Levels = new ArrayList<Level>();
ArrayList<CollidableObject> level1 = new ArrayList<CollidableObject>();
ArrayList<CollidableObject> level4 = new ArrayList<CollidableObject>();

Platform _p1 = new Platform(100, 600, 600, 100, color(250, 120, 0));
Platform _p2 = new Platform(0, 750, 1200, 25, color(250, 0, 120));

HorizontalDoor level4Door1 = new HorizontalDoor(975, 150, 800, 175, #368986, 3);
VerticalDoor level4Door2 = new VerticalDoor(275, 210, 60, 90, #368986, 3);
HorizontalDoor level4Door3 = new HorizontalDoor(350, 525, 200, 100, #368986, 3);

void setup() {
  size(1200, 800);

  Players.add(new Player("Tobias", 'w', 'a', 's', 'd'));
  Players.add(new Player("Charlie", (char) UP, (char) LEFT, (char) DOWN, (char) RIGHT));
  
  Levels.add(new Level(level1, 255));
  level1.add(new Platform(50, height-275, 1000, 75, 255));
  
  Levels.add(new Level(level4, 255));
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
  level4.add(new Button(225, 140, 30, 10, #F77FF0, level4Door1));
  level4.add(new Button(905, 290, 30, 10, #F77FF0, level4Door1));
  level4.add(new Lever(420, 270, 10, 30, #F77FF0, level4Door2));
  level4.add(new Button(185, 515, 30, 10, #F77FF0, level4Door3));
  level4.add(new Button(610, 515, 30, 10, #F77FF0, level4Door3));

  Players.get(0).y = 400;
  Players.get(1).y = 500;
  Players.get(0).x = 400;
  Players.get(1).x = 500;
}

void draw() {
  background(0);
  //for (int i = 0; i < Players.size(); i++) {
  //  _p1.update(Players.get(i));
  //  _p1.display();
  //  _p2.update(Players.get(i));
  //  _p2.display();
  //  Players.get(i).display();
  //  Players.get(i).move();
  //}

  Levels.get(1).display();
}


void keyPressed() {
  for (int i = 0; i < Players.size(); i++) {
    Players.get(i).setMove((char)keyCode, key, true);
  }
}
void keyReleased() {
  for (int i = 0; i < Players.size(); i++) {
    Players.get(i).setMove((char)keyCode, key, false);
  }
}