class DeathPlatform extends Platform {

  public DeathPlatform(float x, float y, float w, float h, color c) {
    super(x, y, w, h,c );
  }

  public void update(Player p) {
    if (super.collide(p)) {
      p.kill();
    }
  }
}
