class Lever extends Trigger {

  public Lever(float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  }

  public void update(Player p) {
    if (super.collide(p)) toggle();
  }
  
  public void toggle(){
    triggered = !triggered;
  }
}