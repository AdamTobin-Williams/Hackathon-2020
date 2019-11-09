class Platform {

  float x;
  float y;
  float w;
  float h;

  public Platform(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  public void display() {
    rect(x, y, w, h);
  }

  public void updateX(float u) {
    this.x=x+u;
    this.w=w+u;
  }

  public void updateY(float u) {
    this.y=y+u;
    this.h=h+u;
  }

  //public void collide(Player p) {
  //  if (p.x+5 >x && p.y<y && p.y+40>y2 && p.x-5<x2){
  //    if (p is on left) {
  //      p.x = x-p.w/2;
  //    } else if (3 other cases
  //  }else{
  //    return false;
  //  }

  //}
}
