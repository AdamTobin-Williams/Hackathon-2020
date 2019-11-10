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
      println("");
      if (p.y-Player.h < y+h && y+h < p.y) {
        p.y = y+h+Player.h;
        p.ys = 0;
        println("D");
      } else if (p.y-Player.h < y && y < p.y) {
        p.y = y;
        p.ys = 0;
        p.onGround = true;
      } else if (p.x-Player.w/2 < x && x < p.x+Player.w/2) {
        p.x = x-Player.w/2;
        p.xs = 0;
        println("L");
      } else if (p.x-Player.w/2 < x+w && x+w < p.x+Player.w/2) {
        p.x = x+Player.w/2+w;
        p.xs = 0;
        println("R");
      }


      /*if (p.x+Player.w/2 > x && p.x+Player.w/2 < x+w/2) { // left
       // p.x = x-Player.w/2;
       p.xs = 0;
       println("L");
       } else if (p.x-Player.w/2 < x && p.x-Player.w/2 > x+w/2) {
       // p.x = x+Player.w/2+w;
       p.xs = 0;
       println("R");
       }*/

      // V2
      /*if (p.y < y+p.ys+gravity) { // top
       p.y = y;
       p.ys = 0;
       p.onGround = true;
       } */
      /*else if (p.x+Player.w/2+p.xs > x-w/2) { // left
       p.x = x-Player.w/2;
       p.xs = 0;
       } else if (p.x-Player.w/2-10 < x+w/2) { // right
       p.x = x-Player.w/w;
       p.xs = 0;
       }*/
      // p.x+Player.w/2+xs > x

      // V1
      /*if (p.x+Player.w/2+p.xs > x && p.y > y && p.x-Player.w/2+p.xs < x+w/2 && p.y-Player.h+p.ys<y+h) { // left side of center
       p.x = x-Player.w/2;
       p.xs = 0;
       } else if (p.x-Player.w/2+p.xs < x+w && p.y+p.ys+gravity > y && p.y-Player.h < y+h && p.x+Player.w/2+p.xs > x) { // right side of center
       p.x = x+Player.w/2+w;
       p.xs = 0;
       } else if (p.x+Player.w/2 >x && p.y+p.ys>y && p.y<y+p.ys && p.x-Player.w/2<x+w) {
       p.y = y;
       p.ys = 0;
       p.onGround = true;
       } else if (p.x+Player.w/2 >x && p.y-Player.h+p.ys<y+h && p.y-Player.h<y+p.ys && p.x-Player.w/2<x+w) {
       
       p.y = y+h+Player.h;
       p.ys = 0;
       }*/
    }
  }
}
