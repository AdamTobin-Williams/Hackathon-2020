class VerticalDoor extends Platform {
  
  float yF;
  int speed;
  boolean open;
 
  public VerticalDoor(float x, float y0, float yF, float h, int speed){
    super(x,y0,20,h);
    this.yF = yF;
    this.speed = speed;
    open = false;
  }
  
  public void update(){
    if(open) {
      if(super.y >= yF-speed && super.y <= yF+speed) y = yF;
      else{
        if(super.y < yF) super.y += speed;
        else if(super.y > yF) super.y -= speed;
      }
    }
  }
  
  public void open(){
    open = true;
  }
  
  public void close(){
    open = false;
  }
}