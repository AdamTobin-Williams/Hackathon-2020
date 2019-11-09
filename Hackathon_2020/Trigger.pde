class Trigger extends CollidableObject{
  
  boolean triggered;
  boolean connected;
  
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
  
  public void connect(VerticalDoor d){
    if(triggered) d.open();
    else d.close();
  }
  
  public void connect(HorizontalDoor d){
    if(triggered) d.open();
    else d.close();
  }
}