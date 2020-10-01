   
int total = 0;
int inside = 0;
int radius = 640;

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
  fill(0,255,255);
  textFont(f,24);
  text(pi(),10,25);
}
