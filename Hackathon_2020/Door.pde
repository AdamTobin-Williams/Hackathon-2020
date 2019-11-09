class Door{
  
  float x;
  float y;
  float y0;
  float yF;
  float h;
  int speed;
  boolean open = false;
 
  public Door(float x, float y0, float yF, float h, int speed){
    this.x = x;
    this.y0 = y0;
    y = y0;
    this.yF = yF;
    this.h = h;
    this.speed = speed;
  }
  
  public void update(){
    if(open) {
      if(y >= yF-speed && y <= yF+speed) y = yF;
      else{
        if(y < yF) y += speed;
        else if(y > yF) y -= speed;
      }
    }
    else y = y0;
    rect(x, y, 20, h);
  }
  
  public void open(){
    open = true;
  }
  
  public void close(){
    open = false;
  }
}