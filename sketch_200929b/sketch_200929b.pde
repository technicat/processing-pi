   
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
  ellipse(radius/2,radius/2,radius,radius);
  f = createFont("Arial",16,true);
}

void draw() {
  if (mousePressed) {
    fill(0);
  } else {
    fill(255);
  }
  ellipse(mouseX, mouseY, 80, 80);
}
