class Button extends Trigger {

  public Button(int x, int y, int w, int h) {
    super(x, y, w, h);
  }

  public void update(Player p) {
    if (super.collides(p)) on();
    else off();
  }
  
  public void on(){
    triggered = true;
  }
  
  public void off(){
    triggered = false;
  }
}