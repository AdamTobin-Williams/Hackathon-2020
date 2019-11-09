class Trigger extends CollidableObject{
  
  boolean triggered;
  boolean connected;
  
  ArrayList<Door> ConnectedDoors;
  
  public Trigger(float x, float y, float w, float h, color c, ArrayList<Door> ConncectedDoors) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c = c;
    this.ConnectedDoors = ConncectedDoors;
    triggered = false;
  }
  
  public Trigger(float x, float y, float w, float h, color c, Door... ConncectedDoors) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c = c;
    this.ConnectedDoors = new ArrayList<Door>();
    for (int i = 0; i < ConncectedDoors.length; i++) {
      this.ConnectedDoors.add(ConncectedDoors[i]);
    }
    triggered = false;
  }
  
  public void display(){
    rect(x, y, w, h);
  }
}
