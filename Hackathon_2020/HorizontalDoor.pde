class HorizontalDoor extends Platform {
  
  float xF;
  int speed;
  boolean open;
 
  public HorizontalDoor(float x0, float y, float xF, float w, int speed){
    super(x0,y,w,20);
    this.xF = xF;
    this.speed = speed;
    open = false;
  }
  
  public void update(){
    if(open) {
      if(super.x >= xF-speed && super.x <= xF+speed) x = xF;
      else{
        if(super.x < xF) super.x += speed;
        else if(super.x > xF) super.x -= speed;
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
