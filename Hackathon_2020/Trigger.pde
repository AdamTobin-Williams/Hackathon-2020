class Trigger extends CollidableObject{
  
  boolean triggered;
  
  public Trigger(float x, float y, float w, float h, color c) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c = c;
    triggered = false;
  }
  
  public void display(){
    rect(x, y, w, h);
  }
}