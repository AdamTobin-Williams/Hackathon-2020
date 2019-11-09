class Platform{
  
  float x;
  float y;
  float x2;
  float y2;
  
  public Platform(float x,float y,float x2,float y2){ 
    //x2 should be larger than x and same for y2
    this.x = x;
    this.y = y;
    this.x2 = x2;
    this.y2 = y2;
  }
  
  public void draw(){
    rect(x,y,x2,y2);
  }
  
  public void updateX(float u){
    this.x=x+u;
    this.x2=x2+u;
  }
  
  public void updateY(float u){
    this.y=y+u;
    this.y2=y2+u;
  }
  
}
