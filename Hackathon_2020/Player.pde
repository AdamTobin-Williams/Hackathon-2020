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
    if (onGround) {
      if (isUp) {
        ys=-10;
      }
      if (isRight) {
        xs+=speed;
      }
      if (isLeft) {
        xs-=speed;
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
    onGround = false;
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
}
