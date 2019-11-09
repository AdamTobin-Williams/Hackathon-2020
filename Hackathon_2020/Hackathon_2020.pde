final ArrayList<Player> Players = new ArrayList<Player>();
Door door = new Door(500, 300, 200, 100, 5);

void setup() {
  size(1200,800);
  background(0);
}

void draw(){
  background(0);
  door.update();
  door.display();
  if(frameCount > 100) door.open();
}
