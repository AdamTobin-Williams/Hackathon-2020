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
    x+=xs;
    y+=ys;
    onGround = false;
  }

  public void kill() {
    // reset player's X and Y pos in level. Also set xs and ys to 0.
  }

  public void display() {
    fill(255); //placeholder
    rect(x, y, 20, 40);
  }

  boolean setMove(char k, boolean b) {
    if (k == keyU) {
      return isUp = b;
    } else if(k==keyD){
      return isDown = b;
    } else if (k==keyL){
      return isLeft = b;
    } else if (k==keyR){
      return isRight = b;
    } else {
      return b;
    }
  }
}
