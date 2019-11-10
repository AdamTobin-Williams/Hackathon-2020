class Button extends Trigger {

  public Button(float x, float y, float w, float h, color c, HorizontalDoor connectedDoor) {
    super(x, y, w, h, c, connectedDoor);
  }
  
  public Button(float x, float y, float w, float h, color c, VerticalDoor connectedDoor) {
    super(x, y, w, h, c, connectedDoor);
  }

  public void update(Player p) {
    if (super.collide(p)) on();
    else off();
    
    if(triggered) door.open();
    else door.close();
  }

  public void on() {
    triggered = true;
  }

  public void off() {
    triggered = false;
  }
}