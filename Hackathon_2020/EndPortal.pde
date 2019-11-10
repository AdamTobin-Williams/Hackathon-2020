class EndPortal extends Platform {

  public EndPortal(float x, float y, float w, float h) {
    super(x, y, w, h, color(230,20,80,200));
  }

  public void update(Player p) {
    if (super.collide(p)) {
      currentLevel++;
    }
  }
}
