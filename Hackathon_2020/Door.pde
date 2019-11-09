abstract class Door extends Platform {

  protected float F;
  protected float xS;
  protected float yS;
  protected int speed;
  protected boolean open;

  public Door(float x, float y, float F, float w, float h, color c, int speed) {
    super(x, y, w, h, c);
    this.F = F;
    xS = x;
    yS = y;
    this.speed = speed;
    open = false;
  }
  
  public abstract void update();

  public void open() {
    open = true;
  }

  public void close() {
    open = false;
  }
}