// calculate pi by throwing darts at a circle

float total = 0.0;
float inside = 0.0;
float radius = 320.0;

PFont f;

float pi() {
  if (total == 0) {
    return 0;
  } else {
    return inside/total *4;
  }
}
  

void setup() {
  size(640,640);
  background(0);
  ellipse(radius,radius,2*radius,2*radius);
  f = createFont("Arial",16,true);
}

void draw() {
  total = total +1;
  drawDot();
  drawText();
}

void drawDot() {
  float x = random(-radius,radius);
  float y = random(-radius,radius);
  if (x*x+y*y < radius*radius) {
    inside = inside+1;
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
