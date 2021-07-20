// calculate pi by throwing darts at a circle

int count = 0;
int inside = 0;
float radius = 320.0;

PFont f;

float pi() {
  if (count == 0) {
    return 0.0;
  } else {
    return (float)inside/(float)count *4.0;
  }
}
  

void setup() {
  size(640,640);
  background(0);
  ellipse(radius,radius,2*radius,2*radius);
  f = createFont("Arial",16,true);
}

void draw() {
  count++;
  drawDot();
  drawText();
}

void drawDot() {
  float x = random(-radius,radius);
  float y = random(-radius,radius);
  if (x*x+y*y < radius*radius) {
    inside++;
  }
  ellipse(x+radius,y+radius,5,5);
}

void drawText() {
  fill(0);
  rect(0,0,120,40);
  fill(0,255,255);
  fill(255,255,0);
  textFont(f,24);
  text("pi = ",10,25);
  text(pi(),50,25);
}
