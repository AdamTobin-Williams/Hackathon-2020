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
    currentLevel=4;
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

//Title = -3
void displayBackstory() {
  background(0);
  image(img, 0, -30, 1200, 830);
  fill(0);
  textSize(20);
  textAlign(LEFT);
  text("Backstory:\nTwo children saw the alleyway and scurried for it on a run; anxious toward depletion and frantic in their big flashing eyes. Furious calls shot at them in the cold. The cobble beneath was wet. The air smelt heavily of fresh soil. \n     And the story begins with a trip and a stumble. The cobble street slams in over the children, following screams of confusion and panic. The darkness washed over their sight under the rain, and all that accompanied the two was the muffled patter on the surface, and the deliberate fading of footsteps that had then walked off into the silence.", width/2-550, height/2-280, 350, 620);
  text("The girl took her brother’s hand to ensure whether he was still there after his breath fell quiet. The lights flicker on and the sound of white noise turned them suddenly from the brick wall they happened to be facing to a dimly lit corridor. \n\n     A distorted croak voiced from above, Welcome to your first trial, Tobias and Charlie.", width/2+200, height/2-250, 350, 700);
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

//Title = -4
void displayCredits() {
  background(0);
  image(img, 0, -30, 1200, 830);
  fill(0);
  textSize(30);
  textAlign(CENTER,CENTER);
  text("Credits:\nLead Programmers: \nAudrey Chan\nMikk Sanborn\nAdam Tobin-Williams\n\nLead Designer: \nSierra Spain\n\nHosted by:\nTeam 2485\n\nSponsored by:\nQualcomm", width/2-550, height/2-300, 350, 620);
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