PShape rectangle, ball;
float x,y, ballx, bally, velx, vely;
void setup() {
  size(500,300);
 createRectangle();
 createBall();
}
  
void draw() { 
  background(255);
  shape(rectangle);
  shape(ball);
  moveBall();
}

void keyPressed() { 
 if((keyCode == RIGHT || key == 'd') && x < width - 100) {
 rectangle.translate(10,0);
 x += 10;
 }
  else if((keyCode == LEFT || key =='a') && x > 0) {
   rectangle.translate(-10,0);
   x -= 10;
  }
}

void createRectangle() {
   y = height - 50;
   x = (width / 2) - 50;
   fill(100,214,103);
    rectangle = createShape(RECT, x, y, 100, 25);
}

void createBall() {
  ballx = width / 2;
  bally = height - 75;
  while(vely < 1 && vely > -1) vely = random(-5,-1);
  while(velx < 1 && velx > -1) velx = random(-5,5);
  fill(0, 0, 255);
  ball = createShape(ELLIPSE, ballx, bally, 10, 10);
}

void moveBall() {
  if(bally >= height) vely *=-1;
  else if (bally <= 0) vely *=-1;
  if(ballx >= width ||  ballx <=0)velx*=-1;
  
if (bally >= y-1 && bally <= y+1 && ballx >=x -50 && ballx <= x+100)
{vely*=-1;}
  
    ball.translate(velx,vely);
    bally += vely;
    ballx += velx;
  }
