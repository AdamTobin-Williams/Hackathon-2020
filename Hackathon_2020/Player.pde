class Player {
  public float x, y;
  public float xs, ys;
  public static final float w = 20; // change
  public static final float h = 40; // change
  public final String name;
  public final char keyU, keyL, keyD, keyR;
  public boolean onGround;
  public boolean isLeft, isRight, isUp, isDown;

  public Player (String name, char keyU, char keyL, char keyD, char keyR) {
    this.name = name;
    this.keyU = keyU;
    this.keyL = keyL;
    this.keyD = keyD;
    this.keyR = keyR;
  }

  public void move() {
    println("moving");
    /*
    if (x <= 20) x = 20;
     else if (x >= width-20) x = width-20;
     else if (y <= 40) y = 40;
     else if (y >= height) y = height;
     */

    if (onGround) {
      if (isUp) {
        ys=-10;
      }
    } else {
      if (isRight) {
        xs+=speed*.5;
      }
      if (isLeft) {
        xs-=speed*.5;
      }
    }

    x+=xs;
    y+=ys;

    if (onGround) {
      xs*=groundFrict;
    } else {
      xs*=airFrict;
      ys+=gravity;
    }
  }
}

public void display() {
  fill(255); //placeholder
  rect(x-w/2, y, w, -h);
}

boolean setMove(char kc, char k, boolean b) {
  if (kc == keyU || k == keyU) {
    return isUp = b;
  } 
  if (kc == keyL || k==keyL) {
    return isLeft = b;
  } 
  if (kc == keyR ||k==keyR) {
    return isRight = b;
  } 
  return b;
}