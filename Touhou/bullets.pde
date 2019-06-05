float hw = width / 2;
float hh = height / 2;
float d = 5;
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

class eBullet extends bullet {
  int degree;
  eBullet(float ex, float why, float speed, int deg){
    super(ex,why,speed);
    radius= 10;
    degree = deg;
  }
  
  void moveD(int r) {
    ellipse(x + velocity * cos(r), y + velocity * sin(r), 10,10);
  }
  
  void moveD() {
    ellipse(x + velocity * cos(radius), y + velocity * sin(radius), 10,10);
  }
}
