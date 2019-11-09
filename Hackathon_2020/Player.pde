class Player {
  public float x, y;
  public float xs, ys;
  public static final float w = 20; // change
  public static final float h = 40; // change
  public final String name;
  public final char keyU, keyL, keyD, keyR;
  public boolean onGround;
  public boolean isLeft, isRight, isUp, isDown;
  public static final float airFrict = 0.99;
  public static final float groundFrict = 0.95;
  public static final float speed = 0.75;

  public Player (String name, char keyU, char keyL, char keyD, char keyR) {
    this.name = name;
    this.keyU = keyU;
    this.keyL = keyL;
    this.keyD = keyD;
    this.keyR = keyR;
    
  }

  public void move() {
    
    if(isUp&&onGround){
      ys=-5;
    }
    if(isRight){
      xs+=speed;
    }
    if(isLeft){
      xs-=speed;
    }
    
    x+=xs;
    y+=ys;
    
    
    if(onGround){
      xs*=groundFrict;
    }else{
      xs*=airFrict;
      ys+=gravity;
    }
    onGround = false;
  }

  public void kill() {
    // reset player's X and Y pos in level. Also set xs and ys to 0.
  }

  public void display() {
    fill(255); //placeholder
    rect(x-w/2, y, w, -h);
  }

  boolean setMove(char kc, char k, boolean b) {
    if (kc == keyU || k == keyU) {
      return isUp = b;
    } 
    if (kc == keyL || k==keyL){
      return isLeft = b;
    } 
    if (kc == keyR ||k==keyR){
      return isRight = b;
    } 
     return b;
  }
}
