class VerticalDoor extends Door {

  public VerticalDoor(float x, float y0, float yF, float h, color c, int speed) {
    super(x, y0, yF, 20, h, c, speed);
    //this.yF = yF;
    //this.speed = speed;
    //open = false;
  }

  public void update(Player p) {
    super.update(Player p);
    if (open) {
      if (super.y >= F-speed && super.y <= F+speed) y = F;
      else {
        if (super.y < F) super.y += speed;
        else if (super.y > F) super.y -= speed;
      }
    } else {
      if (super.y >= yS-speed && super.y <= yS+speed) y = yS;
      else {
        if (super.y < yS) super.y += speed;
        else if (super.y > yS) super.y -= speed;
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