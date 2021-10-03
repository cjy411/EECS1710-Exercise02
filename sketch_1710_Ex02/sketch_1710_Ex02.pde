float x = 100 ;
float r = 250;
float t = 114;
float u = 150;
color c = color(255, 0 ,0);
color c2 = color(0);
float y = 220;
float s = 50;
float speed = 3;
PImage bg;
Movable car1;
Movable car2;
Movable shooter1;
Movable shooter2;
Movable shooter3;
Movable zombie1;
Movable sunflower1;
Movable sunflower2;
Movable ball1;
Movable ball2;
Movable ball3;


void setup() {
  size(900, 600, P2D);
  noStroke();
  bg = loadImage("bg.png");
  bg.resize(900,600);
  car1 = new Movable("car.png", 20,500,100,100, 3, 0);
  car2 = new Movable("car2.png", 900,400,100,100, -3, 0);
  zombie1 = new Movable("zombie.png", 800, 300, 100,100, -0.3, 0);
  
  shooter1 = new Movable("shooter.png", 20, 300, 70,70);
  shooter2 = new Movable("shooter.png", 50, 320, 70,70);
  shooter3 = new Movable("shooter.png", 10, 340, 70,70);
  
  ball1 = new Movable("ball.png", shooter1.x+20,shooter1.y, 30,30, 3,0);
  ball2 = new Movable("ball.png", shooter2.x+20,shooter2.y, 30,30, 3,0);
  ball3 = new Movable("ball.png", shooter3.x+20,shooter3.y, 30,30, 3,0);
  
  sunflower1 = new Movable("sunflower.png", 20, 240, 60, 60);
  sunflower2 = new Movable("sunflower.png", 100, 240, 60, 60);
}

void draw() {
  background(bg);
  car1.move();
  car2.move();
  zombie1.move();
  shooter1.move();
  shooter2.move();
  shooter3.move();
  
  ball1.move();
  ball2.move();
  ball3.move();
  
  sunflower1.move();
  sunflower2.move();
  
  car1.display();
  car2.display();
  zombie1.display();
  shooter1.display();
  shooter2.display();
  shooter3.display();
  ball1.display();
  ball2.display();
  ball3.display();
  
  sunflower1.display();
  sunflower2.display();
  
  
  if(zombie1.x<500) zombie1.x = 800;
  if(car1.x>width) car1.x = 0;
  if(car2.x<0) car2.x = width;
  
  if(ball1.x>zombie1.x) ball1.x = shooter1.x+20;
  if(ball2.x>zombie1.x) ball2.x = shooter2.x+20;
  if(ball3.x>zombie1.x) ball3.x = shooter3.x+20;
  
}
