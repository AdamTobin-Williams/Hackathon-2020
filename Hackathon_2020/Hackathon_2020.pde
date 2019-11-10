// start x/y (and multiple)

ArrayList<CollidableObject> level1 = new ArrayList<CollidableObject>();

Platform _p1 = new Platform(100, 600, 600, 100, color(250, 120, 0));
Platform _p2 = new Platform(0, 750, 1200, 25, color(250, 0, 120));

PImage img;

void setup() {
  size(1200, 800);

  Players.add(new Player("Tobias", 'w', 'a', 's', 'd'));
  Players.add(new Player("Charlie", (char) UP, (char) LEFT, (char) DOWN, (char) RIGHT));

  Players.get(0).y = 400;
  Players.get(1).y = 500;
  Players.get(0).x = 400;
  Players.get(1).x = 500;

  img = loadImage("Tobias&Charlie.jpg");
}

void draw() {background(0);
  image(img, 0, -30, 1200, 830);
  fill(0);
  textSize(30);
  textAlign(LEFT);
  
  text("Controls:\nPlayer One:\nJump: W\nLeft: A\nRight: D\n\nPlayer Two:\nJump: Up Arrow\nLeft: Left Arrow\nRight: Right Arrow", width/2-550, height/2-200, 350, 620);
  text("", width/2+200, height/2-250, 350, 700);


  fill(0);
  if (mouseX>1100 && mouseX<1100 +100 && mouseY >0 && mouseY <0 +50) {
    fill(80);
  }
  rect(1090, 10, 100, 50, 10);
  if (mouseX>1100 && mouseX<1100 +100 && mouseY >0 && mouseY <0 +50 && mousePressed) {
    currentLevel=-1;
  }
  fill(255);
  textSize(30);
  textAlign(CENTER,CENTER);
  text("Back", 1090, 10, 100, 50);
  
  rectMode(CORNER);
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
}
void keyReleased() {
  for (int i = 0; i < Players.size(); i++) {
    Players.get(i).setMove((char)keyCode, key, false);
  }
}
