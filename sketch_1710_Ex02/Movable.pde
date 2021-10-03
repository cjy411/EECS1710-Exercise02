class Movable {
  float x, y;
  PImage img;
  float w, h;
  float speedx, speedy;
  
  Movable(String src, float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    img = loadImage(src);
    img.resize((int)w, (int)h);
  }
 
  Movable(String src, float x, float y, float w, float h, float speedx, float speedy) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.speedx = speedx;
    this.speedy = speedy;
    img = loadImage(src);
    img.resize((int)w, (int)h);
  }
  
  void move() {
      x += speedx;
      y += speedy;
  }
  
  void display() {
    image(img, x, y);
  }
  
}
