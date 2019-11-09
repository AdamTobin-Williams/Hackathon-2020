class Trigger{
  
  int x;
  int y;
  int w;
  int h;
  boolean triggered;
  
  public Trigger(int x, int y, int w, int h){
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    triggered = false;
  }
  
  public void display(){
    rect(x, y, w, h);
  }
  
  public boolean collides(Player p){
    return true;
  }
}