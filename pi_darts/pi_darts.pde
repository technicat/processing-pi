   
float total = 0.0;
float inside = 0.0;
float radius = 640.0;

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
  ellipse(radius/2,radius/2,radius,radius);
  f = createFont("Arial",16,true);
}

void draw() {
  float x = random(-radius,radius);
  float y = random(-radius,radius);
  total = total +1;
  if (x*x+y*y < radius*radius) {
    inside = inside+1;
  }
  fill(0);
  rect(0,0,120,40);
  fill(0,255,255);
  ellipse(x,y,5,5);
  fill(255,255,0);
  textFont(f,24);
  text("pi = ",10,25);
  text(pi(),50,25);
}
