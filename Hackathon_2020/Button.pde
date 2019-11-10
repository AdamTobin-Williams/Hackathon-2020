class Button extends Trigger {

  public Button(float x, float y, float w, float h, color c, HorizontalDoor connectedDoor) {
    super(x, y, w, h, c, connectedDoor);
  }
  
  public Button(float x, float y, float w, float h, color c, VerticalDoor connectedDoor) {
    super(x, y, w, h, c, connectedDoor);
  }

  public void update(Player p) {
    if (triggered) { if (!super.collide(p)) off(); } else
    if (!triggered) { if (super.collide(p)) on(); }
    // else ;
  }

  public void on() {
    triggered = true;
    ConnectedDoors.get(0).open();
  }

  public void off() {
    triggered = false;
    ConnectedDoors.get(0).close();
  }
}
