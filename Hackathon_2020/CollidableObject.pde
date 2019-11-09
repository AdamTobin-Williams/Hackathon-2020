abstract class CollidableObject {

  float x;
  float y;
  float w;
  float h;
  color c;

  public boolean collide(Player p) {

    if (p.x+Player.w/2 > x && p.x-Player.w/2<x+w && p.y>y&&p.y-Player.h<y+h) {
      return true;
    } else {
      return false;
    }
  }
}
