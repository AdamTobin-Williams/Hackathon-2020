// start x/y (and multiple)

PImage img;
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

void draw() {
  background(0);
  image(img, 0, -30, 1200, 830);
  rectMode(CORNER);


  fill(0);

  if (mouseX>width/2-500 && mouseX<width/2-500 +250 && mouseY >height/2-150 && mouseY <height/2-150 +50) {
    fill(80);
  }
  rect(width/2-500, height/2-150, 250, 50, 10);
  if (mouseX>width/2-500 && mouseX<width/2-500 +250 && mouseY >height/2-150 && mouseY <height/2-150 +50&& mousePressed) {
    currentLevel=0;
  }

  fill(0);

  if (mouseX>width/2-500 && mouseX<width/2-500 +250 && mouseY >height/2-50 && mouseY <height/2-50 +50) {
    fill(80);
  }
  rect(width/2-500, height/2-50, 250, 50, 10);
  if (mouseX>width/2-500 && mouseX<width/2-500 +250 && mouseY >height/2-50 && mouseY <height/2-50 +50&& mousePressed) {
    currentLevel=-2;
  }

  fill(0);

  if (mouseX>width/2-500 && mouseX<width/2-500 +250 && mouseY >height/2+50 && mouseY <height/2+50 +50) {
    fill(80);
  }
  rect(width/2-500, height/2+50, 250, 50, 10);
  if (mouseX>width/2-500 && mouseX<width/2-500 +250 && mouseY >height/2+50 && mouseY <height/2+50 +50&& mousePressed) {
    currentLevel=-3;
  }

  fill(0);
  if (mouseX>width/2-500 && mouseX<width/2-500 +250 && mouseY >height/2+150 && mouseY <height/2+150 +50) {
    fill(80);
  }
  rect(width/2-500, height/2+150, 250, 50, 10);
  if (mouseX>width/2-500 && mouseX<width/2-500 +250 && mouseY >height/2+150 && mouseY <height/2+150 +50&& mousePressed) {
    currentLevel=-4;
  }

  rectMode(CORNER);

  fill(255);
  textAlign(CENTER, CENTER);
  textSize(30);
  text("Play", width/2-500, height/2-150, 250, 50);
  text("Controls", width/2-500, height/2-50, 250, 50);
  text("Backstory", width/2-500, height/2+50, 250, 50);
  text("Credits", width/2-500, height/2+150, 250, 50);
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
