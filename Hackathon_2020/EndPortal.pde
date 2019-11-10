class EndPortal extends Platform {

  public EndPortal(float x, float y, float w, float h) {
    super(x, y, w, h, color(230, 20, 80, 200));
  }

  public void update() {
    boolean playersIn = true;
    for (int i = 0; i < Players.size(); i++) {
      if (!super.collide(Players.get(i))) playersIn=false;
    }
    if (playersIn) {
      currentLevel++;
    }
  }
}
