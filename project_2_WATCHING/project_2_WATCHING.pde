float movex;
float x = -20;
float randmove = 1.0;
float randcar = 5.0;
int t = 0;

int carmovement = 800;
int car2 = 0;

float Cam1;
float Cam2;


void setup() {
  size(900, 900);
}




void draw() {
  wall();
  road();
  
  if (
  float r1 = random(0,255);
  float g1 = random(0,255);
  float b1 = random(0,255);

  car(carmovement,r1,g1,b1);
  
  
  car(carmovement,r1,g1,b1);

  movex = random(2);


  Cam1 = camMove(x, randmove, movex);
  camera(50, 300, Cam1);

  Cam2 = camMove(x, randmove, movex);
  camera(250, 300, Cam2);


  x = camMove(x, randmove, movex);
  camera(450, 300, x);


  x = camMove(x, randmove, movex);
  camera(650, 300, x);

  x = camMove(x, randmove, movex);
  camera(850, 300, x);


  carmovement -= 4;

  if (carmovement <-300) {
    carmovement = 950;
  }
}




void road() {
  pushMatrix();
  translate(0, 700);
  fill(59, 57, 57);
  rect(0, 0, 900, 200);

  fill(255);
  rect(-10, 85, 100, 30);
  rect(290, 85, 100, 30);
  rect(590, 85, 100, 30);
  rect(890, 85, 100, 30);
  popMatrix();
}








void wall() {
  pushMatrix();
  background(0);

  fill(134, 135, 135);
  rect(0, 150, 900, 550);

  fill(183, 181, 181);
  rect(0, 550, 900, 200);
  popMatrix();
}







void camera(int Camx, int Camy, float x) {
  pushMatrix();
  translate(Camx, Camy);

  float t = random(10000);

  if (t<100) {
    randmove = random(-1, 1);
    t = 0;
  } else {
    t = t +1;
  }


  fill(90);
  rect(x, -20, 40, 40);
  quad(x, -20, 15, -40, 45, -40, x+40, -20);
  quad(x+40, -20, x+40, 20, 45, 0, 45, -40);
  quad(x, -20, x, 20, 15, 0, 15, -40);

  fill(0);
  ellipse(x+20, 0, 20, 20);
  popMatrix();
}







float camMove(float x, float rand, float speed) {

  float save = x;
  speed = random(2);


  if (rand < 0) {
    x = x+ speed/2;
  } else {
    x = x- speed/2;
  }


  if (x > 30) {
    x = save;
    if (second()%5 == 0) {
      rand = 1;
      return x;
    }
    return x;
  } else if (x < -20) {
    x = save;
    if (second()%5 == 0) {
      rand = -1;
      return x;
    }
    return x;
  }
  return x;
}






void car(int carmove,float r1, float g1, float b1) {
  float randcar = random(10);
  pushMatrix();
  translate(carmove, 800);

  float r = random(0, 255);
  float b = random(0, 255);
  float g = random(0, 255);


  if (randcar == 0) {
    fill(r, g, b);
    ellipse(200, 0, 200, 150);
    rect(0, 0, 300, 100);

    fill(116, 173, 209);
    ellipse(200, 0, 150, 100);

    fill(r, g, b);
    rect(0, 0, 300, 100);

    fill(0);
    ellipse(30, 100, 75, 75);
    ellipse(270, 100, 75, 75);
  } else {
    
    
    fill(r1, g1, b1);
    ellipse(200, 0, 200, 150);
    rect(0, 0, 300, 100);

    fill(116, 173, 209);
    ellipse(200, 0, 150, 100);

    fill(r1, g1, b1);
    rect(0, 0, 300, 100);

    fill(0);
    ellipse(30, 100, 75, 75);
    ellipse(270, 100, 75, 75);
  }


  popMatrix();
}
