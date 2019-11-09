class DeathPlatform extends Platform{
  
  public DeathPlatform(float x,float y,float w,float h){
    super(x,y,w,h);
  }
  
  public void collide(Player p) {
    if (super.collide(p)) {
      p.kill();
    }
  }
  
}
