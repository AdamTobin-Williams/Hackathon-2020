class Platform extends CollidableObject {

  public Platform(float x, float y, float w, float h, color c) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c = c;
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
      if (p.x+Player.w/2+w+p.xs >x && p.y>y && p.y-Player.h<x+w && p.x+Player.w/2<x+p.xs) {

        p.x = x+Player.w/2;
        p.xs = 0;
      } else if (p.x-Player.w/2+p.xs <x+w && p.y>y && p.y-Player.h<x+w && p.x-Player.w/2<x+p.xs) {

        p.x = x-Player.w/2;
        p.xs = 0;
      } else if (p.x+Player.w/2 >x && p.y+p.ys>y && p.y<y+p.ys && p.x-Player.w/2<x+w) {

        p.y = y;
        p.ys = 0;
        p.onGround = true;
      } else if (p.x+Player.w/2 >x && p.y-Player.h+p.ys<y+h && p.y-Player.h<y+p.ys && p.x-Player.w/2<x+w) {

        p.y = y+h+Player.h;
        p.ys = 0;
      }
    }
  }
}
