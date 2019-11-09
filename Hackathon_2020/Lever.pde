class Lever extends Trigger {

  public Lever(int x, int y, int w, int h) {
    super(x, y, w, h);
  }

  public void update(Player p) {
    if (super.collides(p)) toggle();
  }
  
  public void toggle(){
    triggered = !triggered;
  }
}