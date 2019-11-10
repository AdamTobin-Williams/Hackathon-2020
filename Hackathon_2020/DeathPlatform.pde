class DeathPlatform extends Platform {

  public DeathPlatform(float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  }

  public void update(Player p) {
    if (super.collide(p)) {
      try {
        Levels.get(currentLevel).killPlayers();
      } 
      catch (ArrayIndexOutOfBoundsException e) {
        for (int i = 0; i < Players.size(); i++) {
          Players.get(i).x = width/2;
          Players.get(i).y = width/2;

          Players.get(i).xs = 0;
          Players.get(i).ys = 0;
        }
      }
    }
  }
}
