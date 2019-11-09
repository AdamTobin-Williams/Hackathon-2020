final ArrayList<Player> Players = new ArrayList<Player>();
final ArrayList<Level> Levels = new ArrayList<Level>();
Button button = new Button (500, 500, 20, 20, #6099FA);
VerticalDoor door = new VerticalDoor(800, 200, 300, 100, 255, 2);

void setup() {
  size(1200, 800);

  Players.add(new Player("Tobias", 'w', 'a', 's', 'd'));
  Players.add(new Player("Charlie", (char) UP, (char) LEFT, (char) DOWN, (char) RIGHT));
}

void draw() {
  background(0);
  
  button.display();
  door.display();
  
  if(button.triggered) door.open();
  else door.close();
  
  door.update();
}

void keyPressed(){
  if(key == 'k') button.on();
  else button.off();
}