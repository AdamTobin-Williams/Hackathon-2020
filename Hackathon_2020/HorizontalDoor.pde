class HorizontalDoor extends Door {

  public HorizontalDoor(float x0, float y, float xF, float w, color c, int speed) {
    super(x0, y, xF, w, 20, c, speed);
    //this.xF = xF;
    //this.speed = speed;
    //open = false;
  }
  
  public void update() {
    if (open) {
      if (super.x >= F-speed && super.x <= F+speed) x = F;
      else {
        if (super.x < F) super.x += speed;
        else if (super.x > F) super.x -= speed;
      }
    }
  }

  public void open() {
    open = true;
  }

  public void close() {
    open = false;
  }
}
