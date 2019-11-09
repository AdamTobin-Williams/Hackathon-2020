class Button extends Trigger {

  public Button(float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  }

  public void update(Player p) {
    if (super.collide(p)) on();
    else off();
  }
  
  public void on(){
    triggered = true;
  }
  
  public void off(){
    triggered = false;
  }
}