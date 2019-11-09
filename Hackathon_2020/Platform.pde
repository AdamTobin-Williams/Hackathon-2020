class Platform extends CollidableObject {

  public Platform(float x, float y, float w, float h, color c) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c = c;
  }

  public void display() {
    fill(c);
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

  public void update(Player p) {
    if (super.collide(p)) {
      if (p.x+Player.w/2+p.xs >x && p.y>y && p.y-Player.h<x+w && p.x+Player.w/2<x+p.xs) {

        p.x = x-Player.w/2;
        p.xs = 0;
      } else if (p.x-Player.w/2+p.xs <x+w && p.y>y && p.y-Player.h<x+w && p.x+Player.w/2<x+p.xs) {

        p.x = x-Player.w/2;
        p.xs = 0;
      } else if (p.x+Player.w/2 >x && p.y+p.xs>y && p.y-Player.h<x+w && p.x-Player.w/2<x+w) {

        p.x = x-Player.w/2;
        p.ys = 0;
      } else if (p.x+Player.w/2+p.xs >x && p.y>y && p.y-Player.h<x+w && p.x+Player.w/2<x+p.xs) {

        p.x = x-Player.w/2;
        p.ys = 0;
      }
    }
  }
}
