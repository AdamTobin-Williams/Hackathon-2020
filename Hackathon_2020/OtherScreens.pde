//Title = -1
void displayTitle() {
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

//Title = -2
void displayControls() {
  background(0);
  image(img, 262.5, 13,675,761);
  fill(255);
  rectMode(CENTER);
  rect(width/2, height/2, 300, 100);
  

  rectMode(CORNER);
}

//Title = -3
void displayBackstory() {
  background(0);
  image(img, 262.5, 13,675,761);
  fill(255);
  rectMode(CENTER);
  rect(width/2, height/2, 300, 100);
  

  rectMode(CORNER);
}

//Title = -4
void displayCredits() {
  background(0);
  image(img, 262.5, 13,675,761);
  fill(255);
  rectMode(CENTER);
  rect(width/2, height/2, 300, 100);
  

  rectMode(CORNER);
}