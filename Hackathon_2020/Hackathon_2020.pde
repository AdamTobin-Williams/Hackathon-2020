
final ArrayList<Player> Players = new ArrayList<Player>();
final ArrayList<Level> Levels = new ArrayList<Level>();
ArrayList<CollidableObject> level1 = new ArrayList<CollidableObject>();

Platform _p1 = new Platform(100, 600, 600, 100, color(250, 120, 0));
Platform _p2 = new Platform(0, 750, 1200, 25, color(250, 0, 120));


void setup() {
  size(1200, 800);

  Players.add(new Player("Tobias", 'w', 'a', 's', 'd'));
  Players.add(new Player("Charlie", (char) UP, (char) LEFT, (char) DOWN, (char) RIGHT));
  
  Levels.add(level1);

  Players.get(0).y = 400;
  Players.get(1).y = 500;
  Players.get(0).x = 400;
  Players.get(1).x = 500;
}

void draw() {
  background(0);
  for (int i = 0; i < Players.size(); i++) {
    _p1.update(Players.get(i));
    _p1.display();
    _p2.update(Players.get(i));
    _p2.display();
    Players.get(i).display();
    Players.get(i).move();
  }

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
