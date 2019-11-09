final ArrayList<Player> Players = new ArrayList<Player>();
final ArrayList<Level> Levels = new ArrayList<Level>();

void setup() {
  size(1200, 800);
  
  Players.add(new Player("Tobias", 'w', 'a', 's', 'd'));
  Players.add(new Player("Charlie", (char) UP, (char) LEFT, (char) DOWN, (char) RIGHT)); 
}

void draw() {
  background(0);
  
  
}
