class Level {
  final ArrayList<Platform> platforms;
  final color backgroundColor;

  public Level(ArrayList<Platform> platforms, color backgroundColor) {
    this.platforms = platforms;
    this.backgroundColor = backgroundColor;
  }

  public Level(color backgroundColor, Platform... platforms) {
    this.backgroundColor = backgroundColor;
    this.platforms = new ArrayList<Platform>();
    for (int i = 0; i < platforms.length; i++) {
      this.platforms.add(platforms[i]);
    }
  }
  
  public Platform getPlatform(int i) {
    return platforms.get(i);
  }
  
  public void display() {
    for (int i = 0; i < platforms.size(); i++) {
      platforms.get(i).display();
    }
  }
}
