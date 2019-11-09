class Platform{
  
  float x;
  float y;
  float w;
  float h;
  
  public Platform(float x, float y, float w, float h){
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  
  public void display() {
    rect(x,y,w,h);
  }
  
  public void updateX(float u){
    this.x=x+u;
    this.w=w+u;
  }
  
  public void updateY(float u){
    this.y=y+u;
    this.h=h+u;
  }
  
  public void collide(Player p) {
    if (p.x+Player.w/2+xs >x && p.y>y && p.y-Player.h<y2 && p.x+Player.w/2<x+p.xs){
      if () {
        p.x = x-Player.w/2;
      } else if (){
    }else{
    }
    
  }
}
