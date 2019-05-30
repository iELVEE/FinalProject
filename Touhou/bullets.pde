abstract class bullet extends thing{
  float velocity;
  float radius;
  
  bullet(float ex, float why, float speed){
    x = ex;
    y = why;
    velocity = speed;
  }
  
  float getRad() {
    return radius;
  }
  
  void move(){
    y -= velocity;
  }
}

class pBullet extends bullet{
  pBullet(float ex, float why, float sped){
    super(ex,why,sped);
    radius = 10;
  }
  void move(){
      fill(190,41,91);
      ellipse(x,y,10,10);
      super.move();
    
  }
}