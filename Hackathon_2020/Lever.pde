class Lever extends Trigger {

  public Lever(float x, float y, float w, float h, color c, HorizontalDoor connectedDoor) {
    super(x, y, w, h, c, connectedDoor);
  }
  
  public Lever(float x, float y, float w, float h, color c, VerticalDoor connectedDoor) {
    super(x, y, w, h, c, connectedDoor);
  }

  public void update(Player p) {
    if (super.collide(p)) toggle();
  }

  public void toggle() {
    triggered = !triggered;
  }
}
